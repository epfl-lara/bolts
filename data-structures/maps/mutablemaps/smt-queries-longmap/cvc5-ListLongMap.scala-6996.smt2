; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88766 () Bool)

(assert start!88766)

(declare-fun b!1019099 () Bool)

(declare-fun e!573539 () Bool)

(declare-fun e!573541 () Bool)

(assert (=> b!1019099 (= e!573539 e!573541)))

(declare-fun res!683343 () Bool)

(assert (=> b!1019099 (=> (not res!683343) (not e!573541))))

(declare-datatypes ((B!1682 0))(
  ( (B!1683 (val!11925 Int)) )
))
(declare-datatypes ((tuple2!15486 0))(
  ( (tuple2!15487 (_1!7753 (_ BitVec 64)) (_2!7753 B!1682)) )
))
(declare-datatypes ((List!21727 0))(
  ( (Nil!21724) (Cons!21723 (h!22921 tuple2!15486) (t!30739 List!21727)) )
))
(declare-fun l!996 () List!21727)

(declare-fun key!261 () (_ BitVec 64))

(assert (=> b!1019099 (= res!683343 (and (is-Cons!21723 l!996) (bvslt (_1!7753 (h!22921 l!996)) key!261)))))

(declare-fun value!172 () B!1682)

(declare-fun lt!449610 () List!21727)

(declare-fun insertStrictlySorted!356 (List!21727 (_ BitVec 64) B!1682) List!21727)

(assert (=> b!1019099 (= lt!449610 (insertStrictlySorted!356 l!996 key!261 value!172))))

(declare-fun res!683340 () Bool)

(assert (=> start!88766 (=> (not res!683340) (not e!573539))))

(declare-fun isStrictlySorted!674 (List!21727) Bool)

(assert (=> start!88766 (= res!683340 (isStrictlySorted!674 l!996))))

(assert (=> start!88766 e!573539))

(declare-fun e!573540 () Bool)

(assert (=> start!88766 e!573540))

(assert (=> start!88766 true))

(declare-fun tp_is_empty!23749 () Bool)

(assert (=> start!88766 tp_is_empty!23749))

(declare-fun b!1019100 () Bool)

(declare-fun res!683339 () Bool)

(assert (=> b!1019100 (=> (not res!683339) (not e!573539))))

(declare-fun containsKey!539 (List!21727 (_ BitVec 64)) Bool)

(assert (=> b!1019100 (= res!683339 (containsKey!539 l!996 key!261))))

(declare-fun b!1019101 () Bool)

(declare-fun res!683342 () Bool)

(assert (=> b!1019101 (=> (not res!683342) (not e!573541))))

(assert (=> b!1019101 (= res!683342 (containsKey!539 (t!30739 l!996) key!261))))

(declare-fun b!1019102 () Bool)

(declare-fun tp!71132 () Bool)

(assert (=> b!1019102 (= e!573540 (and tp_is_empty!23749 tp!71132))))

(declare-fun b!1019103 () Bool)

(declare-fun res!683341 () Bool)

(assert (=> b!1019103 (=> (not res!683341) (not e!573541))))

(assert (=> b!1019103 (= res!683341 (isStrictlySorted!674 (t!30739 l!996)))))

(declare-fun b!1019104 () Bool)

(declare-fun ListPrimitiveSize!136 (List!21727) Int)

(assert (=> b!1019104 (= e!573541 (>= (ListPrimitiveSize!136 (t!30739 l!996)) (ListPrimitiveSize!136 l!996)))))

(assert (= (and start!88766 res!683340) b!1019100))

(assert (= (and b!1019100 res!683339) b!1019099))

(assert (= (and b!1019099 res!683343) b!1019103))

(assert (= (and b!1019103 res!683341) b!1019101))

(assert (= (and b!1019101 res!683342) b!1019104))

(assert (= (and start!88766 (is-Cons!21723 l!996)) b!1019102))

(declare-fun m!939725 () Bool)

(assert (=> b!1019104 m!939725))

(declare-fun m!939727 () Bool)

(assert (=> b!1019104 m!939727))

(declare-fun m!939729 () Bool)

(assert (=> b!1019103 m!939729))

(declare-fun m!939731 () Bool)

(assert (=> b!1019101 m!939731))

(declare-fun m!939733 () Bool)

(assert (=> start!88766 m!939733))

(declare-fun m!939735 () Bool)

(assert (=> b!1019099 m!939735))

(declare-fun m!939737 () Bool)

(assert (=> b!1019100 m!939737))

(push 1)

(assert (not b!1019099))

(assert (not b!1019104))

(assert tp_is_empty!23749)

(assert (not b!1019103))

(assert (not start!88766))

(assert (not b!1019100))

(assert (not b!1019101))

(assert (not b!1019102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121977 () Bool)

(declare-fun res!683384 () Bool)

(declare-fun e!573573 () Bool)

(assert (=> d!121977 (=> res!683384 e!573573)))

(assert (=> d!121977 (= res!683384 (or (is-Nil!21724 l!996) (is-Nil!21724 (t!30739 l!996))))))

(assert (=> d!121977 (= (isStrictlySorted!674 l!996) e!573573)))

(declare-fun b!1019157 () Bool)

(declare-fun e!573574 () Bool)

(assert (=> b!1019157 (= e!573573 e!573574)))

(declare-fun res!683385 () Bool)

(assert (=> b!1019157 (=> (not res!683385) (not e!573574))))

(assert (=> b!1019157 (= res!683385 (bvslt (_1!7753 (h!22921 l!996)) (_1!7753 (h!22921 (t!30739 l!996)))))))

(declare-fun b!1019158 () Bool)

(assert (=> b!1019158 (= e!573574 (isStrictlySorted!674 (t!30739 l!996)))))

(assert (= (and d!121977 (not res!683384)) b!1019157))

(assert (= (and b!1019157 res!683385) b!1019158))

(assert (=> b!1019158 m!939729))

(assert (=> start!88766 d!121977))

(declare-fun d!121983 () Bool)

(declare-fun res!683390 () Bool)

(declare-fun e!573580 () Bool)

(assert (=> d!121983 (=> res!683390 e!573580)))

(assert (=> d!121983 (= res!683390 (and (is-Cons!21723 (t!30739 l!996)) (= (_1!7753 (h!22921 (t!30739 l!996))) key!261)))))

(assert (=> d!121983 (= (containsKey!539 (t!30739 l!996) key!261) e!573580)))

(declare-fun b!1019165 () Bool)

(declare-fun e!573581 () Bool)

(assert (=> b!1019165 (= e!573580 e!573581)))

(declare-fun res!683391 () Bool)

(assert (=> b!1019165 (=> (not res!683391) (not e!573581))))

(assert (=> b!1019165 (= res!683391 (and (or (not (is-Cons!21723 (t!30739 l!996))) (bvsle (_1!7753 (h!22921 (t!30739 l!996))) key!261)) (is-Cons!21723 (t!30739 l!996)) (bvslt (_1!7753 (h!22921 (t!30739 l!996))) key!261)))))

(declare-fun b!1019166 () Bool)

(assert (=> b!1019166 (= e!573581 (containsKey!539 (t!30739 (t!30739 l!996)) key!261))))

(assert (= (and d!121983 (not res!683390)) b!1019165))

(assert (= (and b!1019165 res!683391) b!1019166))

(declare-fun m!939771 () Bool)

(assert (=> b!1019166 m!939771))

(assert (=> b!1019101 d!121983))

(declare-fun d!121989 () Bool)

(declare-fun res!683392 () Bool)

(declare-fun e!573582 () Bool)

(assert (=> d!121989 (=> res!683392 e!573582)))

(assert (=> d!121989 (= res!683392 (or (is-Nil!21724 (t!30739 l!996)) (is-Nil!21724 (t!30739 (t!30739 l!996)))))))

(assert (=> d!121989 (= (isStrictlySorted!674 (t!30739 l!996)) e!573582)))

(declare-fun b!1019167 () Bool)

(declare-fun e!573583 () Bool)

(assert (=> b!1019167 (= e!573582 e!573583)))

(declare-fun res!683393 () Bool)

(assert (=> b!1019167 (=> (not res!683393) (not e!573583))))

(assert (=> b!1019167 (= res!683393 (bvslt (_1!7753 (h!22921 (t!30739 l!996))) (_1!7753 (h!22921 (t!30739 (t!30739 l!996))))))))

(declare-fun b!1019168 () Bool)

(assert (=> b!1019168 (= e!573583 (isStrictlySorted!674 (t!30739 (t!30739 l!996))))))

(assert (= (and d!121989 (not res!683392)) b!1019167))

(assert (= (and b!1019167 res!683393) b!1019168))

(declare-fun m!939773 () Bool)

(assert (=> b!1019168 m!939773))

(assert (=> b!1019103 d!121989))

(declare-fun d!121991 () Bool)

(declare-fun e!573633 () Bool)

(assert (=> d!121991 e!573633))

(declare-fun res!683417 () Bool)

(assert (=> d!121991 (=> (not res!683417) (not e!573633))))

(declare-fun lt!449631 () List!21727)

(assert (=> d!121991 (= res!683417 (isStrictlySorted!674 lt!449631))))

(declare-fun e!573631 () List!21727)

(assert (=> d!121991 (= lt!449631 e!573631)))

(declare-fun c!103262 () Bool)

(assert (=> d!121991 (= c!103262 (and (is-Cons!21723 l!996) (bvslt (_1!7753 (h!22921 l!996)) key!261)))))

(assert (=> d!121991 (isStrictlySorted!674 l!996)))

(assert (=> d!121991 (= (insertStrictlySorted!356 l!996 key!261 value!172) lt!449631)))

(declare-fun b!1019257 () Bool)

(declare-fun c!103263 () Bool)

(assert (=> b!1019257 (= c!103263 (and (is-Cons!21723 l!996) (bvsgt (_1!7753 (h!22921 l!996)) key!261)))))

(declare-fun e!573630 () List!21727)

(declare-fun e!573635 () List!21727)

(assert (=> b!1019257 (= e!573630 e!573635)))

(declare-fun b!1019258 () Bool)

(assert (=> b!1019258 (= e!573631 e!573630)))

(declare-fun c!103264 () Bool)

(assert (=> b!1019258 (= c!103264 (and (is-Cons!21723 l!996) (= (_1!7753 (h!22921 l!996)) key!261)))))

(declare-fun b!1019259 () Bool)

(declare-fun call!43077 () List!21727)

(assert (=> b!1019259 (= e!573635 call!43077)))

(declare-fun bm!43073 () Bool)

(declare-fun call!43076 () List!21727)

(assert (=> bm!43073 (= call!43077 call!43076)))

(declare-fun b!1019260 () Bool)

(declare-fun e!573632 () List!21727)

(assert (=> b!1019260 (= e!573632 (insertStrictlySorted!356 (t!30739 l!996) key!261 value!172))))

(declare-fun call!43078 () List!21727)

(declare-fun bm!43074 () Bool)

(declare-fun $colon$colon!591 (List!21727 tuple2!15486) List!21727)

(assert (=> bm!43074 (= call!43078 ($colon$colon!591 e!573632 (ite c!103262 (h!22921 l!996) (tuple2!15487 key!261 value!172))))))

(declare-fun c!103261 () Bool)

(assert (=> bm!43074 (= c!103261 c!103262)))

(declare-fun b!1019261 () Bool)

(assert (=> b!1019261 (= e!573630 call!43076)))

(declare-fun b!1019262 () Bool)

(assert (=> b!1019262 (= e!573631 call!43078)))

(declare-fun b!1019263 () Bool)

(assert (=> b!1019263 (= e!573632 (ite c!103264 (t!30739 l!996) (ite c!103263 (Cons!21723 (h!22921 l!996) (t!30739 l!996)) Nil!21724)))))

(declare-fun b!1019264 () Bool)

(declare-fun res!683414 () Bool)

(assert (=> b!1019264 (=> (not res!683414) (not e!573633))))

(assert (=> b!1019264 (= res!683414 (containsKey!539 lt!449631 key!261))))

(declare-fun bm!43075 () Bool)

(assert (=> bm!43075 (= call!43076 call!43078)))

(declare-fun b!1019265 () Bool)

(declare-fun contains!5920 (List!21727 tuple2!15486) Bool)

(assert (=> b!1019265 (= e!573633 (contains!5920 lt!449631 (tuple2!15487 key!261 value!172)))))

(declare-fun b!1019266 () Bool)

(assert (=> b!1019266 (= e!573635 call!43077)))

(assert (= (and d!121991 c!103262) b!1019262))

(assert (= (and d!121991 (not c!103262)) b!1019258))

(assert (= (and b!1019258 c!103264) b!1019261))

(assert (= (and b!1019258 (not c!103264)) b!1019257))

(assert (= (and b!1019257 c!103263) b!1019266))

(assert (= (and b!1019257 (not c!103263)) b!1019259))

(assert (= (or b!1019266 b!1019259) bm!43073))

(assert (= (or b!1019261 bm!43073) bm!43075))

(assert (= (or b!1019262 bm!43075) bm!43074))

(assert (= (and bm!43074 c!103261) b!1019260))

(assert (= (and bm!43074 (not c!103261)) b!1019263))

(assert (= (and d!121991 res!683417) b!1019264))

(assert (= (and b!1019264 res!683414) b!1019265))

(declare-fun m!939795 () Bool)

(assert (=> b!1019260 m!939795))

(declare-fun m!939799 () Bool)

(assert (=> b!1019264 m!939799))

(declare-fun m!939801 () Bool)

(assert (=> b!1019265 m!939801))

(declare-fun m!939803 () Bool)

(assert (=> d!121991 m!939803))

(assert (=> d!121991 m!939733))

(declare-fun m!939805 () Bool)

(assert (=> bm!43074 m!939805))

(assert (=> b!1019099 d!121991))

(declare-fun d!122001 () Bool)

(declare-fun lt!449636 () Int)

(assert (=> d!122001 (>= lt!449636 0)))

(declare-fun e!573652 () Int)

(assert (=> d!122001 (= lt!449636 e!573652)))

(declare-fun c!103269 () Bool)

(assert (=> d!122001 (= c!103269 (is-Nil!21724 (t!30739 l!996)))))

(assert (=> d!122001 (= (ListPrimitiveSize!136 (t!30739 l!996)) lt!449636)))

(declare-fun b!1019290 () Bool)

(assert (=> b!1019290 (= e!573652 0)))

(declare-fun b!1019291 () Bool)

(assert (=> b!1019291 (= e!573652 (+ 1 (ListPrimitiveSize!136 (t!30739 (t!30739 l!996)))))))

(assert (= (and d!122001 c!103269) b!1019290))

(assert (= (and d!122001 (not c!103269)) b!1019291))

(declare-fun m!939809 () Bool)

(assert (=> b!1019291 m!939809))

(assert (=> b!1019104 d!122001))

(declare-fun d!122007 () Bool)

(declare-fun lt!449637 () Int)

(assert (=> d!122007 (>= lt!449637 0)))

(declare-fun e!573655 () Int)

(assert (=> d!122007 (= lt!449637 e!573655)))

(declare-fun c!103270 () Bool)

(assert (=> d!122007 (= c!103270 (is-Nil!21724 l!996))))

(assert (=> d!122007 (= (ListPrimitiveSize!136 l!996) lt!449637)))

(declare-fun b!1019294 () Bool)

(assert (=> b!1019294 (= e!573655 0)))

(declare-fun b!1019295 () Bool)

(assert (=> b!1019295 (= e!573655 (+ 1 (ListPrimitiveSize!136 (t!30739 l!996))))))

(assert (= (and d!122007 c!103270) b!1019294))

(assert (= (and d!122007 (not c!103270)) b!1019295))

(assert (=> b!1019295 m!939725))

(assert (=> b!1019104 d!122007))

(declare-fun d!122011 () Bool)

(declare-fun res!683428 () Bool)

(declare-fun e!573656 () Bool)

(assert (=> d!122011 (=> res!683428 e!573656)))

(assert (=> d!122011 (= res!683428 (and (is-Cons!21723 l!996) (= (_1!7753 (h!22921 l!996)) key!261)))))

(assert (=> d!122011 (= (containsKey!539 l!996 key!261) e!573656)))

(declare-fun b!1019296 () Bool)

(declare-fun e!573657 () Bool)

(assert (=> b!1019296 (= e!573656 e!573657)))

(declare-fun res!683429 () Bool)

(assert (=> b!1019296 (=> (not res!683429) (not e!573657))))

(assert (=> b!1019296 (= res!683429 (and (or (not (is-Cons!21723 l!996)) (bvsle (_1!7753 (h!22921 l!996)) key!261)) (is-Cons!21723 l!996) (bvslt (_1!7753 (h!22921 l!996)) key!261)))))

(declare-fun b!1019297 () Bool)

(assert (=> b!1019297 (= e!573657 (containsKey!539 (t!30739 l!996) key!261))))

(assert (= (and d!122011 (not res!683428)) b!1019296))

(assert (= (and b!1019296 res!683429) b!1019297))

(assert (=> b!1019297 m!939731))

(assert (=> b!1019100 d!122011))

(declare-fun b!1019302 () Bool)

(declare-fun e!573660 () Bool)

(declare-fun tp!71144 () Bool)

(assert (=> b!1019302 (= e!573660 (and tp_is_empty!23749 tp!71144))))

(assert (=> b!1019102 (= tp!71132 e!573660)))

(assert (= (and b!1019102 (is-Cons!21723 (t!30739 l!996))) b!1019302))

(push 1)

