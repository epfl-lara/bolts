; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502330 () Bool)

(assert start!502330)

(declare-fun e!3020243 () Bool)

(declare-fun tp_is_empty!34647 () Bool)

(declare-fun tp_is_empty!34645 () Bool)

(declare-fun tp!1363072 () Bool)

(declare-fun b!4833114 () Bool)

(assert (=> b!4833114 (= e!3020243 (and tp_is_empty!34645 tp_is_empty!34647 tp!1363072))))

(declare-fun b!4833115 () Bool)

(declare-fun e!3020241 () Bool)

(declare-datatypes ((K!16802 0))(
  ( (K!16803 (val!21747 Int)) )
))
(declare-fun key!5666 () K!16802)

(declare-fun e!3020244 () Bool)

(declare-datatypes ((V!17048 0))(
  ( (V!17049 (val!21748 Int)) )
))
(declare-datatypes ((tuple2!58402 0))(
  ( (tuple2!58403 (_1!32495 K!16802) (_2!32495 V!17048)) )
))
(declare-datatypes ((List!55220 0))(
  ( (Nil!55096) (Cons!55096 (h!61530 tuple2!58402) (t!362716 List!55220)) )
))
(declare-fun l!14180 () List!55220)

(declare-datatypes ((ListMap!6963 0))(
  ( (ListMap!6964 (toList!7577 List!55220)) )
))
(declare-fun acc!1183 () ListMap!6963)

(declare-fun contains!18908 (ListMap!6963 K!16802) Bool)

(declare-fun addToMapMapFromBucket!1846 (List!55220 ListMap!6963) ListMap!6963)

(assert (=> b!4833115 (= e!3020244 (not (= (contains!18908 (addToMapMapFromBucket!1846 l!14180 acc!1183) key!5666) e!3020241)))))

(declare-fun res!2058812 () Bool)

(assert (=> b!4833115 (=> res!2058812 e!3020241)))

(declare-fun containsKey!4461 (List!55220 K!16802) Bool)

(assert (=> b!4833115 (= res!2058812 (containsKey!4461 l!14180 key!5666))))

(declare-fun res!2058813 () Bool)

(assert (=> start!502330 (=> (not res!2058813) (not e!3020244))))

(declare-fun noDuplicateKeys!2491 (List!55220) Bool)

(assert (=> start!502330 (= res!2058813 (noDuplicateKeys!2491 l!14180))))

(assert (=> start!502330 e!3020244))

(assert (=> start!502330 e!3020243))

(declare-fun e!3020242 () Bool)

(declare-fun inv!70703 (ListMap!6963) Bool)

(assert (=> start!502330 (and (inv!70703 acc!1183) e!3020242)))

(assert (=> start!502330 tp_is_empty!34645))

(declare-fun b!4833116 () Bool)

(assert (=> b!4833116 (= e!3020241 (contains!18908 acc!1183 key!5666))))

(declare-fun b!4833117 () Bool)

(declare-fun tp!1363071 () Bool)

(assert (=> b!4833117 (= e!3020242 tp!1363071)))

(declare-fun b!4833118 () Bool)

(declare-fun res!2058814 () Bool)

(assert (=> b!4833118 (=> (not res!2058814) (not e!3020244))))

(assert (=> b!4833118 (= res!2058814 (is-Nil!55096 l!14180))))

(assert (= (and start!502330 res!2058813) b!4833118))

(assert (= (and b!4833118 res!2058814) b!4833115))

(assert (= (and b!4833115 (not res!2058812)) b!4833116))

(assert (= (and start!502330 (is-Cons!55096 l!14180)) b!4833114))

(assert (= start!502330 b!4833117))

(declare-fun m!5827538 () Bool)

(assert (=> b!4833115 m!5827538))

(assert (=> b!4833115 m!5827538))

(declare-fun m!5827540 () Bool)

(assert (=> b!4833115 m!5827540))

(declare-fun m!5827542 () Bool)

(assert (=> b!4833115 m!5827542))

(declare-fun m!5827544 () Bool)

(assert (=> start!502330 m!5827544))

(declare-fun m!5827546 () Bool)

(assert (=> start!502330 m!5827546))

(declare-fun m!5827548 () Bool)

(assert (=> b!4833116 m!5827548))

(push 1)

(assert (not b!4833114))

(assert (not b!4833116))

(assert (not b!4833117))

(assert (not start!502330))

(assert (not b!4833115))

(assert tp_is_empty!34647)

(assert tp_is_empty!34645)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1549770 () Bool)

(declare-fun res!2058828 () Bool)

(declare-fun e!3020261 () Bool)

(assert (=> d!1549770 (=> res!2058828 e!3020261)))

(assert (=> d!1549770 (= res!2058828 (not (is-Cons!55096 l!14180)))))

(assert (=> d!1549770 (= (noDuplicateKeys!2491 l!14180) e!3020261)))

(declare-fun b!4833138 () Bool)

(declare-fun e!3020262 () Bool)

(assert (=> b!4833138 (= e!3020261 e!3020262)))

(declare-fun res!2058829 () Bool)

(assert (=> b!4833138 (=> (not res!2058829) (not e!3020262))))

(assert (=> b!4833138 (= res!2058829 (not (containsKey!4461 (t!362716 l!14180) (_1!32495 (h!61530 l!14180)))))))

(declare-fun b!4833139 () Bool)

(assert (=> b!4833139 (= e!3020262 (noDuplicateKeys!2491 (t!362716 l!14180)))))

(assert (= (and d!1549770 (not res!2058828)) b!4833138))

(assert (= (and b!4833138 res!2058829) b!4833139))

(declare-fun m!5827562 () Bool)

(assert (=> b!4833138 m!5827562))

(declare-fun m!5827564 () Bool)

(assert (=> b!4833139 m!5827564))

(assert (=> start!502330 d!1549770))

(declare-fun d!1549774 () Bool)

(declare-fun invariantList!1834 (List!55220) Bool)

(assert (=> d!1549774 (= (inv!70703 acc!1183) (invariantList!1834 (toList!7577 acc!1183)))))

(declare-fun bs!1167188 () Bool)

(assert (= bs!1167188 d!1549774))

(declare-fun m!5827566 () Bool)

(assert (=> bs!1167188 m!5827566))

(assert (=> start!502330 d!1549774))

(declare-fun b!4833185 () Bool)

(declare-datatypes ((Unit!144125 0))(
  ( (Unit!144126) )
))
(declare-fun e!3020297 () Unit!144125)

(declare-fun Unit!144127 () Unit!144125)

(assert (=> b!4833185 (= e!3020297 Unit!144127)))

(declare-fun d!1549776 () Bool)

(declare-fun e!3020296 () Bool)

(assert (=> d!1549776 e!3020296))

(declare-fun res!2058847 () Bool)

(assert (=> d!1549776 (=> res!2058847 e!3020296)))

(declare-fun e!3020298 () Bool)

(assert (=> d!1549776 (= res!2058847 e!3020298)))

(declare-fun res!2058845 () Bool)

(assert (=> d!1549776 (=> (not res!2058845) (not e!3020298))))

(declare-fun lt!1978685 () Bool)

(assert (=> d!1549776 (= res!2058845 (not lt!1978685))))

(declare-fun lt!1978687 () Bool)

(assert (=> d!1549776 (= lt!1978685 lt!1978687)))

(declare-fun lt!1978682 () Unit!144125)

(declare-fun e!3020295 () Unit!144125)

(assert (=> d!1549776 (= lt!1978682 e!3020295)))

(declare-fun c!823529 () Bool)

(assert (=> d!1549776 (= c!823529 lt!1978687)))

(declare-fun containsKey!4463 (List!55220 K!16802) Bool)

(assert (=> d!1549776 (= lt!1978687 (containsKey!4463 (toList!7577 acc!1183) key!5666))))

(assert (=> d!1549776 (= (contains!18908 acc!1183 key!5666) lt!1978685)))

(declare-fun b!4833186 () Bool)

(declare-datatypes ((List!55222 0))(
  ( (Nil!55098) (Cons!55098 (h!61532 K!16802) (t!362718 List!55222)) )
))
(declare-fun e!3020293 () List!55222)

(declare-fun keys!20306 (ListMap!6963) List!55222)

(assert (=> b!4833186 (= e!3020293 (keys!20306 acc!1183))))

(declare-fun b!4833187 () Bool)

(declare-fun e!3020294 () Bool)

(declare-fun contains!18910 (List!55222 K!16802) Bool)

(assert (=> b!4833187 (= e!3020294 (contains!18910 (keys!20306 acc!1183) key!5666))))

(declare-fun b!4833188 () Bool)

(declare-fun getKeysList!1179 (List!55220) List!55222)

(assert (=> b!4833188 (= e!3020293 (getKeysList!1179 (toList!7577 acc!1183)))))

(declare-fun b!4833189 () Bool)

(declare-fun lt!1978681 () Unit!144125)

(assert (=> b!4833189 (= e!3020295 lt!1978681)))

(declare-fun lt!1978683 () Unit!144125)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2449 (List!55220 K!16802) Unit!144125)

(assert (=> b!4833189 (= lt!1978683 (lemmaContainsKeyImpliesGetValueByKeyDefined!2449 (toList!7577 acc!1183) key!5666))))

(declare-datatypes ((Option!13538 0))(
  ( (None!13537) (Some!13537 (v!49238 V!17048)) )
))
(declare-fun isDefined!10652 (Option!13538) Bool)

(declare-fun getValueByKey!2665 (List!55220 K!16802) Option!13538)

(assert (=> b!4833189 (isDefined!10652 (getValueByKey!2665 (toList!7577 acc!1183) key!5666))))

(declare-fun lt!1978684 () Unit!144125)

(assert (=> b!4833189 (= lt!1978684 lt!1978683)))

(declare-fun lemmaInListThenGetKeysListContains!1174 (List!55220 K!16802) Unit!144125)

(assert (=> b!4833189 (= lt!1978681 (lemmaInListThenGetKeysListContains!1174 (toList!7577 acc!1183) key!5666))))

(declare-fun call!336788 () Bool)

(assert (=> b!4833189 call!336788))

(declare-fun b!4833190 () Bool)

(assert (=> b!4833190 false))

(declare-fun lt!1978686 () Unit!144125)

(declare-fun lt!1978680 () Unit!144125)

(assert (=> b!4833190 (= lt!1978686 lt!1978680)))

(assert (=> b!4833190 (containsKey!4463 (toList!7577 acc!1183) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1179 (List!55220 K!16802) Unit!144125)

(assert (=> b!4833190 (= lt!1978680 (lemmaInGetKeysListThenContainsKey!1179 (toList!7577 acc!1183) key!5666))))

(declare-fun Unit!144128 () Unit!144125)

(assert (=> b!4833190 (= e!3020297 Unit!144128)))

(declare-fun b!4833191 () Bool)

(assert (=> b!4833191 (= e!3020298 (not (contains!18910 (keys!20306 acc!1183) key!5666)))))

(declare-fun bm!336783 () Bool)

(assert (=> bm!336783 (= call!336788 (contains!18910 e!3020293 key!5666))))

(declare-fun c!823528 () Bool)

(assert (=> bm!336783 (= c!823528 c!823529)))

(declare-fun b!4833192 () Bool)

(assert (=> b!4833192 (= e!3020296 e!3020294)))

(declare-fun res!2058846 () Bool)

(assert (=> b!4833192 (=> (not res!2058846) (not e!3020294))))

(assert (=> b!4833192 (= res!2058846 (isDefined!10652 (getValueByKey!2665 (toList!7577 acc!1183) key!5666)))))

(declare-fun b!4833193 () Bool)

(assert (=> b!4833193 (= e!3020295 e!3020297)))

(declare-fun c!823527 () Bool)

(assert (=> b!4833193 (= c!823527 call!336788)))

(assert (= (and d!1549776 c!823529) b!4833189))

(assert (= (and d!1549776 (not c!823529)) b!4833193))

(assert (= (and b!4833193 c!823527) b!4833190))

(assert (= (and b!4833193 (not c!823527)) b!4833185))

(assert (= (or b!4833189 b!4833193) bm!336783))

(assert (= (and bm!336783 c!823528) b!4833188))

(assert (= (and bm!336783 (not c!823528)) b!4833186))

(assert (= (and d!1549776 res!2058845) b!4833191))

(assert (= (and d!1549776 (not res!2058847)) b!4833192))

(assert (= (and b!4833192 res!2058846) b!4833187))

(declare-fun m!5827588 () Bool)

(assert (=> b!4833191 m!5827588))

(assert (=> b!4833191 m!5827588))

(declare-fun m!5827590 () Bool)

(assert (=> b!4833191 m!5827590))

(assert (=> b!4833187 m!5827588))

(assert (=> b!4833187 m!5827588))

(assert (=> b!4833187 m!5827590))

(declare-fun m!5827592 () Bool)

(assert (=> b!4833188 m!5827592))

(declare-fun m!5827594 () Bool)

(assert (=> b!4833192 m!5827594))

(assert (=> b!4833192 m!5827594))

(declare-fun m!5827596 () Bool)

(assert (=> b!4833192 m!5827596))

(declare-fun m!5827598 () Bool)

(assert (=> b!4833189 m!5827598))

(assert (=> b!4833189 m!5827594))

(assert (=> b!4833189 m!5827594))

(assert (=> b!4833189 m!5827596))

(declare-fun m!5827600 () Bool)

(assert (=> b!4833189 m!5827600))

(assert (=> b!4833186 m!5827588))

(declare-fun m!5827602 () Bool)

(assert (=> d!1549776 m!5827602))

(declare-fun m!5827604 () Bool)

(assert (=> bm!336783 m!5827604))

(assert (=> b!4833190 m!5827602))

(declare-fun m!5827606 () Bool)

(assert (=> b!4833190 m!5827606))

(assert (=> b!4833116 d!1549776))

(declare-fun b!4833194 () Bool)

(declare-fun e!3020303 () Unit!144125)

(declare-fun Unit!144129 () Unit!144125)

(assert (=> b!4833194 (= e!3020303 Unit!144129)))

(declare-fun d!1549780 () Bool)

(declare-fun e!3020302 () Bool)

(assert (=> d!1549780 e!3020302))

(declare-fun res!2058850 () Bool)

(assert (=> d!1549780 (=> res!2058850 e!3020302)))

(declare-fun e!3020304 () Bool)

(assert (=> d!1549780 (= res!2058850 e!3020304)))

(declare-fun res!2058848 () Bool)

(assert (=> d!1549780 (=> (not res!2058848) (not e!3020304))))

(declare-fun lt!1978693 () Bool)

(assert (=> d!1549780 (= res!2058848 (not lt!1978693))))

(declare-fun lt!1978695 () Bool)

(assert (=> d!1549780 (= lt!1978693 lt!1978695)))

(declare-fun lt!1978690 () Unit!144125)

(declare-fun e!3020301 () Unit!144125)

(assert (=> d!1549780 (= lt!1978690 e!3020301)))

(declare-fun c!823532 () Bool)

(assert (=> d!1549780 (= c!823532 lt!1978695)))

(assert (=> d!1549780 (= lt!1978695 (containsKey!4463 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(assert (=> d!1549780 (= (contains!18908 (addToMapMapFromBucket!1846 l!14180 acc!1183) key!5666) lt!1978693)))

(declare-fun b!4833195 () Bool)

(declare-fun e!3020299 () List!55222)

(assert (=> b!4833195 (= e!3020299 (keys!20306 (addToMapMapFromBucket!1846 l!14180 acc!1183)))))

(declare-fun b!4833196 () Bool)

(declare-fun e!3020300 () Bool)

(assert (=> b!4833196 (= e!3020300 (contains!18910 (keys!20306 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(declare-fun b!4833197 () Bool)

(assert (=> b!4833197 (= e!3020299 (getKeysList!1179 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183))))))

(declare-fun b!4833198 () Bool)

(declare-fun lt!1978689 () Unit!144125)

(assert (=> b!4833198 (= e!3020301 lt!1978689)))

(declare-fun lt!1978691 () Unit!144125)

(assert (=> b!4833198 (= lt!1978691 (lemmaContainsKeyImpliesGetValueByKeyDefined!2449 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(assert (=> b!4833198 (isDefined!10652 (getValueByKey!2665 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(declare-fun lt!1978692 () Unit!144125)

(assert (=> b!4833198 (= lt!1978692 lt!1978691)))

(assert (=> b!4833198 (= lt!1978689 (lemmaInListThenGetKeysListContains!1174 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(declare-fun call!336789 () Bool)

(assert (=> b!4833198 call!336789))

(declare-fun b!4833199 () Bool)

(assert (=> b!4833199 false))

(declare-fun lt!1978694 () Unit!144125)

(declare-fun lt!1978688 () Unit!144125)

(assert (=> b!4833199 (= lt!1978694 lt!1978688)))

(assert (=> b!4833199 (containsKey!4463 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666)))

(assert (=> b!4833199 (= lt!1978688 (lemmaInGetKeysListThenContainsKey!1179 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666))))

(declare-fun Unit!144130 () Unit!144125)

(assert (=> b!4833199 (= e!3020303 Unit!144130)))

(declare-fun b!4833200 () Bool)

(assert (=> b!4833200 (= e!3020304 (not (contains!18910 (keys!20306 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666)))))

(declare-fun bm!336784 () Bool)

(assert (=> bm!336784 (= call!336789 (contains!18910 e!3020299 key!5666))))

(declare-fun c!823531 () Bool)

(assert (=> bm!336784 (= c!823531 c!823532)))

(declare-fun b!4833201 () Bool)

(assert (=> b!4833201 (= e!3020302 e!3020300)))

(declare-fun res!2058849 () Bool)

(assert (=> b!4833201 (=> (not res!2058849) (not e!3020300))))

(assert (=> b!4833201 (= res!2058849 (isDefined!10652 (getValueByKey!2665 (toList!7577 (addToMapMapFromBucket!1846 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4833202 () Bool)

(assert (=> b!4833202 (= e!3020301 e!3020303)))

(declare-fun c!823530 () Bool)

(assert (=> b!4833202 (= c!823530 call!336789)))

(assert (= (and d!1549780 c!823532) b!4833198))

(assert (= (and d!1549780 (not c!823532)) b!4833202))

(assert (= (and b!4833202 c!823530) b!4833199))

(assert (= (and b!4833202 (not c!823530)) b!4833194))

(assert (= (or b!4833198 b!4833202) bm!336784))

(assert (= (and bm!336784 c!823531) b!4833197))

(assert (= (and bm!336784 (not c!823531)) b!4833195))

(assert (= (and d!1549780 res!2058848) b!4833200))

(assert (= (and d!1549780 (not res!2058850)) b!4833201))

(assert (= (and b!4833201 res!2058849) b!4833196))

(assert (=> b!4833200 m!5827538))

(declare-fun m!5827608 () Bool)

(assert (=> b!4833200 m!5827608))

(assert (=> b!4833200 m!5827608))

(declare-fun m!5827610 () Bool)

(assert (=> b!4833200 m!5827610))

(assert (=> b!4833196 m!5827538))

(assert (=> b!4833196 m!5827608))

(assert (=> b!4833196 m!5827608))

(assert (=> b!4833196 m!5827610))

(declare-fun m!5827612 () Bool)

(assert (=> b!4833197 m!5827612))

(declare-fun m!5827614 () Bool)

(assert (=> b!4833201 m!5827614))

(assert (=> b!4833201 m!5827614))

(declare-fun m!5827616 () Bool)

(assert (=> b!4833201 m!5827616))

(declare-fun m!5827618 () Bool)

(assert (=> b!4833198 m!5827618))

(assert (=> b!4833198 m!5827614))

(assert (=> b!4833198 m!5827614))

(assert (=> b!4833198 m!5827616))

(declare-fun m!5827620 () Bool)

(assert (=> b!4833198 m!5827620))

(assert (=> b!4833195 m!5827538))

(assert (=> b!4833195 m!5827608))

(declare-fun m!5827622 () Bool)

(assert (=> d!1549780 m!5827622))

(declare-fun m!5827624 () Bool)

(assert (=> bm!336784 m!5827624))

(assert (=> b!4833199 m!5827622))

(declare-fun m!5827626 () Bool)

(assert (=> b!4833199 m!5827626))

(assert (=> b!4833115 d!1549780))

(declare-fun b!4833220 () Bool)

(assert (=> b!4833220 true))

(declare-fun bs!1167189 () Bool)

(declare-fun b!4833217 () Bool)

(assert (= bs!1167189 (and b!4833217 b!4833220)))

(declare-fun lambda!238558 () Int)

(declare-fun lambda!238557 () Int)

(assert (=> bs!1167189 (= lambda!238558 lambda!238557)))

(assert (=> b!4833217 true))

(declare-fun lambda!238559 () Int)

(declare-fun lt!1978761 () ListMap!6963)

(assert (=> bs!1167189 (= (= lt!1978761 acc!1183) (= lambda!238559 lambda!238557))))

(assert (=> b!4833217 (= (= lt!1978761 acc!1183) (= lambda!238559 lambda!238558))))

(assert (=> b!4833217 true))

(declare-fun bs!1167190 () Bool)

(declare-fun d!1549782 () Bool)

(assert (= bs!1167190 (and d!1549782 b!4833220)))

(declare-fun lambda!238560 () Int)

(declare-fun lt!1978753 () ListMap!6963)

(assert (=> bs!1167190 (= (= lt!1978753 acc!1183) (= lambda!238560 lambda!238557))))

(declare-fun bs!1167191 () Bool)

(assert (= bs!1167191 (and d!1549782 b!4833217)))

(assert (=> bs!1167191 (= (= lt!1978753 acc!1183) (= lambda!238560 lambda!238558))))

(assert (=> bs!1167191 (= (= lt!1978753 lt!1978761) (= lambda!238560 lambda!238559))))

(assert (=> d!1549782 true))

(declare-fun e!3020315 () ListMap!6963)

(assert (=> b!4833217 (= e!3020315 lt!1978761)))

(declare-fun lt!1978749 () ListMap!6963)

(declare-fun +!2570 (ListMap!6963 tuple2!58402) ListMap!6963)

(assert (=> b!4833217 (= lt!1978749 (+!2570 acc!1183 (h!61530 l!14180)))))

(assert (=> b!4833217 (= lt!1978761 (addToMapMapFromBucket!1846 (t!362716 l!14180) (+!2570 acc!1183 (h!61530 l!14180))))))

(declare-fun lt!1978757 () Unit!144125)

(declare-fun call!336797 () Unit!144125)

(assert (=> b!4833217 (= lt!1978757 call!336797)))

(declare-fun forall!12693 (List!55220 Int) Bool)

(assert (=> b!4833217 (forall!12693 (toList!7577 acc!1183) lambda!238558)))

(declare-fun lt!1978762 () Unit!144125)

(assert (=> b!4833217 (= lt!1978762 lt!1978757)))

(assert (=> b!4833217 (forall!12693 (toList!7577 lt!1978749) lambda!238559)))

(declare-fun lt!1978754 () Unit!144125)

(declare-fun Unit!144134 () Unit!144125)

(assert (=> b!4833217 (= lt!1978754 Unit!144134)))

(assert (=> b!4833217 (forall!12693 (t!362716 l!14180) lambda!238559)))

(declare-fun lt!1978764 () Unit!144125)

(declare-fun Unit!144135 () Unit!144125)

(assert (=> b!4833217 (= lt!1978764 Unit!144135)))

(declare-fun lt!1978755 () Unit!144125)

(declare-fun Unit!144136 () Unit!144125)

(assert (=> b!4833217 (= lt!1978755 Unit!144136)))

(declare-fun lt!1978752 () Unit!144125)

(declare-fun forallContained!4423 (List!55220 Int tuple2!58402) Unit!144125)

(assert (=> b!4833217 (= lt!1978752 (forallContained!4423 (toList!7577 lt!1978749) lambda!238559 (h!61530 l!14180)))))

(assert (=> b!4833217 (contains!18908 lt!1978749 (_1!32495 (h!61530 l!14180)))))

(declare-fun lt!1978744 () Unit!144125)

(declare-fun Unit!144137 () Unit!144125)

(assert (=> b!4833217 (= lt!1978744 Unit!144137)))

(assert (=> b!4833217 (contains!18908 lt!1978761 (_1!32495 (h!61530 l!14180)))))

(declare-fun lt!1978745 () Unit!144125)

(declare-fun Unit!144138 () Unit!144125)

(assert (=> b!4833217 (= lt!1978745 Unit!144138)))

(assert (=> b!4833217 (forall!12693 l!14180 lambda!238559)))

(declare-fun lt!1978751 () Unit!144125)

(declare-fun Unit!144139 () Unit!144125)

(assert (=> b!4833217 (= lt!1978751 Unit!144139)))

(declare-fun call!336796 () Bool)

(assert (=> b!4833217 call!336796))

(declare-fun lt!1978746 () Unit!144125)

(declare-fun Unit!144140 () Unit!144125)

(assert (=> b!4833217 (= lt!1978746 Unit!144140)))

(declare-fun lt!1978747 () Unit!144125)

(declare-fun Unit!144141 () Unit!144125)

(assert (=> b!4833217 (= lt!1978747 Unit!144141)))

(declare-fun lt!1978760 () Unit!144125)

(declare-fun addForallContainsKeyThenBeforeAdding!1010 (ListMap!6963 ListMap!6963 K!16802 V!17048) Unit!144125)

(assert (=> b!4833217 (= lt!1978760 (addForallContainsKeyThenBeforeAdding!1010 acc!1183 lt!1978761 (_1!32495 (h!61530 l!14180)) (_2!32495 (h!61530 l!14180))))))

(declare-fun call!336798 () Bool)

(assert (=> b!4833217 call!336798))

(declare-fun lt!1978748 () Unit!144125)

(assert (=> b!4833217 (= lt!1978748 lt!1978760)))

(assert (=> b!4833217 (forall!12693 (toList!7577 acc!1183) lambda!238559)))

(declare-fun lt!1978750 () Unit!144125)

(declare-fun Unit!144142 () Unit!144125)

(assert (=> b!4833217 (= lt!1978750 Unit!144142)))

(declare-fun res!2058858 () Bool)

(assert (=> b!4833217 (= res!2058858 (forall!12693 l!14180 lambda!238559))))

(declare-fun e!3020314 () Bool)

(assert (=> b!4833217 (=> (not res!2058858) (not e!3020314))))

(assert (=> b!4833217 e!3020314))

(declare-fun lt!1978756 () Unit!144125)

(declare-fun Unit!144144 () Unit!144125)

(assert (=> b!4833217 (= lt!1978756 Unit!144144)))

(declare-fun b!4833218 () Bool)

(declare-fun e!3020313 () Bool)

(assert (=> b!4833218 (= e!3020313 (invariantList!1834 (toList!7577 lt!1978753)))))

(declare-fun b!4833219 () Bool)

(assert (=> b!4833219 (= e!3020314 (forall!12693 (toList!7577 acc!1183) lambda!238559))))

(declare-fun bm!336791 () Bool)

(declare-fun c!823537 () Bool)

(assert (=> bm!336791 (= call!336796 (forall!12693 (ite c!823537 (toList!7577 acc!1183) (toList!7577 lt!1978749)) (ite c!823537 lambda!238557 lambda!238559)))))

(assert (=> b!4833220 (= e!3020315 acc!1183)))

(declare-fun lt!1978758 () Unit!144125)

(assert (=> b!4833220 (= lt!1978758 call!336797)))

(assert (=> b!4833220 call!336796))

(declare-fun lt!1978763 () Unit!144125)

(assert (=> b!4833220 (= lt!1978763 lt!1978758)))

(assert (=> b!4833220 call!336798))

(declare-fun lt!1978759 () Unit!144125)

(declare-fun Unit!144145 () Unit!144125)

(assert (=> b!4833220 (= lt!1978759 Unit!144145)))

(declare-fun bm!336792 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1011 (ListMap!6963) Unit!144125)

(assert (=> bm!336792 (= call!336797 (lemmaContainsAllItsOwnKeys!1011 acc!1183))))

(assert (=> d!1549782 e!3020313))

(declare-fun res!2058859 () Bool)

(assert (=> d!1549782 (=> (not res!2058859) (not e!3020313))))

(assert (=> d!1549782 (= res!2058859 (forall!12693 l!14180 lambda!238560))))

(assert (=> d!1549782 (= lt!1978753 e!3020315)))

(assert (=> d!1549782 (= c!823537 (is-Nil!55096 l!14180))))

(assert (=> d!1549782 (noDuplicateKeys!2491 l!14180)))

(assert (=> d!1549782 (= (addToMapMapFromBucket!1846 l!14180 acc!1183) lt!1978753)))

(declare-fun bm!336793 () Bool)

(assert (=> bm!336793 (= call!336798 (forall!12693 (toList!7577 acc!1183) (ite c!823537 lambda!238557 lambda!238559)))))

(declare-fun b!4833221 () Bool)

(declare-fun res!2058857 () Bool)

(assert (=> b!4833221 (=> (not res!2058857) (not e!3020313))))

(assert (=> b!4833221 (= res!2058857 (forall!12693 (toList!7577 acc!1183) lambda!238560))))

(assert (= (and d!1549782 c!823537) b!4833220))

(assert (= (and d!1549782 (not c!823537)) b!4833217))

(assert (= (and b!4833217 res!2058858) b!4833219))

(assert (= (or b!4833220 b!4833217) bm!336791))

(assert (= (or b!4833220 b!4833217) bm!336793))

(assert (= (or b!4833220 b!4833217) bm!336792))

(assert (= (and d!1549782 res!2058859) b!4833221))

(assert (= (and b!4833221 res!2058857) b!4833218))

(declare-fun m!5827628 () Bool)

(assert (=> b!4833219 m!5827628))

(declare-fun m!5827630 () Bool)

(assert (=> bm!336792 m!5827630))

(declare-fun m!5827632 () Bool)

(assert (=> bm!336791 m!5827632))

(declare-fun m!5827634 () Bool)

(assert (=> b!4833217 m!5827634))

(declare-fun m!5827636 () Bool)

(assert (=> b!4833217 m!5827636))

(declare-fun m!5827638 () Bool)

(assert (=> b!4833217 m!5827638))

(declare-fun m!5827640 () Bool)

(assert (=> b!4833217 m!5827640))

(assert (=> b!4833217 m!5827640))

(assert (=> b!4833217 m!5827628))

(declare-fun m!5827642 () Bool)

(assert (=> b!4833217 m!5827642))

(declare-fun m!5827644 () Bool)

(assert (=> b!4833217 m!5827644))

(declare-fun m!5827646 () Bool)

(assert (=> b!4833217 m!5827646))

(declare-fun m!5827648 () Bool)

(assert (=> b!4833217 m!5827648))

(assert (=> b!4833217 m!5827646))

(declare-fun m!5827650 () Bool)

(assert (=> b!4833217 m!5827650))

(declare-fun m!5827652 () Bool)

(assert (=> b!4833217 m!5827652))

(declare-fun m!5827654 () Bool)

(assert (=> d!1549782 m!5827654))

(assert (=> d!1549782 m!5827544))

(declare-fun m!5827656 () Bool)

(assert (=> b!4833218 m!5827656))

(declare-fun m!5827658 () Bool)

(assert (=> bm!336793 m!5827658))

(declare-fun m!5827660 () Bool)

(assert (=> b!4833221 m!5827660))

(assert (=> b!4833115 d!1549782))

(declare-fun d!1549784 () Bool)

(declare-fun res!2058864 () Bool)

(declare-fun e!3020320 () Bool)

(assert (=> d!1549784 (=> res!2058864 e!3020320)))

(assert (=> d!1549784 (= res!2058864 (and (is-Cons!55096 l!14180) (= (_1!32495 (h!61530 l!14180)) key!5666)))))

(assert (=> d!1549784 (= (containsKey!4461 l!14180 key!5666) e!3020320)))

(declare-fun b!4833228 () Bool)

(declare-fun e!3020321 () Bool)

(assert (=> b!4833228 (= e!3020320 e!3020321)))

(declare-fun res!2058865 () Bool)

(assert (=> b!4833228 (=> (not res!2058865) (not e!3020321))))

(assert (=> b!4833228 (= res!2058865 (is-Cons!55096 l!14180))))

(declare-fun b!4833229 () Bool)

(assert (=> b!4833229 (= e!3020321 (containsKey!4461 (t!362716 l!14180) key!5666))))

(assert (= (and d!1549784 (not res!2058864)) b!4833228))

(assert (= (and b!4833228 res!2058865) b!4833229))

(declare-fun m!5827662 () Bool)

(assert (=> b!4833229 m!5827662))

(assert (=> b!4833115 d!1549784))

(declare-fun b!4833234 () Bool)

(declare-fun e!3020324 () Bool)

(declare-fun tp!1363081 () Bool)

(assert (=> b!4833234 (= e!3020324 (and tp_is_empty!34645 tp_is_empty!34647 tp!1363081))))

(assert (=> b!4833117 (= tp!1363071 e!3020324)))

(assert (= (and b!4833117 (is-Cons!55096 (toList!7577 acc!1183))) b!4833234))

(declare-fun b!4833235 () Bool)

(declare-fun e!3020325 () Bool)

(declare-fun tp!1363082 () Bool)

(assert (=> b!4833235 (= e!3020325 (and tp_is_empty!34645 tp_is_empty!34647 tp!1363082))))

(assert (=> b!4833114 (= tp!1363072 e!3020325)))

(assert (= (and b!4833114 (is-Cons!55096 (t!362716 l!14180))) b!4833235))

(push 1)

(assert (not d!1549776))

(assert (not b!4833221))

(assert (not b!4833201))

(assert (not bm!336791))

(assert (not b!4833200))

(assert (not b!4833197))

(assert (not bm!336783))

(assert (not b!4833217))

(assert (not b!4833187))

(assert (not b!4833139))

(assert (not b!4833219))

(assert (not d!1549774))

(assert (not b!4833235))

(assert (not b!4833189))

(assert (not bm!336784))

(assert (not d!1549780))

(assert (not bm!336792))

(assert (not b!4833196))

(assert (not b!4833192))

(assert (not b!4833198))

(assert (not b!4833229))

(assert (not b!4833190))

(assert (not b!4833218))

(assert (not b!4833186))

(assert (not bm!336793))

(assert (not b!4833199))

(assert (not b!4833234))

(assert (not b!4833188))

(assert tp_is_empty!34647)

(assert (not d!1549782))

(assert (not b!4833138))

(assert tp_is_empty!34645)

(assert (not b!4833191))

(assert (not b!4833195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

