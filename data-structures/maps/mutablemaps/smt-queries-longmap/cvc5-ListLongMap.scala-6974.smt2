; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88340 () Bool)

(assert start!88340)

(declare-fun b!1017009 () Bool)

(assert (=> b!1017009 true))

(assert (=> b!1017009 true))

(declare-fun bs!29548 () Bool)

(declare-fun b!1017013 () Bool)

(assert (= bs!29548 (and b!1017013 b!1017009)))

(declare-fun lambda!1065 () Int)

(declare-datatypes ((B!1550 0))(
  ( (B!1551 (val!11859 Int)) )
))
(declare-datatypes ((tuple2!15354 0))(
  ( (tuple2!15355 (_1!7687 (_ BitVec 64)) (_2!7687 B!1550)) )
))
(declare-datatypes ((List!21655 0))(
  ( (Nil!21652) (Cons!21651 (h!22849 tuple2!15354) (t!30664 List!21655)) )
))
(declare-fun lt!449377 () List!21655)

(declare-fun l!1114 () List!21655)

(declare-fun lambda!1064 () Int)

(assert (=> bs!29548 (= (= lt!449377 l!1114) (= lambda!1065 lambda!1064))))

(assert (=> b!1017013 true))

(assert (=> b!1017013 true))

(declare-fun b!1017007 () Bool)

(declare-fun e!572211 () Bool)

(declare-fun e!572210 () Bool)

(assert (=> b!1017007 (= e!572211 (not e!572210))))

(declare-fun res!682217 () Bool)

(assert (=> b!1017007 (=> res!682217 e!572210)))

(declare-datatypes ((List!21656 0))(
  ( (Nil!21653) (Cons!21652 (h!22850 (_ BitVec 64)) (t!30665 List!21656)) )
))
(declare-fun keys!40 () List!21656)

(declare-fun forall!292 (List!21656 Int) Bool)

(assert (=> b!1017007 (= res!682217 (not (forall!292 (t!30665 keys!40) lambda!1064)))))

(declare-datatypes ((Option!615 0))(
  ( (Some!614 (v!14463 B!1550)) (None!613) )
))
(declare-fun isDefined!411 (Option!615) Bool)

(declare-fun getValueByKey!564 (List!21655 (_ BitVec 64)) Option!615)

(assert (=> b!1017007 (isDefined!411 (getValueByKey!564 lt!449377 (h!22850 keys!40)))))

(declare-datatypes ((Unit!33228 0))(
  ( (Unit!33229) )
))
(declare-fun lt!449379 () Unit!33228)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!389 (List!21655 (_ BitVec 64)) Unit!33228)

(assert (=> b!1017007 (= lt!449379 (lemmaContainsKeyImpliesGetValueByKeyDefined!389 lt!449377 (h!22850 keys!40)))))

(declare-fun newHead!31 () tuple2!15354)

(assert (=> b!1017007 (= lt!449377 (Cons!21651 newHead!31 l!1114))))

(declare-fun containsKey!500 (List!21655 (_ BitVec 64)) Bool)

(assert (=> b!1017007 (containsKey!500 l!1114 (h!22850 keys!40))))

(declare-fun lt!449376 () Unit!33228)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!19 (List!21655 (_ BitVec 64)) Unit!33228)

(assert (=> b!1017007 (= lt!449376 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!19 l!1114 (h!22850 keys!40)))))

(declare-fun res!682218 () Bool)

(assert (=> b!1017009 (=> (not res!682218) (not e!572211))))

(assert (=> b!1017009 (= res!682218 (forall!292 keys!40 lambda!1064))))

(declare-fun b!1017010 () Bool)

(declare-fun res!682219 () Bool)

(assert (=> b!1017010 (=> (not res!682219) (not e!572211))))

(declare-fun isEmpty!901 (List!21655) Bool)

(assert (=> b!1017010 (= res!682219 (not (isEmpty!901 l!1114)))))

(declare-fun b!1017011 () Bool)

(declare-fun e!572212 () Bool)

(declare-fun tp_is_empty!23617 () Bool)

(declare-fun tp!70829 () Bool)

(assert (=> b!1017011 (= e!572212 (and tp_is_empty!23617 tp!70829))))

(declare-fun b!1017012 () Bool)

(declare-fun res!682220 () Bool)

(assert (=> b!1017012 (=> (not res!682220) (not e!572211))))

(declare-fun head!974 (List!21655) tuple2!15354)

(assert (=> b!1017012 (= res!682220 (bvslt (_1!7687 newHead!31) (_1!7687 (head!974 l!1114))))))

(assert (=> b!1017013 (= e!572210 (forall!292 keys!40 lambda!1065))))

(assert (=> b!1017013 (forall!292 (t!30665 keys!40) lambda!1065)))

(declare-fun value!178 () B!1550)

(declare-fun lt!449378 () Unit!33228)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!54 (List!21655 List!21656 B!1550 tuple2!15354) Unit!33228)

(assert (=> b!1017013 (= lt!449378 (lemmaForallGetValueByKeySameWithASmallerHead!54 l!1114 (t!30665 keys!40) value!178 newHead!31))))

(declare-fun b!1017008 () Bool)

(declare-fun res!682221 () Bool)

(assert (=> b!1017008 (=> (not res!682221) (not e!572211))))

(assert (=> b!1017008 (= res!682221 (is-Cons!21652 keys!40))))

(declare-fun res!682216 () Bool)

(assert (=> start!88340 (=> (not res!682216) (not e!572211))))

(declare-fun isStrictlySorted!623 (List!21655) Bool)

(assert (=> start!88340 (= res!682216 (isStrictlySorted!623 l!1114))))

(assert (=> start!88340 e!572211))

(assert (=> start!88340 e!572212))

(assert (=> start!88340 true))

(assert (=> start!88340 tp_is_empty!23617))

(assert (= (and start!88340 res!682216) b!1017010))

(assert (= (and b!1017010 res!682219) b!1017009))

(assert (= (and b!1017009 res!682218) b!1017012))

(assert (= (and b!1017012 res!682220) b!1017008))

(assert (= (and b!1017008 res!682221) b!1017007))

(assert (= (and b!1017007 (not res!682217)) b!1017013))

(assert (= (and start!88340 (is-Cons!21651 l!1114)) b!1017011))

(declare-fun m!938627 () Bool)

(assert (=> b!1017013 m!938627))

(declare-fun m!938629 () Bool)

(assert (=> b!1017013 m!938629))

(declare-fun m!938631 () Bool)

(assert (=> b!1017013 m!938631))

(declare-fun m!938633 () Bool)

(assert (=> b!1017010 m!938633))

(declare-fun m!938635 () Bool)

(assert (=> b!1017007 m!938635))

(declare-fun m!938637 () Bool)

(assert (=> b!1017007 m!938637))

(declare-fun m!938639 () Bool)

(assert (=> b!1017007 m!938639))

(assert (=> b!1017007 m!938637))

(declare-fun m!938641 () Bool)

(assert (=> b!1017007 m!938641))

(declare-fun m!938643 () Bool)

(assert (=> b!1017007 m!938643))

(declare-fun m!938645 () Bool)

(assert (=> b!1017007 m!938645))

(declare-fun m!938647 () Bool)

(assert (=> start!88340 m!938647))

(declare-fun m!938649 () Bool)

(assert (=> b!1017009 m!938649))

(declare-fun m!938651 () Bool)

(assert (=> b!1017012 m!938651))

(push 1)

(assert (not b!1017011))

(assert tp_is_empty!23617)

(assert (not b!1017009))

(assert (not b!1017010))

(assert (not b!1017007))

(assert (not b!1017012))

(assert (not b!1017013))

(assert (not start!88340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121455 () Bool)

(assert (=> d!121455 (= (isEmpty!901 l!1114) (is-Nil!21652 l!1114))))

(assert (=> b!1017010 d!121455))

(declare-fun d!121457 () Bool)

(declare-fun res!682273 () Bool)

(declare-fun e!572246 () Bool)

(assert (=> d!121457 (=> res!682273 e!572246)))

(assert (=> d!121457 (= res!682273 (is-Nil!21653 keys!40))))

(assert (=> d!121457 (= (forall!292 keys!40 lambda!1064) e!572246)))

(declare-fun b!1017083 () Bool)

(declare-fun e!572247 () Bool)

(assert (=> b!1017083 (= e!572246 e!572247)))

(declare-fun res!682274 () Bool)

(assert (=> b!1017083 (=> (not res!682274) (not e!572247))))

(declare-fun dynLambda!1930 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017083 (= res!682274 (dynLambda!1930 lambda!1064 (h!22850 keys!40)))))

(declare-fun b!1017084 () Bool)

(assert (=> b!1017084 (= e!572247 (forall!292 (t!30665 keys!40) lambda!1064))))

(assert (= (and d!121457 (not res!682273)) b!1017083))

(assert (= (and b!1017083 res!682274) b!1017084))

(declare-fun b_lambda!15613 () Bool)

(assert (=> (not b_lambda!15613) (not b!1017083)))

(declare-fun m!938719 () Bool)

(assert (=> b!1017083 m!938719))

(assert (=> b!1017084 m!938643))

(assert (=> b!1017009 d!121457))

(declare-fun d!121463 () Bool)

(declare-fun res!682275 () Bool)

(declare-fun e!572248 () Bool)

(assert (=> d!121463 (=> res!682275 e!572248)))

(assert (=> d!121463 (= res!682275 (is-Nil!21653 keys!40))))

(assert (=> d!121463 (= (forall!292 keys!40 lambda!1065) e!572248)))

(declare-fun b!1017085 () Bool)

(declare-fun e!572249 () Bool)

(assert (=> b!1017085 (= e!572248 e!572249)))

(declare-fun res!682276 () Bool)

(assert (=> b!1017085 (=> (not res!682276) (not e!572249))))

(assert (=> b!1017085 (= res!682276 (dynLambda!1930 lambda!1065 (h!22850 keys!40)))))

(declare-fun b!1017086 () Bool)

(assert (=> b!1017086 (= e!572249 (forall!292 (t!30665 keys!40) lambda!1065))))

(assert (= (and d!121463 (not res!682275)) b!1017085))

(assert (= (and b!1017085 res!682276) b!1017086))

(declare-fun b_lambda!15615 () Bool)

(assert (=> (not b_lambda!15615) (not b!1017085)))

(declare-fun m!938721 () Bool)

(assert (=> b!1017085 m!938721))

(assert (=> b!1017086 m!938629))

(assert (=> b!1017013 d!121463))

(declare-fun d!121465 () Bool)

(declare-fun res!682277 () Bool)

(declare-fun e!572250 () Bool)

(assert (=> d!121465 (=> res!682277 e!572250)))

(assert (=> d!121465 (= res!682277 (is-Nil!21653 (t!30665 keys!40)))))

(assert (=> d!121465 (= (forall!292 (t!30665 keys!40) lambda!1065) e!572250)))

(declare-fun b!1017087 () Bool)

(declare-fun e!572251 () Bool)

(assert (=> b!1017087 (= e!572250 e!572251)))

(declare-fun res!682278 () Bool)

(assert (=> b!1017087 (=> (not res!682278) (not e!572251))))

(assert (=> b!1017087 (= res!682278 (dynLambda!1930 lambda!1065 (h!22850 (t!30665 keys!40))))))

(declare-fun b!1017088 () Bool)

(assert (=> b!1017088 (= e!572251 (forall!292 (t!30665 (t!30665 keys!40)) lambda!1065))))

(assert (= (and d!121465 (not res!682277)) b!1017087))

(assert (= (and b!1017087 res!682278) b!1017088))

(declare-fun b_lambda!15617 () Bool)

(assert (=> (not b_lambda!15617) (not b!1017087)))

(declare-fun m!938723 () Bool)

(assert (=> b!1017087 m!938723))

(declare-fun m!938725 () Bool)

(assert (=> b!1017088 m!938725))

(assert (=> b!1017013 d!121465))

(declare-fun bs!29552 () Bool)

(declare-fun b!1017123 () Bool)

(assert (= bs!29552 (and b!1017123 b!1017009)))

(declare-fun lambda!1091 () Int)

(assert (=> bs!29552 (= lambda!1091 lambda!1064)))

(declare-fun bs!29553 () Bool)

(assert (= bs!29553 (and b!1017123 b!1017013)))

(assert (=> bs!29553 (= (= l!1114 lt!449377) (= lambda!1091 lambda!1065))))

(assert (=> b!1017123 true))

(assert (=> b!1017123 true))

(declare-fun bs!29554 () Bool)

(declare-fun d!121467 () Bool)

(assert (= bs!29554 (and d!121467 b!1017009)))

(declare-fun lambda!1093 () Int)

(assert (=> bs!29554 (= (= (Cons!21651 newHead!31 l!1114) l!1114) (= lambda!1093 lambda!1064))))

(declare-fun bs!29555 () Bool)

(assert (= bs!29555 (and d!121467 b!1017013)))

(assert (=> bs!29555 (= (= (Cons!21651 newHead!31 l!1114) lt!449377) (= lambda!1093 lambda!1065))))

(declare-fun bs!29556 () Bool)

(assert (= bs!29556 (and d!121467 b!1017123)))

(assert (=> bs!29556 (= (= (Cons!21651 newHead!31 l!1114) l!1114) (= lambda!1093 lambda!1091))))

(assert (=> d!121467 true))

(assert (=> d!121467 true))

(assert (=> d!121467 true))

(assert (=> d!121467 (forall!292 (t!30665 keys!40) lambda!1093)))

(declare-fun lt!449412 () Unit!33228)

(declare-fun choose!1670 (List!21655 List!21656 B!1550 tuple2!15354) Unit!33228)

(assert (=> d!121467 (= lt!449412 (choose!1670 l!1114 (t!30665 keys!40) value!178 newHead!31))))

(declare-fun e!572273 () Bool)

(assert (=> d!121467 e!572273))

(declare-fun res!682302 () Bool)

(assert (=> d!121467 (=> (not res!682302) (not e!572273))))

(assert (=> d!121467 (= res!682302 (isStrictlySorted!623 l!1114))))

(assert (=> d!121467 (= (lemmaForallGetValueByKeySameWithASmallerHead!54 l!1114 (t!30665 keys!40) value!178 newHead!31) lt!449412)))

(declare-fun b!1017122 () Bool)

(declare-fun res!682304 () Bool)

(assert (=> b!1017122 (=> (not res!682304) (not e!572273))))

(assert (=> b!1017122 (= res!682304 (not (isEmpty!901 l!1114)))))

(declare-fun res!682303 () Bool)

(assert (=> b!1017123 (=> (not res!682303) (not e!572273))))

(assert (=> b!1017123 (= res!682303 (forall!292 (t!30665 keys!40) lambda!1091))))

(declare-fun b!1017124 () Bool)

(assert (=> b!1017124 (= e!572273 (bvslt (_1!7687 newHead!31) (_1!7687 (head!974 l!1114))))))

(assert (= (and d!121467 res!682302) b!1017122))

(assert (= (and b!1017122 res!682304) b!1017123))

(assert (= (and b!1017123 res!682303) b!1017124))

(declare-fun m!938741 () Bool)

(assert (=> d!121467 m!938741))

(declare-fun m!938743 () Bool)

(assert (=> d!121467 m!938743))

(assert (=> d!121467 m!938647))

(assert (=> b!1017122 m!938633))

(declare-fun m!938745 () Bool)

(assert (=> b!1017123 m!938745))

(assert (=> b!1017124 m!938651))

(assert (=> b!1017013 d!121467))

(declare-fun d!121481 () Bool)

(assert (=> d!121481 (= (head!974 l!1114) (h!22849 l!1114))))

(assert (=> b!1017012 d!121481))

(declare-fun d!121485 () Bool)

(declare-fun res!682322 () Bool)

(declare-fun e!572289 () Bool)

(assert (=> d!121485 (=> res!682322 e!572289)))

(assert (=> d!121485 (= res!682322 (and (is-Cons!21651 l!1114) (= (_1!7687 (h!22849 l!1114)) (h!22850 keys!40))))))

(assert (=> d!121485 (= (containsKey!500 l!1114 (h!22850 keys!40)) e!572289)))

(declare-fun b!1017148 () Bool)

(declare-fun e!572290 () Bool)

(assert (=> b!1017148 (= e!572289 e!572290)))

(declare-fun res!682323 () Bool)

(assert (=> b!1017148 (=> (not res!682323) (not e!572290))))

(assert (=> b!1017148 (= res!682323 (and (or (not (is-Cons!21651 l!1114)) (bvsle (_1!7687 (h!22849 l!1114)) (h!22850 keys!40))) (is-Cons!21651 l!1114) (bvslt (_1!7687 (h!22849 l!1114)) (h!22850 keys!40))))))

(declare-fun b!1017149 () Bool)

(assert (=> b!1017149 (= e!572290 (containsKey!500 (t!30664 l!1114) (h!22850 keys!40)))))

(assert (= (and d!121485 (not res!682322)) b!1017148))

(assert (= (and b!1017148 res!682323) b!1017149))

(declare-fun m!938755 () Bool)

(assert (=> b!1017149 m!938755))

(assert (=> b!1017007 d!121485))

(declare-fun d!121489 () Bool)

(declare-fun res!682324 () Bool)

(declare-fun e!572291 () Bool)

(assert (=> d!121489 (=> res!682324 e!572291)))

(assert (=> d!121489 (= res!682324 (is-Nil!21653 (t!30665 keys!40)))))

(assert (=> d!121489 (= (forall!292 (t!30665 keys!40) lambda!1064) e!572291)))

(declare-fun b!1017150 () Bool)

(declare-fun e!572292 () Bool)

(assert (=> b!1017150 (= e!572291 e!572292)))

(declare-fun res!682325 () Bool)

(assert (=> b!1017150 (=> (not res!682325) (not e!572292))))

(assert (=> b!1017150 (= res!682325 (dynLambda!1930 lambda!1064 (h!22850 (t!30665 keys!40))))))

(declare-fun b!1017151 () Bool)

(assert (=> b!1017151 (= e!572292 (forall!292 (t!30665 (t!30665 keys!40)) lambda!1064))))

(assert (= (and d!121489 (not res!682324)) b!1017150))

(assert (= (and b!1017150 res!682325) b!1017151))

(declare-fun b_lambda!15623 () Bool)

(assert (=> (not b_lambda!15623) (not b!1017150)))

(declare-fun m!938757 () Bool)

(assert (=> b!1017150 m!938757))

(declare-fun m!938759 () Bool)

(assert (=> b!1017151 m!938759))

(assert (=> b!1017007 d!121489))

(declare-fun d!121491 () Bool)

(assert (=> d!121491 (isDefined!411 (getValueByKey!564 lt!449377 (h!22850 keys!40)))))

(declare-fun lt!449418 () Unit!33228)

(declare-fun choose!1673 (List!21655 (_ BitVec 64)) Unit!33228)

(assert (=> d!121491 (= lt!449418 (choose!1673 lt!449377 (h!22850 keys!40)))))

(declare-fun e!572309 () Bool)

(assert (=> d!121491 e!572309))

(declare-fun res!682342 () Bool)

(assert (=> d!121491 (=> (not res!682342) (not e!572309))))

(assert (=> d!121491 (= res!682342 (isStrictlySorted!623 lt!449377))))

(assert (=> d!121491 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!389 lt!449377 (h!22850 keys!40)) lt!449418)))

(declare-fun b!1017168 () Bool)

(assert (=> b!1017168 (= e!572309 (containsKey!500 lt!449377 (h!22850 keys!40)))))

(assert (= (and d!121491 res!682342) b!1017168))

(assert (=> d!121491 m!938637))

(assert (=> d!121491 m!938637))

(assert (=> d!121491 m!938641))

(declare-fun m!938773 () Bool)

(assert (=> d!121491 m!938773))

(declare-fun m!938775 () Bool)

(assert (=> d!121491 m!938775))

(declare-fun m!938777 () Bool)

(assert (=> b!1017168 m!938777))

(assert (=> b!1017007 d!121491))

(declare-fun d!121505 () Bool)

(declare-fun isEmpty!905 (Option!615) Bool)

(assert (=> d!121505 (= (isDefined!411 (getValueByKey!564 lt!449377 (h!22850 keys!40))) (not (isEmpty!905 (getValueByKey!564 lt!449377 (h!22850 keys!40)))))))

(declare-fun bs!29562 () Bool)

(assert (= bs!29562 d!121505))

(assert (=> bs!29562 m!938637))

(declare-fun m!938779 () Bool)

(assert (=> bs!29562 m!938779))

(assert (=> b!1017007 d!121505))

(declare-fun d!121507 () Bool)

(assert (=> d!121507 (containsKey!500 l!1114 (h!22850 keys!40))))

(declare-fun lt!449421 () Unit!33228)

(declare-fun choose!1674 (List!21655 (_ BitVec 64)) Unit!33228)

(assert (=> d!121507 (= lt!449421 (choose!1674 l!1114 (h!22850 keys!40)))))

(declare-fun e!572322 () Bool)

(assert (=> d!121507 e!572322))

(declare-fun res!682359 () Bool)

(assert (=> d!121507 (=> (not res!682359) (not e!572322))))

(assert (=> d!121507 (= res!682359 (isStrictlySorted!623 l!1114))))

(assert (=> d!121507 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!19 l!1114 (h!22850 keys!40)) lt!449421)))

(declare-fun b!1017183 () Bool)

(assert (=> b!1017183 (= e!572322 (isDefined!411 (getValueByKey!564 l!1114 (h!22850 keys!40))))))

(assert (= (and d!121507 res!682359) b!1017183))

(assert (=> d!121507 m!938639))

(declare-fun m!938787 () Bool)

(assert (=> d!121507 m!938787))

(assert (=> d!121507 m!938647))

(declare-fun m!938789 () Bool)

(assert (=> b!1017183 m!938789))

(assert (=> b!1017183 m!938789))

(declare-fun m!938791 () Bool)

(assert (=> b!1017183 m!938791))

(assert (=> b!1017007 d!121507))

(declare-fun d!121513 () Bool)

(declare-fun c!102951 () Bool)

(assert (=> d!121513 (= c!102951 (and (is-Cons!21651 lt!449377) (= (_1!7687 (h!22849 lt!449377)) (h!22850 keys!40))))))

(declare-fun e!572331 () Option!615)

(assert (=> d!121513 (= (getValueByKey!564 lt!449377 (h!22850 keys!40)) e!572331)))

(declare-fun b!1017203 () Bool)

(declare-fun e!572332 () Option!615)

(assert (=> b!1017203 (= e!572332 None!613)))

(declare-fun b!1017200 () Bool)

(assert (=> b!1017200 (= e!572331 (Some!614 (_2!7687 (h!22849 lt!449377))))))

(declare-fun b!1017201 () Bool)

(assert (=> b!1017201 (= e!572331 e!572332)))

(declare-fun c!102952 () Bool)

(assert (=> b!1017201 (= c!102952 (and (is-Cons!21651 lt!449377) (not (= (_1!7687 (h!22849 lt!449377)) (h!22850 keys!40)))))))

(declare-fun b!1017202 () Bool)

(assert (=> b!1017202 (= e!572332 (getValueByKey!564 (t!30664 lt!449377) (h!22850 keys!40)))))

(assert (= (and d!121513 c!102951) b!1017200))

(assert (= (and d!121513 (not c!102951)) b!1017201))

(assert (= (and b!1017201 c!102952) b!1017202))

(assert (= (and b!1017201 (not c!102952)) b!1017203))

(declare-fun m!938799 () Bool)

(assert (=> b!1017202 m!938799))

(assert (=> b!1017007 d!121513))

(declare-fun d!121517 () Bool)

(declare-fun res!682370 () Bool)

(declare-fun e!572346 () Bool)

(assert (=> d!121517 (=> res!682370 e!572346)))

(assert (=> d!121517 (= res!682370 (or (is-Nil!21652 l!1114) (is-Nil!21652 (t!30664 l!1114))))))

(assert (=> d!121517 (= (isStrictlySorted!623 l!1114) e!572346)))

(declare-fun b!1017227 () Bool)

(declare-fun e!572347 () Bool)

(assert (=> b!1017227 (= e!572346 e!572347)))

(declare-fun res!682371 () Bool)

(assert (=> b!1017227 (=> (not res!682371) (not e!572347))))

(assert (=> b!1017227 (= res!682371 (bvslt (_1!7687 (h!22849 l!1114)) (_1!7687 (h!22849 (t!30664 l!1114)))))))

(declare-fun b!1017228 () Bool)

(assert (=> b!1017228 (= e!572347 (isStrictlySorted!623 (t!30664 l!1114)))))

(assert (= (and d!121517 (not res!682370)) b!1017227))

(assert (= (and b!1017227 res!682371) b!1017228))

(declare-fun m!938809 () Bool)

(assert (=> b!1017228 m!938809))

(assert (=> start!88340 d!121517))

(declare-fun b!1017233 () Bool)

(declare-fun e!572350 () Bool)

(declare-fun tp!70841 () Bool)

(assert (=> b!1017233 (= e!572350 (and tp_is_empty!23617 tp!70841))))

(assert (=> b!1017011 (= tp!70829 e!572350)))

(assert (= (and b!1017011 (is-Cons!21651 (t!30664 l!1114))) b!1017233))

(declare-fun b_lambda!15641 () Bool)

(assert (= b_lambda!15615 (or b!1017013 b_lambda!15641)))

(declare-fun bs!29573 () Bool)

(declare-fun d!121531 () Bool)

(assert (= bs!29573 (and d!121531 b!1017013)))

(assert (=> bs!29573 (= (dynLambda!1930 lambda!1065 (h!22850 keys!40)) (= (getValueByKey!564 lt!449377 (h!22850 keys!40)) (Some!614 value!178)))))

(assert (=> bs!29573 m!938637))

(assert (=> b!1017085 d!121531))

(declare-fun b_lambda!15643 () Bool)

(assert (= b_lambda!15623 (or b!1017009 b_lambda!15643)))

(declare-fun bs!29574 () Bool)

(declare-fun d!121533 () Bool)

(assert (= bs!29574 (and d!121533 b!1017009)))

(assert (=> bs!29574 (= (dynLambda!1930 lambda!1064 (h!22850 (t!30665 keys!40))) (= (getValueByKey!564 l!1114 (h!22850 (t!30665 keys!40))) (Some!614 value!178)))))

(declare-fun m!938817 () Bool)

(assert (=> bs!29574 m!938817))

(assert (=> b!1017150 d!121533))

(declare-fun b_lambda!15645 () Bool)

(assert (= b_lambda!15617 (or b!1017013 b_lambda!15645)))

(declare-fun bs!29575 () Bool)

(declare-fun d!121535 () Bool)

(assert (= bs!29575 (and d!121535 b!1017013)))

(assert (=> bs!29575 (= (dynLambda!1930 lambda!1065 (h!22850 (t!30665 keys!40))) (= (getValueByKey!564 lt!449377 (h!22850 (t!30665 keys!40))) (Some!614 value!178)))))

(declare-fun m!938819 () Bool)

(assert (=> bs!29575 m!938819))

(assert (=> b!1017087 d!121535))

(declare-fun b_lambda!15647 () Bool)

(assert (= b_lambda!15613 (or b!1017009 b_lambda!15647)))

(declare-fun bs!29576 () Bool)

(declare-fun d!121537 () Bool)

(assert (= bs!29576 (and d!121537 b!1017009)))

(assert (=> bs!29576 (= (dynLambda!1930 lambda!1064 (h!22850 keys!40)) (= (getValueByKey!564 l!1114 (h!22850 keys!40)) (Some!614 value!178)))))

(assert (=> bs!29576 m!938789))

(assert (=> b!1017083 d!121537))

(push 1)

(assert (not b!1017228))

(assert (not d!121491))

(assert (not d!121507))

(assert (not b!1017151))

(assert (not b!1017202))

(assert (not b!1017183))

(assert (not bs!29576))

(assert (not b_lambda!15645))

(assert (not d!121467))

(assert tp_is_empty!23617)

(assert (not b!1017124))

(assert (not b_lambda!15647))

(assert (not b!1017086))

(assert (not bs!29575))

(assert (not bs!29573))

(assert (not b!1017233))

(assert (not b!1017149))

(assert (not b!1017123))

(assert (not bs!29574))

(assert (not b_lambda!15641))

(assert (not b!1017088))

(assert (not b!1017122))

(assert (not b_lambda!15643))

(assert (not b!1017168))

(assert (not d!121505))

(assert (not b!1017084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

