; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417658 () Bool)

(assert start!417658)

(declare-fun b!4332903 () Bool)

(declare-fun res!1776568 () Bool)

(declare-fun e!2696196 () Bool)

(assert (=> b!4332903 (=> res!1776568 e!2696196)))

(declare-datatypes ((K!9963 0))(
  ( (K!9964 (val!16241 Int)) )
))
(declare-datatypes ((V!10209 0))(
  ( (V!10210 (val!16242 Int)) )
))
(declare-datatypes ((tuple2!47802 0))(
  ( (tuple2!47803 (_1!27195 K!9963) (_2!27195 V!10209)) )
))
(declare-datatypes ((List!48731 0))(
  ( (Nil!48607) (Cons!48607 (h!54094 tuple2!47802) (t!355647 List!48731)) )
))
(declare-fun newBucket!200 () List!48731)

(declare-fun noDuplicateKeys!358 (List!48731) Bool)

(assert (=> b!4332903 (= res!1776568 (not (noDuplicateKeys!358 newBucket!200)))))

(declare-fun b!4332904 () Bool)

(declare-fun res!1776564 () Bool)

(declare-fun e!2696200 () Bool)

(assert (=> b!4332904 (=> (not res!1776564) (not e!2696200))))

(declare-datatypes ((tuple2!47804 0))(
  ( (tuple2!47805 (_1!27196 (_ BitVec 64)) (_2!27196 List!48731)) )
))
(declare-datatypes ((List!48732 0))(
  ( (Nil!48608) (Cons!48608 (h!54095 tuple2!47804) (t!355648 List!48732)) )
))
(declare-datatypes ((ListLongMap!1349 0))(
  ( (ListLongMap!1350 (toList!2699 List!48732)) )
))
(declare-fun lt!1546277 () ListLongMap!1349)

(declare-fun lambda!134884 () Int)

(declare-fun forall!8912 (List!48732 Int) Bool)

(assert (=> b!4332904 (= res!1776564 (forall!8912 (toList!2699 lt!1546277) lambda!134884))))

(declare-fun b!4332905 () Bool)

(declare-fun e!2696198 () Bool)

(assert (=> b!4332905 (= e!2696196 e!2696198)))

(declare-fun res!1776565 () Bool)

(assert (=> b!4332905 (=> res!1776565 e!2696198)))

(declare-fun lm!1707 () ListLongMap!1349)

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4332905 (= res!1776565 (or (not (is-Cons!48608 (toList!2699 lm!1707))) (not (= (_1!27196 (h!54095 (toList!2699 lm!1707))) hash!377))))))

(assert (=> b!4332905 e!2696200))

(declare-fun res!1776563 () Bool)

(assert (=> b!4332905 (=> (not res!1776563) (not e!2696200))))

(assert (=> b!4332905 (= res!1776563 (forall!8912 (toList!2699 lt!1546277) lambda!134884))))

(declare-fun lt!1546276 () tuple2!47804)

(declare-fun +!394 (ListLongMap!1349 tuple2!47804) ListLongMap!1349)

(assert (=> b!4332905 (= lt!1546277 (+!394 lm!1707 lt!1546276))))

(assert (=> b!4332905 (= lt!1546276 (tuple2!47805 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68204 0))(
  ( (Unit!68205) )
))
(declare-fun lt!1546275 () Unit!68204)

(declare-fun addValidProp!12 (ListLongMap!1349 Int (_ BitVec 64) List!48731) Unit!68204)

(assert (=> b!4332905 (= lt!1546275 (addValidProp!12 lm!1707 lambda!134884 hash!377 newBucket!200))))

(assert (=> b!4332905 (forall!8912 (toList!2699 lm!1707) lambda!134884)))

(declare-fun b!4332907 () Bool)

(declare-fun e!2696193 () Bool)

(assert (=> b!4332907 (= e!2696200 e!2696193)))

(declare-fun res!1776570 () Bool)

(assert (=> b!4332907 (=> res!1776570 e!2696193)))

(assert (=> b!4332907 (= res!1776570 (or (not (is-Cons!48608 (toList!2699 lm!1707))) (not (= (_1!27196 (h!54095 (toList!2699 lm!1707))) hash!377))))))

(declare-fun b!4332908 () Bool)

(declare-fun res!1776566 () Bool)

(declare-fun e!2696195 () Bool)

(assert (=> b!4332908 (=> (not res!1776566) (not e!2696195))))

(declare-datatypes ((Hashable!4750 0))(
  ( (HashableExt!4749 (__x!30453 Int)) )
))
(declare-fun hashF!1247 () Hashable!4750)

(declare-fun allKeysSameHash!316 (List!48731 (_ BitVec 64) Hashable!4750) Bool)

(assert (=> b!4332908 (= res!1776566 (allKeysSameHash!316 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4332909 () Bool)

(declare-fun res!1776569 () Bool)

(assert (=> b!4332909 (=> (not res!1776569) (not e!2696195))))

(declare-fun contains!10633 (ListLongMap!1349 (_ BitVec 64)) Bool)

(assert (=> b!4332909 (= res!1776569 (contains!10633 lm!1707 hash!377))))

(declare-fun b!4332910 () Bool)

(declare-fun res!1776561 () Bool)

(assert (=> b!4332910 (=> (not res!1776561) (not e!2696195))))

(declare-fun key!3918 () K!9963)

(declare-fun hash!1294 (Hashable!4750 K!9963) (_ BitVec 64))

(assert (=> b!4332910 (= res!1776561 (= (hash!1294 hashF!1247 key!3918) hash!377))))

(declare-fun b!4332911 () Bool)

(declare-fun e!2696197 () Bool)

(declare-datatypes ((ListMap!1943 0))(
  ( (ListMap!1944 (toList!2700 List!48731)) )
))
(declare-fun extractMap!417 (List!48732) ListMap!1943)

(declare-fun addToMapMapFromBucket!66 (List!48731 ListMap!1943) ListMap!1943)

(assert (=> b!4332911 (= e!2696197 (= (extractMap!417 (toList!2699 lt!1546277)) (addToMapMapFromBucket!66 newBucket!200 (extractMap!417 (t!355648 (toList!2699 lm!1707))))))))

(declare-fun res!1776572 () Bool)

(assert (=> start!417658 (=> (not res!1776572) (not e!2696195))))

(assert (=> start!417658 (= res!1776572 (forall!8912 (toList!2699 lm!1707) lambda!134884))))

(assert (=> start!417658 e!2696195))

(declare-fun e!2696199 () Bool)

(assert (=> start!417658 e!2696199))

(assert (=> start!417658 true))

(declare-fun e!2696194 () Bool)

(declare-fun inv!64150 (ListLongMap!1349) Bool)

(assert (=> start!417658 (and (inv!64150 lm!1707) e!2696194)))

(declare-fun tp_is_empty!24669 () Bool)

(assert (=> start!417658 tp_is_empty!24669))

(declare-fun tp_is_empty!24671 () Bool)

(assert (=> start!417658 tp_is_empty!24671))

(declare-fun b!4332906 () Bool)

(declare-fun tp!1328704 () Bool)

(assert (=> b!4332906 (= e!2696194 tp!1328704)))

(declare-fun b!4332912 () Bool)

(assert (=> b!4332912 (= e!2696195 (not e!2696196))))

(declare-fun res!1776562 () Bool)

(assert (=> b!4332912 (=> res!1776562 e!2696196)))

(declare-fun newValue!99 () V!10209)

(declare-fun lt!1546274 () List!48731)

(declare-fun removePairForKey!328 (List!48731 K!9963) List!48731)

(assert (=> b!4332912 (= res!1776562 (not (= newBucket!200 (Cons!48607 (tuple2!47803 key!3918 newValue!99) (removePairForKey!328 lt!1546274 key!3918)))))))

(declare-fun lt!1546278 () Unit!68204)

(declare-fun lt!1546279 () tuple2!47804)

(declare-fun forallContained!1563 (List!48732 Int tuple2!47804) Unit!68204)

(assert (=> b!4332912 (= lt!1546278 (forallContained!1563 (toList!2699 lm!1707) lambda!134884 lt!1546279))))

(declare-fun contains!10634 (List!48732 tuple2!47804) Bool)

(assert (=> b!4332912 (contains!10634 (toList!2699 lm!1707) lt!1546279)))

(assert (=> b!4332912 (= lt!1546279 (tuple2!47805 hash!377 lt!1546274))))

(declare-fun lt!1546273 () Unit!68204)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!205 (List!48732 (_ BitVec 64) List!48731) Unit!68204)

(assert (=> b!4332912 (= lt!1546273 (lemmaGetValueByKeyImpliesContainsTuple!205 (toList!2699 lm!1707) hash!377 lt!1546274))))

(declare-fun apply!11210 (ListLongMap!1349 (_ BitVec 64)) List!48731)

(assert (=> b!4332912 (= lt!1546274 (apply!11210 lm!1707 hash!377))))

(declare-fun b!4332913 () Bool)

(declare-fun res!1776571 () Bool)

(assert (=> b!4332913 (=> (not res!1776571) (not e!2696195))))

(declare-fun contains!10635 (ListMap!1943 K!9963) Bool)

(assert (=> b!4332913 (= res!1776571 (contains!10635 (extractMap!417 (toList!2699 lm!1707)) key!3918))))

(declare-fun b!4332914 () Bool)

(assert (=> b!4332914 (= e!2696198 (noDuplicateKeys!358 lt!1546274))))

(declare-fun tp!1328703 () Bool)

(declare-fun b!4332915 () Bool)

(assert (=> b!4332915 (= e!2696199 (and tp_is_empty!24669 tp_is_empty!24671 tp!1328703))))

(declare-fun b!4332916 () Bool)

(assert (=> b!4332916 (= e!2696193 e!2696197)))

(declare-fun res!1776567 () Bool)

(assert (=> b!4332916 (=> (not res!1776567) (not e!2696197))))

(assert (=> b!4332916 (= res!1776567 (= lt!1546277 (ListLongMap!1350 (Cons!48608 lt!1546276 (t!355648 (toList!2699 lm!1707))))))))

(declare-fun b!4332917 () Bool)

(declare-fun res!1776560 () Bool)

(assert (=> b!4332917 (=> (not res!1776560) (not e!2696195))))

(declare-fun allKeysSameHashInMap!462 (ListLongMap!1349 Hashable!4750) Bool)

(assert (=> b!4332917 (= res!1776560 (allKeysSameHashInMap!462 lm!1707 hashF!1247))))

(assert (= (and start!417658 res!1776572) b!4332917))

(assert (= (and b!4332917 res!1776560) b!4332910))

(assert (= (and b!4332910 res!1776561) b!4332908))

(assert (= (and b!4332908 res!1776566) b!4332913))

(assert (= (and b!4332913 res!1776571) b!4332909))

(assert (= (and b!4332909 res!1776569) b!4332912))

(assert (= (and b!4332912 (not res!1776562)) b!4332903))

(assert (= (and b!4332903 (not res!1776568)) b!4332905))

(assert (= (and b!4332905 res!1776563) b!4332904))

(assert (= (and b!4332904 res!1776564) b!4332907))

(assert (= (and b!4332907 (not res!1776570)) b!4332916))

(assert (= (and b!4332916 res!1776567) b!4332911))

(assert (= (and b!4332905 (not res!1776565)) b!4332914))

(assert (= (and start!417658 (is-Cons!48607 newBucket!200)) b!4332915))

(assert (= start!417658 b!4332906))

(declare-fun m!4927101 () Bool)

(assert (=> b!4332909 m!4927101))

(declare-fun m!4927103 () Bool)

(assert (=> b!4332904 m!4927103))

(declare-fun m!4927105 () Bool)

(assert (=> b!4332913 m!4927105))

(assert (=> b!4332913 m!4927105))

(declare-fun m!4927107 () Bool)

(assert (=> b!4332913 m!4927107))

(declare-fun m!4927109 () Bool)

(assert (=> start!417658 m!4927109))

(declare-fun m!4927111 () Bool)

(assert (=> start!417658 m!4927111))

(declare-fun m!4927113 () Bool)

(assert (=> b!4332903 m!4927113))

(assert (=> b!4332905 m!4927103))

(declare-fun m!4927115 () Bool)

(assert (=> b!4332905 m!4927115))

(declare-fun m!4927117 () Bool)

(assert (=> b!4332905 m!4927117))

(assert (=> b!4332905 m!4927109))

(declare-fun m!4927119 () Bool)

(assert (=> b!4332910 m!4927119))

(declare-fun m!4927121 () Bool)

(assert (=> b!4332912 m!4927121))

(declare-fun m!4927123 () Bool)

(assert (=> b!4332912 m!4927123))

(declare-fun m!4927125 () Bool)

(assert (=> b!4332912 m!4927125))

(declare-fun m!4927127 () Bool)

(assert (=> b!4332912 m!4927127))

(declare-fun m!4927129 () Bool)

(assert (=> b!4332912 m!4927129))

(declare-fun m!4927131 () Bool)

(assert (=> b!4332914 m!4927131))

(declare-fun m!4927133 () Bool)

(assert (=> b!4332908 m!4927133))

(declare-fun m!4927135 () Bool)

(assert (=> b!4332911 m!4927135))

(declare-fun m!4927137 () Bool)

(assert (=> b!4332911 m!4927137))

(assert (=> b!4332911 m!4927137))

(declare-fun m!4927139 () Bool)

(assert (=> b!4332911 m!4927139))

(declare-fun m!4927141 () Bool)

(assert (=> b!4332917 m!4927141))

(push 1)

(assert (not b!4332903))

(assert tp_is_empty!24669)

(assert (not b!4332912))

(assert (not b!4332909))

(assert (not b!4332914))

(assert (not b!4332905))

(assert (not b!4332908))

(assert (not b!4332910))

(assert tp_is_empty!24671)

(assert (not b!4332904))

(assert (not b!4332917))

(assert (not start!417658))

(assert (not b!4332911))

(assert (not b!4332913))

(assert (not b!4332915))

(assert (not b!4332906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273725 () Bool)

(declare-fun hash!1296 (Hashable!4750 K!9963) (_ BitVec 64))

(assert (=> d!1273725 (= (hash!1294 hashF!1247 key!3918) (hash!1296 hashF!1247 key!3918))))

(declare-fun bs!608032 () Bool)

(assert (= bs!608032 d!1273725))

(declare-fun m!4927185 () Bool)

(assert (=> bs!608032 m!4927185))

(assert (=> b!4332910 d!1273725))

(declare-fun bs!608033 () Bool)

(declare-fun d!1273727 () Bool)

(assert (= bs!608033 (and d!1273727 start!417658)))

(declare-fun lambda!134898 () Int)

(assert (=> bs!608033 (= lambda!134898 lambda!134884)))

(declare-fun lt!1546303 () ListMap!1943)

(declare-fun invariantList!614 (List!48731) Bool)

(assert (=> d!1273727 (invariantList!614 (toList!2700 lt!1546303))))

(declare-fun e!2696227 () ListMap!1943)

(assert (=> d!1273727 (= lt!1546303 e!2696227)))

(declare-fun c!736925 () Bool)

(assert (=> d!1273727 (= c!736925 (is-Cons!48608 (toList!2699 lt!1546277)))))

(assert (=> d!1273727 (forall!8912 (toList!2699 lt!1546277) lambda!134898)))

(assert (=> d!1273727 (= (extractMap!417 (toList!2699 lt!1546277)) lt!1546303)))

(declare-fun b!4332967 () Bool)

(assert (=> b!4332967 (= e!2696227 (addToMapMapFromBucket!66 (_2!27196 (h!54095 (toList!2699 lt!1546277))) (extractMap!417 (t!355648 (toList!2699 lt!1546277)))))))

(declare-fun b!4332968 () Bool)

(assert (=> b!4332968 (= e!2696227 (ListMap!1944 Nil!48607))))

(assert (= (and d!1273727 c!736925) b!4332967))

(assert (= (and d!1273727 (not c!736925)) b!4332968))

(declare-fun m!4927187 () Bool)

(assert (=> d!1273727 m!4927187))

(declare-fun m!4927189 () Bool)

(assert (=> d!1273727 m!4927189))

(declare-fun m!4927191 () Bool)

(assert (=> b!4332967 m!4927191))

(assert (=> b!4332967 m!4927191))

(declare-fun m!4927193 () Bool)

(assert (=> b!4332967 m!4927193))

(assert (=> b!4332911 d!1273727))

(declare-fun b!4332992 () Bool)

(assert (=> b!4332992 true))

(declare-fun bs!608036 () Bool)

(declare-fun b!4332989 () Bool)

(assert (= bs!608036 (and b!4332989 b!4332992)))

(declare-fun lambda!134934 () Int)

(declare-fun lambda!134933 () Int)

(assert (=> bs!608036 (= lambda!134934 lambda!134933)))

(assert (=> b!4332989 true))

(declare-fun lambda!134935 () Int)

(declare-fun lt!1546360 () ListMap!1943)

(assert (=> bs!608036 (= (= lt!1546360 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (= lambda!134935 lambda!134933))))

(assert (=> b!4332989 (= (= lt!1546360 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (= lambda!134935 lambda!134934))))

(assert (=> b!4332989 true))

(declare-fun bs!608037 () Bool)

(declare-fun d!1273731 () Bool)

(assert (= bs!608037 (and d!1273731 b!4332992)))

(declare-fun lt!1546363 () ListMap!1943)

(declare-fun lambda!134936 () Int)

(assert (=> bs!608037 (= (= lt!1546363 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (= lambda!134936 lambda!134933))))

(declare-fun bs!608038 () Bool)

(assert (= bs!608038 (and d!1273731 b!4332989)))

(assert (=> bs!608038 (= (= lt!1546363 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (= lambda!134936 lambda!134934))))

(assert (=> bs!608038 (= (= lt!1546363 lt!1546360) (= lambda!134936 lambda!134935))))

(assert (=> d!1273731 true))

(declare-fun bm!301095 () Bool)

(declare-fun call!301100 () Unit!68204)

(declare-fun lemmaContainsAllItsOwnKeys!7 (ListMap!1943) Unit!68204)

(assert (=> bm!301095 (= call!301100 (lemmaContainsAllItsOwnKeys!7 (extractMap!417 (t!355648 (toList!2699 lm!1707)))))))

(declare-fun e!2696239 () Bool)

(assert (=> d!1273731 e!2696239))

(declare-fun res!1776620 () Bool)

(assert (=> d!1273731 (=> (not res!1776620) (not e!2696239))))

(declare-fun forall!8914 (List!48731 Int) Bool)

(assert (=> d!1273731 (= res!1776620 (forall!8914 newBucket!200 lambda!134936))))

(declare-fun e!2696238 () ListMap!1943)

(assert (=> d!1273731 (= lt!1546363 e!2696238)))

(declare-fun c!736931 () Bool)

(assert (=> d!1273731 (= c!736931 (is-Nil!48607 newBucket!200))))

(assert (=> d!1273731 (noDuplicateKeys!358 newBucket!200)))

(assert (=> d!1273731 (= (addToMapMapFromBucket!66 newBucket!200 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) lt!1546363)))

(assert (=> b!4332989 (= e!2696238 lt!1546360)))

(declare-fun lt!1546351 () ListMap!1943)

(declare-fun +!396 (ListMap!1943 tuple2!47802) ListMap!1943)

(assert (=> b!4332989 (= lt!1546351 (+!396 (extractMap!417 (t!355648 (toList!2699 lm!1707))) (h!54094 newBucket!200)))))

(assert (=> b!4332989 (= lt!1546360 (addToMapMapFromBucket!66 (t!355647 newBucket!200) (+!396 (extractMap!417 (t!355648 (toList!2699 lm!1707))) (h!54094 newBucket!200))))))

(declare-fun lt!1546350 () Unit!68204)

(assert (=> b!4332989 (= lt!1546350 call!301100)))

(declare-fun call!301102 () Bool)

(assert (=> b!4332989 call!301102))

(declare-fun lt!1546357 () Unit!68204)

(assert (=> b!4332989 (= lt!1546357 lt!1546350)))

(assert (=> b!4332989 (forall!8914 (toList!2700 lt!1546351) lambda!134935)))

(declare-fun lt!1546368 () Unit!68204)

(declare-fun Unit!68208 () Unit!68204)

(assert (=> b!4332989 (= lt!1546368 Unit!68208)))

(assert (=> b!4332989 (forall!8914 (t!355647 newBucket!200) lambda!134935)))

(declare-fun lt!1546365 () Unit!68204)

(declare-fun Unit!68209 () Unit!68204)

(assert (=> b!4332989 (= lt!1546365 Unit!68209)))

(declare-fun lt!1546354 () Unit!68204)

(declare-fun Unit!68210 () Unit!68204)

(assert (=> b!4332989 (= lt!1546354 Unit!68210)))

(declare-fun lt!1546358 () Unit!68204)

(declare-fun forallContained!1565 (List!48731 Int tuple2!47802) Unit!68204)

(assert (=> b!4332989 (= lt!1546358 (forallContained!1565 (toList!2700 lt!1546351) lambda!134935 (h!54094 newBucket!200)))))

(assert (=> b!4332989 (contains!10635 lt!1546351 (_1!27195 (h!54094 newBucket!200)))))

(declare-fun lt!1546369 () Unit!68204)

(declare-fun Unit!68211 () Unit!68204)

(assert (=> b!4332989 (= lt!1546369 Unit!68211)))

(assert (=> b!4332989 (contains!10635 lt!1546360 (_1!27195 (h!54094 newBucket!200)))))

(declare-fun lt!1546349 () Unit!68204)

(declare-fun Unit!68212 () Unit!68204)

(assert (=> b!4332989 (= lt!1546349 Unit!68212)))

(assert (=> b!4332989 (forall!8914 newBucket!200 lambda!134935)))

(declare-fun lt!1546366 () Unit!68204)

(declare-fun Unit!68213 () Unit!68204)

(assert (=> b!4332989 (= lt!1546366 Unit!68213)))

(assert (=> b!4332989 (forall!8914 (toList!2700 lt!1546351) lambda!134935)))

(declare-fun lt!1546359 () Unit!68204)

(declare-fun Unit!68214 () Unit!68204)

(assert (=> b!4332989 (= lt!1546359 Unit!68214)))

(declare-fun lt!1546362 () Unit!68204)

(declare-fun Unit!68215 () Unit!68204)

(assert (=> b!4332989 (= lt!1546362 Unit!68215)))

(declare-fun lt!1546364 () Unit!68204)

(declare-fun addForallContainsKeyThenBeforeAdding!7 (ListMap!1943 ListMap!1943 K!9963 V!10209) Unit!68204)

(assert (=> b!4332989 (= lt!1546364 (addForallContainsKeyThenBeforeAdding!7 (extractMap!417 (t!355648 (toList!2699 lm!1707))) lt!1546360 (_1!27195 (h!54094 newBucket!200)) (_2!27195 (h!54094 newBucket!200))))))

(declare-fun call!301101 () Bool)

(assert (=> b!4332989 call!301101))

(declare-fun lt!1546356 () Unit!68204)

(assert (=> b!4332989 (= lt!1546356 lt!1546364)))

(assert (=> b!4332989 (forall!8914 (toList!2700 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) lambda!134935)))

(declare-fun lt!1546355 () Unit!68204)

(declare-fun Unit!68216 () Unit!68204)

(assert (=> b!4332989 (= lt!1546355 Unit!68216)))

(declare-fun res!1776619 () Bool)

(assert (=> b!4332989 (= res!1776619 (forall!8914 newBucket!200 lambda!134935))))

(declare-fun e!2696237 () Bool)

(assert (=> b!4332989 (=> (not res!1776619) (not e!2696237))))

(assert (=> b!4332989 e!2696237))

(declare-fun lt!1546352 () Unit!68204)

(declare-fun Unit!68217 () Unit!68204)

(assert (=> b!4332989 (= lt!1546352 Unit!68217)))

(declare-fun b!4332990 () Bool)

(assert (=> b!4332990 (= e!2696237 (forall!8914 (toList!2700 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) lambda!134935))))

(declare-fun bm!301096 () Bool)

(assert (=> bm!301096 (= call!301101 (forall!8914 (toList!2700 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (ite c!736931 lambda!134933 lambda!134935)))))

(declare-fun bm!301097 () Bool)

(assert (=> bm!301097 (= call!301102 (forall!8914 (toList!2700 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) (ite c!736931 lambda!134933 lambda!134934)))))

(declare-fun b!4332991 () Bool)

(declare-fun res!1776618 () Bool)

(assert (=> b!4332991 (=> (not res!1776618) (not e!2696239))))

(assert (=> b!4332991 (= res!1776618 (forall!8914 (toList!2700 (extractMap!417 (t!355648 (toList!2699 lm!1707)))) lambda!134936))))

(assert (=> b!4332992 (= e!2696238 (extractMap!417 (t!355648 (toList!2699 lm!1707))))))

(declare-fun lt!1546361 () Unit!68204)

(assert (=> b!4332992 (= lt!1546361 call!301100)))

(assert (=> b!4332992 call!301101))

(declare-fun lt!1546353 () Unit!68204)

(assert (=> b!4332992 (= lt!1546353 lt!1546361)))

(assert (=> b!4332992 call!301102))

(declare-fun lt!1546367 () Unit!68204)

(declare-fun Unit!68218 () Unit!68204)

(assert (=> b!4332992 (= lt!1546367 Unit!68218)))

(declare-fun b!4332993 () Bool)

(assert (=> b!4332993 (= e!2696239 (invariantList!614 (toList!2700 lt!1546363)))))

(assert (= (and d!1273731 c!736931) b!4332992))

(assert (= (and d!1273731 (not c!736931)) b!4332989))

(assert (= (and b!4332989 res!1776619) b!4332990))

(assert (= (or b!4332992 b!4332989) bm!301095))

(assert (= (or b!4332992 b!4332989) bm!301097))

(assert (= (or b!4332992 b!4332989) bm!301096))

(assert (= (and d!1273731 res!1776620) b!4332991))

(assert (= (and b!4332991 res!1776618) b!4332993))

(declare-fun m!4927205 () Bool)

(assert (=> b!4332991 m!4927205))

(assert (=> bm!301095 m!4927137))

(declare-fun m!4927207 () Bool)

(assert (=> bm!301095 m!4927207))

(declare-fun m!4927209 () Bool)

(assert (=> b!4332989 m!4927209))

(declare-fun m!4927211 () Bool)

(assert (=> b!4332989 m!4927211))

(assert (=> b!4332989 m!4927137))

(declare-fun m!4927213 () Bool)

(assert (=> b!4332989 m!4927213))

(declare-fun m!4927215 () Bool)

(assert (=> b!4332989 m!4927215))

(assert (=> b!4332989 m!4927215))

(declare-fun m!4927217 () Bool)

(assert (=> b!4332989 m!4927217))

(declare-fun m!4927219 () Bool)

(assert (=> b!4332989 m!4927219))

(declare-fun m!4927221 () Bool)

(assert (=> b!4332989 m!4927221))

(declare-fun m!4927223 () Bool)

(assert (=> b!4332989 m!4927223))

(declare-fun m!4927225 () Bool)

(assert (=> b!4332989 m!4927225))

(assert (=> b!4332989 m!4927137))

(assert (=> b!4332989 m!4927209))

(declare-fun m!4927227 () Bool)

(assert (=> b!4332989 m!4927227))

(assert (=> b!4332989 m!4927221))

(declare-fun m!4927229 () Bool)

(assert (=> d!1273731 m!4927229))

(assert (=> d!1273731 m!4927113))

(declare-fun m!4927231 () Bool)

(assert (=> bm!301096 m!4927231))

(declare-fun m!4927233 () Bool)

(assert (=> b!4332993 m!4927233))

(declare-fun m!4927235 () Bool)

(assert (=> bm!301097 m!4927235))

(assert (=> b!4332990 m!4927227))

(assert (=> b!4332911 d!1273731))

(declare-fun bs!608039 () Bool)

(declare-fun d!1273737 () Bool)

(assert (= bs!608039 (and d!1273737 start!417658)))

(declare-fun lambda!134937 () Int)

(assert (=> bs!608039 (= lambda!134937 lambda!134884)))

(declare-fun bs!608040 () Bool)

(assert (= bs!608040 (and d!1273737 d!1273727)))

(assert (=> bs!608040 (= lambda!134937 lambda!134898)))

(declare-fun lt!1546370 () ListMap!1943)

(assert (=> d!1273737 (invariantList!614 (toList!2700 lt!1546370))))

(declare-fun e!2696240 () ListMap!1943)

(assert (=> d!1273737 (= lt!1546370 e!2696240)))

(declare-fun c!736932 () Bool)

(assert (=> d!1273737 (= c!736932 (is-Cons!48608 (t!355648 (toList!2699 lm!1707))))))

(assert (=> d!1273737 (forall!8912 (t!355648 (toList!2699 lm!1707)) lambda!134937)))

(assert (=> d!1273737 (= (extractMap!417 (t!355648 (toList!2699 lm!1707))) lt!1546370)))

(declare-fun b!4332996 () Bool)

(assert (=> b!4332996 (= e!2696240 (addToMapMapFromBucket!66 (_2!27196 (h!54095 (t!355648 (toList!2699 lm!1707)))) (extractMap!417 (t!355648 (t!355648 (toList!2699 lm!1707))))))))

(declare-fun b!4332997 () Bool)

(assert (=> b!4332997 (= e!2696240 (ListMap!1944 Nil!48607))))

(assert (= (and d!1273737 c!736932) b!4332996))

(assert (= (and d!1273737 (not c!736932)) b!4332997))

(declare-fun m!4927237 () Bool)

(assert (=> d!1273737 m!4927237))

(declare-fun m!4927239 () Bool)

(assert (=> d!1273737 m!4927239))

(declare-fun m!4927241 () Bool)

(assert (=> b!4332996 m!4927241))

(assert (=> b!4332996 m!4927241))

(declare-fun m!4927243 () Bool)

(assert (=> b!4332996 m!4927243))

(assert (=> b!4332911 d!1273737))

(declare-fun d!1273739 () Bool)

(declare-datatypes ((Option!10341 0))(
  ( (None!10340) (Some!10340 (v!43050 List!48731)) )
))
(declare-fun get!15766 (Option!10341) List!48731)

(declare-fun getValueByKey!327 (List!48732 (_ BitVec 64)) Option!10341)

(assert (=> d!1273739 (= (apply!11210 lm!1707 hash!377) (get!15766 (getValueByKey!327 (toList!2699 lm!1707) hash!377)))))

(declare-fun bs!608041 () Bool)

(assert (= bs!608041 d!1273739))

(declare-fun m!4927245 () Bool)

(assert (=> bs!608041 m!4927245))

(assert (=> bs!608041 m!4927245))

(declare-fun m!4927247 () Bool)

(assert (=> bs!608041 m!4927247))

(assert (=> b!4332912 d!1273739))

(declare-fun b!4333009 () Bool)

(declare-fun e!2696245 () List!48731)

(assert (=> b!4333009 (= e!2696245 Nil!48607)))

(declare-fun b!4333006 () Bool)

(declare-fun e!2696246 () List!48731)

(assert (=> b!4333006 (= e!2696246 (t!355647 lt!1546274))))

(declare-fun b!4333008 () Bool)

(assert (=> b!4333008 (= e!2696245 (Cons!48607 (h!54094 lt!1546274) (removePairForKey!328 (t!355647 lt!1546274) key!3918)))))

(declare-fun d!1273741 () Bool)

(declare-fun lt!1546373 () List!48731)

(declare-fun containsKey!492 (List!48731 K!9963) Bool)

(assert (=> d!1273741 (not (containsKey!492 lt!1546373 key!3918))))

(assert (=> d!1273741 (= lt!1546373 e!2696246)))

(declare-fun c!736938 () Bool)

(assert (=> d!1273741 (= c!736938 (and (is-Cons!48607 lt!1546274) (= (_1!27195 (h!54094 lt!1546274)) key!3918)))))

(assert (=> d!1273741 (noDuplicateKeys!358 lt!1546274)))

(assert (=> d!1273741 (= (removePairForKey!328 lt!1546274 key!3918) lt!1546373)))

(declare-fun b!4333007 () Bool)

(assert (=> b!4333007 (= e!2696246 e!2696245)))

(declare-fun c!736937 () Bool)

(assert (=> b!4333007 (= c!736937 (is-Cons!48607 lt!1546274))))

(assert (= (and d!1273741 c!736938) b!4333006))

(assert (= (and d!1273741 (not c!736938)) b!4333007))

(assert (= (and b!4333007 c!736937) b!4333008))

(assert (= (and b!4333007 (not c!736937)) b!4333009))

(declare-fun m!4927249 () Bool)

(assert (=> b!4333008 m!4927249))

(declare-fun m!4927251 () Bool)

(assert (=> d!1273741 m!4927251))

(assert (=> d!1273741 m!4927131))

(assert (=> b!4332912 d!1273741))

(declare-fun d!1273743 () Bool)

(declare-fun dynLambda!20552 (Int tuple2!47804) Bool)

(assert (=> d!1273743 (dynLambda!20552 lambda!134884 lt!1546279)))

(declare-fun lt!1546376 () Unit!68204)

(declare-fun choose!26495 (List!48732 Int tuple2!47804) Unit!68204)

(assert (=> d!1273743 (= lt!1546376 (choose!26495 (toList!2699 lm!1707) lambda!134884 lt!1546279))))

(declare-fun e!2696249 () Bool)

(assert (=> d!1273743 e!2696249))

(declare-fun res!1776623 () Bool)

(assert (=> d!1273743 (=> (not res!1776623) (not e!2696249))))

(assert (=> d!1273743 (= res!1776623 (forall!8912 (toList!2699 lm!1707) lambda!134884))))

(assert (=> d!1273743 (= (forallContained!1563 (toList!2699 lm!1707) lambda!134884 lt!1546279) lt!1546376)))

(declare-fun b!4333012 () Bool)

(assert (=> b!4333012 (= e!2696249 (contains!10634 (toList!2699 lm!1707) lt!1546279))))

(assert (= (and d!1273743 res!1776623) b!4333012))

(declare-fun b_lambda!128043 () Bool)

(assert (=> (not b_lambda!128043) (not d!1273743)))

(declare-fun m!4927253 () Bool)

(assert (=> d!1273743 m!4927253))

(declare-fun m!4927255 () Bool)

(assert (=> d!1273743 m!4927255))

(assert (=> d!1273743 m!4927109))

(assert (=> b!4333012 m!4927127))

(assert (=> b!4332912 d!1273743))

(declare-fun d!1273745 () Bool)

(declare-fun lt!1546379 () Bool)

(declare-fun content!7589 (List!48732) (Set tuple2!47804))

(assert (=> d!1273745 (= lt!1546379 (set.member lt!1546279 (content!7589 (toList!2699 lm!1707))))))

(declare-fun e!2696254 () Bool)

(assert (=> d!1273745 (= lt!1546379 e!2696254)))

(declare-fun res!1776628 () Bool)

(assert (=> d!1273745 (=> (not res!1776628) (not e!2696254))))

(assert (=> d!1273745 (= res!1776628 (is-Cons!48608 (toList!2699 lm!1707)))))

(assert (=> d!1273745 (= (contains!10634 (toList!2699 lm!1707) lt!1546279) lt!1546379)))

(declare-fun b!4333017 () Bool)

(declare-fun e!2696255 () Bool)

(assert (=> b!4333017 (= e!2696254 e!2696255)))

(declare-fun res!1776629 () Bool)

(assert (=> b!4333017 (=> res!1776629 e!2696255)))

(assert (=> b!4333017 (= res!1776629 (= (h!54095 (toList!2699 lm!1707)) lt!1546279))))

(declare-fun b!4333018 () Bool)

(assert (=> b!4333018 (= e!2696255 (contains!10634 (t!355648 (toList!2699 lm!1707)) lt!1546279))))

(assert (= (and d!1273745 res!1776628) b!4333017))

(assert (= (and b!4333017 (not res!1776629)) b!4333018))

(declare-fun m!4927257 () Bool)

(assert (=> d!1273745 m!4927257))

(declare-fun m!4927259 () Bool)

(assert (=> d!1273745 m!4927259))

(declare-fun m!4927261 () Bool)

(assert (=> b!4333018 m!4927261))

(assert (=> b!4332912 d!1273745))

(declare-fun d!1273747 () Bool)

(assert (=> d!1273747 (contains!10634 (toList!2699 lm!1707) (tuple2!47805 hash!377 lt!1546274))))

(declare-fun lt!1546382 () Unit!68204)

(declare-fun choose!26496 (List!48732 (_ BitVec 64) List!48731) Unit!68204)

(assert (=> d!1273747 (= lt!1546382 (choose!26496 (toList!2699 lm!1707) hash!377 lt!1546274))))

(declare-fun e!2696258 () Bool)

(assert (=> d!1273747 e!2696258))

(declare-fun res!1776632 () Bool)

(assert (=> d!1273747 (=> (not res!1776632) (not e!2696258))))

(declare-fun isStrictlySorted!40 (List!48732) Bool)

(assert (=> d!1273747 (= res!1776632 (isStrictlySorted!40 (toList!2699 lm!1707)))))

(assert (=> d!1273747 (= (lemmaGetValueByKeyImpliesContainsTuple!205 (toList!2699 lm!1707) hash!377 lt!1546274) lt!1546382)))

(declare-fun b!4333021 () Bool)

(assert (=> b!4333021 (= e!2696258 (= (getValueByKey!327 (toList!2699 lm!1707) hash!377) (Some!10340 lt!1546274)))))

(assert (= (and d!1273747 res!1776632) b!4333021))

(declare-fun m!4927263 () Bool)

(assert (=> d!1273747 m!4927263))

(declare-fun m!4927265 () Bool)

(assert (=> d!1273747 m!4927265))

(declare-fun m!4927267 () Bool)

(assert (=> d!1273747 m!4927267))

(assert (=> b!4333021 m!4927245))

(assert (=> b!4332912 d!1273747))

(declare-fun b!4333040 () Bool)

(declare-fun e!2696274 () Bool)

(declare-fun e!2696273 () Bool)

(assert (=> b!4333040 (= e!2696274 e!2696273)))

(declare-fun res!1776640 () Bool)

(assert (=> b!4333040 (=> (not res!1776640) (not e!2696273))))

(declare-datatypes ((Option!10342 0))(
  ( (None!10341) (Some!10341 (v!43051 V!10209)) )
))
(declare-fun isDefined!7639 (Option!10342) Bool)

(declare-fun getValueByKey!328 (List!48731 K!9963) Option!10342)

(assert (=> b!4333040 (= res!1776640 (isDefined!7639 (getValueByKey!328 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918)))))

(declare-fun b!4333041 () Bool)

(declare-fun e!2696271 () Unit!68204)

(declare-fun e!2696272 () Unit!68204)

(assert (=> b!4333041 (= e!2696271 e!2696272)))

(declare-fun c!736945 () Bool)

(declare-fun call!301105 () Bool)

(assert (=> b!4333041 (= c!736945 call!301105)))

(declare-fun b!4333042 () Bool)

(declare-datatypes ((List!48735 0))(
  ( (Nil!48611) (Cons!48611 (h!54100 K!9963) (t!355651 List!48735)) )
))
(declare-fun e!2696276 () List!48735)

(declare-fun getKeysList!64 (List!48731) List!48735)

(assert (=> b!4333042 (= e!2696276 (getKeysList!64 (toList!2700 (extractMap!417 (toList!2699 lm!1707)))))))

(declare-fun b!4333043 () Bool)

(assert (=> b!4333043 false))

(declare-fun lt!1546406 () Unit!68204)

(declare-fun lt!1546401 () Unit!68204)

(assert (=> b!4333043 (= lt!1546406 lt!1546401)))

(declare-fun containsKey!493 (List!48731 K!9963) Bool)

(assert (=> b!4333043 (containsKey!493 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!61 (List!48731 K!9963) Unit!68204)

(assert (=> b!4333043 (= lt!1546401 (lemmaInGetKeysListThenContainsKey!61 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(declare-fun Unit!68219 () Unit!68204)

(assert (=> b!4333043 (= e!2696272 Unit!68219)))

(declare-fun b!4333044 () Bool)

(declare-fun e!2696275 () Bool)

(declare-fun contains!10639 (List!48735 K!9963) Bool)

(declare-fun keys!16333 (ListMap!1943) List!48735)

(assert (=> b!4333044 (= e!2696275 (not (contains!10639 (keys!16333 (extractMap!417 (toList!2699 lm!1707))) key!3918)))))

(declare-fun bm!301100 () Bool)

(assert (=> bm!301100 (= call!301105 (contains!10639 e!2696276 key!3918))))

(declare-fun c!736946 () Bool)

(declare-fun c!736947 () Bool)

(assert (=> bm!301100 (= c!736946 c!736947)))

(declare-fun b!4333045 () Bool)

(assert (=> b!4333045 (= e!2696276 (keys!16333 (extractMap!417 (toList!2699 lm!1707))))))

(declare-fun b!4333046 () Bool)

(declare-fun lt!1546403 () Unit!68204)

(assert (=> b!4333046 (= e!2696271 lt!1546403)))

(declare-fun lt!1546404 () Unit!68204)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!243 (List!48731 K!9963) Unit!68204)

(assert (=> b!4333046 (= lt!1546404 (lemmaContainsKeyImpliesGetValueByKeyDefined!243 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(assert (=> b!4333046 (isDefined!7639 (getValueByKey!328 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(declare-fun lt!1546405 () Unit!68204)

(assert (=> b!4333046 (= lt!1546405 lt!1546404)))

(declare-fun lemmaInListThenGetKeysListContains!61 (List!48731 K!9963) Unit!68204)

(assert (=> b!4333046 (= lt!1546403 (lemmaInListThenGetKeysListContains!61 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(assert (=> b!4333046 call!301105))

(declare-fun b!4333048 () Bool)

(declare-fun Unit!68220 () Unit!68204)

(assert (=> b!4333048 (= e!2696272 Unit!68220)))

(declare-fun b!4333047 () Bool)

(assert (=> b!4333047 (= e!2696273 (contains!10639 (keys!16333 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(declare-fun d!1273749 () Bool)

(assert (=> d!1273749 e!2696274))

(declare-fun res!1776641 () Bool)

(assert (=> d!1273749 (=> res!1776641 e!2696274)))

(assert (=> d!1273749 (= res!1776641 e!2696275)))

(declare-fun res!1776639 () Bool)

(assert (=> d!1273749 (=> (not res!1776639) (not e!2696275))))

(declare-fun lt!1546400 () Bool)

(assert (=> d!1273749 (= res!1776639 (not lt!1546400))))

(declare-fun lt!1546402 () Bool)

(assert (=> d!1273749 (= lt!1546400 lt!1546402)))

(declare-fun lt!1546399 () Unit!68204)

(assert (=> d!1273749 (= lt!1546399 e!2696271)))

(assert (=> d!1273749 (= c!736947 lt!1546402)))

(assert (=> d!1273749 (= lt!1546402 (containsKey!493 (toList!2700 (extractMap!417 (toList!2699 lm!1707))) key!3918))))

(assert (=> d!1273749 (= (contains!10635 (extractMap!417 (toList!2699 lm!1707)) key!3918) lt!1546400)))

(assert (= (and d!1273749 c!736947) b!4333046))

(assert (= (and d!1273749 (not c!736947)) b!4333041))

(assert (= (and b!4333041 c!736945) b!4333043))

(assert (= (and b!4333041 (not c!736945)) b!4333048))

(assert (= (or b!4333046 b!4333041) bm!301100))

(assert (= (and bm!301100 c!736946) b!4333042))

(assert (= (and bm!301100 (not c!736946)) b!4333045))

(assert (= (and d!1273749 res!1776639) b!4333044))

(assert (= (and d!1273749 (not res!1776641)) b!4333040))

(assert (= (and b!4333040 res!1776640) b!4333047))

(declare-fun m!4927269 () Bool)

(assert (=> b!4333046 m!4927269))

(declare-fun m!4927271 () Bool)

(assert (=> b!4333046 m!4927271))

(assert (=> b!4333046 m!4927271))

(declare-fun m!4927273 () Bool)

(assert (=> b!4333046 m!4927273))

(declare-fun m!4927275 () Bool)

(assert (=> b!4333046 m!4927275))

(declare-fun m!4927277 () Bool)

(assert (=> b!4333042 m!4927277))

(declare-fun m!4927279 () Bool)

(assert (=> b!4333043 m!4927279))

(declare-fun m!4927281 () Bool)

(assert (=> b!4333043 m!4927281))

(assert (=> b!4333040 m!4927271))

(assert (=> b!4333040 m!4927271))

(assert (=> b!4333040 m!4927273))

(assert (=> b!4333047 m!4927105))

(declare-fun m!4927283 () Bool)

(assert (=> b!4333047 m!4927283))

(assert (=> b!4333047 m!4927283))

(declare-fun m!4927285 () Bool)

(assert (=> b!4333047 m!4927285))

(assert (=> b!4333044 m!4927105))

(assert (=> b!4333044 m!4927283))

(assert (=> b!4333044 m!4927283))

(assert (=> b!4333044 m!4927285))

(assert (=> b!4333045 m!4927105))

(assert (=> b!4333045 m!4927283))

(declare-fun m!4927287 () Bool)

(assert (=> bm!301100 m!4927287))

(assert (=> d!1273749 m!4927279))

(assert (=> b!4332913 d!1273749))

(declare-fun bs!608042 () Bool)

(declare-fun d!1273751 () Bool)

(assert (= bs!608042 (and d!1273751 start!417658)))

(declare-fun lambda!134938 () Int)

(assert (=> bs!608042 (= lambda!134938 lambda!134884)))

(declare-fun bs!608043 () Bool)

(assert (= bs!608043 (and d!1273751 d!1273727)))

(assert (=> bs!608043 (= lambda!134938 lambda!134898)))

(declare-fun bs!608044 () Bool)

(assert (= bs!608044 (and d!1273751 d!1273737)))

(assert (=> bs!608044 (= lambda!134938 lambda!134937)))

(declare-fun lt!1546407 () ListMap!1943)

(assert (=> d!1273751 (invariantList!614 (toList!2700 lt!1546407))))

(declare-fun e!2696277 () ListMap!1943)

(assert (=> d!1273751 (= lt!1546407 e!2696277)))

(declare-fun c!736948 () Bool)

(assert (=> d!1273751 (= c!736948 (is-Cons!48608 (toList!2699 lm!1707)))))

(assert (=> d!1273751 (forall!8912 (toList!2699 lm!1707) lambda!134938)))

(assert (=> d!1273751 (= (extractMap!417 (toList!2699 lm!1707)) lt!1546407)))

(declare-fun b!4333049 () Bool)

(assert (=> b!4333049 (= e!2696277 (addToMapMapFromBucket!66 (_2!27196 (h!54095 (toList!2699 lm!1707))) (extractMap!417 (t!355648 (toList!2699 lm!1707)))))))

(declare-fun b!4333050 () Bool)

(assert (=> b!4333050 (= e!2696277 (ListMap!1944 Nil!48607))))

(assert (= (and d!1273751 c!736948) b!4333049))

(assert (= (and d!1273751 (not c!736948)) b!4333050))

(declare-fun m!4927289 () Bool)

(assert (=> d!1273751 m!4927289))

(declare-fun m!4927291 () Bool)

(assert (=> d!1273751 m!4927291))

(assert (=> b!4333049 m!4927137))

(assert (=> b!4333049 m!4927137))

(declare-fun m!4927293 () Bool)

(assert (=> b!4333049 m!4927293))

(assert (=> b!4332913 d!1273751))

(declare-fun d!1273753 () Bool)

(declare-fun res!1776646 () Bool)

(declare-fun e!2696282 () Bool)

(assert (=> d!1273753 (=> res!1776646 e!2696282)))

(assert (=> d!1273753 (= res!1776646 (is-Nil!48608 (toList!2699 lm!1707)))))

(assert (=> d!1273753 (= (forall!8912 (toList!2699 lm!1707) lambda!134884) e!2696282)))

(declare-fun b!4333055 () Bool)

(declare-fun e!2696283 () Bool)

(assert (=> b!4333055 (= e!2696282 e!2696283)))

(declare-fun res!1776647 () Bool)

(assert (=> b!4333055 (=> (not res!1776647) (not e!2696283))))

(assert (=> b!4333055 (= res!1776647 (dynLambda!20552 lambda!134884 (h!54095 (toList!2699 lm!1707))))))

(declare-fun b!4333056 () Bool)

(assert (=> b!4333056 (= e!2696283 (forall!8912 (t!355648 (toList!2699 lm!1707)) lambda!134884))))

(assert (= (and d!1273753 (not res!1776646)) b!4333055))

(assert (= (and b!4333055 res!1776647) b!4333056))

(declare-fun b_lambda!128045 () Bool)

(assert (=> (not b_lambda!128045) (not b!4333055)))

(declare-fun m!4927295 () Bool)

(assert (=> b!4333055 m!4927295))

(declare-fun m!4927297 () Bool)

(assert (=> b!4333056 m!4927297))

(assert (=> start!417658 d!1273753))

(declare-fun d!1273755 () Bool)

(assert (=> d!1273755 (= (inv!64150 lm!1707) (isStrictlySorted!40 (toList!2699 lm!1707)))))

(declare-fun bs!608045 () Bool)

(assert (= bs!608045 d!1273755))

(assert (=> bs!608045 m!4927267))

(assert (=> start!417658 d!1273755))

(declare-fun d!1273757 () Bool)

(declare-fun res!1776652 () Bool)

(declare-fun e!2696288 () Bool)

(assert (=> d!1273757 (=> res!1776652 e!2696288)))

(assert (=> d!1273757 (= res!1776652 (not (is-Cons!48607 newBucket!200)))))

(assert (=> d!1273757 (= (noDuplicateKeys!358 newBucket!200) e!2696288)))

(declare-fun b!4333061 () Bool)

(declare-fun e!2696289 () Bool)

(assert (=> b!4333061 (= e!2696288 e!2696289)))

(declare-fun res!1776653 () Bool)

(assert (=> b!4333061 (=> (not res!1776653) (not e!2696289))))

(assert (=> b!4333061 (= res!1776653 (not (containsKey!492 (t!355647 newBucket!200) (_1!27195 (h!54094 newBucket!200)))))))

(declare-fun b!4333062 () Bool)

(assert (=> b!4333062 (= e!2696289 (noDuplicateKeys!358 (t!355647 newBucket!200)))))

(assert (= (and d!1273757 (not res!1776652)) b!4333061))

(assert (= (and b!4333061 res!1776653) b!4333062))

(declare-fun m!4927299 () Bool)

(assert (=> b!4333061 m!4927299))

(declare-fun m!4927301 () Bool)

(assert (=> b!4333062 m!4927301))

(assert (=> b!4332903 d!1273757))

(declare-fun d!1273759 () Bool)

(declare-fun res!1776654 () Bool)

(declare-fun e!2696290 () Bool)

(assert (=> d!1273759 (=> res!1776654 e!2696290)))

(assert (=> d!1273759 (= res!1776654 (not (is-Cons!48607 lt!1546274)))))

(assert (=> d!1273759 (= (noDuplicateKeys!358 lt!1546274) e!2696290)))

(declare-fun b!4333063 () Bool)

(declare-fun e!2696291 () Bool)

(assert (=> b!4333063 (= e!2696290 e!2696291)))

(declare-fun res!1776655 () Bool)

(assert (=> b!4333063 (=> (not res!1776655) (not e!2696291))))

(assert (=> b!4333063 (= res!1776655 (not (containsKey!492 (t!355647 lt!1546274) (_1!27195 (h!54094 lt!1546274)))))))

(declare-fun b!4333064 () Bool)

(assert (=> b!4333064 (= e!2696291 (noDuplicateKeys!358 (t!355647 lt!1546274)))))

(assert (= (and d!1273759 (not res!1776654)) b!4333063))

(assert (= (and b!4333063 res!1776655) b!4333064))

(declare-fun m!4927303 () Bool)

(assert (=> b!4333063 m!4927303))

(declare-fun m!4927305 () Bool)

(assert (=> b!4333064 m!4927305))

(assert (=> b!4332914 d!1273759))

(declare-fun d!1273761 () Bool)

(declare-fun res!1776656 () Bool)

(declare-fun e!2696292 () Bool)

(assert (=> d!1273761 (=> res!1776656 e!2696292)))

(assert (=> d!1273761 (= res!1776656 (is-Nil!48608 (toList!2699 lt!1546277)))))

(assert (=> d!1273761 (= (forall!8912 (toList!2699 lt!1546277) lambda!134884) e!2696292)))

(declare-fun b!4333065 () Bool)

(declare-fun e!2696293 () Bool)

(assert (=> b!4333065 (= e!2696292 e!2696293)))

(declare-fun res!1776657 () Bool)

(assert (=> b!4333065 (=> (not res!1776657) (not e!2696293))))

(assert (=> b!4333065 (= res!1776657 (dynLambda!20552 lambda!134884 (h!54095 (toList!2699 lt!1546277))))))

(declare-fun b!4333066 () Bool)

(assert (=> b!4333066 (= e!2696293 (forall!8912 (t!355648 (toList!2699 lt!1546277)) lambda!134884))))

(assert (= (and d!1273761 (not res!1776656)) b!4333065))

(assert (= (and b!4333065 res!1776657) b!4333066))

(declare-fun b_lambda!128047 () Bool)

(assert (=> (not b_lambda!128047) (not b!4333065)))

(declare-fun m!4927307 () Bool)

(assert (=> b!4333065 m!4927307))

(declare-fun m!4927309 () Bool)

(assert (=> b!4333066 m!4927309))

(assert (=> b!4332904 d!1273761))

(assert (=> b!4332905 d!1273761))

(declare-fun d!1273763 () Bool)

(declare-fun e!2696296 () Bool)

(assert (=> d!1273763 e!2696296))

(declare-fun res!1776662 () Bool)

(assert (=> d!1273763 (=> (not res!1776662) (not e!2696296))))

(declare-fun lt!1546416 () ListLongMap!1349)

(assert (=> d!1273763 (= res!1776662 (contains!10633 lt!1546416 (_1!27196 lt!1546276)))))

(declare-fun lt!1546418 () List!48732)

(assert (=> d!1273763 (= lt!1546416 (ListLongMap!1350 lt!1546418))))

(declare-fun lt!1546417 () Unit!68204)

(declare-fun lt!1546419 () Unit!68204)

(assert (=> d!1273763 (= lt!1546417 lt!1546419)))

(assert (=> d!1273763 (= (getValueByKey!327 lt!1546418 (_1!27196 lt!1546276)) (Some!10340 (_2!27196 lt!1546276)))))

(declare-fun lemmaContainsTupThenGetReturnValue!116 (List!48732 (_ BitVec 64) List!48731) Unit!68204)

(assert (=> d!1273763 (= lt!1546419 (lemmaContainsTupThenGetReturnValue!116 lt!1546418 (_1!27196 lt!1546276) (_2!27196 lt!1546276)))))

(declare-fun insertStrictlySorted!71 (List!48732 (_ BitVec 64) List!48731) List!48732)

(assert (=> d!1273763 (= lt!1546418 (insertStrictlySorted!71 (toList!2699 lm!1707) (_1!27196 lt!1546276) (_2!27196 lt!1546276)))))

(assert (=> d!1273763 (= (+!394 lm!1707 lt!1546276) lt!1546416)))

(declare-fun b!4333071 () Bool)

(declare-fun res!1776663 () Bool)

(assert (=> b!4333071 (=> (not res!1776663) (not e!2696296))))

(assert (=> b!4333071 (= res!1776663 (= (getValueByKey!327 (toList!2699 lt!1546416) (_1!27196 lt!1546276)) (Some!10340 (_2!27196 lt!1546276))))))

(declare-fun b!4333072 () Bool)

(assert (=> b!4333072 (= e!2696296 (contains!10634 (toList!2699 lt!1546416) lt!1546276))))

(assert (= (and d!1273763 res!1776662) b!4333071))

(assert (= (and b!4333071 res!1776663) b!4333072))

(declare-fun m!4927311 () Bool)

(assert (=> d!1273763 m!4927311))

(declare-fun m!4927313 () Bool)

(assert (=> d!1273763 m!4927313))

(declare-fun m!4927315 () Bool)

(assert (=> d!1273763 m!4927315))

(declare-fun m!4927317 () Bool)

(assert (=> d!1273763 m!4927317))

(declare-fun m!4927319 () Bool)

(assert (=> b!4333071 m!4927319))

(declare-fun m!4927321 () Bool)

(assert (=> b!4333072 m!4927321))

(assert (=> b!4332905 d!1273763))

(declare-fun d!1273765 () Bool)

(assert (=> d!1273765 (forall!8912 (toList!2699 (+!394 lm!1707 (tuple2!47805 hash!377 newBucket!200))) lambda!134884)))

(declare-fun lt!1546422 () Unit!68204)

(declare-fun choose!26497 (ListLongMap!1349 Int (_ BitVec 64) List!48731) Unit!68204)

(assert (=> d!1273765 (= lt!1546422 (choose!26497 lm!1707 lambda!134884 hash!377 newBucket!200))))

(declare-fun e!2696299 () Bool)

(assert (=> d!1273765 e!2696299))

(declare-fun res!1776666 () Bool)

(assert (=> d!1273765 (=> (not res!1776666) (not e!2696299))))

(assert (=> d!1273765 (= res!1776666 (forall!8912 (toList!2699 lm!1707) lambda!134884))))

(assert (=> d!1273765 (= (addValidProp!12 lm!1707 lambda!134884 hash!377 newBucket!200) lt!1546422)))

(declare-fun b!4333076 () Bool)

(assert (=> b!4333076 (= e!2696299 (dynLambda!20552 lambda!134884 (tuple2!47805 hash!377 newBucket!200)))))

(assert (= (and d!1273765 res!1776666) b!4333076))

(declare-fun b_lambda!128049 () Bool)

(assert (=> (not b_lambda!128049) (not b!4333076)))

(declare-fun m!4927323 () Bool)

(assert (=> d!1273765 m!4927323))

(declare-fun m!4927325 () Bool)

(assert (=> d!1273765 m!4927325))

(declare-fun m!4927327 () Bool)

(assert (=> d!1273765 m!4927327))

(assert (=> d!1273765 m!4927109))

(declare-fun m!4927329 () Bool)

(assert (=> b!4333076 m!4927329))

(assert (=> b!4332905 d!1273765))

(assert (=> b!4332905 d!1273753))

(declare-fun bs!608046 () Bool)

(declare-fun d!1273767 () Bool)

(assert (= bs!608046 (and d!1273767 start!417658)))

(declare-fun lambda!134941 () Int)

(assert (=> bs!608046 (not (= lambda!134941 lambda!134884))))

(declare-fun bs!608047 () Bool)

(assert (= bs!608047 (and d!1273767 d!1273727)))

(assert (=> bs!608047 (not (= lambda!134941 lambda!134898))))

(declare-fun bs!608048 () Bool)

(assert (= bs!608048 (and d!1273767 d!1273737)))

(assert (=> bs!608048 (not (= lambda!134941 lambda!134937))))

(declare-fun bs!608049 () Bool)

(assert (= bs!608049 (and d!1273767 d!1273751)))

(assert (=> bs!608049 (not (= lambda!134941 lambda!134938))))

(assert (=> d!1273767 true))

(assert (=> d!1273767 (= (allKeysSameHashInMap!462 lm!1707 hashF!1247) (forall!8912 (toList!2699 lm!1707) lambda!134941))))

(declare-fun bs!608050 () Bool)

(assert (= bs!608050 d!1273767))

(declare-fun m!4927331 () Bool)

(assert (=> bs!608050 m!4927331))

(assert (=> b!4332917 d!1273767))

(declare-fun bs!608051 () Bool)

(declare-fun d!1273769 () Bool)

(assert (= bs!608051 (and d!1273769 b!4332992)))

(declare-fun lambda!134944 () Int)

(assert (=> bs!608051 (not (= lambda!134944 lambda!134933))))

(declare-fun bs!608052 () Bool)

(assert (= bs!608052 (and d!1273769 b!4332989)))

(assert (=> bs!608052 (not (= lambda!134944 lambda!134934))))

(assert (=> bs!608052 (not (= lambda!134944 lambda!134935))))

(declare-fun bs!608053 () Bool)

(assert (= bs!608053 (and d!1273769 d!1273731)))

(assert (=> bs!608053 (not (= lambda!134944 lambda!134936))))

(assert (=> d!1273769 true))

(assert (=> d!1273769 true))

(assert (=> d!1273769 (= (allKeysSameHash!316 newBucket!200 hash!377 hashF!1247) (forall!8914 newBucket!200 lambda!134944))))

(declare-fun bs!608054 () Bool)

(assert (= bs!608054 d!1273769))

(declare-fun m!4927333 () Bool)

(assert (=> bs!608054 m!4927333))

(assert (=> b!4332908 d!1273769))

(declare-fun d!1273771 () Bool)

(declare-fun e!2696305 () Bool)

(assert (=> d!1273771 e!2696305))

(declare-fun res!1776669 () Bool)

(assert (=> d!1273771 (=> res!1776669 e!2696305)))

(declare-fun lt!1546434 () Bool)

(assert (=> d!1273771 (= res!1776669 (not lt!1546434))))

(declare-fun lt!1546433 () Bool)

(assert (=> d!1273771 (= lt!1546434 lt!1546433)))

(declare-fun lt!1546432 () Unit!68204)

(declare-fun e!2696304 () Unit!68204)

(assert (=> d!1273771 (= lt!1546432 e!2696304)))

(declare-fun c!736951 () Bool)

(assert (=> d!1273771 (= c!736951 lt!1546433)))

(declare-fun containsKey!494 (List!48732 (_ BitVec 64)) Bool)

(assert (=> d!1273771 (= lt!1546433 (containsKey!494 (toList!2699 lm!1707) hash!377))))

(assert (=> d!1273771 (= (contains!10633 lm!1707 hash!377) lt!1546434)))

(declare-fun b!4333089 () Bool)

(declare-fun lt!1546431 () Unit!68204)

(assert (=> b!4333089 (= e!2696304 lt!1546431)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!244 (List!48732 (_ BitVec 64)) Unit!68204)

(assert (=> b!4333089 (= lt!1546431 (lemmaContainsKeyImpliesGetValueByKeyDefined!244 (toList!2699 lm!1707) hash!377))))

(declare-fun isDefined!7640 (Option!10341) Bool)

(assert (=> b!4333089 (isDefined!7640 (getValueByKey!327 (toList!2699 lm!1707) hash!377))))

(declare-fun b!4333090 () Bool)

(declare-fun Unit!68221 () Unit!68204)

(assert (=> b!4333090 (= e!2696304 Unit!68221)))

(declare-fun b!4333091 () Bool)

(assert (=> b!4333091 (= e!2696305 (isDefined!7640 (getValueByKey!327 (toList!2699 lm!1707) hash!377)))))

(assert (= (and d!1273771 c!736951) b!4333089))

(assert (= (and d!1273771 (not c!736951)) b!4333090))

(assert (= (and d!1273771 (not res!1776669)) b!4333091))

(declare-fun m!4927335 () Bool)

(assert (=> d!1273771 m!4927335))

(declare-fun m!4927337 () Bool)

(assert (=> b!4333089 m!4927337))

(assert (=> b!4333089 m!4927245))

(assert (=> b!4333089 m!4927245))

(declare-fun m!4927339 () Bool)

(assert (=> b!4333089 m!4927339))

(assert (=> b!4333091 m!4927245))

(assert (=> b!4333091 m!4927245))

(assert (=> b!4333091 m!4927339))

(assert (=> b!4332909 d!1273771))

(declare-fun e!2696308 () Bool)

(declare-fun tp!1328713 () Bool)

(declare-fun b!4333096 () Bool)

(assert (=> b!4333096 (= e!2696308 (and tp_is_empty!24669 tp_is_empty!24671 tp!1328713))))

(assert (=> b!4332915 (= tp!1328703 e!2696308)))

(assert (= (and b!4332915 (is-Cons!48607 (t!355647 newBucket!200))) b!4333096))

(declare-fun b!4333101 () Bool)

(declare-fun e!2696311 () Bool)

(declare-fun tp!1328718 () Bool)

(declare-fun tp!1328719 () Bool)

(assert (=> b!4333101 (= e!2696311 (and tp!1328718 tp!1328719))))

(assert (=> b!4332906 (= tp!1328704 e!2696311)))

(assert (= (and b!4332906 (is-Cons!48608 (toList!2699 lm!1707))) b!4333101))

(declare-fun b_lambda!128051 () Bool)

(assert (= b_lambda!128049 (or start!417658 b_lambda!128051)))

(declare-fun bs!608055 () Bool)

(declare-fun d!1273773 () Bool)

(assert (= bs!608055 (and d!1273773 start!417658)))

(assert (=> bs!608055 (= (dynLambda!20552 lambda!134884 (tuple2!47805 hash!377 newBucket!200)) (noDuplicateKeys!358 (_2!27196 (tuple2!47805 hash!377 newBucket!200))))))

(declare-fun m!4927341 () Bool)

(assert (=> bs!608055 m!4927341))

(assert (=> b!4333076 d!1273773))

(declare-fun b_lambda!128053 () Bool)

(assert (= b_lambda!128047 (or start!417658 b_lambda!128053)))

(declare-fun bs!608056 () Bool)

(declare-fun d!1273775 () Bool)

(assert (= bs!608056 (and d!1273775 start!417658)))

(assert (=> bs!608056 (= (dynLambda!20552 lambda!134884 (h!54095 (toList!2699 lt!1546277))) (noDuplicateKeys!358 (_2!27196 (h!54095 (toList!2699 lt!1546277)))))))

(declare-fun m!4927343 () Bool)

(assert (=> bs!608056 m!4927343))

(assert (=> b!4333065 d!1273775))

(declare-fun b_lambda!128055 () Bool)

(assert (= b_lambda!128043 (or start!417658 b_lambda!128055)))

(declare-fun bs!608057 () Bool)

(declare-fun d!1273777 () Bool)

(assert (= bs!608057 (and d!1273777 start!417658)))

(assert (=> bs!608057 (= (dynLambda!20552 lambda!134884 lt!1546279) (noDuplicateKeys!358 (_2!27196 lt!1546279)))))

(declare-fun m!4927345 () Bool)

(assert (=> bs!608057 m!4927345))

(assert (=> d!1273743 d!1273777))

(declare-fun b_lambda!128057 () Bool)

(assert (= b_lambda!128045 (or start!417658 b_lambda!128057)))

(declare-fun bs!608058 () Bool)

(declare-fun d!1273779 () Bool)

(assert (= bs!608058 (and d!1273779 start!417658)))

(assert (=> bs!608058 (= (dynLambda!20552 lambda!134884 (h!54095 (toList!2699 lm!1707))) (noDuplicateKeys!358 (_2!27196 (h!54095 (toList!2699 lm!1707)))))))

(declare-fun m!4927347 () Bool)

(assert (=> bs!608058 m!4927347))

(assert (=> b!4333055 d!1273779))

(push 1)

(assert (not d!1273767))

(assert (not b!4333089))

(assert (not b!4333012))

(assert (not d!1273749))

(assert (not d!1273751))

(assert (not d!1273765))

(assert (not bs!608058))

(assert (not bm!301096))

(assert (not bs!608055))

(assert (not b!4333042))

(assert (not b!4333043))

(assert tp_is_empty!24669)

(assert (not b!4333101))

(assert (not b!4333021))

(assert (not b!4333063))

(assert (not b!4332993))

(assert (not b!4333096))

(assert (not b!4333062))

(assert (not b!4333047))

(assert (not b!4332991))

(assert (not d!1273769))

(assert (not bs!608057))

(assert (not b_lambda!128057))

(assert (not b!4333008))

(assert (not bm!301100))

(assert (not b!4332990))

(assert (not b!4333071))

(assert (not b!4333040))

(assert (not b!4333056))

(assert (not b!4333045))

(assert (not bm!301095))

(assert (not b!4332996))

(assert (not b!4332967))

(assert (not d!1273771))

(assert (not b_lambda!128055))

(assert (not d!1273725))

(assert (not b_lambda!128051))

(assert (not b!4333044))

(assert (not d!1273739))

(assert (not b_lambda!128053))

(assert (not b!4332989))

(assert (not b!4333066))

(assert (not b!4333061))

(assert (not b!4333072))

(assert tp_is_empty!24671)

(assert (not b!4333046))

(assert (not bm!301097))

(assert (not b!4333091))

(assert (not d!1273731))

(assert (not b!4333064))

(assert (not d!1273755))

(assert (not b!4333018))

(assert (not d!1273745))

(assert (not d!1273747))

(assert (not d!1273763))

(assert (not b!4333049))

(assert (not d!1273727))

(assert (not d!1273743))

(assert (not bs!608056))

(assert (not d!1273741))

(assert (not d!1273737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

