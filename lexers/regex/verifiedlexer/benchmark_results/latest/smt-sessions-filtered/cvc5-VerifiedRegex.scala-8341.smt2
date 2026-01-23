; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434134 () Bool)

(assert start!434134)

(declare-fun b!4438764 () Bool)

(declare-fun e!2763895 () Bool)

(declare-fun tp!1333938 () Bool)

(assert (=> b!4438764 (= e!2763895 tp!1333938)))

(declare-fun e!2763894 () Bool)

(declare-datatypes ((V!11354 0))(
  ( (V!11355 (val!17157 Int)) )
))
(declare-fun newValue!93 () V!11354)

(declare-datatypes ((K!11108 0))(
  ( (K!11109 (val!17158 Int)) )
))
(declare-fun key!3717 () K!11108)

(declare-fun lt!1635292 () Bool)

(declare-datatypes ((tuple2!49634 0))(
  ( (tuple2!49635 (_1!28111 K!11108) (_2!28111 V!11354)) )
))
(declare-datatypes ((List!49865 0))(
  ( (Nil!49741) (Cons!49741 (h!55456 tuple2!49634) (t!356807 List!49865)) )
))
(declare-fun newBucket!194 () List!49865)

(declare-fun b!4438765 () Bool)

(assert (=> b!4438765 (= e!2763894 (and (not lt!1635292) (= newBucket!194 (Cons!49741 (tuple2!49635 key!3717 newValue!93) Nil!49741))))))

(declare-fun b!4438766 () Bool)

(declare-fun res!1837374 () Bool)

(declare-fun e!2763896 () Bool)

(assert (=> b!4438766 (=> (not res!1837374) (not e!2763896))))

(declare-datatypes ((Hashable!5208 0))(
  ( (HashableExt!5207 (__x!30911 Int)) )
))
(declare-fun hashF!1220 () Hashable!5208)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!774 (List!49865 (_ BitVec 64) Hashable!5208) Bool)

(assert (=> b!4438766 (= res!1837374 (allKeysSameHash!774 newBucket!194 hash!366 hashF!1220))))

(declare-fun e!2763891 () Bool)

(declare-datatypes ((tuple2!49636 0))(
  ( (tuple2!49637 (_1!28112 (_ BitVec 64)) (_2!28112 List!49865)) )
))
(declare-datatypes ((List!49866 0))(
  ( (Nil!49742) (Cons!49742 (h!55457 tuple2!49636) (t!356808 List!49866)) )
))
(declare-datatypes ((ListLongMap!2265 0))(
  ( (ListLongMap!2266 (toList!3615 List!49866)) )
))
(declare-fun lm!1616 () ListLongMap!2265)

(declare-fun b!4438767 () Bool)

(declare-fun apply!11666 (ListLongMap!2265 (_ BitVec 64)) List!49865)

(assert (=> b!4438767 (= e!2763891 (= newBucket!194 (Cons!49741 (tuple2!49635 key!3717 newValue!93) (apply!11666 lm!1616 hash!366))))))

(declare-fun b!4438768 () Bool)

(declare-fun res!1837376 () Bool)

(assert (=> b!4438768 (=> (not res!1837376) (not e!2763896))))

(declare-fun allKeysSameHashInMap!920 (ListLongMap!2265 Hashable!5208) Bool)

(assert (=> b!4438768 (= res!1837376 (allKeysSameHashInMap!920 lm!1616 hashF!1220))))

(declare-fun b!4438769 () Bool)

(declare-fun res!1837375 () Bool)

(assert (=> b!4438769 (=> (not res!1837375) (not e!2763896))))

(declare-datatypes ((ListMap!2859 0))(
  ( (ListMap!2860 (toList!3616 List!49865)) )
))
(declare-fun contains!12300 (ListMap!2859 K!11108) Bool)

(declare-fun extractMap!875 (List!49866) ListMap!2859)

(assert (=> b!4438769 (= res!1837375 (not (contains!12300 (extractMap!875 (toList!3615 lm!1616)) key!3717)))))

(declare-fun b!4438770 () Bool)

(declare-fun e!2763893 () Bool)

(declare-fun tp_is_empty!26503 () Bool)

(declare-fun tp_is_empty!26501 () Bool)

(declare-fun tp!1333937 () Bool)

(assert (=> b!4438770 (= e!2763893 (and tp_is_empty!26503 tp_is_empty!26501 tp!1333937))))

(declare-fun b!4438771 () Bool)

(declare-fun res!1837373 () Bool)

(declare-fun e!2763892 () Bool)

(assert (=> b!4438771 (=> (not res!1837373) (not e!2763892))))

(declare-fun noDuplicateKeys!814 (List!49865) Bool)

(assert (=> b!4438771 (= res!1837373 (noDuplicateKeys!814 newBucket!194))))

(declare-fun b!4438772 () Bool)

(assert (=> b!4438772 (= e!2763896 e!2763892)))

(declare-fun res!1837368 () Bool)

(assert (=> b!4438772 (=> (not res!1837368) (not e!2763892))))

(assert (=> b!4438772 (= res!1837368 e!2763894)))

(declare-fun res!1837372 () Bool)

(assert (=> b!4438772 (=> res!1837372 e!2763894)))

(assert (=> b!4438772 (= res!1837372 e!2763891)))

(declare-fun res!1837369 () Bool)

(assert (=> b!4438772 (=> (not res!1837369) (not e!2763891))))

(assert (=> b!4438772 (= res!1837369 lt!1635292)))

(declare-fun contains!12301 (ListLongMap!2265 (_ BitVec 64)) Bool)

(assert (=> b!4438772 (= lt!1635292 (contains!12301 lm!1616 hash!366))))

(declare-fun b!4438773 () Bool)

(declare-fun res!1837370 () Bool)

(assert (=> b!4438773 (=> (not res!1837370) (not e!2763896))))

(declare-fun hash!2259 (Hashable!5208 K!11108) (_ BitVec 64))

(assert (=> b!4438773 (= res!1837370 (= (hash!2259 hashF!1220 key!3717) hash!366))))

(declare-fun b!4438774 () Bool)

(declare-fun size!35885 (List!49866) Int)

(assert (=> b!4438774 (= e!2763892 (< (size!35885 (toList!3615 lm!1616)) 0))))

(declare-fun res!1837371 () Bool)

(assert (=> start!434134 (=> (not res!1837371) (not e!2763896))))

(declare-fun lambda!156793 () Int)

(declare-fun forall!9673 (List!49866 Int) Bool)

(assert (=> start!434134 (= res!1837371 (forall!9673 (toList!3615 lm!1616) lambda!156793))))

(assert (=> start!434134 e!2763896))

(assert (=> start!434134 tp_is_empty!26501))

(assert (=> start!434134 tp_is_empty!26503))

(assert (=> start!434134 e!2763893))

(declare-fun inv!65295 (ListLongMap!2265) Bool)

(assert (=> start!434134 (and (inv!65295 lm!1616) e!2763895)))

(assert (=> start!434134 true))

(assert (= (and start!434134 res!1837371) b!4438768))

(assert (= (and b!4438768 res!1837376) b!4438773))

(assert (= (and b!4438773 res!1837370) b!4438766))

(assert (= (and b!4438766 res!1837374) b!4438769))

(assert (= (and b!4438769 res!1837375) b!4438772))

(assert (= (and b!4438772 res!1837369) b!4438767))

(assert (= (and b!4438772 (not res!1837372)) b!4438765))

(assert (= (and b!4438772 res!1837368) b!4438771))

(assert (= (and b!4438771 res!1837373) b!4438774))

(assert (= (and start!434134 (is-Cons!49741 newBucket!194)) b!4438770))

(assert (= start!434134 b!4438764))

(declare-fun m!5127325 () Bool)

(assert (=> b!4438772 m!5127325))

(declare-fun m!5127327 () Bool)

(assert (=> b!4438774 m!5127327))

(declare-fun m!5127329 () Bool)

(assert (=> b!4438766 m!5127329))

(declare-fun m!5127331 () Bool)

(assert (=> b!4438769 m!5127331))

(assert (=> b!4438769 m!5127331))

(declare-fun m!5127333 () Bool)

(assert (=> b!4438769 m!5127333))

(declare-fun m!5127335 () Bool)

(assert (=> b!4438767 m!5127335))

(declare-fun m!5127337 () Bool)

(assert (=> b!4438768 m!5127337))

(declare-fun m!5127339 () Bool)

(assert (=> b!4438771 m!5127339))

(declare-fun m!5127341 () Bool)

(assert (=> start!434134 m!5127341))

(declare-fun m!5127343 () Bool)

(assert (=> start!434134 m!5127343))

(declare-fun m!5127345 () Bool)

(assert (=> b!4438773 m!5127345))

(push 1)

(assert (not b!4438768))

(assert (not b!4438766))

(assert tp_is_empty!26501)

(assert (not b!4438767))

(assert (not b!4438774))

(assert (not start!434134))

(assert (not b!4438771))

(assert (not b!4438773))

(assert tp_is_empty!26503)

(assert (not b!4438764))

(assert (not b!4438772))

(assert (not b!4438769))

(assert (not b!4438770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4438834 () Bool)

(declare-datatypes ((Unit!83755 0))(
  ( (Unit!83756) )
))
(declare-fun e!2763933 () Unit!83755)

(declare-fun e!2763932 () Unit!83755)

(assert (=> b!4438834 (= e!2763933 e!2763932)))

(declare-fun c!755552 () Bool)

(declare-fun call!308915 () Bool)

(assert (=> b!4438834 (= c!755552 call!308915)))

(declare-fun b!4438835 () Bool)

(declare-fun e!2763936 () Bool)

(declare-fun e!2763934 () Bool)

(assert (=> b!4438835 (= e!2763936 e!2763934)))

(declare-fun res!1837416 () Bool)

(assert (=> b!4438835 (=> (not res!1837416) (not e!2763934))))

(declare-datatypes ((Option!10783 0))(
  ( (None!10782) (Some!10782 (v!44010 V!11354)) )
))
(declare-fun isDefined!8075 (Option!10783) Bool)

(declare-fun getValueByKey!769 (List!49865 K!11108) Option!10783)

(assert (=> b!4438835 (= res!1837416 (isDefined!8075 (getValueByKey!769 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717)))))

(declare-fun b!4438836 () Bool)

(declare-fun Unit!83757 () Unit!83755)

(assert (=> b!4438836 (= e!2763932 Unit!83757)))

(declare-fun d!1347500 () Bool)

(assert (=> d!1347500 e!2763936))

(declare-fun res!1837414 () Bool)

(assert (=> d!1347500 (=> res!1837414 e!2763936)))

(declare-fun e!2763931 () Bool)

(assert (=> d!1347500 (= res!1837414 e!2763931)))

(declare-fun res!1837415 () Bool)

(assert (=> d!1347500 (=> (not res!1837415) (not e!2763931))))

(declare-fun lt!1635319 () Bool)

(assert (=> d!1347500 (= res!1837415 (not lt!1635319))))

(declare-fun lt!1635315 () Bool)

(assert (=> d!1347500 (= lt!1635319 lt!1635315)))

(declare-fun lt!1635318 () Unit!83755)

(assert (=> d!1347500 (= lt!1635318 e!2763933)))

(declare-fun c!755553 () Bool)

(assert (=> d!1347500 (= c!755553 lt!1635315)))

(declare-fun containsKey!1215 (List!49865 K!11108) Bool)

(assert (=> d!1347500 (= lt!1635315 (containsKey!1215 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(assert (=> d!1347500 (= (contains!12300 (extractMap!875 (toList!3615 lm!1616)) key!3717) lt!1635319)))

(declare-fun bm!308910 () Bool)

(declare-datatypes ((List!49869 0))(
  ( (Nil!49745) (Cons!49745 (h!55462 K!11108) (t!356811 List!49869)) )
))
(declare-fun e!2763935 () List!49869)

(declare-fun contains!12304 (List!49869 K!11108) Bool)

(assert (=> bm!308910 (= call!308915 (contains!12304 e!2763935 key!3717))))

(declare-fun c!755554 () Bool)

(assert (=> bm!308910 (= c!755554 c!755553)))

(declare-fun b!4438837 () Bool)

(declare-fun lt!1635317 () Unit!83755)

(assert (=> b!4438837 (= e!2763933 lt!1635317)))

(declare-fun lt!1635316 () Unit!83755)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!678 (List!49865 K!11108) Unit!83755)

(assert (=> b!4438837 (= lt!1635316 (lemmaContainsKeyImpliesGetValueByKeyDefined!678 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(assert (=> b!4438837 (isDefined!8075 (getValueByKey!769 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(declare-fun lt!1635314 () Unit!83755)

(assert (=> b!4438837 (= lt!1635314 lt!1635316)))

(declare-fun lemmaInListThenGetKeysListContains!278 (List!49865 K!11108) Unit!83755)

(assert (=> b!4438837 (= lt!1635317 (lemmaInListThenGetKeysListContains!278 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(assert (=> b!4438837 call!308915))

(declare-fun b!4438838 () Bool)

(declare-fun keys!17027 (ListMap!2859) List!49869)

(assert (=> b!4438838 (= e!2763934 (contains!12304 (keys!17027 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(declare-fun b!4438839 () Bool)

(declare-fun getKeysList!281 (List!49865) List!49869)

(assert (=> b!4438839 (= e!2763935 (getKeysList!281 (toList!3616 (extractMap!875 (toList!3615 lm!1616)))))))

(declare-fun b!4438840 () Bool)

(assert (=> b!4438840 (= e!2763931 (not (contains!12304 (keys!17027 (extractMap!875 (toList!3615 lm!1616))) key!3717)))))

(declare-fun b!4438841 () Bool)

(assert (=> b!4438841 false))

(declare-fun lt!1635313 () Unit!83755)

(declare-fun lt!1635312 () Unit!83755)

(assert (=> b!4438841 (= lt!1635313 lt!1635312)))

(assert (=> b!4438841 (containsKey!1215 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!279 (List!49865 K!11108) Unit!83755)

(assert (=> b!4438841 (= lt!1635312 (lemmaInGetKeysListThenContainsKey!279 (toList!3616 (extractMap!875 (toList!3615 lm!1616))) key!3717))))

(declare-fun Unit!83758 () Unit!83755)

(assert (=> b!4438841 (= e!2763932 Unit!83758)))

(declare-fun b!4438842 () Bool)

(assert (=> b!4438842 (= e!2763935 (keys!17027 (extractMap!875 (toList!3615 lm!1616))))))

(assert (= (and d!1347500 c!755553) b!4438837))

(assert (= (and d!1347500 (not c!755553)) b!4438834))

(assert (= (and b!4438834 c!755552) b!4438841))

(assert (= (and b!4438834 (not c!755552)) b!4438836))

(assert (= (or b!4438837 b!4438834) bm!308910))

(assert (= (and bm!308910 c!755554) b!4438839))

(assert (= (and bm!308910 (not c!755554)) b!4438842))

(assert (= (and d!1347500 res!1837415) b!4438840))

(assert (= (and d!1347500 (not res!1837414)) b!4438835))

(assert (= (and b!4438835 res!1837416) b!4438838))

(declare-fun m!5127375 () Bool)

(assert (=> b!4438837 m!5127375))

(declare-fun m!5127377 () Bool)

(assert (=> b!4438837 m!5127377))

(assert (=> b!4438837 m!5127377))

(declare-fun m!5127379 () Bool)

(assert (=> b!4438837 m!5127379))

(declare-fun m!5127381 () Bool)

(assert (=> b!4438837 m!5127381))

(declare-fun m!5127383 () Bool)

(assert (=> b!4438841 m!5127383))

(declare-fun m!5127385 () Bool)

(assert (=> b!4438841 m!5127385))

(declare-fun m!5127387 () Bool)

(assert (=> bm!308910 m!5127387))

(assert (=> b!4438838 m!5127331))

(declare-fun m!5127389 () Bool)

(assert (=> b!4438838 m!5127389))

(assert (=> b!4438838 m!5127389))

(declare-fun m!5127391 () Bool)

(assert (=> b!4438838 m!5127391))

(declare-fun m!5127393 () Bool)

(assert (=> b!4438839 m!5127393))

(assert (=> b!4438842 m!5127331))

(assert (=> b!4438842 m!5127389))

(assert (=> b!4438840 m!5127331))

(assert (=> b!4438840 m!5127389))

(assert (=> b!4438840 m!5127389))

(assert (=> b!4438840 m!5127391))

(assert (=> b!4438835 m!5127377))

(assert (=> b!4438835 m!5127377))

(assert (=> b!4438835 m!5127379))

(assert (=> d!1347500 m!5127383))

(assert (=> b!4438769 d!1347500))

(declare-fun bs!763827 () Bool)

(declare-fun d!1347508 () Bool)

(assert (= bs!763827 (and d!1347508 start!434134)))

(declare-fun lambda!156802 () Int)

(assert (=> bs!763827 (= lambda!156802 lambda!156793)))

(declare-fun lt!1635322 () ListMap!2859)

(declare-fun invariantList!834 (List!49865) Bool)

(assert (=> d!1347508 (invariantList!834 (toList!3616 lt!1635322))))

(declare-fun e!2763947 () ListMap!2859)

(assert (=> d!1347508 (= lt!1635322 e!2763947)))

(declare-fun c!755557 () Bool)

(assert (=> d!1347508 (= c!755557 (is-Cons!49742 (toList!3615 lm!1616)))))

(assert (=> d!1347508 (forall!9673 (toList!3615 lm!1616) lambda!156802)))

(assert (=> d!1347508 (= (extractMap!875 (toList!3615 lm!1616)) lt!1635322)))

(declare-fun b!4438855 () Bool)

(declare-fun addToMapMapFromBucket!435 (List!49865 ListMap!2859) ListMap!2859)

(assert (=> b!4438855 (= e!2763947 (addToMapMapFromBucket!435 (_2!28112 (h!55457 (toList!3615 lm!1616))) (extractMap!875 (t!356808 (toList!3615 lm!1616)))))))

(declare-fun b!4438856 () Bool)

(assert (=> b!4438856 (= e!2763947 (ListMap!2860 Nil!49741))))

(assert (= (and d!1347508 c!755557) b!4438855))

(assert (= (and d!1347508 (not c!755557)) b!4438856))

(declare-fun m!5127405 () Bool)

(assert (=> d!1347508 m!5127405))

(declare-fun m!5127407 () Bool)

(assert (=> d!1347508 m!5127407))

(declare-fun m!5127409 () Bool)

(assert (=> b!4438855 m!5127409))

(assert (=> b!4438855 m!5127409))

(declare-fun m!5127411 () Bool)

(assert (=> b!4438855 m!5127411))

(assert (=> b!4438769 d!1347508))

(declare-fun d!1347516 () Bool)

(declare-fun hash!2261 (Hashable!5208 K!11108) (_ BitVec 64))

(assert (=> d!1347516 (= (hash!2259 hashF!1220 key!3717) (hash!2261 hashF!1220 key!3717))))

(declare-fun bs!763828 () Bool)

(assert (= bs!763828 d!1347516))

(declare-fun m!5127413 () Bool)

(assert (=> bs!763828 m!5127413))

(assert (=> b!4438773 d!1347516))

(declare-fun bs!763829 () Bool)

(declare-fun d!1347518 () Bool)

(assert (= bs!763829 (and d!1347518 start!434134)))

(declare-fun lambda!156807 () Int)

(assert (=> bs!763829 (not (= lambda!156807 lambda!156793))))

(declare-fun bs!763830 () Bool)

(assert (= bs!763830 (and d!1347518 d!1347508)))

(assert (=> bs!763830 (not (= lambda!156807 lambda!156802))))

(assert (=> d!1347518 true))

(assert (=> d!1347518 (= (allKeysSameHashInMap!920 lm!1616 hashF!1220) (forall!9673 (toList!3615 lm!1616) lambda!156807))))

(declare-fun bs!763831 () Bool)

(assert (= bs!763831 d!1347518))

(declare-fun m!5127415 () Bool)

(assert (=> bs!763831 m!5127415))

(assert (=> b!4438768 d!1347518))

(declare-fun d!1347520 () Bool)

(declare-fun lt!1635325 () Int)

(assert (=> d!1347520 (>= lt!1635325 0)))

(declare-fun e!2763950 () Int)

(assert (=> d!1347520 (= lt!1635325 e!2763950)))

(declare-fun c!755560 () Bool)

(assert (=> d!1347520 (= c!755560 (is-Nil!49742 (toList!3615 lm!1616)))))

(assert (=> d!1347520 (= (size!35885 (toList!3615 lm!1616)) lt!1635325)))

(declare-fun b!4438865 () Bool)

(assert (=> b!4438865 (= e!2763950 0)))

(declare-fun b!4438866 () Bool)

(assert (=> b!4438866 (= e!2763950 (+ 1 (size!35885 (t!356808 (toList!3615 lm!1616)))))))

(assert (= (and d!1347520 c!755560) b!4438865))

(assert (= (and d!1347520 (not c!755560)) b!4438866))

(declare-fun m!5127419 () Bool)

(assert (=> b!4438866 m!5127419))

(assert (=> b!4438774 d!1347520))

(declare-fun d!1347524 () Bool)

(declare-fun e!2763958 () Bool)

(assert (=> d!1347524 e!2763958))

(declare-fun res!1837427 () Bool)

(assert (=> d!1347524 (=> res!1837427 e!2763958)))

(declare-fun lt!1635339 () Bool)

(assert (=> d!1347524 (= res!1837427 (not lt!1635339))))

(declare-fun lt!1635338 () Bool)

(assert (=> d!1347524 (= lt!1635339 lt!1635338)))

(declare-fun lt!1635340 () Unit!83755)

(declare-fun e!2763959 () Unit!83755)

(assert (=> d!1347524 (= lt!1635340 e!2763959)))

(declare-fun c!755566 () Bool)

(assert (=> d!1347524 (= c!755566 lt!1635338)))

(declare-fun containsKey!1216 (List!49866 (_ BitVec 64)) Bool)

(assert (=> d!1347524 (= lt!1635338 (containsKey!1216 (toList!3615 lm!1616) hash!366))))

(assert (=> d!1347524 (= (contains!12301 lm!1616 hash!366) lt!1635339)))

(declare-fun b!4438879 () Bool)

(declare-fun lt!1635337 () Unit!83755)

(assert (=> b!4438879 (= e!2763959 lt!1635337)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!679 (List!49866 (_ BitVec 64)) Unit!83755)

(assert (=> b!4438879 (= lt!1635337 (lemmaContainsKeyImpliesGetValueByKeyDefined!679 (toList!3615 lm!1616) hash!366))))

(declare-datatypes ((Option!10784 0))(
  ( (None!10783) (Some!10783 (v!44011 List!49865)) )
))
(declare-fun isDefined!8076 (Option!10784) Bool)

(declare-fun getValueByKey!770 (List!49866 (_ BitVec 64)) Option!10784)

(assert (=> b!4438879 (isDefined!8076 (getValueByKey!770 (toList!3615 lm!1616) hash!366))))

(declare-fun b!4438880 () Bool)

(declare-fun Unit!83759 () Unit!83755)

(assert (=> b!4438880 (= e!2763959 Unit!83759)))

(declare-fun b!4438881 () Bool)

(assert (=> b!4438881 (= e!2763958 (isDefined!8076 (getValueByKey!770 (toList!3615 lm!1616) hash!366)))))

(assert (= (and d!1347524 c!755566) b!4438879))

(assert (= (and d!1347524 (not c!755566)) b!4438880))

(assert (= (and d!1347524 (not res!1837427)) b!4438881))

(declare-fun m!5127425 () Bool)

(assert (=> d!1347524 m!5127425))

(declare-fun m!5127427 () Bool)

(assert (=> b!4438879 m!5127427))

(declare-fun m!5127429 () Bool)

(assert (=> b!4438879 m!5127429))

(assert (=> b!4438879 m!5127429))

(declare-fun m!5127431 () Bool)

(assert (=> b!4438879 m!5127431))

(assert (=> b!4438881 m!5127429))

(assert (=> b!4438881 m!5127429))

(assert (=> b!4438881 m!5127431))

(assert (=> b!4438772 d!1347524))

(declare-fun d!1347530 () Bool)

(declare-fun get!16221 (Option!10784) List!49865)

(assert (=> d!1347530 (= (apply!11666 lm!1616 hash!366) (get!16221 (getValueByKey!770 (toList!3615 lm!1616) hash!366)))))

(declare-fun bs!763835 () Bool)

(assert (= bs!763835 d!1347530))

(assert (=> bs!763835 m!5127429))

(assert (=> bs!763835 m!5127429))

(declare-fun m!5127433 () Bool)

(assert (=> bs!763835 m!5127433))

(assert (=> b!4438767 d!1347530))

(declare-fun d!1347532 () Bool)

(declare-fun res!1837432 () Bool)

(declare-fun e!2763964 () Bool)

(assert (=> d!1347532 (=> res!1837432 e!2763964)))

(assert (=> d!1347532 (= res!1837432 (not (is-Cons!49741 newBucket!194)))))

(assert (=> d!1347532 (= (noDuplicateKeys!814 newBucket!194) e!2763964)))

(declare-fun b!4438886 () Bool)

(declare-fun e!2763965 () Bool)

(assert (=> b!4438886 (= e!2763964 e!2763965)))

(declare-fun res!1837433 () Bool)

(assert (=> b!4438886 (=> (not res!1837433) (not e!2763965))))

(declare-fun containsKey!1217 (List!49865 K!11108) Bool)

(assert (=> b!4438886 (= res!1837433 (not (containsKey!1217 (t!356807 newBucket!194) (_1!28111 (h!55456 newBucket!194)))))))

(declare-fun b!4438887 () Bool)

(assert (=> b!4438887 (= e!2763965 (noDuplicateKeys!814 (t!356807 newBucket!194)))))

(assert (= (and d!1347532 (not res!1837432)) b!4438886))

(assert (= (and b!4438886 res!1837433) b!4438887))

(declare-fun m!5127435 () Bool)

(assert (=> b!4438886 m!5127435))

(declare-fun m!5127437 () Bool)

(assert (=> b!4438887 m!5127437))

(assert (=> b!4438771 d!1347532))

(declare-fun d!1347534 () Bool)

(declare-fun res!1837438 () Bool)

(declare-fun e!2763970 () Bool)

(assert (=> d!1347534 (=> res!1837438 e!2763970)))

(assert (=> d!1347534 (= res!1837438 (is-Nil!49742 (toList!3615 lm!1616)))))

(assert (=> d!1347534 (= (forall!9673 (toList!3615 lm!1616) lambda!156793) e!2763970)))

(declare-fun b!4438892 () Bool)

(declare-fun e!2763971 () Bool)

(assert (=> b!4438892 (= e!2763970 e!2763971)))

(declare-fun res!1837439 () Bool)

(assert (=> b!4438892 (=> (not res!1837439) (not e!2763971))))

(declare-fun dynLambda!20899 (Int tuple2!49636) Bool)

(assert (=> b!4438892 (= res!1837439 (dynLambda!20899 lambda!156793 (h!55457 (toList!3615 lm!1616))))))

(declare-fun b!4438893 () Bool)

(assert (=> b!4438893 (= e!2763971 (forall!9673 (t!356808 (toList!3615 lm!1616)) lambda!156793))))

(assert (= (and d!1347534 (not res!1837438)) b!4438892))

(assert (= (and b!4438892 res!1837439) b!4438893))

(declare-fun b_lambda!144891 () Bool)

(assert (=> (not b_lambda!144891) (not b!4438892)))

(declare-fun m!5127439 () Bool)

(assert (=> b!4438892 m!5127439))

(declare-fun m!5127441 () Bool)

(assert (=> b!4438893 m!5127441))

(assert (=> start!434134 d!1347534))

(declare-fun d!1347536 () Bool)

(declare-fun isStrictlySorted!261 (List!49866) Bool)

(assert (=> d!1347536 (= (inv!65295 lm!1616) (isStrictlySorted!261 (toList!3615 lm!1616)))))

(declare-fun bs!763836 () Bool)

(assert (= bs!763836 d!1347536))

(declare-fun m!5127443 () Bool)

(assert (=> bs!763836 m!5127443))

(assert (=> start!434134 d!1347536))

(declare-fun d!1347538 () Bool)

(assert (=> d!1347538 true))

(assert (=> d!1347538 true))

(declare-fun lambda!156811 () Int)

(declare-fun forall!9675 (List!49865 Int) Bool)

(assert (=> d!1347538 (= (allKeysSameHash!774 newBucket!194 hash!366 hashF!1220) (forall!9675 newBucket!194 lambda!156811))))

(declare-fun bs!763837 () Bool)

(assert (= bs!763837 d!1347538))

(declare-fun m!5127445 () Bool)

(assert (=> bs!763837 m!5127445))

(assert (=> b!4438766 d!1347538))

(declare-fun b!4438902 () Bool)

(declare-fun e!2763974 () Bool)

(declare-fun tp!1333949 () Bool)

(declare-fun tp!1333950 () Bool)

(assert (=> b!4438902 (= e!2763974 (and tp!1333949 tp!1333950))))

(assert (=> b!4438764 (= tp!1333938 e!2763974)))

(assert (= (and b!4438764 (is-Cons!49742 (toList!3615 lm!1616))) b!4438902))

(declare-fun b!4438911 () Bool)

(declare-fun tp!1333953 () Bool)

(declare-fun e!2763979 () Bool)

(assert (=> b!4438911 (= e!2763979 (and tp_is_empty!26503 tp_is_empty!26501 tp!1333953))))

(assert (=> b!4438770 (= tp!1333937 e!2763979)))

(assert (= (and b!4438770 (is-Cons!49741 (t!356807 newBucket!194))) b!4438911))

(declare-fun b_lambda!144893 () Bool)

(assert (= b_lambda!144891 (or start!434134 b_lambda!144893)))

(declare-fun bs!763838 () Bool)

(declare-fun d!1347540 () Bool)

(assert (= bs!763838 (and d!1347540 start!434134)))

(assert (=> bs!763838 (= (dynLambda!20899 lambda!156793 (h!55457 (toList!3615 lm!1616))) (noDuplicateKeys!814 (_2!28112 (h!55457 (toList!3615 lm!1616)))))))

(declare-fun m!5127447 () Bool)

(assert (=> bs!763838 m!5127447))

(assert (=> b!4438892 d!1347540))

(push 1)

(assert (not bs!763838))

(assert (not d!1347530))

(assert (not b!4438842))

(assert (not d!1347536))

(assert (not b!4438902))

(assert (not d!1347516))

(assert (not b!4438879))

(assert tp_is_empty!26501)

(assert (not b!4438840))

(assert (not b!4438887))

(assert (not b!4438881))

(assert (not b!4438866))

(assert (not b!4438841))

(assert (not d!1347518))

(assert (not b!4438838))

(assert (not b!4438886))

(assert (not b!4438835))

(assert (not b!4438911))

(assert (not bm!308910))

(assert (not d!1347524))

(assert (not d!1347508))

(assert (not b!4438855))

(assert tp_is_empty!26503)

(assert (not b_lambda!144893))

(assert (not d!1347500))

(assert (not b!4438839))

(assert (not b!4438893))

(assert (not b!4438837))

(assert (not d!1347538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

