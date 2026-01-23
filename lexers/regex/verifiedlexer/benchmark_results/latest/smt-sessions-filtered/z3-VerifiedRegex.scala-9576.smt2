; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503972 () Bool)

(assert start!503972)

(declare-fun b!4841570 () Bool)

(declare-fun e!3025746 () Bool)

(declare-fun e!3025745 () Bool)

(assert (=> b!4841570 (= e!3025746 (not e!3025745))))

(declare-fun res!2064335 () Bool)

(assert (=> b!4841570 (=> res!2064335 e!3025745)))

(declare-datatypes ((K!17169 0))(
  ( (K!17170 (val!22041 Int)) )
))
(declare-datatypes ((V!17415 0))(
  ( (V!17416 (val!22042 Int)) )
))
(declare-datatypes ((tuple2!58954 0))(
  ( (tuple2!58955 (_1!32771 K!17169) (_2!32771 V!17415)) )
))
(declare-datatypes ((List!55527 0))(
  ( (Nil!55403) (Cons!55403 (h!61838 tuple2!58954) (t!363023 List!55527)) )
))
(declare-datatypes ((tuple2!58956 0))(
  ( (tuple2!58957 (_1!32772 (_ BitVec 64)) (_2!32772 List!55527)) )
))
(declare-datatypes ((List!55528 0))(
  ( (Nil!55404) (Cons!55404 (h!61839 tuple2!58956) (t!363024 List!55528)) )
))
(declare-datatypes ((ListLongMap!6343 0))(
  ( (ListLongMap!6344 (toList!7787 List!55528)) )
))
(declare-fun lm!2671 () ListLongMap!6343)

(declare-fun key!6540 () K!17169)

(declare-fun containsKeyBiggerList!724 (List!55528 K!17169) Bool)

(assert (=> b!4841570 (= res!2064335 (not (containsKeyBiggerList!724 (t!363024 (toList!7787 lm!2671)) key!6540)))))

(declare-fun tail!9499 (List!55528) List!55528)

(assert (=> b!4841570 (containsKeyBiggerList!724 (tail!9499 (toList!7787 lm!2671)) key!6540)))

(declare-datatypes ((Hashable!7440 0))(
  ( (HashableExt!7439 (__x!33715 Int)) )
))
(declare-fun hashF!1662 () Hashable!7440)

(declare-datatypes ((Unit!145084 0))(
  ( (Unit!145085) )
))
(declare-fun lt!1985507 () Unit!145084)

(declare-fun lemmaInBiggerListButNotHeadThenTail!56 (ListLongMap!6343 K!17169 Hashable!7440) Unit!145084)

(assert (=> b!4841570 (= lt!1985507 (lemmaInBiggerListButNotHeadThenTail!56 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4841571 () Bool)

(declare-fun e!3025747 () Bool)

(declare-fun lt!1985508 () ListLongMap!6343)

(declare-fun allKeysSameHashInMap!2756 (ListLongMap!6343 Hashable!7440) Bool)

(assert (=> b!4841571 (= e!3025747 (allKeysSameHashInMap!2756 lt!1985508 hashF!1662))))

(declare-fun b!4841572 () Bool)

(assert (=> b!4841572 (= e!3025745 e!3025747)))

(declare-fun res!2064336 () Bool)

(assert (=> b!4841572 (=> res!2064336 e!3025747)))

(declare-fun lambda!241386 () Int)

(declare-fun forall!12868 (List!55528 Int) Bool)

(assert (=> b!4841572 (= res!2064336 (not (forall!12868 (toList!7787 lt!1985508) lambda!241386)))))

(declare-fun tail!9500 (ListLongMap!6343) ListLongMap!6343)

(assert (=> b!4841572 (= lt!1985508 (tail!9500 lm!2671))))

(declare-fun res!2064333 () Bool)

(assert (=> start!503972 (=> (not res!2064333) (not e!3025746))))

(assert (=> start!503972 (= res!2064333 (forall!12868 (toList!7787 lm!2671) lambda!241386))))

(assert (=> start!503972 e!3025746))

(declare-fun e!3025749 () Bool)

(declare-fun inv!71069 (ListLongMap!6343) Bool)

(assert (=> start!503972 (and (inv!71069 lm!2671) e!3025749)))

(assert (=> start!503972 true))

(declare-fun tp_is_empty!34983 () Bool)

(assert (=> start!503972 tp_is_empty!34983))

(declare-fun b!4841573 () Bool)

(declare-fun res!2064334 () Bool)

(assert (=> b!4841573 (=> (not res!2064334) (not e!3025746))))

(declare-datatypes ((ListMap!7125 0))(
  ( (ListMap!7126 (toList!7788 List!55527)) )
))
(declare-fun extractMap!2782 (List!55528) ListMap!7125)

(declare-fun addToMapMapFromBucket!1922 (List!55527 ListMap!7125) ListMap!7125)

(assert (=> b!4841573 (= res!2064334 (= (extractMap!2782 (toList!7787 lm!2671)) (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (toList!7787 lm!2671))) (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))

(declare-fun b!4841574 () Bool)

(declare-fun res!2064331 () Bool)

(assert (=> b!4841574 (=> (not res!2064331) (not e!3025746))))

(assert (=> b!4841574 (= res!2064331 (allKeysSameHashInMap!2756 lm!2671 hashF!1662))))

(declare-fun b!4841575 () Bool)

(declare-fun res!2064332 () Bool)

(assert (=> b!4841575 (=> (not res!2064332) (not e!3025746))))

(declare-fun e!3025748 () Bool)

(assert (=> b!4841575 (= res!2064332 e!3025748)))

(declare-fun res!2064337 () Bool)

(assert (=> b!4841575 (=> res!2064337 e!3025748)))

(get-info :version)

(assert (=> b!4841575 (= res!2064337 (not ((_ is Cons!55404) (toList!7787 lm!2671))))))

(declare-fun b!4841576 () Bool)

(declare-fun res!2064339 () Bool)

(assert (=> b!4841576 (=> (not res!2064339) (not e!3025746))))

(assert (=> b!4841576 (= res!2064339 (containsKeyBiggerList!724 (toList!7787 lm!2671) key!6540))))

(declare-fun b!4841577 () Bool)

(declare-fun tp!1363972 () Bool)

(assert (=> b!4841577 (= e!3025749 tp!1363972)))

(declare-fun b!4841578 () Bool)

(declare-fun res!2064338 () Bool)

(assert (=> b!4841578 (=> (not res!2064338) (not e!3025746))))

(assert (=> b!4841578 (= res!2064338 ((_ is Cons!55404) (toList!7787 lm!2671)))))

(declare-fun b!4841579 () Bool)

(declare-fun containsKey!4607 (List!55527 K!17169) Bool)

(assert (=> b!4841579 (= e!3025748 (not (containsKey!4607 (_2!32772 (h!61839 (toList!7787 lm!2671))) key!6540)))))

(assert (= (and start!503972 res!2064333) b!4841574))

(assert (= (and b!4841574 res!2064331) b!4841576))

(assert (= (and b!4841576 res!2064339) b!4841575))

(assert (= (and b!4841575 (not res!2064337)) b!4841579))

(assert (= (and b!4841575 res!2064332) b!4841578))

(assert (= (and b!4841578 res!2064338) b!4841573))

(assert (= (and b!4841573 res!2064334) b!4841570))

(assert (= (and b!4841570 (not res!2064335)) b!4841572))

(assert (= (and b!4841572 (not res!2064336)) b!4841571))

(assert (= start!503972 b!4841577))

(declare-fun m!5837214 () Bool)

(assert (=> b!4841573 m!5837214))

(declare-fun m!5837216 () Bool)

(assert (=> b!4841573 m!5837216))

(assert (=> b!4841573 m!5837216))

(declare-fun m!5837218 () Bool)

(assert (=> b!4841573 m!5837218))

(declare-fun m!5837220 () Bool)

(assert (=> b!4841570 m!5837220))

(declare-fun m!5837222 () Bool)

(assert (=> b!4841570 m!5837222))

(assert (=> b!4841570 m!5837222))

(declare-fun m!5837224 () Bool)

(assert (=> b!4841570 m!5837224))

(declare-fun m!5837226 () Bool)

(assert (=> b!4841570 m!5837226))

(declare-fun m!5837228 () Bool)

(assert (=> b!4841579 m!5837228))

(declare-fun m!5837230 () Bool)

(assert (=> start!503972 m!5837230))

(declare-fun m!5837232 () Bool)

(assert (=> start!503972 m!5837232))

(declare-fun m!5837234 () Bool)

(assert (=> b!4841574 m!5837234))

(declare-fun m!5837236 () Bool)

(assert (=> b!4841571 m!5837236))

(declare-fun m!5837238 () Bool)

(assert (=> b!4841572 m!5837238))

(declare-fun m!5837240 () Bool)

(assert (=> b!4841572 m!5837240))

(declare-fun m!5837242 () Bool)

(assert (=> b!4841576 m!5837242))

(check-sat (not b!4841572) (not b!4841570) (not b!4841577) (not b!4841573) (not start!503972) (not b!4841579) tp_is_empty!34983 (not b!4841571) (not b!4841576) (not b!4841574))
(check-sat)
(get-model)

(declare-fun d!1551873 () Bool)

(declare-fun res!2064365 () Bool)

(declare-fun e!3025775 () Bool)

(assert (=> d!1551873 (=> res!2064365 e!3025775)))

(assert (=> d!1551873 (= res!2064365 ((_ is Nil!55404) (toList!7787 lm!2671)))))

(assert (=> d!1551873 (= (forall!12868 (toList!7787 lm!2671) lambda!241386) e!3025775)))

(declare-fun b!4841607 () Bool)

(declare-fun e!3025776 () Bool)

(assert (=> b!4841607 (= e!3025775 e!3025776)))

(declare-fun res!2064366 () Bool)

(assert (=> b!4841607 (=> (not res!2064366) (not e!3025776))))

(declare-fun dynLambda!22306 (Int tuple2!58956) Bool)

(assert (=> b!4841607 (= res!2064366 (dynLambda!22306 lambda!241386 (h!61839 (toList!7787 lm!2671))))))

(declare-fun b!4841608 () Bool)

(assert (=> b!4841608 (= e!3025776 (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241386))))

(assert (= (and d!1551873 (not res!2064365)) b!4841607))

(assert (= (and b!4841607 res!2064366) b!4841608))

(declare-fun b_lambda!191387 () Bool)

(assert (=> (not b_lambda!191387) (not b!4841607)))

(declare-fun m!5837256 () Bool)

(assert (=> b!4841607 m!5837256))

(declare-fun m!5837262 () Bool)

(assert (=> b!4841608 m!5837262))

(assert (=> start!503972 d!1551873))

(declare-fun d!1551887 () Bool)

(declare-fun isStrictlySorted!1050 (List!55528) Bool)

(assert (=> d!1551887 (= (inv!71069 lm!2671) (isStrictlySorted!1050 (toList!7787 lm!2671)))))

(declare-fun bs!1168527 () Bool)

(assert (= bs!1168527 d!1551887))

(declare-fun m!5837270 () Bool)

(assert (=> bs!1168527 m!5837270))

(assert (=> start!503972 d!1551887))

(declare-fun d!1551893 () Bool)

(declare-fun res!2064381 () Bool)

(declare-fun e!3025791 () Bool)

(assert (=> d!1551893 (=> res!2064381 e!3025791)))

(declare-fun e!3025789 () Bool)

(assert (=> d!1551893 (= res!2064381 e!3025789)))

(declare-fun res!2064379 () Bool)

(assert (=> d!1551893 (=> (not res!2064379) (not e!3025789))))

(assert (=> d!1551893 (= res!2064379 ((_ is Cons!55404) (t!363024 (toList!7787 lm!2671))))))

(assert (=> d!1551893 (= (containsKeyBiggerList!724 (t!363024 (toList!7787 lm!2671)) key!6540) e!3025791)))

(declare-fun b!4841621 () Bool)

(assert (=> b!4841621 (= e!3025789 (containsKey!4607 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) key!6540))))

(declare-fun b!4841622 () Bool)

(declare-fun e!3025790 () Bool)

(assert (=> b!4841622 (= e!3025791 e!3025790)))

(declare-fun res!2064380 () Bool)

(assert (=> b!4841622 (=> (not res!2064380) (not e!3025790))))

(assert (=> b!4841622 (= res!2064380 ((_ is Cons!55404) (t!363024 (toList!7787 lm!2671))))))

(declare-fun b!4841623 () Bool)

(assert (=> b!4841623 (= e!3025790 (containsKeyBiggerList!724 (t!363024 (t!363024 (toList!7787 lm!2671))) key!6540))))

(assert (= (and d!1551893 res!2064379) b!4841621))

(assert (= (and d!1551893 (not res!2064381)) b!4841622))

(assert (= (and b!4841622 res!2064380) b!4841623))

(declare-fun m!5837274 () Bool)

(assert (=> b!4841621 m!5837274))

(declare-fun m!5837276 () Bool)

(assert (=> b!4841623 m!5837276))

(assert (=> b!4841570 d!1551893))

(declare-fun d!1551897 () Bool)

(declare-fun res!2064384 () Bool)

(declare-fun e!3025794 () Bool)

(assert (=> d!1551897 (=> res!2064384 e!3025794)))

(declare-fun e!3025792 () Bool)

(assert (=> d!1551897 (= res!2064384 e!3025792)))

(declare-fun res!2064382 () Bool)

(assert (=> d!1551897 (=> (not res!2064382) (not e!3025792))))

(assert (=> d!1551897 (= res!2064382 ((_ is Cons!55404) (tail!9499 (toList!7787 lm!2671))))))

(assert (=> d!1551897 (= (containsKeyBiggerList!724 (tail!9499 (toList!7787 lm!2671)) key!6540) e!3025794)))

(declare-fun b!4841624 () Bool)

(assert (=> b!4841624 (= e!3025792 (containsKey!4607 (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671)))) key!6540))))

(declare-fun b!4841625 () Bool)

(declare-fun e!3025793 () Bool)

(assert (=> b!4841625 (= e!3025794 e!3025793)))

(declare-fun res!2064383 () Bool)

(assert (=> b!4841625 (=> (not res!2064383) (not e!3025793))))

(assert (=> b!4841625 (= res!2064383 ((_ is Cons!55404) (tail!9499 (toList!7787 lm!2671))))))

(declare-fun b!4841626 () Bool)

(assert (=> b!4841626 (= e!3025793 (containsKeyBiggerList!724 (t!363024 (tail!9499 (toList!7787 lm!2671))) key!6540))))

(assert (= (and d!1551897 res!2064382) b!4841624))

(assert (= (and d!1551897 (not res!2064384)) b!4841625))

(assert (= (and b!4841625 res!2064383) b!4841626))

(declare-fun m!5837278 () Bool)

(assert (=> b!4841624 m!5837278))

(declare-fun m!5837280 () Bool)

(assert (=> b!4841626 m!5837280))

(assert (=> b!4841570 d!1551897))

(declare-fun d!1551899 () Bool)

(assert (=> d!1551899 (= (tail!9499 (toList!7787 lm!2671)) (t!363024 (toList!7787 lm!2671)))))

(assert (=> b!4841570 d!1551899))

(declare-fun bs!1168533 () Bool)

(declare-fun d!1551901 () Bool)

(assert (= bs!1168533 (and d!1551901 start!503972)))

(declare-fun lambda!241399 () Int)

(assert (=> bs!1168533 (= lambda!241399 lambda!241386)))

(assert (=> d!1551901 (containsKeyBiggerList!724 (tail!9499 (toList!7787 lm!2671)) key!6540)))

(declare-fun lt!1985517 () Unit!145084)

(declare-fun choose!35376 (ListLongMap!6343 K!17169 Hashable!7440) Unit!145084)

(assert (=> d!1551901 (= lt!1985517 (choose!35376 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551901 (forall!12868 (toList!7787 lm!2671) lambda!241399)))

(assert (=> d!1551901 (= (lemmaInBiggerListButNotHeadThenTail!56 lm!2671 key!6540 hashF!1662) lt!1985517)))

(declare-fun bs!1168534 () Bool)

(assert (= bs!1168534 d!1551901))

(assert (=> bs!1168534 m!5837222))

(assert (=> bs!1168534 m!5837222))

(assert (=> bs!1168534 m!5837224))

(declare-fun m!5837286 () Bool)

(assert (=> bs!1168534 m!5837286))

(declare-fun m!5837288 () Bool)

(assert (=> bs!1168534 m!5837288))

(assert (=> b!4841570 d!1551901))

(declare-fun d!1551905 () Bool)

(declare-fun res!2064389 () Bool)

(declare-fun e!3025802 () Bool)

(assert (=> d!1551905 (=> res!2064389 e!3025802)))

(assert (=> d!1551905 (= res!2064389 (and ((_ is Cons!55403) (_2!32772 (h!61839 (toList!7787 lm!2671)))) (= (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) key!6540)))))

(assert (=> d!1551905 (= (containsKey!4607 (_2!32772 (h!61839 (toList!7787 lm!2671))) key!6540) e!3025802)))

(declare-fun b!4841637 () Bool)

(declare-fun e!3025803 () Bool)

(assert (=> b!4841637 (= e!3025802 e!3025803)))

(declare-fun res!2064390 () Bool)

(assert (=> b!4841637 (=> (not res!2064390) (not e!3025803))))

(assert (=> b!4841637 (= res!2064390 ((_ is Cons!55403) (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(declare-fun b!4841638 () Bool)

(assert (=> b!4841638 (= e!3025803 (containsKey!4607 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) key!6540))))

(assert (= (and d!1551905 (not res!2064389)) b!4841637))

(assert (= (and b!4841637 res!2064390) b!4841638))

(declare-fun m!5837290 () Bool)

(assert (=> b!4841638 m!5837290))

(assert (=> b!4841579 d!1551905))

(declare-fun bs!1168535 () Bool)

(declare-fun d!1551907 () Bool)

(assert (= bs!1168535 (and d!1551907 start!503972)))

(declare-fun lambda!241402 () Int)

(assert (=> bs!1168535 (not (= lambda!241402 lambda!241386))))

(declare-fun bs!1168536 () Bool)

(assert (= bs!1168536 (and d!1551907 d!1551901)))

(assert (=> bs!1168536 (not (= lambda!241402 lambda!241399))))

(assert (=> d!1551907 true))

(assert (=> d!1551907 (= (allKeysSameHashInMap!2756 lm!2671 hashF!1662) (forall!12868 (toList!7787 lm!2671) lambda!241402))))

(declare-fun bs!1168537 () Bool)

(assert (= bs!1168537 d!1551907))

(declare-fun m!5837292 () Bool)

(assert (=> bs!1168537 m!5837292))

(assert (=> b!4841574 d!1551907))

(declare-fun d!1551909 () Bool)

(declare-fun res!2064391 () Bool)

(declare-fun e!3025804 () Bool)

(assert (=> d!1551909 (=> res!2064391 e!3025804)))

(assert (=> d!1551909 (= res!2064391 ((_ is Nil!55404) (toList!7787 lt!1985508)))))

(assert (=> d!1551909 (= (forall!12868 (toList!7787 lt!1985508) lambda!241386) e!3025804)))

(declare-fun b!4841641 () Bool)

(declare-fun e!3025805 () Bool)

(assert (=> b!4841641 (= e!3025804 e!3025805)))

(declare-fun res!2064392 () Bool)

(assert (=> b!4841641 (=> (not res!2064392) (not e!3025805))))

(assert (=> b!4841641 (= res!2064392 (dynLambda!22306 lambda!241386 (h!61839 (toList!7787 lt!1985508))))))

(declare-fun b!4841642 () Bool)

(assert (=> b!4841642 (= e!3025805 (forall!12868 (t!363024 (toList!7787 lt!1985508)) lambda!241386))))

(assert (= (and d!1551909 (not res!2064391)) b!4841641))

(assert (= (and b!4841641 res!2064392) b!4841642))

(declare-fun b_lambda!191391 () Bool)

(assert (=> (not b_lambda!191391) (not b!4841641)))

(declare-fun m!5837294 () Bool)

(assert (=> b!4841641 m!5837294))

(declare-fun m!5837296 () Bool)

(assert (=> b!4841642 m!5837296))

(assert (=> b!4841572 d!1551909))

(declare-fun d!1551911 () Bool)

(assert (=> d!1551911 (= (tail!9500 lm!2671) (ListLongMap!6344 (tail!9499 (toList!7787 lm!2671))))))

(declare-fun bs!1168538 () Bool)

(assert (= bs!1168538 d!1551911))

(assert (=> bs!1168538 m!5837222))

(assert (=> b!4841572 d!1551911))

(declare-fun bs!1168539 () Bool)

(declare-fun d!1551913 () Bool)

(assert (= bs!1168539 (and d!1551913 start!503972)))

(declare-fun lambda!241405 () Int)

(assert (=> bs!1168539 (= lambda!241405 lambda!241386)))

(declare-fun bs!1168540 () Bool)

(assert (= bs!1168540 (and d!1551913 d!1551901)))

(assert (=> bs!1168540 (= lambda!241405 lambda!241399)))

(declare-fun bs!1168541 () Bool)

(assert (= bs!1168541 (and d!1551913 d!1551907)))

(assert (=> bs!1168541 (not (= lambda!241405 lambda!241402))))

(declare-fun lt!1985520 () ListMap!7125)

(declare-fun invariantList!1882 (List!55527) Bool)

(assert (=> d!1551913 (invariantList!1882 (toList!7788 lt!1985520))))

(declare-fun e!3025808 () ListMap!7125)

(assert (=> d!1551913 (= lt!1985520 e!3025808)))

(declare-fun c!824429 () Bool)

(assert (=> d!1551913 (= c!824429 ((_ is Cons!55404) (toList!7787 lm!2671)))))

(assert (=> d!1551913 (forall!12868 (toList!7787 lm!2671) lambda!241405)))

(assert (=> d!1551913 (= (extractMap!2782 (toList!7787 lm!2671)) lt!1985520)))

(declare-fun b!4841647 () Bool)

(assert (=> b!4841647 (= e!3025808 (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (toList!7787 lm!2671))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun b!4841648 () Bool)

(assert (=> b!4841648 (= e!3025808 (ListMap!7126 Nil!55403))))

(assert (= (and d!1551913 c!824429) b!4841647))

(assert (= (and d!1551913 (not c!824429)) b!4841648))

(declare-fun m!5837298 () Bool)

(assert (=> d!1551913 m!5837298))

(declare-fun m!5837300 () Bool)

(assert (=> d!1551913 m!5837300))

(assert (=> b!4841647 m!5837216))

(assert (=> b!4841647 m!5837216))

(assert (=> b!4841647 m!5837218))

(assert (=> b!4841573 d!1551913))

(declare-fun b!4841687 () Bool)

(assert (=> b!4841687 true))

(declare-fun bs!1168553 () Bool)

(declare-fun b!4841686 () Bool)

(assert (= bs!1168553 (and b!4841686 b!4841687)))

(declare-fun lambda!241468 () Int)

(declare-fun lambda!241467 () Int)

(assert (=> bs!1168553 (= lambda!241468 lambda!241467)))

(assert (=> b!4841686 true))

(declare-fun lambda!241469 () Int)

(declare-fun lt!1985640 () ListMap!7125)

(assert (=> bs!1168553 (= (= lt!1985640 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241469 lambda!241467))))

(assert (=> b!4841686 (= (= lt!1985640 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241469 lambda!241468))))

(assert (=> b!4841686 true))

(declare-fun bs!1168554 () Bool)

(declare-fun d!1551915 () Bool)

(assert (= bs!1168554 (and d!1551915 b!4841687)))

(declare-fun lambda!241470 () Int)

(declare-fun lt!1985634 () ListMap!7125)

(assert (=> bs!1168554 (= (= lt!1985634 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241470 lambda!241467))))

(declare-fun bs!1168555 () Bool)

(assert (= bs!1168555 (and d!1551915 b!4841686)))

(assert (=> bs!1168555 (= (= lt!1985634 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241470 lambda!241468))))

(assert (=> bs!1168555 (= (= lt!1985634 lt!1985640) (= lambda!241470 lambda!241469))))

(assert (=> d!1551915 true))

(declare-fun call!337446 () Bool)

(declare-fun bm!337441 () Bool)

(declare-fun c!824436 () Bool)

(declare-fun forall!12870 (List!55527 Int) Bool)

(assert (=> bm!337441 (= call!337446 (forall!12870 (ite c!824436 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_2!32772 (h!61839 (toList!7787 lm!2671)))) (ite c!824436 lambda!241467 lambda!241469)))))

(declare-fun b!4841685 () Bool)

(declare-fun e!3025831 () Bool)

(assert (=> b!4841685 (= e!3025831 (invariantList!1882 (toList!7788 lt!1985634)))))

(declare-fun bm!337442 () Bool)

(declare-fun call!337447 () Bool)

(assert (=> bm!337442 (= call!337447 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (ite c!824436 lambda!241467 lambda!241468)))))

(declare-fun e!3025832 () ListMap!7125)

(assert (=> b!4841686 (= e!3025832 lt!1985640)))

(declare-fun lt!1985632 () ListMap!7125)

(declare-fun +!2616 (ListMap!7125 tuple2!58954) ListMap!7125)

(assert (=> b!4841686 (= lt!1985632 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> b!4841686 (= lt!1985640 (addToMapMapFromBucket!1922 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985644 () Unit!145084)

(declare-fun call!337448 () Unit!145084)

(assert (=> b!4841686 (= lt!1985644 call!337448)))

(assert (=> b!4841686 call!337447))

(declare-fun lt!1985637 () Unit!145084)

(assert (=> b!4841686 (= lt!1985637 lt!1985644)))

(assert (=> b!4841686 (forall!12870 (toList!7788 lt!1985632) lambda!241469)))

(declare-fun lt!1985641 () Unit!145084)

(declare-fun Unit!145097 () Unit!145084)

(assert (=> b!4841686 (= lt!1985641 Unit!145097)))

(assert (=> b!4841686 (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241469)))

(declare-fun lt!1985638 () Unit!145084)

(declare-fun Unit!145098 () Unit!145084)

(assert (=> b!4841686 (= lt!1985638 Unit!145098)))

(declare-fun lt!1985646 () Unit!145084)

(declare-fun Unit!145099 () Unit!145084)

(assert (=> b!4841686 (= lt!1985646 Unit!145099)))

(declare-fun lt!1985636 () Unit!145084)

(declare-fun forallContained!4500 (List!55527 Int tuple2!58954) Unit!145084)

(assert (=> b!4841686 (= lt!1985636 (forallContained!4500 (toList!7788 lt!1985632) lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun contains!19109 (ListMap!7125 K!17169) Bool)

(assert (=> b!4841686 (contains!19109 lt!1985632 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun lt!1985627 () Unit!145084)

(declare-fun Unit!145100 () Unit!145084)

(assert (=> b!4841686 (= lt!1985627 Unit!145100)))

(assert (=> b!4841686 (contains!19109 lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun lt!1985635 () Unit!145084)

(declare-fun Unit!145101 () Unit!145084)

(assert (=> b!4841686 (= lt!1985635 Unit!145101)))

(assert (=> b!4841686 (forall!12870 (_2!32772 (h!61839 (toList!7787 lm!2671))) lambda!241469)))

(declare-fun lt!1985630 () Unit!145084)

(declare-fun Unit!145102 () Unit!145084)

(assert (=> b!4841686 (= lt!1985630 Unit!145102)))

(assert (=> b!4841686 (forall!12870 (toList!7788 lt!1985632) lambda!241469)))

(declare-fun lt!1985639 () Unit!145084)

(declare-fun Unit!145103 () Unit!145084)

(assert (=> b!4841686 (= lt!1985639 Unit!145103)))

(declare-fun lt!1985643 () Unit!145084)

(declare-fun Unit!145104 () Unit!145084)

(assert (=> b!4841686 (= lt!1985643 Unit!145104)))

(declare-fun lt!1985642 () Unit!145084)

(declare-fun addForallContainsKeyThenBeforeAdding!1054 (ListMap!7125 ListMap!7125 K!17169 V!17415) Unit!145084)

(assert (=> b!4841686 (= lt!1985642 (addForallContainsKeyThenBeforeAdding!1054 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> b!4841686 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241469)))

(declare-fun lt!1985628 () Unit!145084)

(assert (=> b!4841686 (= lt!1985628 lt!1985642)))

(assert (=> b!4841686 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241469)))

(declare-fun lt!1985647 () Unit!145084)

(declare-fun Unit!145105 () Unit!145084)

(assert (=> b!4841686 (= lt!1985647 Unit!145105)))

(declare-fun res!2064412 () Bool)

(assert (=> b!4841686 (= res!2064412 call!337446)))

(declare-fun e!3025830 () Bool)

(assert (=> b!4841686 (=> (not res!2064412) (not e!3025830))))

(assert (=> b!4841686 e!3025830))

(declare-fun lt!1985633 () Unit!145084)

(declare-fun Unit!145106 () Unit!145084)

(assert (=> b!4841686 (= lt!1985633 Unit!145106)))

(assert (=> b!4841687 (= e!3025832 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))

(declare-fun lt!1985629 () Unit!145084)

(assert (=> b!4841687 (= lt!1985629 call!337448)))

(assert (=> b!4841687 call!337447))

(declare-fun lt!1985631 () Unit!145084)

(assert (=> b!4841687 (= lt!1985631 lt!1985629)))

(assert (=> b!4841687 call!337446))

(declare-fun lt!1985645 () Unit!145084)

(declare-fun Unit!145107 () Unit!145084)

(assert (=> b!4841687 (= lt!1985645 Unit!145107)))

(assert (=> d!1551915 e!3025831))

(declare-fun res!2064410 () Bool)

(assert (=> d!1551915 (=> (not res!2064410) (not e!3025831))))

(assert (=> d!1551915 (= res!2064410 (forall!12870 (_2!32772 (h!61839 (toList!7787 lm!2671))) lambda!241470))))

(assert (=> d!1551915 (= lt!1985634 e!3025832)))

(assert (=> d!1551915 (= c!824436 ((_ is Nil!55403) (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(declare-fun noDuplicateKeys!2550 (List!55527) Bool)

(assert (=> d!1551915 (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lm!2671))))))

(assert (=> d!1551915 (= (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (toList!7787 lm!2671))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lt!1985634)))

(declare-fun bm!337443 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1056 (ListMap!7125) Unit!145084)

(assert (=> bm!337443 (= call!337448 (lemmaContainsAllItsOwnKeys!1056 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun b!4841688 () Bool)

(declare-fun res!2064411 () Bool)

(assert (=> b!4841688 (=> (not res!2064411) (not e!3025831))))

(assert (=> b!4841688 (= res!2064411 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241470))))

(declare-fun b!4841689 () Bool)

(assert (=> b!4841689 (= e!3025830 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241469))))

(assert (= (and d!1551915 c!824436) b!4841687))

(assert (= (and d!1551915 (not c!824436)) b!4841686))

(assert (= (and b!4841686 res!2064412) b!4841689))

(assert (= (or b!4841687 b!4841686) bm!337443))

(assert (= (or b!4841687 b!4841686) bm!337441))

(assert (= (or b!4841687 b!4841686) bm!337442))

(assert (= (and d!1551915 res!2064410) b!4841688))

(assert (= (and b!4841688 res!2064411) b!4841685))

(declare-fun m!5837350 () Bool)

(assert (=> bm!337442 m!5837350))

(declare-fun m!5837352 () Bool)

(assert (=> bm!337441 m!5837352))

(declare-fun m!5837354 () Bool)

(assert (=> b!4841689 m!5837354))

(declare-fun m!5837356 () Bool)

(assert (=> b!4841685 m!5837356))

(assert (=> bm!337443 m!5837216))

(declare-fun m!5837358 () Bool)

(assert (=> bm!337443 m!5837358))

(assert (=> b!4841686 m!5837354))

(declare-fun m!5837360 () Bool)

(assert (=> b!4841686 m!5837360))

(declare-fun m!5837362 () Bool)

(assert (=> b!4841686 m!5837362))

(declare-fun m!5837364 () Bool)

(assert (=> b!4841686 m!5837364))

(declare-fun m!5837366 () Bool)

(assert (=> b!4841686 m!5837366))

(assert (=> b!4841686 m!5837354))

(declare-fun m!5837368 () Bool)

(assert (=> b!4841686 m!5837368))

(declare-fun m!5837370 () Bool)

(assert (=> b!4841686 m!5837370))

(declare-fun m!5837372 () Bool)

(assert (=> b!4841686 m!5837372))

(declare-fun m!5837374 () Bool)

(assert (=> b!4841686 m!5837374))

(assert (=> b!4841686 m!5837216))

(assert (=> b!4841686 m!5837368))

(assert (=> b!4841686 m!5837362))

(assert (=> b!4841686 m!5837216))

(declare-fun m!5837376 () Bool)

(assert (=> b!4841686 m!5837376))

(declare-fun m!5837378 () Bool)

(assert (=> d!1551915 m!5837378))

(declare-fun m!5837380 () Bool)

(assert (=> d!1551915 m!5837380))

(declare-fun m!5837382 () Bool)

(assert (=> b!4841688 m!5837382))

(assert (=> b!4841573 d!1551915))

(declare-fun bs!1168556 () Bool)

(declare-fun d!1551927 () Bool)

(assert (= bs!1168556 (and d!1551927 start!503972)))

(declare-fun lambda!241471 () Int)

(assert (=> bs!1168556 (= lambda!241471 lambda!241386)))

(declare-fun bs!1168557 () Bool)

(assert (= bs!1168557 (and d!1551927 d!1551901)))

(assert (=> bs!1168557 (= lambda!241471 lambda!241399)))

(declare-fun bs!1168558 () Bool)

(assert (= bs!1168558 (and d!1551927 d!1551907)))

(assert (=> bs!1168558 (not (= lambda!241471 lambda!241402))))

(declare-fun bs!1168559 () Bool)

(assert (= bs!1168559 (and d!1551927 d!1551913)))

(assert (=> bs!1168559 (= lambda!241471 lambda!241405)))

(declare-fun lt!1985648 () ListMap!7125)

(assert (=> d!1551927 (invariantList!1882 (toList!7788 lt!1985648))))

(declare-fun e!3025833 () ListMap!7125)

(assert (=> d!1551927 (= lt!1985648 e!3025833)))

(declare-fun c!824437 () Bool)

(assert (=> d!1551927 (= c!824437 ((_ is Cons!55404) (t!363024 (toList!7787 lm!2671))))))

(assert (=> d!1551927 (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241471)))

(assert (=> d!1551927 (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985648)))

(declare-fun b!4841692 () Bool)

(assert (=> b!4841692 (= e!3025833 (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))))))

(declare-fun b!4841693 () Bool)

(assert (=> b!4841693 (= e!3025833 (ListMap!7126 Nil!55403))))

(assert (= (and d!1551927 c!824437) b!4841692))

(assert (= (and d!1551927 (not c!824437)) b!4841693))

(declare-fun m!5837384 () Bool)

(assert (=> d!1551927 m!5837384))

(declare-fun m!5837386 () Bool)

(assert (=> d!1551927 m!5837386))

(declare-fun m!5837388 () Bool)

(assert (=> b!4841692 m!5837388))

(assert (=> b!4841692 m!5837388))

(declare-fun m!5837390 () Bool)

(assert (=> b!4841692 m!5837390))

(assert (=> b!4841573 d!1551927))

(declare-fun d!1551929 () Bool)

(declare-fun res!2064415 () Bool)

(declare-fun e!3025836 () Bool)

(assert (=> d!1551929 (=> res!2064415 e!3025836)))

(declare-fun e!3025834 () Bool)

(assert (=> d!1551929 (= res!2064415 e!3025834)))

(declare-fun res!2064413 () Bool)

(assert (=> d!1551929 (=> (not res!2064413) (not e!3025834))))

(assert (=> d!1551929 (= res!2064413 ((_ is Cons!55404) (toList!7787 lm!2671)))))

(assert (=> d!1551929 (= (containsKeyBiggerList!724 (toList!7787 lm!2671) key!6540) e!3025836)))

(declare-fun b!4841694 () Bool)

(assert (=> b!4841694 (= e!3025834 (containsKey!4607 (_2!32772 (h!61839 (toList!7787 lm!2671))) key!6540))))

(declare-fun b!4841695 () Bool)

(declare-fun e!3025835 () Bool)

(assert (=> b!4841695 (= e!3025836 e!3025835)))

(declare-fun res!2064414 () Bool)

(assert (=> b!4841695 (=> (not res!2064414) (not e!3025835))))

(assert (=> b!4841695 (= res!2064414 ((_ is Cons!55404) (toList!7787 lm!2671)))))

(declare-fun b!4841696 () Bool)

(assert (=> b!4841696 (= e!3025835 (containsKeyBiggerList!724 (t!363024 (toList!7787 lm!2671)) key!6540))))

(assert (= (and d!1551929 res!2064413) b!4841694))

(assert (= (and d!1551929 (not res!2064415)) b!4841695))

(assert (= (and b!4841695 res!2064414) b!4841696))

(assert (=> b!4841694 m!5837228))

(assert (=> b!4841696 m!5837220))

(assert (=> b!4841576 d!1551929))

(declare-fun bs!1168560 () Bool)

(declare-fun d!1551931 () Bool)

(assert (= bs!1168560 (and d!1551931 d!1551907)))

(declare-fun lambda!241472 () Int)

(assert (=> bs!1168560 (= lambda!241472 lambda!241402)))

(declare-fun bs!1168561 () Bool)

(assert (= bs!1168561 (and d!1551931 start!503972)))

(assert (=> bs!1168561 (not (= lambda!241472 lambda!241386))))

(declare-fun bs!1168562 () Bool)

(assert (= bs!1168562 (and d!1551931 d!1551927)))

(assert (=> bs!1168562 (not (= lambda!241472 lambda!241471))))

(declare-fun bs!1168563 () Bool)

(assert (= bs!1168563 (and d!1551931 d!1551901)))

(assert (=> bs!1168563 (not (= lambda!241472 lambda!241399))))

(declare-fun bs!1168564 () Bool)

(assert (= bs!1168564 (and d!1551931 d!1551913)))

(assert (=> bs!1168564 (not (= lambda!241472 lambda!241405))))

(assert (=> d!1551931 true))

(assert (=> d!1551931 (= (allKeysSameHashInMap!2756 lt!1985508 hashF!1662) (forall!12868 (toList!7787 lt!1985508) lambda!241472))))

(declare-fun bs!1168565 () Bool)

(assert (= bs!1168565 d!1551931))

(declare-fun m!5837392 () Bool)

(assert (=> bs!1168565 m!5837392))

(assert (=> b!4841571 d!1551931))

(declare-fun b!4841701 () Bool)

(declare-fun e!3025839 () Bool)

(declare-fun tp!1363983 () Bool)

(declare-fun tp!1363984 () Bool)

(assert (=> b!4841701 (= e!3025839 (and tp!1363983 tp!1363984))))

(assert (=> b!4841577 (= tp!1363972 e!3025839)))

(assert (= (and b!4841577 ((_ is Cons!55404) (toList!7787 lm!2671))) b!4841701))

(declare-fun b_lambda!191399 () Bool)

(assert (= b_lambda!191391 (or start!503972 b_lambda!191399)))

(declare-fun bs!1168566 () Bool)

(declare-fun d!1551933 () Bool)

(assert (= bs!1168566 (and d!1551933 start!503972)))

(assert (=> bs!1168566 (= (dynLambda!22306 lambda!241386 (h!61839 (toList!7787 lt!1985508))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lt!1985508)))))))

(declare-fun m!5837394 () Bool)

(assert (=> bs!1168566 m!5837394))

(assert (=> b!4841641 d!1551933))

(declare-fun b_lambda!191401 () Bool)

(assert (= b_lambda!191387 (or start!503972 b_lambda!191401)))

(declare-fun bs!1168567 () Bool)

(declare-fun d!1551935 () Bool)

(assert (= bs!1168567 (and d!1551935 start!503972)))

(assert (=> bs!1168567 (= (dynLambda!22306 lambda!241386 (h!61839 (toList!7787 lm!2671))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> bs!1168567 m!5837380))

(assert (=> b!4841607 d!1551935))

(check-sat (not b!4841642) (not b!4841624) (not b!4841638) (not b!4841621) (not b_lambda!191401) (not b!4841694) (not b!4841689) (not d!1551915) (not d!1551887) (not b!4841696) (not b!4841626) (not b!4841647) (not bm!337442) (not b!4841701) (not b!4841692) (not bm!337443) (not bm!337441) (not d!1551931) (not d!1551913) (not b!4841685) (not b_lambda!191399) (not d!1551911) (not d!1551901) (not bs!1168567) (not d!1551907) (not bs!1168566) (not b!4841608) (not b!4841688) (not d!1551927) (not b!4841623) tp_is_empty!34983 (not b!4841686))
(check-sat)
(get-model)

(declare-fun bs!1168632 () Bool)

(declare-fun b!4841809 () Bool)

(assert (= bs!1168632 (and b!4841809 b!4841687)))

(declare-fun lambda!241490 () Int)

(assert (=> bs!1168632 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241490 lambda!241467))))

(declare-fun bs!1168633 () Bool)

(assert (= bs!1168633 (and b!4841809 b!4841686)))

(assert (=> bs!1168633 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241490 lambda!241468))))

(assert (=> bs!1168633 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985640) (= lambda!241490 lambda!241469))))

(declare-fun bs!1168634 () Bool)

(assert (= bs!1168634 (and b!4841809 d!1551915)))

(assert (=> bs!1168634 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985634) (= lambda!241490 lambda!241470))))

(assert (=> b!4841809 true))

(declare-fun bs!1168635 () Bool)

(declare-fun b!4841808 () Bool)

(assert (= bs!1168635 (and b!4841808 b!4841686)))

(declare-fun lambda!241491 () Int)

(assert (=> bs!1168635 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985640) (= lambda!241491 lambda!241469))))

(declare-fun bs!1168636 () Bool)

(assert (= bs!1168636 (and b!4841808 b!4841809)))

(assert (=> bs!1168636 (= lambda!241491 lambda!241490)))

(declare-fun bs!1168637 () Bool)

(assert (= bs!1168637 (and b!4841808 b!4841687)))

(assert (=> bs!1168637 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241491 lambda!241467))))

(declare-fun bs!1168638 () Bool)

(assert (= bs!1168638 (and b!4841808 d!1551915)))

(assert (=> bs!1168638 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985634) (= lambda!241491 lambda!241470))))

(assert (=> bs!1168635 (= (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241491 lambda!241468))))

(assert (=> b!4841808 true))

(declare-fun lambda!241492 () Int)

(declare-fun lt!1985758 () ListMap!7125)

(assert (=> bs!1168635 (= (= lt!1985758 lt!1985640) (= lambda!241492 lambda!241469))))

(assert (=> bs!1168636 (= (= lt!1985758 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241492 lambda!241490))))

(assert (=> b!4841808 (= (= lt!1985758 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241492 lambda!241491))))

(assert (=> bs!1168637 (= (= lt!1985758 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241492 lambda!241467))))

(assert (=> bs!1168638 (= (= lt!1985758 lt!1985634) (= lambda!241492 lambda!241470))))

(assert (=> bs!1168635 (= (= lt!1985758 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241492 lambda!241468))))

(assert (=> b!4841808 true))

(declare-fun bs!1168644 () Bool)

(declare-fun d!1552003 () Bool)

(assert (= bs!1168644 (and d!1552003 b!4841686)))

(declare-fun lt!1985752 () ListMap!7125)

(declare-fun lambda!241493 () Int)

(assert (=> bs!1168644 (= (= lt!1985752 lt!1985640) (= lambda!241493 lambda!241469))))

(declare-fun bs!1168646 () Bool)

(assert (= bs!1168646 (and d!1552003 b!4841809)))

(assert (=> bs!1168646 (= (= lt!1985752 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241493 lambda!241490))))

(declare-fun bs!1168648 () Bool)

(assert (= bs!1168648 (and d!1552003 b!4841808)))

(assert (=> bs!1168648 (= (= lt!1985752 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241493 lambda!241491))))

(assert (=> bs!1168648 (= (= lt!1985752 lt!1985758) (= lambda!241493 lambda!241492))))

(declare-fun bs!1168650 () Bool)

(assert (= bs!1168650 (and d!1552003 b!4841687)))

(assert (=> bs!1168650 (= (= lt!1985752 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241493 lambda!241467))))

(declare-fun bs!1168652 () Bool)

(assert (= bs!1168652 (and d!1552003 d!1551915)))

(assert (=> bs!1168652 (= (= lt!1985752 lt!1985634) (= lambda!241493 lambda!241470))))

(assert (=> bs!1168644 (= (= lt!1985752 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241493 lambda!241468))))

(assert (=> d!1552003 true))

(declare-fun call!337459 () Bool)

(declare-fun bm!337454 () Bool)

(declare-fun c!824453 () Bool)

(assert (=> bm!337454 (= call!337459 (forall!12870 (ite c!824453 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))) (ite c!824453 lambda!241490 lambda!241492)))))

(declare-fun b!4841807 () Bool)

(declare-fun e!3025925 () Bool)

(assert (=> b!4841807 (= e!3025925 (invariantList!1882 (toList!7788 lt!1985752)))))

(declare-fun bm!337455 () Bool)

(declare-fun call!337460 () Bool)

(assert (=> bm!337455 (= call!337460 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (ite c!824453 lambda!241490 lambda!241491)))))

(declare-fun e!3025926 () ListMap!7125)

(assert (=> b!4841808 (= e!3025926 lt!1985758)))

(declare-fun lt!1985750 () ListMap!7125)

(assert (=> b!4841808 (= lt!1985750 (+!2616 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))))))

(assert (=> b!4841808 (= lt!1985758 (addToMapMapFromBucket!1922 (t!363023 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))) (+!2616 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))))

(declare-fun lt!1985762 () Unit!145084)

(declare-fun call!337461 () Unit!145084)

(assert (=> b!4841808 (= lt!1985762 call!337461)))

(assert (=> b!4841808 call!337460))

(declare-fun lt!1985755 () Unit!145084)

(assert (=> b!4841808 (= lt!1985755 lt!1985762)))

(assert (=> b!4841808 (forall!12870 (toList!7788 lt!1985750) lambda!241492)))

(declare-fun lt!1985759 () Unit!145084)

(declare-fun Unit!145119 () Unit!145084)

(assert (=> b!4841808 (= lt!1985759 Unit!145119)))

(assert (=> b!4841808 (forall!12870 (t!363023 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))) lambda!241492)))

(declare-fun lt!1985756 () Unit!145084)

(declare-fun Unit!145120 () Unit!145084)

(assert (=> b!4841808 (= lt!1985756 Unit!145120)))

(declare-fun lt!1985764 () Unit!145084)

(declare-fun Unit!145121 () Unit!145084)

(assert (=> b!4841808 (= lt!1985764 Unit!145121)))

(declare-fun lt!1985754 () Unit!145084)

(assert (=> b!4841808 (= lt!1985754 (forallContained!4500 (toList!7788 lt!1985750) lambda!241492 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))))))

(assert (=> b!4841808 (contains!19109 lt!1985750 (_1!32771 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985745 () Unit!145084)

(declare-fun Unit!145122 () Unit!145084)

(assert (=> b!4841808 (= lt!1985745 Unit!145122)))

(assert (=> b!4841808 (contains!19109 lt!1985758 (_1!32771 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985753 () Unit!145084)

(declare-fun Unit!145123 () Unit!145084)

(assert (=> b!4841808 (= lt!1985753 Unit!145123)))

(assert (=> b!4841808 (forall!12870 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) lambda!241492)))

(declare-fun lt!1985748 () Unit!145084)

(declare-fun Unit!145124 () Unit!145084)

(assert (=> b!4841808 (= lt!1985748 Unit!145124)))

(assert (=> b!4841808 (forall!12870 (toList!7788 lt!1985750) lambda!241492)))

(declare-fun lt!1985757 () Unit!145084)

(declare-fun Unit!145125 () Unit!145084)

(assert (=> b!4841808 (= lt!1985757 Unit!145125)))

(declare-fun lt!1985761 () Unit!145084)

(declare-fun Unit!145126 () Unit!145084)

(assert (=> b!4841808 (= lt!1985761 Unit!145126)))

(declare-fun lt!1985760 () Unit!145084)

(assert (=> b!4841808 (= lt!1985760 (addForallContainsKeyThenBeforeAdding!1054 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985758 (_1!32771 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))))

(assert (=> b!4841808 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) lambda!241492)))

(declare-fun lt!1985746 () Unit!145084)

(assert (=> b!4841808 (= lt!1985746 lt!1985760)))

(assert (=> b!4841808 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) lambda!241492)))

(declare-fun lt!1985765 () Unit!145084)

(declare-fun Unit!145127 () Unit!145084)

(assert (=> b!4841808 (= lt!1985765 Unit!145127)))

(declare-fun res!2064492 () Bool)

(assert (=> b!4841808 (= res!2064492 call!337459)))

(declare-fun e!3025924 () Bool)

(assert (=> b!4841808 (=> (not res!2064492) (not e!3025924))))

(assert (=> b!4841808 e!3025924))

(declare-fun lt!1985751 () Unit!145084)

(declare-fun Unit!145128 () Unit!145084)

(assert (=> b!4841808 (= lt!1985751 Unit!145128)))

(assert (=> b!4841809 (= e!3025926 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun lt!1985747 () Unit!145084)

(assert (=> b!4841809 (= lt!1985747 call!337461)))

(assert (=> b!4841809 call!337460))

(declare-fun lt!1985749 () Unit!145084)

(assert (=> b!4841809 (= lt!1985749 lt!1985747)))

(assert (=> b!4841809 call!337459))

(declare-fun lt!1985763 () Unit!145084)

(declare-fun Unit!145129 () Unit!145084)

(assert (=> b!4841809 (= lt!1985763 Unit!145129)))

(assert (=> d!1552003 e!3025925))

(declare-fun res!2064490 () Bool)

(assert (=> d!1552003 (=> (not res!2064490) (not e!3025925))))

(assert (=> d!1552003 (= res!2064490 (forall!12870 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) lambda!241493))))

(assert (=> d!1552003 (= lt!1985752 e!3025926)))

(assert (=> d!1552003 (= c!824453 ((_ is Nil!55403) (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> d!1552003 (noDuplicateKeys!2550 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))))

(assert (=> d!1552003 (= (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) lt!1985752)))

(declare-fun bm!337456 () Bool)

(assert (=> bm!337456 (= call!337461 (lemmaContainsAllItsOwnKeys!1056 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))))))

(declare-fun b!4841810 () Bool)

(declare-fun res!2064491 () Bool)

(assert (=> b!4841810 (=> (not res!2064491) (not e!3025925))))

(assert (=> b!4841810 (= res!2064491 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) lambda!241493))))

(declare-fun b!4841811 () Bool)

(assert (=> b!4841811 (= e!3025924 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) lambda!241492))))

(assert (= (and d!1552003 c!824453) b!4841809))

(assert (= (and d!1552003 (not c!824453)) b!4841808))

(assert (= (and b!4841808 res!2064492) b!4841811))

(assert (= (or b!4841809 b!4841808) bm!337456))

(assert (= (or b!4841809 b!4841808) bm!337454))

(assert (= (or b!4841809 b!4841808) bm!337455))

(assert (= (and d!1552003 res!2064490) b!4841810))

(assert (= (and b!4841810 res!2064491) b!4841807))

(declare-fun m!5837642 () Bool)

(assert (=> bm!337455 m!5837642))

(declare-fun m!5837644 () Bool)

(assert (=> bm!337454 m!5837644))

(declare-fun m!5837646 () Bool)

(assert (=> b!4841811 m!5837646))

(declare-fun m!5837648 () Bool)

(assert (=> b!4841807 m!5837648))

(assert (=> bm!337456 m!5837388))

(declare-fun m!5837650 () Bool)

(assert (=> bm!337456 m!5837650))

(assert (=> b!4841808 m!5837646))

(declare-fun m!5837652 () Bool)

(assert (=> b!4841808 m!5837652))

(declare-fun m!5837654 () Bool)

(assert (=> b!4841808 m!5837654))

(declare-fun m!5837656 () Bool)

(assert (=> b!4841808 m!5837656))

(declare-fun m!5837658 () Bool)

(assert (=> b!4841808 m!5837658))

(assert (=> b!4841808 m!5837646))

(declare-fun m!5837660 () Bool)

(assert (=> b!4841808 m!5837660))

(declare-fun m!5837662 () Bool)

(assert (=> b!4841808 m!5837662))

(declare-fun m!5837664 () Bool)

(assert (=> b!4841808 m!5837664))

(declare-fun m!5837666 () Bool)

(assert (=> b!4841808 m!5837666))

(assert (=> b!4841808 m!5837388))

(assert (=> b!4841808 m!5837660))

(assert (=> b!4841808 m!5837654))

(assert (=> b!4841808 m!5837388))

(declare-fun m!5837668 () Bool)

(assert (=> b!4841808 m!5837668))

(declare-fun m!5837670 () Bool)

(assert (=> d!1552003 m!5837670))

(declare-fun m!5837672 () Bool)

(assert (=> d!1552003 m!5837672))

(declare-fun m!5837674 () Bool)

(assert (=> b!4841810 m!5837674))

(assert (=> b!4841692 d!1552003))

(declare-fun bs!1168657 () Bool)

(declare-fun d!1552037 () Bool)

(assert (= bs!1168657 (and d!1552037 start!503972)))

(declare-fun lambda!241494 () Int)

(assert (=> bs!1168657 (= lambda!241494 lambda!241386)))

(declare-fun bs!1168658 () Bool)

(assert (= bs!1168658 (and d!1552037 d!1551927)))

(assert (=> bs!1168658 (= lambda!241494 lambda!241471)))

(declare-fun bs!1168659 () Bool)

(assert (= bs!1168659 (and d!1552037 d!1551901)))

(assert (=> bs!1168659 (= lambda!241494 lambda!241399)))

(declare-fun bs!1168660 () Bool)

(assert (= bs!1168660 (and d!1552037 d!1551913)))

(assert (=> bs!1168660 (= lambda!241494 lambda!241405)))

(declare-fun bs!1168661 () Bool)

(assert (= bs!1168661 (and d!1552037 d!1551931)))

(assert (=> bs!1168661 (not (= lambda!241494 lambda!241472))))

(declare-fun bs!1168662 () Bool)

(assert (= bs!1168662 (and d!1552037 d!1551907)))

(assert (=> bs!1168662 (not (= lambda!241494 lambda!241402))))

(declare-fun lt!1985766 () ListMap!7125)

(assert (=> d!1552037 (invariantList!1882 (toList!7788 lt!1985766))))

(declare-fun e!3025944 () ListMap!7125)

(assert (=> d!1552037 (= lt!1985766 e!3025944)))

(declare-fun c!824454 () Bool)

(assert (=> d!1552037 (= c!824454 ((_ is Cons!55404) (t!363024 (t!363024 (toList!7787 lm!2671)))))))

(assert (=> d!1552037 (forall!12868 (t!363024 (t!363024 (toList!7787 lm!2671))) lambda!241494)))

(assert (=> d!1552037 (= (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671)))) lt!1985766)))

(declare-fun b!4841831 () Bool)

(assert (=> b!4841831 (= e!3025944 (addToMapMapFromBucket!1922 (_2!32772 (h!61839 (t!363024 (t!363024 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (t!363024 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun b!4841832 () Bool)

(assert (=> b!4841832 (= e!3025944 (ListMap!7126 Nil!55403))))

(assert (= (and d!1552037 c!824454) b!4841831))

(assert (= (and d!1552037 (not c!824454)) b!4841832))

(declare-fun m!5837676 () Bool)

(assert (=> d!1552037 m!5837676))

(declare-fun m!5837678 () Bool)

(assert (=> d!1552037 m!5837678))

(declare-fun m!5837680 () Bool)

(assert (=> b!4841831 m!5837680))

(assert (=> b!4841831 m!5837680))

(declare-fun m!5837682 () Bool)

(assert (=> b!4841831 m!5837682))

(assert (=> b!4841692 d!1552037))

(declare-fun d!1552039 () Bool)

(declare-fun res!2064506 () Bool)

(declare-fun e!3025945 () Bool)

(assert (=> d!1552039 (=> res!2064506 e!3025945)))

(assert (=> d!1552039 (= res!2064506 ((_ is Nil!55404) (t!363024 (toList!7787 lm!2671))))))

(assert (=> d!1552039 (= (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241386) e!3025945)))

(declare-fun b!4841833 () Bool)

(declare-fun e!3025946 () Bool)

(assert (=> b!4841833 (= e!3025945 e!3025946)))

(declare-fun res!2064507 () Bool)

(assert (=> b!4841833 (=> (not res!2064507) (not e!3025946))))

(assert (=> b!4841833 (= res!2064507 (dynLambda!22306 lambda!241386 (h!61839 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun b!4841834 () Bool)

(assert (=> b!4841834 (= e!3025946 (forall!12868 (t!363024 (t!363024 (toList!7787 lm!2671))) lambda!241386))))

(assert (= (and d!1552039 (not res!2064506)) b!4841833))

(assert (= (and b!4841833 res!2064507) b!4841834))

(declare-fun b_lambda!191463 () Bool)

(assert (=> (not b_lambda!191463) (not b!4841833)))

(declare-fun m!5837684 () Bool)

(assert (=> b!4841833 m!5837684))

(declare-fun m!5837686 () Bool)

(assert (=> b!4841834 m!5837686))

(assert (=> b!4841608 d!1552039))

(assert (=> b!4841694 d!1551905))

(declare-fun d!1552041 () Bool)

(declare-fun res!2064512 () Bool)

(declare-fun e!3025951 () Bool)

(assert (=> d!1552041 (=> res!2064512 e!3025951)))

(assert (=> d!1552041 (= res!2064512 (not ((_ is Cons!55403) (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> d!1552041 (= (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lm!2671)))) e!3025951)))

(declare-fun b!4841839 () Bool)

(declare-fun e!3025952 () Bool)

(assert (=> b!4841839 (= e!3025951 e!3025952)))

(declare-fun res!2064513 () Bool)

(assert (=> b!4841839 (=> (not res!2064513) (not e!3025952))))

(assert (=> b!4841839 (= res!2064513 (not (containsKey!4607 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun b!4841840 () Bool)

(assert (=> b!4841840 (= e!3025952 (noDuplicateKeys!2550 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (= (and d!1552041 (not res!2064512)) b!4841839))

(assert (= (and b!4841839 res!2064513) b!4841840))

(declare-fun m!5837688 () Bool)

(assert (=> b!4841839 m!5837688))

(declare-fun m!5837690 () Bool)

(assert (=> b!4841840 m!5837690))

(assert (=> bs!1168567 d!1552041))

(assert (=> b!4841647 d!1551915))

(assert (=> b!4841647 d!1551927))

(assert (=> d!1551901 d!1551897))

(assert (=> d!1551901 d!1551899))

(declare-fun d!1552043 () Bool)

(assert (=> d!1552043 (containsKeyBiggerList!724 (tail!9499 (toList!7787 lm!2671)) key!6540)))

(assert (=> d!1552043 true))

(declare-fun _$37!392 () Unit!145084)

(assert (=> d!1552043 (= (choose!35376 lm!2671 key!6540 hashF!1662) _$37!392)))

(declare-fun bs!1168663 () Bool)

(assert (= bs!1168663 d!1552043))

(assert (=> bs!1168663 m!5837222))

(assert (=> bs!1168663 m!5837222))

(assert (=> bs!1168663 m!5837224))

(assert (=> d!1551901 d!1552043))

(declare-fun d!1552045 () Bool)

(declare-fun res!2064514 () Bool)

(declare-fun e!3025953 () Bool)

(assert (=> d!1552045 (=> res!2064514 e!3025953)))

(assert (=> d!1552045 (= res!2064514 ((_ is Nil!55404) (toList!7787 lm!2671)))))

(assert (=> d!1552045 (= (forall!12868 (toList!7787 lm!2671) lambda!241399) e!3025953)))

(declare-fun b!4841841 () Bool)

(declare-fun e!3025954 () Bool)

(assert (=> b!4841841 (= e!3025953 e!3025954)))

(declare-fun res!2064515 () Bool)

(assert (=> b!4841841 (=> (not res!2064515) (not e!3025954))))

(assert (=> b!4841841 (= res!2064515 (dynLambda!22306 lambda!241399 (h!61839 (toList!7787 lm!2671))))))

(declare-fun b!4841842 () Bool)

(assert (=> b!4841842 (= e!3025954 (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241399))))

(assert (= (and d!1552045 (not res!2064514)) b!4841841))

(assert (= (and b!4841841 res!2064515) b!4841842))

(declare-fun b_lambda!191465 () Bool)

(assert (=> (not b_lambda!191465) (not b!4841841)))

(declare-fun m!5837692 () Bool)

(assert (=> b!4841841 m!5837692))

(declare-fun m!5837694 () Bool)

(assert (=> b!4841842 m!5837694))

(assert (=> d!1551901 d!1552045))

(declare-fun d!1552047 () Bool)

(declare-fun noDuplicatedKeys!502 (List!55527) Bool)

(assert (=> d!1552047 (= (invariantList!1882 (toList!7788 lt!1985520)) (noDuplicatedKeys!502 (toList!7788 lt!1985520)))))

(declare-fun bs!1168664 () Bool)

(assert (= bs!1168664 d!1552047))

(declare-fun m!5837696 () Bool)

(assert (=> bs!1168664 m!5837696))

(assert (=> d!1551913 d!1552047))

(declare-fun d!1552049 () Bool)

(declare-fun res!2064516 () Bool)

(declare-fun e!3025955 () Bool)

(assert (=> d!1552049 (=> res!2064516 e!3025955)))

(assert (=> d!1552049 (= res!2064516 ((_ is Nil!55404) (toList!7787 lm!2671)))))

(assert (=> d!1552049 (= (forall!12868 (toList!7787 lm!2671) lambda!241405) e!3025955)))

(declare-fun b!4841843 () Bool)

(declare-fun e!3025956 () Bool)

(assert (=> b!4841843 (= e!3025955 e!3025956)))

(declare-fun res!2064517 () Bool)

(assert (=> b!4841843 (=> (not res!2064517) (not e!3025956))))

(assert (=> b!4841843 (= res!2064517 (dynLambda!22306 lambda!241405 (h!61839 (toList!7787 lm!2671))))))

(declare-fun b!4841844 () Bool)

(assert (=> b!4841844 (= e!3025956 (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241405))))

(assert (= (and d!1552049 (not res!2064516)) b!4841843))

(assert (= (and b!4841843 res!2064517) b!4841844))

(declare-fun b_lambda!191467 () Bool)

(assert (=> (not b_lambda!191467) (not b!4841843)))

(declare-fun m!5837698 () Bool)

(assert (=> b!4841843 m!5837698))

(declare-fun m!5837700 () Bool)

(assert (=> b!4841844 m!5837700))

(assert (=> d!1551913 d!1552049))

(declare-fun d!1552051 () Bool)

(declare-fun res!2064522 () Bool)

(declare-fun e!3025961 () Bool)

(assert (=> d!1552051 (=> res!2064522 e!3025961)))

(assert (=> d!1552051 (= res!2064522 ((_ is Nil!55403) (ite c!824436 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> d!1552051 (= (forall!12870 (ite c!824436 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_2!32772 (h!61839 (toList!7787 lm!2671)))) (ite c!824436 lambda!241467 lambda!241469)) e!3025961)))

(declare-fun b!4841849 () Bool)

(declare-fun e!3025962 () Bool)

(assert (=> b!4841849 (= e!3025961 e!3025962)))

(declare-fun res!2064523 () Bool)

(assert (=> b!4841849 (=> (not res!2064523) (not e!3025962))))

(declare-fun dynLambda!22308 (Int tuple2!58954) Bool)

(assert (=> b!4841849 (= res!2064523 (dynLambda!22308 (ite c!824436 lambda!241467 lambda!241469) (h!61838 (ite c!824436 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun b!4841850 () Bool)

(assert (=> b!4841850 (= e!3025962 (forall!12870 (t!363023 (ite c!824436 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_2!32772 (h!61839 (toList!7787 lm!2671))))) (ite c!824436 lambda!241467 lambda!241469)))))

(assert (= (and d!1552051 (not res!2064522)) b!4841849))

(assert (= (and b!4841849 res!2064523) b!4841850))

(declare-fun b_lambda!191469 () Bool)

(assert (=> (not b_lambda!191469) (not b!4841849)))

(declare-fun m!5837702 () Bool)

(assert (=> b!4841849 m!5837702))

(declare-fun m!5837704 () Bool)

(assert (=> b!4841850 m!5837704))

(assert (=> bm!337441 d!1552051))

(assert (=> b!4841696 d!1551893))

(declare-fun d!1552053 () Bool)

(declare-fun res!2064524 () Bool)

(declare-fun e!3025963 () Bool)

(assert (=> d!1552053 (=> res!2064524 e!3025963)))

(assert (=> d!1552053 (= res!2064524 ((_ is Nil!55403) (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> d!1552053 (= (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (ite c!824436 lambda!241467 lambda!241468)) e!3025963)))

(declare-fun b!4841851 () Bool)

(declare-fun e!3025964 () Bool)

(assert (=> b!4841851 (= e!3025963 e!3025964)))

(declare-fun res!2064525 () Bool)

(assert (=> b!4841851 (=> (not res!2064525) (not e!3025964))))

(assert (=> b!4841851 (= res!2064525 (dynLambda!22308 (ite c!824436 lambda!241467 lambda!241468) (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun b!4841852 () Bool)

(assert (=> b!4841852 (= e!3025964 (forall!12870 (t!363023 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))) (ite c!824436 lambda!241467 lambda!241468)))))

(assert (= (and d!1552053 (not res!2064524)) b!4841851))

(assert (= (and b!4841851 res!2064525) b!4841852))

(declare-fun b_lambda!191471 () Bool)

(assert (=> (not b_lambda!191471) (not b!4841851)))

(declare-fun m!5837706 () Bool)

(assert (=> b!4841851 m!5837706))

(declare-fun m!5837708 () Bool)

(assert (=> b!4841852 m!5837708))

(assert (=> bm!337442 d!1552053))

(declare-fun d!1552055 () Bool)

(declare-fun res!2064526 () Bool)

(declare-fun e!3025965 () Bool)

(assert (=> d!1552055 (=> res!2064526 e!3025965)))

(assert (=> d!1552055 (= res!2064526 ((_ is Nil!55404) (toList!7787 lt!1985508)))))

(assert (=> d!1552055 (= (forall!12868 (toList!7787 lt!1985508) lambda!241472) e!3025965)))

(declare-fun b!4841853 () Bool)

(declare-fun e!3025966 () Bool)

(assert (=> b!4841853 (= e!3025965 e!3025966)))

(declare-fun res!2064527 () Bool)

(assert (=> b!4841853 (=> (not res!2064527) (not e!3025966))))

(assert (=> b!4841853 (= res!2064527 (dynLambda!22306 lambda!241472 (h!61839 (toList!7787 lt!1985508))))))

(declare-fun b!4841854 () Bool)

(assert (=> b!4841854 (= e!3025966 (forall!12868 (t!363024 (toList!7787 lt!1985508)) lambda!241472))))

(assert (= (and d!1552055 (not res!2064526)) b!4841853))

(assert (= (and b!4841853 res!2064527) b!4841854))

(declare-fun b_lambda!191473 () Bool)

(assert (=> (not b_lambda!191473) (not b!4841853)))

(declare-fun m!5837710 () Bool)

(assert (=> b!4841853 m!5837710))

(declare-fun m!5837712 () Bool)

(assert (=> b!4841854 m!5837712))

(assert (=> d!1551931 d!1552055))

(declare-fun d!1552057 () Bool)

(assert (=> d!1552057 (= (invariantList!1882 (toList!7788 lt!1985634)) (noDuplicatedKeys!502 (toList!7788 lt!1985634)))))

(declare-fun bs!1168665 () Bool)

(assert (= bs!1168665 d!1552057))

(declare-fun m!5837714 () Bool)

(assert (=> bs!1168665 m!5837714))

(assert (=> b!4841685 d!1552057))

(declare-fun d!1552059 () Bool)

(declare-fun e!3025979 () Bool)

(assert (=> d!1552059 e!3025979))

(declare-fun res!2064536 () Bool)

(assert (=> d!1552059 (=> res!2064536 e!3025979)))

(declare-fun e!3025983 () Bool)

(assert (=> d!1552059 (= res!2064536 e!3025983)))

(declare-fun res!2064535 () Bool)

(assert (=> d!1552059 (=> (not res!2064535) (not e!3025983))))

(declare-fun lt!1985786 () Bool)

(assert (=> d!1552059 (= res!2064535 (not lt!1985786))))

(declare-fun lt!1985785 () Bool)

(assert (=> d!1552059 (= lt!1985786 lt!1985785)))

(declare-fun lt!1985784 () Unit!145084)

(declare-fun e!3025981 () Unit!145084)

(assert (=> d!1552059 (= lt!1985784 e!3025981)))

(declare-fun c!824463 () Bool)

(assert (=> d!1552059 (= c!824463 lt!1985785)))

(declare-fun containsKey!4609 (List!55527 K!17169) Bool)

(assert (=> d!1552059 (= lt!1985785 (containsKey!4609 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> d!1552059 (= (contains!19109 lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lt!1985786)))

(declare-fun b!4841873 () Bool)

(declare-fun lt!1985788 () Unit!145084)

(assert (=> b!4841873 (= e!3025981 lt!1985788)))

(declare-fun lt!1985790 () Unit!145084)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2484 (List!55527 K!17169) Unit!145084)

(assert (=> b!4841873 (= lt!1985790 (lemmaContainsKeyImpliesGetValueByKeyDefined!2484 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-datatypes ((Option!13616 0))(
  ( (None!13615) (Some!13615 (v!49353 V!17415)) )
))
(declare-fun isDefined!10711 (Option!13616) Bool)

(declare-fun getValueByKey!2710 (List!55527 K!17169) Option!13616)

(assert (=> b!4841873 (isDefined!10711 (getValueByKey!2710 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985789 () Unit!145084)

(assert (=> b!4841873 (= lt!1985789 lt!1985790)))

(declare-fun lemmaInListThenGetKeysListContains!1206 (List!55527 K!17169) Unit!145084)

(assert (=> b!4841873 (= lt!1985788 (lemmaInListThenGetKeysListContains!1206 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun call!337464 () Bool)

(assert (=> b!4841873 call!337464))

(declare-fun b!4841874 () Bool)

(declare-fun e!3025982 () Bool)

(declare-datatypes ((List!55530 0))(
  ( (Nil!55406) (Cons!55406 (h!61841 K!17169) (t!363026 List!55530)) )
))
(declare-fun contains!19112 (List!55530 K!17169) Bool)

(declare-fun keys!20484 (ListMap!7125) List!55530)

(assert (=> b!4841874 (= e!3025982 (contains!19112 (keys!20484 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun b!4841875 () Bool)

(assert (=> b!4841875 false))

(declare-fun lt!1985787 () Unit!145084)

(declare-fun lt!1985783 () Unit!145084)

(assert (=> b!4841875 (= lt!1985787 lt!1985783)))

(assert (=> b!4841875 (containsKey!4609 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun lemmaInGetKeysListThenContainsKey!1211 (List!55527 K!17169) Unit!145084)

(assert (=> b!4841875 (= lt!1985783 (lemmaInGetKeysListThenContainsKey!1211 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun e!3025980 () Unit!145084)

(declare-fun Unit!145134 () Unit!145084)

(assert (=> b!4841875 (= e!3025980 Unit!145134)))

(declare-fun b!4841876 () Bool)

(assert (=> b!4841876 (= e!3025983 (not (contains!19112 (keys!20484 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun bm!337459 () Bool)

(declare-fun e!3025984 () List!55530)

(assert (=> bm!337459 (= call!337464 (contains!19112 e!3025984 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun c!824462 () Bool)

(assert (=> bm!337459 (= c!824462 c!824463)))

(declare-fun b!4841877 () Bool)

(declare-fun getKeysList!1211 (List!55527) List!55530)

(assert (=> b!4841877 (= e!3025984 (getKeysList!1211 (toList!7788 lt!1985640)))))

(declare-fun b!4841878 () Bool)

(assert (=> b!4841878 (= e!3025981 e!3025980)))

(declare-fun c!824461 () Bool)

(assert (=> b!4841878 (= c!824461 call!337464)))

(declare-fun b!4841879 () Bool)

(declare-fun Unit!145135 () Unit!145084)

(assert (=> b!4841879 (= e!3025980 Unit!145135)))

(declare-fun b!4841880 () Bool)

(assert (=> b!4841880 (= e!3025979 e!3025982)))

(declare-fun res!2064534 () Bool)

(assert (=> b!4841880 (=> (not res!2064534) (not e!3025982))))

(assert (=> b!4841880 (= res!2064534 (isDefined!10711 (getValueByKey!2710 (toList!7788 lt!1985640) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun b!4841881 () Bool)

(assert (=> b!4841881 (= e!3025984 (keys!20484 lt!1985640))))

(assert (= (and d!1552059 c!824463) b!4841873))

(assert (= (and d!1552059 (not c!824463)) b!4841878))

(assert (= (and b!4841878 c!824461) b!4841875))

(assert (= (and b!4841878 (not c!824461)) b!4841879))

(assert (= (or b!4841873 b!4841878) bm!337459))

(assert (= (and bm!337459 c!824462) b!4841877))

(assert (= (and bm!337459 (not c!824462)) b!4841881))

(assert (= (and d!1552059 res!2064535) b!4841876))

(assert (= (and d!1552059 (not res!2064536)) b!4841880))

(assert (= (and b!4841880 res!2064534) b!4841874))

(declare-fun m!5837716 () Bool)

(assert (=> b!4841881 m!5837716))

(declare-fun m!5837718 () Bool)

(assert (=> b!4841875 m!5837718))

(declare-fun m!5837720 () Bool)

(assert (=> b!4841875 m!5837720))

(declare-fun m!5837722 () Bool)

(assert (=> b!4841873 m!5837722))

(declare-fun m!5837724 () Bool)

(assert (=> b!4841873 m!5837724))

(assert (=> b!4841873 m!5837724))

(declare-fun m!5837726 () Bool)

(assert (=> b!4841873 m!5837726))

(declare-fun m!5837728 () Bool)

(assert (=> b!4841873 m!5837728))

(declare-fun m!5837730 () Bool)

(assert (=> bm!337459 m!5837730))

(assert (=> b!4841876 m!5837716))

(assert (=> b!4841876 m!5837716))

(declare-fun m!5837732 () Bool)

(assert (=> b!4841876 m!5837732))

(assert (=> b!4841880 m!5837724))

(assert (=> b!4841880 m!5837724))

(assert (=> b!4841880 m!5837726))

(assert (=> d!1552059 m!5837718))

(assert (=> b!4841874 m!5837716))

(assert (=> b!4841874 m!5837716))

(assert (=> b!4841874 m!5837732))

(declare-fun m!5837734 () Bool)

(assert (=> b!4841877 m!5837734))

(assert (=> b!4841686 d!1552059))

(declare-fun d!1552061 () Bool)

(declare-fun res!2064537 () Bool)

(declare-fun e!3025985 () Bool)

(assert (=> d!1552061 (=> res!2064537 e!3025985)))

(assert (=> d!1552061 (= res!2064537 ((_ is Nil!55403) (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> d!1552061 (= (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241469) e!3025985)))

(declare-fun b!4841882 () Bool)

(declare-fun e!3025986 () Bool)

(assert (=> b!4841882 (= e!3025985 e!3025986)))

(declare-fun res!2064538 () Bool)

(assert (=> b!4841882 (=> (not res!2064538) (not e!3025986))))

(assert (=> b!4841882 (= res!2064538 (dynLambda!22308 lambda!241469 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun b!4841883 () Bool)

(assert (=> b!4841883 (= e!3025986 (forall!12870 (t!363023 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))) lambda!241469))))

(assert (= (and d!1552061 (not res!2064537)) b!4841882))

(assert (= (and b!4841882 res!2064538) b!4841883))

(declare-fun b_lambda!191475 () Bool)

(assert (=> (not b_lambda!191475) (not b!4841882)))

(declare-fun m!5837736 () Bool)

(assert (=> b!4841882 m!5837736))

(declare-fun m!5837738 () Bool)

(assert (=> b!4841883 m!5837738))

(assert (=> b!4841686 d!1552061))

(declare-fun d!1552063 () Bool)

(declare-fun res!2064539 () Bool)

(declare-fun e!3025987 () Bool)

(assert (=> d!1552063 (=> res!2064539 e!3025987)))

(assert (=> d!1552063 (= res!2064539 ((_ is Nil!55403) (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> d!1552063 (= (forall!12870 (_2!32772 (h!61839 (toList!7787 lm!2671))) lambda!241469) e!3025987)))

(declare-fun b!4841884 () Bool)

(declare-fun e!3025988 () Bool)

(assert (=> b!4841884 (= e!3025987 e!3025988)))

(declare-fun res!2064540 () Bool)

(assert (=> b!4841884 (=> (not res!2064540) (not e!3025988))))

(assert (=> b!4841884 (= res!2064540 (dynLambda!22308 lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun b!4841885 () Bool)

(assert (=> b!4841885 (= e!3025988 (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241469))))

(assert (= (and d!1552063 (not res!2064539)) b!4841884))

(assert (= (and b!4841884 res!2064540) b!4841885))

(declare-fun b_lambda!191477 () Bool)

(assert (=> (not b_lambda!191477) (not b!4841884)))

(declare-fun m!5837740 () Bool)

(assert (=> b!4841884 m!5837740))

(assert (=> b!4841885 m!5837360))

(assert (=> b!4841686 d!1552063))

(declare-fun d!1552065 () Bool)

(assert (=> d!1552065 (dynLambda!22308 lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(declare-fun lt!1985793 () Unit!145084)

(declare-fun choose!35380 (List!55527 Int tuple2!58954) Unit!145084)

(assert (=> d!1552065 (= lt!1985793 (choose!35380 (toList!7788 lt!1985632) lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun e!3025991 () Bool)

(assert (=> d!1552065 e!3025991))

(declare-fun res!2064543 () Bool)

(assert (=> d!1552065 (=> (not res!2064543) (not e!3025991))))

(assert (=> d!1552065 (= res!2064543 (forall!12870 (toList!7788 lt!1985632) lambda!241469))))

(assert (=> d!1552065 (= (forallContained!4500 (toList!7788 lt!1985632) lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985793)))

(declare-fun b!4841888 () Bool)

(declare-fun contains!19113 (List!55527 tuple2!58954) Bool)

(assert (=> b!4841888 (= e!3025991 (contains!19113 (toList!7788 lt!1985632) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (= (and d!1552065 res!2064543) b!4841888))

(declare-fun b_lambda!191479 () Bool)

(assert (=> (not b_lambda!191479) (not d!1552065)))

(assert (=> d!1552065 m!5837740))

(declare-fun m!5837742 () Bool)

(assert (=> d!1552065 m!5837742))

(assert (=> d!1552065 m!5837362))

(declare-fun m!5837744 () Bool)

(assert (=> b!4841888 m!5837744))

(assert (=> b!4841686 d!1552065))

(declare-fun d!1552067 () Bool)

(declare-fun e!3025994 () Bool)

(assert (=> d!1552067 e!3025994))

(declare-fun res!2064549 () Bool)

(assert (=> d!1552067 (=> (not res!2064549) (not e!3025994))))

(declare-fun lt!1985803 () ListMap!7125)

(assert (=> d!1552067 (= res!2064549 (contains!19109 lt!1985803 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985804 () List!55527)

(assert (=> d!1552067 (= lt!1985803 (ListMap!7126 lt!1985804))))

(declare-fun lt!1985802 () Unit!145084)

(declare-fun lt!1985805 () Unit!145084)

(assert (=> d!1552067 (= lt!1985802 lt!1985805)))

(assert (=> d!1552067 (= (getValueByKey!2710 lt!1985804 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (Some!13615 (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1255 (List!55527 K!17169 V!17415) Unit!145084)

(assert (=> d!1552067 (= lt!1985805 (lemmaContainsTupThenGetReturnValue!1255 lt!1985804 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun insertNoDuplicatedKeys!763 (List!55527 K!17169 V!17415) List!55527)

(assert (=> d!1552067 (= lt!1985804 (insertNoDuplicatedKeys!763 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> d!1552067 (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985803)))

(declare-fun b!4841893 () Bool)

(declare-fun res!2064548 () Bool)

(assert (=> b!4841893 (=> (not res!2064548) (not e!3025994))))

(assert (=> b!4841893 (= res!2064548 (= (getValueByKey!2710 (toList!7788 lt!1985803) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (Some!13615 (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun b!4841894 () Bool)

(assert (=> b!4841894 (= e!3025994 (contains!19113 (toList!7788 lt!1985803) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (= (and d!1552067 res!2064549) b!4841893))

(assert (= (and b!4841893 res!2064548) b!4841894))

(declare-fun m!5837746 () Bool)

(assert (=> d!1552067 m!5837746))

(declare-fun m!5837748 () Bool)

(assert (=> d!1552067 m!5837748))

(declare-fun m!5837750 () Bool)

(assert (=> d!1552067 m!5837750))

(declare-fun m!5837752 () Bool)

(assert (=> d!1552067 m!5837752))

(declare-fun m!5837754 () Bool)

(assert (=> b!4841893 m!5837754))

(declare-fun m!5837756 () Bool)

(assert (=> b!4841894 m!5837756))

(assert (=> b!4841686 d!1552067))

(declare-fun bs!1168666 () Bool)

(declare-fun d!1552069 () Bool)

(assert (= bs!1168666 (and d!1552069 b!4841686)))

(declare-fun lambda!241499 () Int)

(assert (=> bs!1168666 (= lambda!241499 lambda!241469)))

(declare-fun bs!1168667 () Bool)

(assert (= bs!1168667 (and d!1552069 b!4841809)))

(assert (=> bs!1168667 (= (= lt!1985640 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241499 lambda!241490))))

(declare-fun bs!1168668 () Bool)

(assert (= bs!1168668 (and d!1552069 b!4841808)))

(assert (=> bs!1168668 (= (= lt!1985640 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241499 lambda!241491))))

(assert (=> bs!1168668 (= (= lt!1985640 lt!1985758) (= lambda!241499 lambda!241492))))

(declare-fun bs!1168669 () Bool)

(assert (= bs!1168669 (and d!1552069 b!4841687)))

(assert (=> bs!1168669 (= (= lt!1985640 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241499 lambda!241467))))

(declare-fun bs!1168670 () Bool)

(assert (= bs!1168670 (and d!1552069 d!1552003)))

(assert (=> bs!1168670 (= (= lt!1985640 lt!1985752) (= lambda!241499 lambda!241493))))

(declare-fun bs!1168671 () Bool)

(assert (= bs!1168671 (and d!1552069 d!1551915)))

(assert (=> bs!1168671 (= (= lt!1985640 lt!1985634) (= lambda!241499 lambda!241470))))

(assert (=> bs!1168666 (= (= lt!1985640 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241499 lambda!241468))))

(assert (=> d!1552069 true))

(assert (=> d!1552069 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241499)))

(declare-fun lt!1985808 () Unit!145084)

(declare-fun choose!35381 (ListMap!7125 ListMap!7125 K!17169 V!17415) Unit!145084)

(assert (=> d!1552069 (= lt!1985808 (choose!35381 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> d!1552069 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (tuple2!58955 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))) lambda!241499)))

(assert (=> d!1552069 (= (addForallContainsKeyThenBeforeAdding!1054 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (_2!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lt!1985808)))

(declare-fun bs!1168672 () Bool)

(assert (= bs!1168672 d!1552069))

(declare-fun m!5837758 () Bool)

(assert (=> bs!1168672 m!5837758))

(assert (=> bs!1168672 m!5837216))

(declare-fun m!5837760 () Bool)

(assert (=> bs!1168672 m!5837760))

(assert (=> bs!1168672 m!5837216))

(declare-fun m!5837762 () Bool)

(assert (=> bs!1168672 m!5837762))

(declare-fun m!5837764 () Bool)

(assert (=> bs!1168672 m!5837764))

(assert (=> b!4841686 d!1552069))

(declare-fun d!1552071 () Bool)

(declare-fun res!2064550 () Bool)

(declare-fun e!3025995 () Bool)

(assert (=> d!1552071 (=> res!2064550 e!3025995)))

(assert (=> d!1552071 (= res!2064550 ((_ is Nil!55403) (toList!7788 lt!1985632)))))

(assert (=> d!1552071 (= (forall!12870 (toList!7788 lt!1985632) lambda!241469) e!3025995)))

(declare-fun b!4841896 () Bool)

(declare-fun e!3025996 () Bool)

(assert (=> b!4841896 (= e!3025995 e!3025996)))

(declare-fun res!2064551 () Bool)

(assert (=> b!4841896 (=> (not res!2064551) (not e!3025996))))

(assert (=> b!4841896 (= res!2064551 (dynLambda!22308 lambda!241469 (h!61838 (toList!7788 lt!1985632))))))

(declare-fun b!4841897 () Bool)

(assert (=> b!4841897 (= e!3025996 (forall!12870 (t!363023 (toList!7788 lt!1985632)) lambda!241469))))

(assert (= (and d!1552071 (not res!2064550)) b!4841896))

(assert (= (and b!4841896 res!2064551) b!4841897))

(declare-fun b_lambda!191481 () Bool)

(assert (=> (not b_lambda!191481) (not b!4841896)))

(declare-fun m!5837766 () Bool)

(assert (=> b!4841896 m!5837766))

(declare-fun m!5837768 () Bool)

(assert (=> b!4841897 m!5837768))

(assert (=> b!4841686 d!1552071))

(declare-fun d!1552073 () Bool)

(declare-fun res!2064552 () Bool)

(declare-fun e!3025997 () Bool)

(assert (=> d!1552073 (=> res!2064552 e!3025997)))

(assert (=> d!1552073 (= res!2064552 ((_ is Nil!55403) (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> d!1552073 (= (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241469) e!3025997)))

(declare-fun b!4841898 () Bool)

(declare-fun e!3025998 () Bool)

(assert (=> b!4841898 (= e!3025997 e!3025998)))

(declare-fun res!2064553 () Bool)

(assert (=> b!4841898 (=> (not res!2064553) (not e!3025998))))

(assert (=> b!4841898 (= res!2064553 (dynLambda!22308 lambda!241469 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun b!4841899 () Bool)

(assert (=> b!4841899 (= e!3025998 (forall!12870 (t!363023 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lambda!241469))))

(assert (= (and d!1552073 (not res!2064552)) b!4841898))

(assert (= (and b!4841898 res!2064553) b!4841899))

(declare-fun b_lambda!191483 () Bool)

(assert (=> (not b_lambda!191483) (not b!4841898)))

(declare-fun m!5837770 () Bool)

(assert (=> b!4841898 m!5837770))

(declare-fun m!5837772 () Bool)

(assert (=> b!4841899 m!5837772))

(assert (=> b!4841686 d!1552073))

(declare-fun d!1552075 () Bool)

(declare-fun e!3025999 () Bool)

(assert (=> d!1552075 e!3025999))

(declare-fun res!2064556 () Bool)

(assert (=> d!1552075 (=> res!2064556 e!3025999)))

(declare-fun e!3026003 () Bool)

(assert (=> d!1552075 (= res!2064556 e!3026003)))

(declare-fun res!2064555 () Bool)

(assert (=> d!1552075 (=> (not res!2064555) (not e!3026003))))

(declare-fun lt!1985812 () Bool)

(assert (=> d!1552075 (= res!2064555 (not lt!1985812))))

(declare-fun lt!1985811 () Bool)

(assert (=> d!1552075 (= lt!1985812 lt!1985811)))

(declare-fun lt!1985810 () Unit!145084)

(declare-fun e!3026001 () Unit!145084)

(assert (=> d!1552075 (= lt!1985810 e!3026001)))

(declare-fun c!824466 () Bool)

(assert (=> d!1552075 (= c!824466 lt!1985811)))

(assert (=> d!1552075 (= lt!1985811 (containsKey!4609 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> d!1552075 (= (contains!19109 lt!1985632 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lt!1985812)))

(declare-fun b!4841900 () Bool)

(declare-fun lt!1985814 () Unit!145084)

(assert (=> b!4841900 (= e!3026001 lt!1985814)))

(declare-fun lt!1985816 () Unit!145084)

(assert (=> b!4841900 (= lt!1985816 (lemmaContainsKeyImpliesGetValueByKeyDefined!2484 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> b!4841900 (isDefined!10711 (getValueByKey!2710 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985815 () Unit!145084)

(assert (=> b!4841900 (= lt!1985815 lt!1985816)))

(assert (=> b!4841900 (= lt!1985814 (lemmaInListThenGetKeysListContains!1206 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun call!337465 () Bool)

(assert (=> b!4841900 call!337465))

(declare-fun b!4841901 () Bool)

(declare-fun e!3026002 () Bool)

(assert (=> b!4841901 (= e!3026002 (contains!19112 (keys!20484 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun b!4841902 () Bool)

(assert (=> b!4841902 false))

(declare-fun lt!1985813 () Unit!145084)

(declare-fun lt!1985809 () Unit!145084)

(assert (=> b!4841902 (= lt!1985813 lt!1985809)))

(assert (=> b!4841902 (containsKey!4609 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> b!4841902 (= lt!1985809 (lemmaInGetKeysListThenContainsKey!1211 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun e!3026000 () Unit!145084)

(declare-fun Unit!145142 () Unit!145084)

(assert (=> b!4841902 (= e!3026000 Unit!145142)))

(declare-fun b!4841903 () Bool)

(assert (=> b!4841903 (= e!3026003 (not (contains!19112 (keys!20484 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun bm!337460 () Bool)

(declare-fun e!3026004 () List!55530)

(assert (=> bm!337460 (= call!337465 (contains!19112 e!3026004 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun c!824465 () Bool)

(assert (=> bm!337460 (= c!824465 c!824466)))

(declare-fun b!4841904 () Bool)

(assert (=> b!4841904 (= e!3026004 (getKeysList!1211 (toList!7788 lt!1985632)))))

(declare-fun b!4841905 () Bool)

(assert (=> b!4841905 (= e!3026001 e!3026000)))

(declare-fun c!824464 () Bool)

(assert (=> b!4841905 (= c!824464 call!337465)))

(declare-fun b!4841906 () Bool)

(declare-fun Unit!145146 () Unit!145084)

(assert (=> b!4841906 (= e!3026000 Unit!145146)))

(declare-fun b!4841907 () Bool)

(assert (=> b!4841907 (= e!3025999 e!3026002)))

(declare-fun res!2064554 () Bool)

(assert (=> b!4841907 (=> (not res!2064554) (not e!3026002))))

(assert (=> b!4841907 (= res!2064554 (isDefined!10711 (getValueByKey!2710 (toList!7788 lt!1985632) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun b!4841908 () Bool)

(assert (=> b!4841908 (= e!3026004 (keys!20484 lt!1985632))))

(assert (= (and d!1552075 c!824466) b!4841900))

(assert (= (and d!1552075 (not c!824466)) b!4841905))

(assert (= (and b!4841905 c!824464) b!4841902))

(assert (= (and b!4841905 (not c!824464)) b!4841906))

(assert (= (or b!4841900 b!4841905) bm!337460))

(assert (= (and bm!337460 c!824465) b!4841904))

(assert (= (and bm!337460 (not c!824465)) b!4841908))

(assert (= (and d!1552075 res!2064555) b!4841903))

(assert (= (and d!1552075 (not res!2064556)) b!4841907))

(assert (= (and b!4841907 res!2064554) b!4841901))

(declare-fun m!5837774 () Bool)

(assert (=> b!4841908 m!5837774))

(declare-fun m!5837776 () Bool)

(assert (=> b!4841902 m!5837776))

(declare-fun m!5837778 () Bool)

(assert (=> b!4841902 m!5837778))

(declare-fun m!5837780 () Bool)

(assert (=> b!4841900 m!5837780))

(declare-fun m!5837782 () Bool)

(assert (=> b!4841900 m!5837782))

(assert (=> b!4841900 m!5837782))

(declare-fun m!5837784 () Bool)

(assert (=> b!4841900 m!5837784))

(declare-fun m!5837786 () Bool)

(assert (=> b!4841900 m!5837786))

(declare-fun m!5837788 () Bool)

(assert (=> bm!337460 m!5837788))

(assert (=> b!4841903 m!5837774))

(assert (=> b!4841903 m!5837774))

(declare-fun m!5837790 () Bool)

(assert (=> b!4841903 m!5837790))

(assert (=> b!4841907 m!5837782))

(assert (=> b!4841907 m!5837782))

(assert (=> b!4841907 m!5837784))

(assert (=> d!1552075 m!5837776))

(assert (=> b!4841901 m!5837774))

(assert (=> b!4841901 m!5837774))

(assert (=> b!4841901 m!5837790))

(declare-fun m!5837792 () Bool)

(assert (=> b!4841904 m!5837792))

(assert (=> b!4841686 d!1552075))

(declare-fun bs!1168673 () Bool)

(declare-fun b!4841911 () Bool)

(assert (= bs!1168673 (and b!4841911 b!4841686)))

(declare-fun lambda!241500 () Int)

(assert (=> bs!1168673 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985640) (= lambda!241500 lambda!241469))))

(declare-fun bs!1168674 () Bool)

(assert (= bs!1168674 (and b!4841911 b!4841809)))

(assert (=> bs!1168674 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241500 lambda!241490))))

(declare-fun bs!1168675 () Bool)

(assert (= bs!1168675 (and b!4841911 b!4841808)))

(assert (=> bs!1168675 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985758) (= lambda!241500 lambda!241492))))

(declare-fun bs!1168676 () Bool)

(assert (= bs!1168676 (and b!4841911 b!4841687)))

(assert (=> bs!1168676 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241500 lambda!241467))))

(declare-fun bs!1168677 () Bool)

(assert (= bs!1168677 (and b!4841911 d!1552003)))

(assert (=> bs!1168677 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985752) (= lambda!241500 lambda!241493))))

(declare-fun bs!1168678 () Bool)

(assert (= bs!1168678 (and b!4841911 d!1551915)))

(assert (=> bs!1168678 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985634) (= lambda!241500 lambda!241470))))

(assert (=> bs!1168673 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241500 lambda!241468))))

(declare-fun bs!1168679 () Bool)

(assert (= bs!1168679 (and b!4841911 d!1552069)))

(assert (=> bs!1168679 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985640) (= lambda!241500 lambda!241499))))

(assert (=> bs!1168675 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241500 lambda!241491))))

(assert (=> b!4841911 true))

(declare-fun bs!1168680 () Bool)

(declare-fun b!4841910 () Bool)

(assert (= bs!1168680 (and b!4841910 b!4841686)))

(declare-fun lambda!241501 () Int)

(assert (=> bs!1168680 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985640) (= lambda!241501 lambda!241469))))

(declare-fun bs!1168681 () Bool)

(assert (= bs!1168681 (and b!4841910 b!4841809)))

(assert (=> bs!1168681 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241501 lambda!241490))))

(declare-fun bs!1168682 () Bool)

(assert (= bs!1168682 (and b!4841910 b!4841911)))

(assert (=> bs!1168682 (= lambda!241501 lambda!241500)))

(declare-fun bs!1168683 () Bool)

(assert (= bs!1168683 (and b!4841910 b!4841808)))

(assert (=> bs!1168683 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985758) (= lambda!241501 lambda!241492))))

(declare-fun bs!1168684 () Bool)

(assert (= bs!1168684 (and b!4841910 b!4841687)))

(assert (=> bs!1168684 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241501 lambda!241467))))

(declare-fun bs!1168685 () Bool)

(assert (= bs!1168685 (and b!4841910 d!1552003)))

(assert (=> bs!1168685 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985752) (= lambda!241501 lambda!241493))))

(declare-fun bs!1168686 () Bool)

(assert (= bs!1168686 (and b!4841910 d!1551915)))

(assert (=> bs!1168686 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985634) (= lambda!241501 lambda!241470))))

(assert (=> bs!1168680 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241501 lambda!241468))))

(declare-fun bs!1168687 () Bool)

(assert (= bs!1168687 (and b!4841910 d!1552069)))

(assert (=> bs!1168687 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985640) (= lambda!241501 lambda!241499))))

(assert (=> bs!1168683 (= (= (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241501 lambda!241491))))

(assert (=> b!4841910 true))

(declare-fun lt!1985830 () ListMap!7125)

(declare-fun lambda!241502 () Int)

(assert (=> bs!1168680 (= (= lt!1985830 lt!1985640) (= lambda!241502 lambda!241469))))

(assert (=> bs!1168681 (= (= lt!1985830 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241502 lambda!241490))))

(assert (=> bs!1168682 (= (= lt!1985830 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241502 lambda!241500))))

(assert (=> bs!1168683 (= (= lt!1985830 lt!1985758) (= lambda!241502 lambda!241492))))

(assert (=> bs!1168684 (= (= lt!1985830 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241502 lambda!241467))))

(assert (=> bs!1168685 (= (= lt!1985830 lt!1985752) (= lambda!241502 lambda!241493))))

(assert (=> b!4841910 (= (= lt!1985830 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241502 lambda!241501))))

(assert (=> bs!1168686 (= (= lt!1985830 lt!1985634) (= lambda!241502 lambda!241470))))

(assert (=> bs!1168680 (= (= lt!1985830 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241502 lambda!241468))))

(assert (=> bs!1168687 (= (= lt!1985830 lt!1985640) (= lambda!241502 lambda!241499))))

(assert (=> bs!1168683 (= (= lt!1985830 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241502 lambda!241491))))

(assert (=> b!4841910 true))

(declare-fun bs!1168688 () Bool)

(declare-fun d!1552077 () Bool)

(assert (= bs!1168688 (and d!1552077 b!4841809)))

(declare-fun lambda!241503 () Int)

(declare-fun lt!1985824 () ListMap!7125)

(assert (=> bs!1168688 (= (= lt!1985824 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241503 lambda!241490))))

(declare-fun bs!1168689 () Bool)

(assert (= bs!1168689 (and d!1552077 b!4841911)))

(assert (=> bs!1168689 (= (= lt!1985824 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241503 lambda!241500))))

(declare-fun bs!1168690 () Bool)

(assert (= bs!1168690 (and d!1552077 b!4841808)))

(assert (=> bs!1168690 (= (= lt!1985824 lt!1985758) (= lambda!241503 lambda!241492))))

(declare-fun bs!1168691 () Bool)

(assert (= bs!1168691 (and d!1552077 b!4841687)))

(assert (=> bs!1168691 (= (= lt!1985824 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241503 lambda!241467))))

(declare-fun bs!1168692 () Bool)

(assert (= bs!1168692 (and d!1552077 d!1552003)))

(assert (=> bs!1168692 (= (= lt!1985824 lt!1985752) (= lambda!241503 lambda!241493))))

(declare-fun bs!1168693 () Bool)

(assert (= bs!1168693 (and d!1552077 b!4841910)))

(assert (=> bs!1168693 (= (= lt!1985824 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241503 lambda!241501))))

(declare-fun bs!1168694 () Bool)

(assert (= bs!1168694 (and d!1552077 d!1551915)))

(assert (=> bs!1168694 (= (= lt!1985824 lt!1985634) (= lambda!241503 lambda!241470))))

(declare-fun bs!1168695 () Bool)

(assert (= bs!1168695 (and d!1552077 b!4841686)))

(assert (=> bs!1168695 (= (= lt!1985824 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) (= lambda!241503 lambda!241468))))

(assert (=> bs!1168695 (= (= lt!1985824 lt!1985640) (= lambda!241503 lambda!241469))))

(assert (=> bs!1168693 (= (= lt!1985824 lt!1985830) (= lambda!241503 lambda!241502))))

(declare-fun bs!1168696 () Bool)

(assert (= bs!1168696 (and d!1552077 d!1552069)))

(assert (=> bs!1168696 (= (= lt!1985824 lt!1985640) (= lambda!241503 lambda!241499))))

(assert (=> bs!1168690 (= (= lt!1985824 (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241503 lambda!241491))))

(assert (=> d!1552077 true))

(declare-fun call!337466 () Bool)

(declare-fun bm!337461 () Bool)

(declare-fun c!824467 () Bool)

(assert (=> bm!337461 (= call!337466 (forall!12870 (ite c!824467 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (ite c!824467 lambda!241500 lambda!241502)))))

(declare-fun b!4841909 () Bool)

(declare-fun e!3026006 () Bool)

(assert (=> b!4841909 (= e!3026006 (invariantList!1882 (toList!7788 lt!1985824)))))

(declare-fun call!337467 () Bool)

(declare-fun bm!337462 () Bool)

(assert (=> bm!337462 (= call!337467 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (ite c!824467 lambda!241500 lambda!241501)))))

(declare-fun e!3026007 () ListMap!7125)

(assert (=> b!4841910 (= e!3026007 lt!1985830)))

(declare-fun lt!1985822 () ListMap!7125)

(assert (=> b!4841910 (= lt!1985822 (+!2616 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> b!4841910 (= lt!1985830 (addToMapMapFromBucket!1922 (t!363023 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (+!2616 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun lt!1985834 () Unit!145084)

(declare-fun call!337468 () Unit!145084)

(assert (=> b!4841910 (= lt!1985834 call!337468)))

(assert (=> b!4841910 call!337467))

(declare-fun lt!1985827 () Unit!145084)

(assert (=> b!4841910 (= lt!1985827 lt!1985834)))

(assert (=> b!4841910 (forall!12870 (toList!7788 lt!1985822) lambda!241502)))

(declare-fun lt!1985831 () Unit!145084)

(declare-fun Unit!145149 () Unit!145084)

(assert (=> b!4841910 (= lt!1985831 Unit!145149)))

(assert (=> b!4841910 (forall!12870 (t!363023 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lambda!241502)))

(declare-fun lt!1985828 () Unit!145084)

(declare-fun Unit!145150 () Unit!145084)

(assert (=> b!4841910 (= lt!1985828 Unit!145150)))

(declare-fun lt!1985836 () Unit!145084)

(declare-fun Unit!145151 () Unit!145084)

(assert (=> b!4841910 (= lt!1985836 Unit!145151)))

(declare-fun lt!1985826 () Unit!145084)

(assert (=> b!4841910 (= lt!1985826 (forallContained!4500 (toList!7788 lt!1985822) lambda!241502 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> b!4841910 (contains!19109 lt!1985822 (_1!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985817 () Unit!145084)

(declare-fun Unit!145152 () Unit!145084)

(assert (=> b!4841910 (= lt!1985817 Unit!145152)))

(assert (=> b!4841910 (contains!19109 lt!1985830 (_1!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun lt!1985825 () Unit!145084)

(declare-fun Unit!145153 () Unit!145084)

(assert (=> b!4841910 (= lt!1985825 Unit!145153)))

(assert (=> b!4841910 (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241502)))

(declare-fun lt!1985820 () Unit!145084)

(declare-fun Unit!145154 () Unit!145084)

(assert (=> b!4841910 (= lt!1985820 Unit!145154)))

(assert (=> b!4841910 (forall!12870 (toList!7788 lt!1985822) lambda!241502)))

(declare-fun lt!1985829 () Unit!145084)

(declare-fun Unit!145155 () Unit!145084)

(assert (=> b!4841910 (= lt!1985829 Unit!145155)))

(declare-fun lt!1985833 () Unit!145084)

(declare-fun Unit!145156 () Unit!145084)

(assert (=> b!4841910 (= lt!1985833 Unit!145156)))

(declare-fun lt!1985832 () Unit!145084)

(assert (=> b!4841910 (= lt!1985832 (addForallContainsKeyThenBeforeAdding!1054 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) lt!1985830 (_1!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (_2!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(assert (=> b!4841910 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lambda!241502)))

(declare-fun lt!1985818 () Unit!145084)

(assert (=> b!4841910 (= lt!1985818 lt!1985832)))

(assert (=> b!4841910 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lambda!241502)))

(declare-fun lt!1985837 () Unit!145084)

(declare-fun Unit!145157 () Unit!145084)

(assert (=> b!4841910 (= lt!1985837 Unit!145157)))

(declare-fun res!2064559 () Bool)

(assert (=> b!4841910 (= res!2064559 call!337466)))

(declare-fun e!3026005 () Bool)

(assert (=> b!4841910 (=> (not res!2064559) (not e!3026005))))

(assert (=> b!4841910 e!3026005))

(declare-fun lt!1985823 () Unit!145084)

(declare-fun Unit!145158 () Unit!145084)

(assert (=> b!4841910 (= lt!1985823 Unit!145158)))

(assert (=> b!4841911 (= e!3026007 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun lt!1985819 () Unit!145084)

(assert (=> b!4841911 (= lt!1985819 call!337468)))

(assert (=> b!4841911 call!337467))

(declare-fun lt!1985821 () Unit!145084)

(assert (=> b!4841911 (= lt!1985821 lt!1985819)))

(assert (=> b!4841911 call!337466))

(declare-fun lt!1985835 () Unit!145084)

(declare-fun Unit!145159 () Unit!145084)

(assert (=> b!4841911 (= lt!1985835 Unit!145159)))

(assert (=> d!1552077 e!3026006))

(declare-fun res!2064557 () Bool)

(assert (=> d!1552077 (=> (not res!2064557) (not e!3026006))))

(assert (=> d!1552077 (= res!2064557 (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241503))))

(assert (=> d!1552077 (= lt!1985824 e!3026007)))

(assert (=> d!1552077 (= c!824467 ((_ is Nil!55403) (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(assert (=> d!1552077 (noDuplicateKeys!2550 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> d!1552077 (= (addToMapMapFromBucket!1922 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lt!1985824)))

(declare-fun bm!337463 () Bool)

(assert (=> bm!337463 (= call!337468 (lemmaContainsAllItsOwnKeys!1056 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun b!4841912 () Bool)

(declare-fun res!2064558 () Bool)

(assert (=> b!4841912 (=> (not res!2064558) (not e!3026006))))

(assert (=> b!4841912 (= res!2064558 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lambda!241503))))

(declare-fun b!4841913 () Bool)

(assert (=> b!4841913 (= e!3026005 (forall!12870 (toList!7788 (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) lambda!241502))))

(assert (= (and d!1552077 c!824467) b!4841911))

(assert (= (and d!1552077 (not c!824467)) b!4841910))

(assert (= (and b!4841910 res!2064559) b!4841913))

(assert (= (or b!4841911 b!4841910) bm!337463))

(assert (= (or b!4841911 b!4841910) bm!337461))

(assert (= (or b!4841911 b!4841910) bm!337462))

(assert (= (and d!1552077 res!2064557) b!4841912))

(assert (= (and b!4841912 res!2064558) b!4841909))

(declare-fun m!5837794 () Bool)

(assert (=> bm!337462 m!5837794))

(declare-fun m!5837796 () Bool)

(assert (=> bm!337461 m!5837796))

(declare-fun m!5837798 () Bool)

(assert (=> b!4841913 m!5837798))

(declare-fun m!5837800 () Bool)

(assert (=> b!4841909 m!5837800))

(assert (=> bm!337463 m!5837368))

(declare-fun m!5837802 () Bool)

(assert (=> bm!337463 m!5837802))

(assert (=> b!4841910 m!5837798))

(declare-fun m!5837804 () Bool)

(assert (=> b!4841910 m!5837804))

(declare-fun m!5837806 () Bool)

(assert (=> b!4841910 m!5837806))

(declare-fun m!5837808 () Bool)

(assert (=> b!4841910 m!5837808))

(declare-fun m!5837810 () Bool)

(assert (=> b!4841910 m!5837810))

(assert (=> b!4841910 m!5837798))

(declare-fun m!5837812 () Bool)

(assert (=> b!4841910 m!5837812))

(declare-fun m!5837814 () Bool)

(assert (=> b!4841910 m!5837814))

(declare-fun m!5837816 () Bool)

(assert (=> b!4841910 m!5837816))

(declare-fun m!5837818 () Bool)

(assert (=> b!4841910 m!5837818))

(assert (=> b!4841910 m!5837368))

(assert (=> b!4841910 m!5837812))

(assert (=> b!4841910 m!5837806))

(assert (=> b!4841910 m!5837368))

(declare-fun m!5837820 () Bool)

(assert (=> b!4841910 m!5837820))

(declare-fun m!5837822 () Bool)

(assert (=> d!1552077 m!5837822))

(assert (=> d!1552077 m!5837690))

(declare-fun m!5837824 () Bool)

(assert (=> b!4841912 m!5837824))

(assert (=> b!4841686 d!1552077))

(declare-fun d!1552079 () Bool)

(declare-fun res!2064560 () Bool)

(declare-fun e!3026008 () Bool)

(assert (=> d!1552079 (=> res!2064560 e!3026008)))

(assert (=> d!1552079 (= res!2064560 ((_ is Nil!55404) (t!363024 (toList!7787 lt!1985508))))))

(assert (=> d!1552079 (= (forall!12868 (t!363024 (toList!7787 lt!1985508)) lambda!241386) e!3026008)))

(declare-fun b!4841914 () Bool)

(declare-fun e!3026009 () Bool)

(assert (=> b!4841914 (= e!3026008 e!3026009)))

(declare-fun res!2064561 () Bool)

(assert (=> b!4841914 (=> (not res!2064561) (not e!3026009))))

(assert (=> b!4841914 (= res!2064561 (dynLambda!22306 lambda!241386 (h!61839 (t!363024 (toList!7787 lt!1985508)))))))

(declare-fun b!4841915 () Bool)

(assert (=> b!4841915 (= e!3026009 (forall!12868 (t!363024 (t!363024 (toList!7787 lt!1985508))) lambda!241386))))

(assert (= (and d!1552079 (not res!2064560)) b!4841914))

(assert (= (and b!4841914 res!2064561) b!4841915))

(declare-fun b_lambda!191485 () Bool)

(assert (=> (not b_lambda!191485) (not b!4841914)))

(declare-fun m!5837826 () Bool)

(assert (=> b!4841914 m!5837826))

(declare-fun m!5837828 () Bool)

(assert (=> b!4841915 m!5837828))

(assert (=> b!4841642 d!1552079))

(declare-fun d!1552081 () Bool)

(declare-fun res!2064562 () Bool)

(declare-fun e!3026010 () Bool)

(assert (=> d!1552081 (=> res!2064562 e!3026010)))

(assert (=> d!1552081 (= res!2064562 ((_ is Nil!55403) (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> d!1552081 (= (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241470) e!3026010)))

(declare-fun b!4841916 () Bool)

(declare-fun e!3026011 () Bool)

(assert (=> b!4841916 (= e!3026010 e!3026011)))

(declare-fun res!2064563 () Bool)

(assert (=> b!4841916 (=> (not res!2064563) (not e!3026011))))

(assert (=> b!4841916 (= res!2064563 (dynLambda!22308 lambda!241470 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))))

(declare-fun b!4841917 () Bool)

(assert (=> b!4841917 (= e!3026011 (forall!12870 (t!363023 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))) lambda!241470))))

(assert (= (and d!1552081 (not res!2064562)) b!4841916))

(assert (= (and b!4841916 res!2064563) b!4841917))

(declare-fun b_lambda!191487 () Bool)

(assert (=> (not b_lambda!191487) (not b!4841916)))

(declare-fun m!5837830 () Bool)

(assert (=> b!4841916 m!5837830))

(declare-fun m!5837832 () Bool)

(assert (=> b!4841917 m!5837832))

(assert (=> b!4841688 d!1552081))

(declare-fun bs!1168697 () Bool)

(declare-fun d!1552083 () Bool)

(assert (= bs!1168697 (and d!1552083 b!4841809)))

(declare-fun lambda!241506 () Int)

(assert (=> bs!1168697 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241506 lambda!241490))))

(declare-fun bs!1168698 () Bool)

(assert (= bs!1168698 (and d!1552083 b!4841808)))

(assert (=> bs!1168698 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985758) (= lambda!241506 lambda!241492))))

(declare-fun bs!1168699 () Bool)

(assert (= bs!1168699 (and d!1552083 b!4841687)))

(assert (=> bs!1168699 (= lambda!241506 lambda!241467)))

(declare-fun bs!1168700 () Bool)

(assert (= bs!1168700 (and d!1552083 d!1552003)))

(assert (=> bs!1168700 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985752) (= lambda!241506 lambda!241493))))

(declare-fun bs!1168701 () Bool)

(assert (= bs!1168701 (and d!1552083 b!4841910)))

(assert (=> bs!1168701 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241506 lambda!241501))))

(declare-fun bs!1168702 () Bool)

(assert (= bs!1168702 (and d!1552083 d!1551915)))

(assert (=> bs!1168702 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985634) (= lambda!241506 lambda!241470))))

(declare-fun bs!1168703 () Bool)

(assert (= bs!1168703 (and d!1552083 b!4841686)))

(assert (=> bs!1168703 (= lambda!241506 lambda!241468)))

(assert (=> bs!1168703 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985640) (= lambda!241506 lambda!241469))))

(assert (=> bs!1168701 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985830) (= lambda!241506 lambda!241502))))

(declare-fun bs!1168704 () Bool)

(assert (= bs!1168704 (and d!1552083 d!1552069)))

(assert (=> bs!1168704 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985640) (= lambda!241506 lambda!241499))))

(assert (=> bs!1168698 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (extractMap!2782 (t!363024 (t!363024 (toList!7787 lm!2671))))) (= lambda!241506 lambda!241491))))

(declare-fun bs!1168705 () Bool)

(assert (= bs!1168705 (and d!1552083 b!4841911)))

(assert (=> bs!1168705 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (+!2616 (extractMap!2782 (t!363024 (toList!7787 lm!2671))) (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (= lambda!241506 lambda!241500))))

(declare-fun bs!1168706 () Bool)

(assert (= bs!1168706 (and d!1552083 d!1552077)))

(assert (=> bs!1168706 (= (= (extractMap!2782 (t!363024 (toList!7787 lm!2671))) lt!1985824) (= lambda!241506 lambda!241503))))

(assert (=> d!1552083 true))

(assert (=> d!1552083 (forall!12870 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lambda!241506)))

(declare-fun lt!1985840 () Unit!145084)

(declare-fun choose!35382 (ListMap!7125) Unit!145084)

(assert (=> d!1552083 (= lt!1985840 (choose!35382 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))))

(assert (=> d!1552083 (= (lemmaContainsAllItsOwnKeys!1056 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))) lt!1985840)))

(declare-fun bs!1168707 () Bool)

(assert (= bs!1168707 d!1552083))

(declare-fun m!5837834 () Bool)

(assert (=> bs!1168707 m!5837834))

(assert (=> bs!1168707 m!5837216))

(declare-fun m!5837836 () Bool)

(assert (=> bs!1168707 m!5837836))

(assert (=> bm!337443 d!1552083))

(declare-fun d!1552085 () Bool)

(declare-fun res!2064564 () Bool)

(declare-fun e!3026012 () Bool)

(assert (=> d!1552085 (=> res!2064564 e!3026012)))

(assert (=> d!1552085 (= res!2064564 (and ((_ is Cons!55403) (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671))))) (= (_1!32771 (h!61838 (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671)))))) key!6540)))))

(assert (=> d!1552085 (= (containsKey!4607 (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671)))) key!6540) e!3026012)))

(declare-fun b!4841918 () Bool)

(declare-fun e!3026013 () Bool)

(assert (=> b!4841918 (= e!3026012 e!3026013)))

(declare-fun res!2064565 () Bool)

(assert (=> b!4841918 (=> (not res!2064565) (not e!3026013))))

(assert (=> b!4841918 (= res!2064565 ((_ is Cons!55403) (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671))))))))

(declare-fun b!4841919 () Bool)

(assert (=> b!4841919 (= e!3026013 (containsKey!4607 (t!363023 (_2!32772 (h!61839 (tail!9499 (toList!7787 lm!2671))))) key!6540))))

(assert (= (and d!1552085 (not res!2064564)) b!4841918))

(assert (= (and b!4841918 res!2064565) b!4841919))

(declare-fun m!5837838 () Bool)

(assert (=> b!4841919 m!5837838))

(assert (=> b!4841624 d!1552085))

(assert (=> b!4841689 d!1552061))

(declare-fun d!1552087 () Bool)

(declare-fun res!2064568 () Bool)

(declare-fun e!3026016 () Bool)

(assert (=> d!1552087 (=> res!2064568 e!3026016)))

(declare-fun e!3026014 () Bool)

(assert (=> d!1552087 (= res!2064568 e!3026014)))

(declare-fun res!2064566 () Bool)

(assert (=> d!1552087 (=> (not res!2064566) (not e!3026014))))

(assert (=> d!1552087 (= res!2064566 ((_ is Cons!55404) (t!363024 (tail!9499 (toList!7787 lm!2671)))))))

(assert (=> d!1552087 (= (containsKeyBiggerList!724 (t!363024 (tail!9499 (toList!7787 lm!2671))) key!6540) e!3026016)))

(declare-fun b!4841920 () Bool)

(assert (=> b!4841920 (= e!3026014 (containsKey!4607 (_2!32772 (h!61839 (t!363024 (tail!9499 (toList!7787 lm!2671))))) key!6540))))

(declare-fun b!4841921 () Bool)

(declare-fun e!3026015 () Bool)

(assert (=> b!4841921 (= e!3026016 e!3026015)))

(declare-fun res!2064567 () Bool)

(assert (=> b!4841921 (=> (not res!2064567) (not e!3026015))))

(assert (=> b!4841921 (= res!2064567 ((_ is Cons!55404) (t!363024 (tail!9499 (toList!7787 lm!2671)))))))

(declare-fun b!4841922 () Bool)

(assert (=> b!4841922 (= e!3026015 (containsKeyBiggerList!724 (t!363024 (t!363024 (tail!9499 (toList!7787 lm!2671)))) key!6540))))

(assert (= (and d!1552087 res!2064566) b!4841920))

(assert (= (and d!1552087 (not res!2064568)) b!4841921))

(assert (= (and b!4841921 res!2064567) b!4841922))

(declare-fun m!5837840 () Bool)

(assert (=> b!4841920 m!5837840))

(declare-fun m!5837842 () Bool)

(assert (=> b!4841922 m!5837842))

(assert (=> b!4841626 d!1552087))

(declare-fun d!1552089 () Bool)

(declare-fun res!2064569 () Bool)

(declare-fun e!3026017 () Bool)

(assert (=> d!1552089 (=> res!2064569 e!3026017)))

(assert (=> d!1552089 (= res!2064569 ((_ is Nil!55403) (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> d!1552089 (= (forall!12870 (_2!32772 (h!61839 (toList!7787 lm!2671))) lambda!241470) e!3026017)))

(declare-fun b!4841923 () Bool)

(declare-fun e!3026018 () Bool)

(assert (=> b!4841923 (= e!3026017 e!3026018)))

(declare-fun res!2064570 () Bool)

(assert (=> b!4841923 (=> (not res!2064570) (not e!3026018))))

(assert (=> b!4841923 (= res!2064570 (dynLambda!22308 lambda!241470 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun b!4841924 () Bool)

(assert (=> b!4841924 (= e!3026018 (forall!12870 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) lambda!241470))))

(assert (= (and d!1552089 (not res!2064569)) b!4841923))

(assert (= (and b!4841923 res!2064570) b!4841924))

(declare-fun b_lambda!191489 () Bool)

(assert (=> (not b_lambda!191489) (not b!4841923)))

(declare-fun m!5837844 () Bool)

(assert (=> b!4841923 m!5837844))

(declare-fun m!5837846 () Bool)

(assert (=> b!4841924 m!5837846))

(assert (=> d!1551915 d!1552089))

(assert (=> d!1551915 d!1552041))

(declare-fun d!1552091 () Bool)

(declare-fun res!2064571 () Bool)

(declare-fun e!3026019 () Bool)

(assert (=> d!1552091 (=> res!2064571 e!3026019)))

(assert (=> d!1552091 (= res!2064571 (and ((_ is Cons!55403) (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (= (_1!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) key!6540)))))

(assert (=> d!1552091 (= (containsKey!4607 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))) key!6540) e!3026019)))

(declare-fun b!4841925 () Bool)

(declare-fun e!3026020 () Bool)

(assert (=> b!4841925 (= e!3026019 e!3026020)))

(declare-fun res!2064572 () Bool)

(assert (=> b!4841925 (=> (not res!2064572) (not e!3026020))))

(assert (=> b!4841925 (= res!2064572 ((_ is Cons!55403) (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))

(declare-fun b!4841926 () Bool)

(assert (=> b!4841926 (= e!3026020 (containsKey!4607 (t!363023 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))) key!6540))))

(assert (= (and d!1552091 (not res!2064571)) b!4841925))

(assert (= (and b!4841925 res!2064572) b!4841926))

(declare-fun m!5837848 () Bool)

(assert (=> b!4841926 m!5837848))

(assert (=> b!4841638 d!1552091))

(assert (=> d!1551911 d!1551899))

(declare-fun d!1552093 () Bool)

(declare-fun res!2064573 () Bool)

(declare-fun e!3026021 () Bool)

(assert (=> d!1552093 (=> res!2064573 e!3026021)))

(assert (=> d!1552093 (= res!2064573 (and ((_ is Cons!55403) (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))) (= (_1!32771 (h!61838 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))))) key!6540)))))

(assert (=> d!1552093 (= (containsKey!4607 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671)))) key!6540) e!3026021)))

(declare-fun b!4841927 () Bool)

(declare-fun e!3026022 () Bool)

(assert (=> b!4841927 (= e!3026021 e!3026022)))

(declare-fun res!2064574 () Bool)

(assert (=> b!4841927 (=> (not res!2064574) (not e!3026022))))

(assert (=> b!4841927 (= res!2064574 ((_ is Cons!55403) (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))

(declare-fun b!4841928 () Bool)

(assert (=> b!4841928 (= e!3026022 (containsKey!4607 (t!363023 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))) key!6540))))

(assert (= (and d!1552093 (not res!2064573)) b!4841927))

(assert (= (and b!4841927 res!2064574) b!4841928))

(declare-fun m!5837850 () Bool)

(assert (=> b!4841928 m!5837850))

(assert (=> b!4841621 d!1552093))

(declare-fun d!1552095 () Bool)

(assert (=> d!1552095 (= (invariantList!1882 (toList!7788 lt!1985648)) (noDuplicatedKeys!502 (toList!7788 lt!1985648)))))

(declare-fun bs!1168708 () Bool)

(assert (= bs!1168708 d!1552095))

(declare-fun m!5837852 () Bool)

(assert (=> bs!1168708 m!5837852))

(assert (=> d!1551927 d!1552095))

(declare-fun d!1552097 () Bool)

(declare-fun res!2064575 () Bool)

(declare-fun e!3026023 () Bool)

(assert (=> d!1552097 (=> res!2064575 e!3026023)))

(assert (=> d!1552097 (= res!2064575 ((_ is Nil!55404) (t!363024 (toList!7787 lm!2671))))))

(assert (=> d!1552097 (= (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241471) e!3026023)))

(declare-fun b!4841929 () Bool)

(declare-fun e!3026024 () Bool)

(assert (=> b!4841929 (= e!3026023 e!3026024)))

(declare-fun res!2064576 () Bool)

(assert (=> b!4841929 (=> (not res!2064576) (not e!3026024))))

(assert (=> b!4841929 (= res!2064576 (dynLambda!22306 lambda!241471 (h!61839 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun b!4841930 () Bool)

(assert (=> b!4841930 (= e!3026024 (forall!12868 (t!363024 (t!363024 (toList!7787 lm!2671))) lambda!241471))))

(assert (= (and d!1552097 (not res!2064575)) b!4841929))

(assert (= (and b!4841929 res!2064576) b!4841930))

(declare-fun b_lambda!191491 () Bool)

(assert (=> (not b_lambda!191491) (not b!4841929)))

(declare-fun m!5837854 () Bool)

(assert (=> b!4841929 m!5837854))

(declare-fun m!5837856 () Bool)

(assert (=> b!4841930 m!5837856))

(assert (=> d!1551927 d!1552097))

(declare-fun d!1552099 () Bool)

(declare-fun res!2064579 () Bool)

(declare-fun e!3026027 () Bool)

(assert (=> d!1552099 (=> res!2064579 e!3026027)))

(declare-fun e!3026025 () Bool)

(assert (=> d!1552099 (= res!2064579 e!3026025)))

(declare-fun res!2064577 () Bool)

(assert (=> d!1552099 (=> (not res!2064577) (not e!3026025))))

(assert (=> d!1552099 (= res!2064577 ((_ is Cons!55404) (t!363024 (t!363024 (toList!7787 lm!2671)))))))

(assert (=> d!1552099 (= (containsKeyBiggerList!724 (t!363024 (t!363024 (toList!7787 lm!2671))) key!6540) e!3026027)))

(declare-fun b!4841931 () Bool)

(assert (=> b!4841931 (= e!3026025 (containsKey!4607 (_2!32772 (h!61839 (t!363024 (t!363024 (toList!7787 lm!2671))))) key!6540))))

(declare-fun b!4841932 () Bool)

(declare-fun e!3026026 () Bool)

(assert (=> b!4841932 (= e!3026027 e!3026026)))

(declare-fun res!2064578 () Bool)

(assert (=> b!4841932 (=> (not res!2064578) (not e!3026026))))

(assert (=> b!4841932 (= res!2064578 ((_ is Cons!55404) (t!363024 (t!363024 (toList!7787 lm!2671)))))))

(declare-fun b!4841933 () Bool)

(assert (=> b!4841933 (= e!3026026 (containsKeyBiggerList!724 (t!363024 (t!363024 (t!363024 (toList!7787 lm!2671)))) key!6540))))

(assert (= (and d!1552099 res!2064577) b!4841931))

(assert (= (and d!1552099 (not res!2064579)) b!4841932))

(assert (= (and b!4841932 res!2064578) b!4841933))

(declare-fun m!5837858 () Bool)

(assert (=> b!4841931 m!5837858))

(declare-fun m!5837860 () Bool)

(assert (=> b!4841933 m!5837860))

(assert (=> b!4841623 d!1552099))

(declare-fun d!1552101 () Bool)

(declare-fun res!2064584 () Bool)

(declare-fun e!3026032 () Bool)

(assert (=> d!1552101 (=> res!2064584 e!3026032)))

(assert (=> d!1552101 (= res!2064584 (or ((_ is Nil!55404) (toList!7787 lm!2671)) ((_ is Nil!55404) (t!363024 (toList!7787 lm!2671)))))))

(assert (=> d!1552101 (= (isStrictlySorted!1050 (toList!7787 lm!2671)) e!3026032)))

(declare-fun b!4841938 () Bool)

(declare-fun e!3026033 () Bool)

(assert (=> b!4841938 (= e!3026032 e!3026033)))

(declare-fun res!2064585 () Bool)

(assert (=> b!4841938 (=> (not res!2064585) (not e!3026033))))

(assert (=> b!4841938 (= res!2064585 (bvslt (_1!32772 (h!61839 (toList!7787 lm!2671))) (_1!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))

(declare-fun b!4841939 () Bool)

(assert (=> b!4841939 (= e!3026033 (isStrictlySorted!1050 (t!363024 (toList!7787 lm!2671))))))

(assert (= (and d!1552101 (not res!2064584)) b!4841938))

(assert (= (and b!4841938 res!2064585) b!4841939))

(declare-fun m!5837862 () Bool)

(assert (=> b!4841939 m!5837862))

(assert (=> d!1551887 d!1552101))

(declare-fun d!1552103 () Bool)

(declare-fun res!2064586 () Bool)

(declare-fun e!3026034 () Bool)

(assert (=> d!1552103 (=> res!2064586 e!3026034)))

(assert (=> d!1552103 (= res!2064586 (not ((_ is Cons!55403) (_2!32772 (h!61839 (toList!7787 lt!1985508))))))))

(assert (=> d!1552103 (= (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lt!1985508)))) e!3026034)))

(declare-fun b!4841940 () Bool)

(declare-fun e!3026035 () Bool)

(assert (=> b!4841940 (= e!3026034 e!3026035)))

(declare-fun res!2064587 () Bool)

(assert (=> b!4841940 (=> (not res!2064587) (not e!3026035))))

(assert (=> b!4841940 (= res!2064587 (not (containsKey!4607 (t!363023 (_2!32772 (h!61839 (toList!7787 lt!1985508)))) (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lt!1985508))))))))))

(declare-fun b!4841941 () Bool)

(assert (=> b!4841941 (= e!3026035 (noDuplicateKeys!2550 (t!363023 (_2!32772 (h!61839 (toList!7787 lt!1985508))))))))

(assert (= (and d!1552103 (not res!2064586)) b!4841940))

(assert (= (and b!4841940 res!2064587) b!4841941))

(declare-fun m!5837864 () Bool)

(assert (=> b!4841940 m!5837864))

(declare-fun m!5837866 () Bool)

(assert (=> b!4841941 m!5837866))

(assert (=> bs!1168566 d!1552103))

(declare-fun d!1552105 () Bool)

(declare-fun res!2064588 () Bool)

(declare-fun e!3026036 () Bool)

(assert (=> d!1552105 (=> res!2064588 e!3026036)))

(assert (=> d!1552105 (= res!2064588 ((_ is Nil!55404) (toList!7787 lm!2671)))))

(assert (=> d!1552105 (= (forall!12868 (toList!7787 lm!2671) lambda!241402) e!3026036)))

(declare-fun b!4841942 () Bool)

(declare-fun e!3026037 () Bool)

(assert (=> b!4841942 (= e!3026036 e!3026037)))

(declare-fun res!2064589 () Bool)

(assert (=> b!4841942 (=> (not res!2064589) (not e!3026037))))

(assert (=> b!4841942 (= res!2064589 (dynLambda!22306 lambda!241402 (h!61839 (toList!7787 lm!2671))))))

(declare-fun b!4841943 () Bool)

(assert (=> b!4841943 (= e!3026037 (forall!12868 (t!363024 (toList!7787 lm!2671)) lambda!241402))))

(assert (= (and d!1552105 (not res!2064588)) b!4841942))

(assert (= (and b!4841942 res!2064589) b!4841943))

(declare-fun b_lambda!191493 () Bool)

(assert (=> (not b_lambda!191493) (not b!4841942)))

(declare-fun m!5837868 () Bool)

(assert (=> b!4841942 m!5837868))

(declare-fun m!5837870 () Bool)

(assert (=> b!4841943 m!5837870))

(assert (=> d!1551907 d!1552105))

(declare-fun b!4841948 () Bool)

(declare-fun tp_is_empty!34987 () Bool)

(declare-fun tp!1363992 () Bool)

(declare-fun e!3026040 () Bool)

(assert (=> b!4841948 (= e!3026040 (and tp_is_empty!34983 tp_is_empty!34987 tp!1363992))))

(assert (=> b!4841701 (= tp!1363983 e!3026040)))

(assert (= (and b!4841701 ((_ is Cons!55403) (_2!32772 (h!61839 (toList!7787 lm!2671))))) b!4841948))

(declare-fun b!4841949 () Bool)

(declare-fun e!3026041 () Bool)

(declare-fun tp!1363993 () Bool)

(declare-fun tp!1363994 () Bool)

(assert (=> b!4841949 (= e!3026041 (and tp!1363993 tp!1363994))))

(assert (=> b!4841701 (= tp!1363984 e!3026041)))

(assert (= (and b!4841701 ((_ is Cons!55404) (t!363024 (toList!7787 lm!2671)))) b!4841949))

(declare-fun b_lambda!191495 () Bool)

(assert (= b_lambda!191475 (or b!4841686 b_lambda!191495)))

(declare-fun bs!1168709 () Bool)

(declare-fun d!1552107 () Bool)

(assert (= bs!1168709 (and d!1552107 b!4841686)))

(assert (=> bs!1168709 (= (dynLambda!22308 lambda!241469 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))) (contains!19109 lt!1985640 (_1!32771 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))))

(declare-fun m!5837872 () Bool)

(assert (=> bs!1168709 m!5837872))

(assert (=> b!4841882 d!1552107))

(declare-fun b_lambda!191497 () Bool)

(assert (= b_lambda!191465 (or d!1551901 b_lambda!191497)))

(declare-fun bs!1168710 () Bool)

(declare-fun d!1552109 () Bool)

(assert (= bs!1168710 (and d!1552109 d!1551901)))

(assert (=> bs!1168710 (= (dynLambda!22306 lambda!241399 (h!61839 (toList!7787 lm!2671))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> bs!1168710 m!5837380))

(assert (=> b!4841841 d!1552109))

(declare-fun b_lambda!191499 () Bool)

(assert (= b_lambda!191473 (or d!1551931 b_lambda!191499)))

(declare-fun bs!1168711 () Bool)

(declare-fun d!1552111 () Bool)

(assert (= bs!1168711 (and d!1552111 d!1551931)))

(declare-fun allKeysSameHash!2025 (List!55527 (_ BitVec 64) Hashable!7440) Bool)

(assert (=> bs!1168711 (= (dynLambda!22306 lambda!241472 (h!61839 (toList!7787 lt!1985508))) (allKeysSameHash!2025 (_2!32772 (h!61839 (toList!7787 lt!1985508))) (_1!32772 (h!61839 (toList!7787 lt!1985508))) hashF!1662))))

(declare-fun m!5837874 () Bool)

(assert (=> bs!1168711 m!5837874))

(assert (=> b!4841853 d!1552111))

(declare-fun b_lambda!191501 () Bool)

(assert (= b_lambda!191463 (or start!503972 b_lambda!191501)))

(declare-fun bs!1168712 () Bool)

(declare-fun d!1552113 () Bool)

(assert (= bs!1168712 (and d!1552113 start!503972)))

(assert (=> bs!1168712 (= (dynLambda!22306 lambda!241386 (h!61839 (t!363024 (toList!7787 lm!2671)))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> bs!1168712 m!5837672))

(assert (=> b!4841833 d!1552113))

(declare-fun b_lambda!191503 () Bool)

(assert (= b_lambda!191489 (or d!1551915 b_lambda!191503)))

(declare-fun bs!1168713 () Bool)

(declare-fun d!1552115 () Bool)

(assert (= bs!1168713 (and d!1552115 d!1551915)))

(assert (=> bs!1168713 (= (dynLambda!22308 lambda!241470 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (contains!19109 lt!1985634 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(declare-fun m!5837876 () Bool)

(assert (=> bs!1168713 m!5837876))

(assert (=> b!4841923 d!1552115))

(declare-fun b_lambda!191505 () Bool)

(assert (= b_lambda!191485 (or start!503972 b_lambda!191505)))

(declare-fun bs!1168714 () Bool)

(declare-fun d!1552117 () Bool)

(assert (= bs!1168714 (and d!1552117 start!503972)))

(assert (=> bs!1168714 (= (dynLambda!22306 lambda!241386 (h!61839 (t!363024 (toList!7787 lt!1985508)))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (t!363024 (toList!7787 lt!1985508))))))))

(declare-fun m!5837878 () Bool)

(assert (=> bs!1168714 m!5837878))

(assert (=> b!4841914 d!1552117))

(declare-fun b_lambda!191507 () Bool)

(assert (= b_lambda!191483 (or b!4841686 b_lambda!191507)))

(declare-fun bs!1168715 () Bool)

(declare-fun d!1552119 () Bool)

(assert (= bs!1168715 (and d!1552119 b!4841686)))

(assert (=> bs!1168715 (= (dynLambda!22308 lambda!241469 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671)))))) (contains!19109 lt!1985640 (_1!32771 (h!61838 (t!363023 (_2!32772 (h!61839 (toList!7787 lm!2671))))))))))

(declare-fun m!5837880 () Bool)

(assert (=> bs!1168715 m!5837880))

(assert (=> b!4841898 d!1552119))

(declare-fun b_lambda!191509 () Bool)

(assert (= b_lambda!191481 (or b!4841686 b_lambda!191509)))

(declare-fun bs!1168716 () Bool)

(declare-fun d!1552121 () Bool)

(assert (= bs!1168716 (and d!1552121 b!4841686)))

(assert (=> bs!1168716 (= (dynLambda!22308 lambda!241469 (h!61838 (toList!7788 lt!1985632))) (contains!19109 lt!1985640 (_1!32771 (h!61838 (toList!7788 lt!1985632)))))))

(declare-fun m!5837882 () Bool)

(assert (=> bs!1168716 m!5837882))

(assert (=> b!4841896 d!1552121))

(declare-fun b_lambda!191511 () Bool)

(assert (= b_lambda!191477 (or b!4841686 b_lambda!191511)))

(declare-fun bs!1168717 () Bool)

(declare-fun d!1552123 () Bool)

(assert (= bs!1168717 (and d!1552123 b!4841686)))

(assert (=> bs!1168717 (= (dynLambda!22308 lambda!241469 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671))))) (contains!19109 lt!1985640 (_1!32771 (h!61838 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))))

(assert (=> bs!1168717 m!5837366))

(assert (=> b!4841884 d!1552123))

(declare-fun b_lambda!191513 () Bool)

(assert (= b_lambda!191493 (or d!1551907 b_lambda!191513)))

(declare-fun bs!1168718 () Bool)

(declare-fun d!1552125 () Bool)

(assert (= bs!1168718 (and d!1552125 d!1551907)))

(assert (=> bs!1168718 (= (dynLambda!22306 lambda!241402 (h!61839 (toList!7787 lm!2671))) (allKeysSameHash!2025 (_2!32772 (h!61839 (toList!7787 lm!2671))) (_1!32772 (h!61839 (toList!7787 lm!2671))) hashF!1662))))

(declare-fun m!5837884 () Bool)

(assert (=> bs!1168718 m!5837884))

(assert (=> b!4841942 d!1552125))

(declare-fun b_lambda!191515 () Bool)

(assert (= b_lambda!191479 (or b!4841686 b_lambda!191515)))

(assert (=> d!1552065 d!1552123))

(declare-fun b_lambda!191517 () Bool)

(assert (= b_lambda!191467 (or d!1551913 b_lambda!191517)))

(declare-fun bs!1168719 () Bool)

(declare-fun d!1552127 () Bool)

(assert (= bs!1168719 (and d!1552127 d!1551913)))

(assert (=> bs!1168719 (= (dynLambda!22306 lambda!241405 (h!61839 (toList!7787 lm!2671))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (toList!7787 lm!2671)))))))

(assert (=> bs!1168719 m!5837380))

(assert (=> b!4841843 d!1552127))

(declare-fun b_lambda!191519 () Bool)

(assert (= b_lambda!191487 (or d!1551915 b_lambda!191519)))

(declare-fun bs!1168720 () Bool)

(declare-fun d!1552129 () Bool)

(assert (= bs!1168720 (and d!1552129 d!1551915)))

(assert (=> bs!1168720 (= (dynLambda!22308 lambda!241470 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671)))))) (contains!19109 lt!1985634 (_1!32771 (h!61838 (toList!7788 (extractMap!2782 (t!363024 (toList!7787 lm!2671))))))))))

(declare-fun m!5837886 () Bool)

(assert (=> bs!1168720 m!5837886))

(assert (=> b!4841916 d!1552129))

(declare-fun b_lambda!191521 () Bool)

(assert (= b_lambda!191491 (or d!1551927 b_lambda!191521)))

(declare-fun bs!1168721 () Bool)

(declare-fun d!1552131 () Bool)

(assert (= bs!1168721 (and d!1552131 d!1551927)))

(assert (=> bs!1168721 (= (dynLambda!22306 lambda!241471 (h!61839 (t!363024 (toList!7787 lm!2671)))) (noDuplicateKeys!2550 (_2!32772 (h!61839 (t!363024 (toList!7787 lm!2671))))))))

(assert (=> bs!1168721 m!5837672))

(assert (=> b!4841929 d!1552131))

(check-sat (not b_lambda!191495) (not d!1552057) (not b!4841922) (not b!4841834) (not b!4841875) (not b!4841854) (not bs!1168711) (not bs!1168714) (not b!4841831) (not bs!1168716) (not b_lambda!191499) (not b!4841939) (not bm!337459) (not b_lambda!191471) (not b!4841908) (not b_lambda!191399) (not b!4841888) (not bm!337455) (not bs!1168715) (not b!4841931) (not d!1552065) (not b!4841943) (not b!4841924) (not b!4841850) (not b!4841902) (not d!1552043) (not bs!1168710) (not b_lambda!191501) (not b!4841808) (not b!4841874) (not b!4841928) (not b!4841852) (not b!4841807) (not b!4841810) (not b_lambda!191503) (not b_lambda!191507) (not b_lambda!191401) (not b!4841897) (not b!4841930) (not d!1552069) (not b!4841893) (not b!4841900) (not b!4841883) (not b!4841873) (not b!4841949) (not b!4841903) (not b!4841941) (not b!4841880) (not b!4841910) (not d!1552067) (not d!1552095) (not b!4841844) (not b!4841948) (not b!4841920) (not bm!337454) (not d!1552077) (not bs!1168719) (not b!4841913) (not d!1552075) (not b!4841919) (not b!4841811) (not b_lambda!191497) (not b!4841909) (not b!4841885) (not bs!1168713) (not b!4841901) (not b!4841940) tp_is_empty!34987 (not d!1552083) (not d!1552003) (not b_lambda!191511) (not b!4841933) (not b_lambda!191519) (not b!4841839) (not b_lambda!191515) (not b_lambda!191505) (not b!4841912) (not b!4841840) (not b_lambda!191517) (not b!4841907) (not bm!337460) (not b!4841842) (not bm!337456) (not b_lambda!191513) (not bs!1168709) (not b!4841899) (not b!4841877) (not bm!337461) (not b!4841915) (not b_lambda!191469) (not b!4841917) (not b!4841876) (not bs!1168718) (not bs!1168721) (not bs!1168717) (not b!4841881) (not b!4841926) (not b!4841894) (not d!1552037) (not b_lambda!191509) (not b_lambda!191521) tp_is_empty!34983 (not bs!1168712) (not d!1552047) (not b!4841904) (not bm!337463) (not bs!1168720) (not d!1552059) (not bm!337462))
(check-sat)
