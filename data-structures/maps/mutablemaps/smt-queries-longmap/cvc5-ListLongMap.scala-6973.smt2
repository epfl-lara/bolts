; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88274 () Bool)

(assert start!88274)

(declare-fun b!1016782 () Bool)

(assert (=> b!1016782 true))

(assert (=> b!1016782 true))

(declare-fun b!1016779 () Bool)

(declare-fun res!682085 () Bool)

(declare-fun e!572067 () Bool)

(assert (=> b!1016779 (=> (not res!682085) (not e!572067))))

(declare-datatypes ((B!1544 0))(
  ( (B!1545 (val!11856 Int)) )
))
(declare-datatypes ((tuple2!15348 0))(
  ( (tuple2!15349 (_1!7684 (_ BitVec 64)) (_2!7684 B!1544)) )
))
(declare-datatypes ((List!21649 0))(
  ( (Nil!21646) (Cons!21645 (h!22843 tuple2!15348) (t!30658 List!21649)) )
))
(declare-fun l!1114 () List!21649)

(declare-fun isEmpty!896 (List!21649) Bool)

(assert (=> b!1016779 (= res!682085 (not (isEmpty!896 l!1114)))))

(declare-fun b!1016780 () Bool)

(declare-fun res!682084 () Bool)

(assert (=> b!1016780 (=> (not res!682084) (not e!572067))))

(declare-fun newHead!31 () tuple2!15348)

(declare-fun head!971 (List!21649) tuple2!15348)

(assert (=> b!1016780 (= res!682084 (bvslt (_1!7684 newHead!31) (_1!7684 (head!971 l!1114))))))

(declare-fun b!1016781 () Bool)

(declare-fun e!572066 () Bool)

(assert (=> b!1016781 (= e!572067 (not e!572066))))

(declare-fun res!682086 () Bool)

(assert (=> b!1016781 (=> res!682086 e!572066)))

(declare-datatypes ((List!21650 0))(
  ( (Nil!21647) (Cons!21646 (h!22844 (_ BitVec 64)) (t!30659 List!21650)) )
))
(declare-fun keys!40 () List!21650)

(declare-fun lambda!1045 () Int)

(declare-fun forall!289 (List!21650 Int) Bool)

(assert (=> b!1016781 (= res!682086 (not (forall!289 (t!30659 keys!40) lambda!1045)))))

(declare-fun lt!449318 () List!21649)

(declare-datatypes ((Option!612 0))(
  ( (Some!611 (v!14460 B!1544)) (None!610) )
))
(declare-fun isDefined!408 (Option!612) Bool)

(declare-fun getValueByKey!561 (List!21649 (_ BitVec 64)) Option!612)

(assert (=> b!1016781 (isDefined!408 (getValueByKey!561 lt!449318 (h!22844 keys!40)))))

(declare-datatypes ((Unit!33222 0))(
  ( (Unit!33223) )
))
(declare-fun lt!449317 () Unit!33222)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!386 (List!21649 (_ BitVec 64)) Unit!33222)

(assert (=> b!1016781 (= lt!449317 (lemmaContainsKeyImpliesGetValueByKeyDefined!386 lt!449318 (h!22844 keys!40)))))

(assert (=> b!1016781 (= lt!449318 (Cons!21645 newHead!31 l!1114))))

(declare-fun containsKey!497 (List!21649 (_ BitVec 64)) Bool)

(assert (=> b!1016781 (containsKey!497 l!1114 (h!22844 keys!40))))

(declare-fun lt!449319 () Unit!33222)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!16 (List!21649 (_ BitVec 64)) Unit!33222)

(assert (=> b!1016781 (= lt!449319 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!16 l!1114 (h!22844 keys!40)))))

(declare-fun res!682089 () Bool)

(assert (=> b!1016782 (=> (not res!682089) (not e!572067))))

(assert (=> b!1016782 (= res!682089 (forall!289 keys!40 lambda!1045))))

(declare-fun res!682087 () Bool)

(assert (=> start!88274 (=> (not res!682087) (not e!572067))))

(declare-fun isStrictlySorted!620 (List!21649) Bool)

(assert (=> start!88274 (= res!682087 (isStrictlySorted!620 l!1114))))

(assert (=> start!88274 e!572067))

(declare-fun e!572068 () Bool)

(assert (=> start!88274 e!572068))

(assert (=> start!88274 true))

(declare-fun tp_is_empty!23611 () Bool)

(assert (=> start!88274 tp_is_empty!23611))

(declare-fun b!1016783 () Bool)

(declare-fun res!682088 () Bool)

(assert (=> b!1016783 (=> (not res!682088) (not e!572067))))

(assert (=> b!1016783 (= res!682088 (is-Cons!21646 keys!40))))

(declare-fun b!1016784 () Bool)

(declare-fun tp!70811 () Bool)

(assert (=> b!1016784 (= e!572068 (and tp_is_empty!23611 tp!70811))))

(declare-fun b!1016785 () Bool)

(declare-fun ListPrimitiveSize!124 (List!21650) Int)

(assert (=> b!1016785 (= e!572066 (< (ListPrimitiveSize!124 (t!30659 keys!40)) (ListPrimitiveSize!124 keys!40)))))

(assert (= (and start!88274 res!682087) b!1016779))

(assert (= (and b!1016779 res!682085) b!1016782))

(assert (= (and b!1016782 res!682089) b!1016780))

(assert (= (and b!1016780 res!682084) b!1016783))

(assert (= (and b!1016783 res!682088) b!1016781))

(assert (= (and b!1016781 (not res!682086)) b!1016785))

(assert (= (and start!88274 (is-Cons!21645 l!1114)) b!1016784))

(declare-fun m!938465 () Bool)

(assert (=> b!1016780 m!938465))

(declare-fun m!938467 () Bool)

(assert (=> start!88274 m!938467))

(declare-fun m!938469 () Bool)

(assert (=> b!1016781 m!938469))

(declare-fun m!938471 () Bool)

(assert (=> b!1016781 m!938471))

(declare-fun m!938473 () Bool)

(assert (=> b!1016781 m!938473))

(declare-fun m!938475 () Bool)

(assert (=> b!1016781 m!938475))

(declare-fun m!938477 () Bool)

(assert (=> b!1016781 m!938477))

(assert (=> b!1016781 m!938473))

(declare-fun m!938479 () Bool)

(assert (=> b!1016781 m!938479))

(declare-fun m!938481 () Bool)

(assert (=> b!1016785 m!938481))

(declare-fun m!938483 () Bool)

(assert (=> b!1016785 m!938483))

(declare-fun m!938485 () Bool)

(assert (=> b!1016782 m!938485))

(declare-fun m!938487 () Bool)

(assert (=> b!1016779 m!938487))

(push 1)

(assert (not b!1016779))

(assert (not start!88274))

(assert (not b!1016781))

(assert tp_is_empty!23611)

(assert (not b!1016780))

(assert (not b!1016785))

(assert (not b!1016784))

(assert (not b!1016782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121379 () Bool)

(declare-fun res!682161 () Bool)

(declare-fun e!572132 () Bool)

(assert (=> d!121379 (=> res!682161 e!572132)))

(assert (=> d!121379 (= res!682161 (or (is-Nil!21646 l!1114) (is-Nil!21646 (t!30658 l!1114))))))

(assert (=> d!121379 (= (isStrictlySorted!620 l!1114) e!572132)))

(declare-fun b!1016895 () Bool)

(declare-fun e!572133 () Bool)

(assert (=> b!1016895 (= e!572132 e!572133)))

(declare-fun res!682162 () Bool)

(assert (=> b!1016895 (=> (not res!682162) (not e!572133))))

(assert (=> b!1016895 (= res!682162 (bvslt (_1!7684 (h!22843 l!1114)) (_1!7684 (h!22843 (t!30658 l!1114)))))))

(declare-fun b!1016896 () Bool)

(assert (=> b!1016896 (= e!572133 (isStrictlySorted!620 (t!30658 l!1114)))))

(assert (= (and d!121379 (not res!682161)) b!1016895))

(assert (= (and b!1016895 res!682162) b!1016896))

(declare-fun m!938559 () Bool)

(assert (=> b!1016896 m!938559))

(assert (=> start!88274 d!121379))

(declare-fun d!121387 () Bool)

(declare-fun res!682176 () Bool)

(declare-fun e!572147 () Bool)

(assert (=> d!121387 (=> res!682176 e!572147)))

(assert (=> d!121387 (= res!682176 (and (is-Cons!21645 l!1114) (= (_1!7684 (h!22843 l!1114)) (h!22844 keys!40))))))

(assert (=> d!121387 (= (containsKey!497 l!1114 (h!22844 keys!40)) e!572147)))

(declare-fun b!1016910 () Bool)

(declare-fun e!572148 () Bool)

(assert (=> b!1016910 (= e!572147 e!572148)))

(declare-fun res!682177 () Bool)

(assert (=> b!1016910 (=> (not res!682177) (not e!572148))))

(assert (=> b!1016910 (= res!682177 (and (or (not (is-Cons!21645 l!1114)) (bvsle (_1!7684 (h!22843 l!1114)) (h!22844 keys!40))) (is-Cons!21645 l!1114) (bvslt (_1!7684 (h!22843 l!1114)) (h!22844 keys!40))))))

(declare-fun b!1016911 () Bool)

(assert (=> b!1016911 (= e!572148 (containsKey!497 (t!30658 l!1114) (h!22844 keys!40)))))

(assert (= (and d!121387 (not res!682176)) b!1016910))

(assert (= (and b!1016910 res!682177) b!1016911))

(declare-fun m!938569 () Bool)

(assert (=> b!1016911 m!938569))

(assert (=> b!1016781 d!121387))

(declare-fun d!121393 () Bool)

(assert (=> d!121393 (isDefined!408 (getValueByKey!561 lt!449318 (h!22844 keys!40)))))

(declare-fun lt!449354 () Unit!33222)

(declare-fun choose!1666 (List!21649 (_ BitVec 64)) Unit!33222)

(assert (=> d!121393 (= lt!449354 (choose!1666 lt!449318 (h!22844 keys!40)))))

(declare-fun e!572161 () Bool)

(assert (=> d!121393 e!572161))

(declare-fun res!682186 () Bool)

(assert (=> d!121393 (=> (not res!682186) (not e!572161))))

(assert (=> d!121393 (= res!682186 (isStrictlySorted!620 lt!449318))))

(assert (=> d!121393 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!386 lt!449318 (h!22844 keys!40)) lt!449354)))

(declare-fun b!1016928 () Bool)

(assert (=> b!1016928 (= e!572161 (containsKey!497 lt!449318 (h!22844 keys!40)))))

(assert (= (and d!121393 res!682186) b!1016928))

(assert (=> d!121393 m!938473))

(assert (=> d!121393 m!938473))

(assert (=> d!121393 m!938475))

(declare-fun m!938581 () Bool)

(assert (=> d!121393 m!938581))

(declare-fun m!938583 () Bool)

(assert (=> d!121393 m!938583))

(declare-fun m!938585 () Bool)

(assert (=> b!1016928 m!938585))

(assert (=> b!1016781 d!121393))

(declare-fun b!1016955 () Bool)

(declare-fun e!572177 () Option!612)

(assert (=> b!1016955 (= e!572177 (getValueByKey!561 (t!30658 lt!449318) (h!22844 keys!40)))))

(declare-fun b!1016953 () Bool)

(declare-fun e!572176 () Option!612)

(assert (=> b!1016953 (= e!572176 (Some!611 (_2!7684 (h!22843 lt!449318))))))

(declare-fun b!1016956 () Bool)

(assert (=> b!1016956 (= e!572177 None!610)))

(declare-fun d!121403 () Bool)

(declare-fun c!102933 () Bool)

(assert (=> d!121403 (= c!102933 (and (is-Cons!21645 lt!449318) (= (_1!7684 (h!22843 lt!449318)) (h!22844 keys!40))))))

(assert (=> d!121403 (= (getValueByKey!561 lt!449318 (h!22844 keys!40)) e!572176)))

(declare-fun b!1016954 () Bool)

(assert (=> b!1016954 (= e!572176 e!572177)))

(declare-fun c!102934 () Bool)

(assert (=> b!1016954 (= c!102934 (and (is-Cons!21645 lt!449318) (not (= (_1!7684 (h!22843 lt!449318)) (h!22844 keys!40)))))))

(assert (= (and d!121403 c!102933) b!1016953))

(assert (= (and d!121403 (not c!102933)) b!1016954))

(assert (= (and b!1016954 c!102934) b!1016955))

(assert (= (and b!1016954 (not c!102934)) b!1016956))

(declare-fun m!938595 () Bool)

(assert (=> b!1016955 m!938595))

(assert (=> b!1016781 d!121403))

(declare-fun d!121411 () Bool)

(declare-fun isEmpty!900 (Option!612) Bool)

(assert (=> d!121411 (= (isDefined!408 (getValueByKey!561 lt!449318 (h!22844 keys!40))) (not (isEmpty!900 (getValueByKey!561 lt!449318 (h!22844 keys!40)))))))

(declare-fun bs!29539 () Bool)

(assert (= bs!29539 d!121411))

(assert (=> bs!29539 m!938473))

(declare-fun m!938597 () Bool)

(assert (=> bs!29539 m!938597))

(assert (=> b!1016781 d!121411))

(declare-fun d!121413 () Bool)

(declare-fun res!682194 () Bool)

(declare-fun e!572184 () Bool)

(assert (=> d!121413 (=> res!682194 e!572184)))

(assert (=> d!121413 (= res!682194 (is-Nil!21647 (t!30659 keys!40)))))

(assert (=> d!121413 (= (forall!289 (t!30659 keys!40) lambda!1045) e!572184)))

(declare-fun b!1016965 () Bool)

(declare-fun e!572185 () Bool)

(assert (=> b!1016965 (= e!572184 e!572185)))

(declare-fun res!682195 () Bool)

(assert (=> b!1016965 (=> (not res!682195) (not e!572185))))

(declare-fun dynLambda!1929 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016965 (= res!682195 (dynLambda!1929 lambda!1045 (h!22844 (t!30659 keys!40))))))

(declare-fun b!1016966 () Bool)

(assert (=> b!1016966 (= e!572185 (forall!289 (t!30659 (t!30659 keys!40)) lambda!1045))))

(assert (= (and d!121413 (not res!682194)) b!1016965))

(assert (= (and b!1016965 res!682195) b!1016966))

(declare-fun b_lambda!15597 () Bool)

(assert (=> (not b_lambda!15597) (not b!1016965)))

(declare-fun m!938603 () Bool)

(assert (=> b!1016965 m!938603))

(declare-fun m!938605 () Bool)

(assert (=> b!1016966 m!938605))

(assert (=> b!1016781 d!121413))

(declare-fun d!121419 () Bool)

(assert (=> d!121419 (containsKey!497 l!1114 (h!22844 keys!40))))

(declare-fun lt!449363 () Unit!33222)

(declare-fun choose!1667 (List!21649 (_ BitVec 64)) Unit!33222)

(assert (=> d!121419 (= lt!449363 (choose!1667 l!1114 (h!22844 keys!40)))))

(declare-fun e!572191 () Bool)

(assert (=> d!121419 e!572191))

(declare-fun res!682201 () Bool)

(assert (=> d!121419 (=> (not res!682201) (not e!572191))))

(assert (=> d!121419 (= res!682201 (isStrictlySorted!620 l!1114))))

(assert (=> d!121419 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!16 l!1114 (h!22844 keys!40)) lt!449363)))

(declare-fun b!1016972 () Bool)

(assert (=> b!1016972 (= e!572191 (isDefined!408 (getValueByKey!561 l!1114 (h!22844 keys!40))))))

(assert (= (and d!121419 res!682201) b!1016972))

(assert (=> d!121419 m!938471))

(declare-fun m!938613 () Bool)

(assert (=> d!121419 m!938613))

(assert (=> d!121419 m!938467))

(declare-fun m!938615 () Bool)

(assert (=> b!1016972 m!938615))

(assert (=> b!1016972 m!938615))

(declare-fun m!938617 () Bool)

(assert (=> b!1016972 m!938617))

(assert (=> b!1016781 d!121419))

(declare-fun d!121425 () Bool)

(assert (=> d!121425 (= (head!971 l!1114) (h!22843 l!1114))))

(assert (=> b!1016780 d!121425))

(declare-fun d!121427 () Bool)

(declare-fun lt!449366 () Int)

(assert (=> d!121427 (>= lt!449366 0)))

(declare-fun e!572197 () Int)

