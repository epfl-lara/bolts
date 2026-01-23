; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436538 () Bool)

(assert start!436538)

(declare-fun b!4455124 () Bool)

(declare-fun e!2774249 () Bool)

(declare-datatypes ((V!11574 0))(
  ( (V!11575 (val!17333 Int)) )
))
(declare-datatypes ((K!11328 0))(
  ( (K!11329 (val!17334 Int)) )
))
(declare-datatypes ((tuple2!49986 0))(
  ( (tuple2!49987 (_1!28287 K!11328) (_2!28287 V!11574)) )
))
(declare-datatypes ((List!50078 0))(
  ( (Nil!49954) (Cons!49954 (h!55699 tuple2!49986) (t!357028 List!50078)) )
))
(declare-datatypes ((tuple2!49988 0))(
  ( (tuple2!49989 (_1!28288 (_ BitVec 64)) (_2!28288 List!50078)) )
))
(declare-datatypes ((List!50079 0))(
  ( (Nil!49955) (Cons!49955 (h!55700 tuple2!49988) (t!357029 List!50079)) )
))
(declare-datatypes ((ListLongMap!2441 0))(
  ( (ListLongMap!2442 (toList!3787 List!50079)) )
))
(declare-fun lm!1837 () ListLongMap!2441)

(declare-fun noDuplicateKeys!890 (List!50078) Bool)

(assert (=> b!4455124 (= e!2774249 (noDuplicateKeys!890 (_2!28288 (h!55700 (toList!3787 lm!1837)))))))

(declare-fun res!1846670 () Bool)

(declare-fun e!2774246 () Bool)

(assert (=> start!436538 (=> (not res!1846670) (not e!2774246))))

(declare-fun lambda!160006 () Int)

(declare-fun forall!9807 (List!50079 Int) Bool)

(assert (=> start!436538 (= res!1846670 (forall!9807 (toList!3787 lm!1837) lambda!160006))))

(assert (=> start!436538 e!2774246))

(declare-fun e!2774247 () Bool)

(declare-fun inv!65515 (ListLongMap!2441) Bool)

(assert (=> start!436538 (and (inv!65515 lm!1837) e!2774247)))

(assert (=> start!436538 true))

(declare-fun tp_is_empty!26793 () Bool)

(assert (=> start!436538 tp_is_empty!26793))

(declare-fun b!4455125 () Bool)

(declare-fun res!1846669 () Bool)

(assert (=> b!4455125 (=> (not res!1846669) (not e!2774246))))

(declare-datatypes ((Hashable!5296 0))(
  ( (HashableExt!5295 (__x!30999 Int)) )
))
(declare-fun hashF!1304 () Hashable!5296)

(declare-fun allKeysSameHashInMap!1008 (ListLongMap!2441 Hashable!5296) Bool)

(assert (=> b!4455125 (= res!1846669 (allKeysSameHashInMap!1008 lm!1837 hashF!1304))))

(declare-fun b!4455126 () Bool)

(declare-fun tp!1334842 () Bool)

(assert (=> b!4455126 (= e!2774247 tp!1334842)))

(declare-fun b!4455127 () Bool)

(declare-fun e!2774248 () Bool)

(assert (=> b!4455127 (= e!2774246 e!2774248)))

(declare-fun res!1846674 () Bool)

(assert (=> b!4455127 (=> (not res!1846674) (not e!2774248))))

(declare-datatypes ((ListMap!3027 0))(
  ( (ListMap!3028 (toList!3788 List!50078)) )
))
(declare-fun lt!1646700 () ListMap!3027)

(declare-fun key!4369 () K!11328)

(declare-fun contains!12520 (ListMap!3027 K!11328) Bool)

(assert (=> b!4455127 (= res!1846674 (contains!12520 lt!1646700 key!4369))))

(declare-fun lt!1646699 () ListLongMap!2441)

(declare-fun extractMap!959 (List!50079) ListMap!3027)

(assert (=> b!4455127 (= lt!1646700 (extractMap!959 (toList!3787 lt!1646699)))))

(declare-fun tail!7470 (ListLongMap!2441) ListLongMap!2441)

(assert (=> b!4455127 (= lt!1646699 (tail!7470 lm!1837))))

(declare-fun b!4455128 () Bool)

(declare-fun res!1846668 () Bool)

(assert (=> b!4455128 (=> (not res!1846668) (not e!2774248))))

(assert (=> b!4455128 (= res!1846668 (is-Cons!49955 (toList!3787 lm!1837)))))

(declare-fun b!4455129 () Bool)

(declare-fun res!1846673 () Bool)

(assert (=> b!4455129 (=> (not res!1846673) (not e!2774246))))

(declare-fun isEmpty!28450 (List!50079) Bool)

(assert (=> b!4455129 (= res!1846673 (not (isEmpty!28450 (toList!3787 lm!1837))))))

(declare-fun b!4455130 () Bool)

(declare-fun res!1846671 () Bool)

(assert (=> b!4455130 (=> res!1846671 e!2774249)))

(assert (=> b!4455130 (= res!1846671 (not (allKeysSameHashInMap!1008 lt!1646699 hashF!1304)))))

(declare-fun b!4455131 () Bool)

(assert (=> b!4455131 (= e!2774248 (not e!2774249))))

(declare-fun res!1846672 () Bool)

(assert (=> b!4455131 (=> res!1846672 e!2774249)))

(assert (=> b!4455131 (= res!1846672 (not (forall!9807 (toList!3787 lt!1646699) lambda!160006)))))

(declare-fun addToMapMapFromBucket!490 (List!50078 ListMap!3027) ListMap!3027)

(assert (=> b!4455131 (= (extractMap!959 (toList!3787 lm!1837)) (addToMapMapFromBucket!490 (_2!28288 (h!55700 (toList!3787 lm!1837))) lt!1646700))))

(assert (= (and start!436538 res!1846670) b!4455125))

(assert (= (and b!4455125 res!1846669) b!4455129))

(assert (= (and b!4455129 res!1846673) b!4455127))

(assert (= (and b!4455127 res!1846674) b!4455128))

(assert (= (and b!4455128 res!1846668) b!4455131))

(assert (= (and b!4455131 (not res!1846672)) b!4455130))

(assert (= (and b!4455130 (not res!1846671)) b!4455124))

(assert (= start!436538 b!4455126))

(declare-fun m!5156643 () Bool)

(assert (=> b!4455130 m!5156643))

(declare-fun m!5156645 () Bool)

(assert (=> b!4455125 m!5156645))

(declare-fun m!5156647 () Bool)

(assert (=> start!436538 m!5156647))

(declare-fun m!5156649 () Bool)

(assert (=> start!436538 m!5156649))

(declare-fun m!5156651 () Bool)

(assert (=> b!4455127 m!5156651))

(declare-fun m!5156653 () Bool)

(assert (=> b!4455127 m!5156653))

(declare-fun m!5156655 () Bool)

(assert (=> b!4455127 m!5156655))

(declare-fun m!5156657 () Bool)

(assert (=> b!4455129 m!5156657))

(declare-fun m!5156659 () Bool)

(assert (=> b!4455124 m!5156659))

(declare-fun m!5156661 () Bool)

(assert (=> b!4455131 m!5156661))

(declare-fun m!5156663 () Bool)

(assert (=> b!4455131 m!5156663))

(declare-fun m!5156665 () Bool)

(assert (=> b!4455131 m!5156665))

(push 1)

(assert (not b!4455126))

(assert tp_is_empty!26793)

(assert (not b!4455129))

(assert (not b!4455127))

(assert (not b!4455125))

(assert (not b!4455131))

(assert (not b!4455130))

(assert (not b!4455124))

(assert (not start!436538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359142 () Bool)

(declare-fun res!1846700 () Bool)

(declare-fun e!2774266 () Bool)

(assert (=> d!1359142 (=> res!1846700 e!2774266)))

(assert (=> d!1359142 (= res!1846700 (not (is-Cons!49954 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(assert (=> d!1359142 (= (noDuplicateKeys!890 (_2!28288 (h!55700 (toList!3787 lm!1837)))) e!2774266)))

(declare-fun b!4455160 () Bool)

(declare-fun e!2774267 () Bool)

(assert (=> b!4455160 (= e!2774266 e!2774267)))

(declare-fun res!1846701 () Bool)

(assert (=> b!4455160 (=> (not res!1846701) (not e!2774267))))

(declare-fun containsKey!1314 (List!50078 K!11328) Bool)

(assert (=> b!4455160 (= res!1846701 (not (containsKey!1314 (t!357028 (_2!28288 (h!55700 (toList!3787 lm!1837)))) (_1!28287 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))))

(declare-fun b!4455161 () Bool)

(assert (=> b!4455161 (= e!2774267 (noDuplicateKeys!890 (t!357028 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(assert (= (and d!1359142 (not res!1846700)) b!4455160))

(assert (= (and b!4455160 res!1846701) b!4455161))

(declare-fun m!5156691 () Bool)

(assert (=> b!4455160 m!5156691))

(declare-fun m!5156693 () Bool)

(assert (=> b!4455161 m!5156693))

(assert (=> b!4455124 d!1359142))

(declare-fun d!1359144 () Bool)

(assert (=> d!1359144 (= (isEmpty!28450 (toList!3787 lm!1837)) (is-Nil!49955 (toList!3787 lm!1837)))))

(assert (=> b!4455129 d!1359144))

(declare-fun bs!790717 () Bool)

(declare-fun d!1359148 () Bool)

(assert (= bs!790717 (and d!1359148 start!436538)))

(declare-fun lambda!160014 () Int)

(assert (=> bs!790717 (not (= lambda!160014 lambda!160006))))

(assert (=> d!1359148 true))

(assert (=> d!1359148 (= (allKeysSameHashInMap!1008 lt!1646699 hashF!1304) (forall!9807 (toList!3787 lt!1646699) lambda!160014))))

(declare-fun bs!790718 () Bool)

(assert (= bs!790718 d!1359148))

(declare-fun m!5156695 () Bool)

(assert (=> bs!790718 m!5156695))

(assert (=> b!4455130 d!1359148))

(declare-fun bs!790719 () Bool)

(declare-fun d!1359150 () Bool)

(assert (= bs!790719 (and d!1359150 start!436538)))

(declare-fun lambda!160015 () Int)

(assert (=> bs!790719 (not (= lambda!160015 lambda!160006))))

(declare-fun bs!790720 () Bool)

(assert (= bs!790720 (and d!1359150 d!1359148)))

(assert (=> bs!790720 (= lambda!160015 lambda!160014)))

(assert (=> d!1359150 true))

(assert (=> d!1359150 (= (allKeysSameHashInMap!1008 lm!1837 hashF!1304) (forall!9807 (toList!3787 lm!1837) lambda!160015))))

(declare-fun bs!790721 () Bool)

(assert (= bs!790721 d!1359150))

(declare-fun m!5156697 () Bool)

(assert (=> bs!790721 m!5156697))

(assert (=> b!4455125 d!1359150))

(declare-fun d!1359152 () Bool)

(declare-fun res!1846706 () Bool)

(declare-fun e!2774272 () Bool)

(assert (=> d!1359152 (=> res!1846706 e!2774272)))

(assert (=> d!1359152 (= res!1846706 (is-Nil!49955 (toList!3787 lm!1837)))))

(assert (=> d!1359152 (= (forall!9807 (toList!3787 lm!1837) lambda!160006) e!2774272)))

(declare-fun b!4455168 () Bool)

(declare-fun e!2774273 () Bool)

(assert (=> b!4455168 (= e!2774272 e!2774273)))

(declare-fun res!1846707 () Bool)

(assert (=> b!4455168 (=> (not res!1846707) (not e!2774273))))

(declare-fun dynLambda!20962 (Int tuple2!49988) Bool)

(assert (=> b!4455168 (= res!1846707 (dynLambda!20962 lambda!160006 (h!55700 (toList!3787 lm!1837))))))

(declare-fun b!4455169 () Bool)

(assert (=> b!4455169 (= e!2774273 (forall!9807 (t!357029 (toList!3787 lm!1837)) lambda!160006))))

(assert (= (and d!1359152 (not res!1846706)) b!4455168))

(assert (= (and b!4455168 res!1846707) b!4455169))

(declare-fun b_lambda!147629 () Bool)

(assert (=> (not b_lambda!147629) (not b!4455168)))

(declare-fun m!5156699 () Bool)

(assert (=> b!4455168 m!5156699))

(declare-fun m!5156701 () Bool)

(assert (=> b!4455169 m!5156701))

(assert (=> start!436538 d!1359152))

(declare-fun d!1359154 () Bool)

(declare-fun isStrictlySorted!299 (List!50079) Bool)

(assert (=> d!1359154 (= (inv!65515 lm!1837) (isStrictlySorted!299 (toList!3787 lm!1837)))))

(declare-fun bs!790722 () Bool)

(assert (= bs!790722 d!1359154))

(declare-fun m!5156703 () Bool)

(assert (=> bs!790722 m!5156703))

(assert (=> start!436538 d!1359154))

(declare-fun d!1359156 () Bool)

(declare-fun res!1846708 () Bool)

(declare-fun e!2774274 () Bool)

(assert (=> d!1359156 (=> res!1846708 e!2774274)))

(assert (=> d!1359156 (= res!1846708 (is-Nil!49955 (toList!3787 lt!1646699)))))

(assert (=> d!1359156 (= (forall!9807 (toList!3787 lt!1646699) lambda!160006) e!2774274)))

(declare-fun b!4455170 () Bool)

(declare-fun e!2774275 () Bool)

(assert (=> b!4455170 (= e!2774274 e!2774275)))

(declare-fun res!1846709 () Bool)

(assert (=> b!4455170 (=> (not res!1846709) (not e!2774275))))

(assert (=> b!4455170 (= res!1846709 (dynLambda!20962 lambda!160006 (h!55700 (toList!3787 lt!1646699))))))

(declare-fun b!4455171 () Bool)

(assert (=> b!4455171 (= e!2774275 (forall!9807 (t!357029 (toList!3787 lt!1646699)) lambda!160006))))

(assert (= (and d!1359156 (not res!1846708)) b!4455170))

(assert (= (and b!4455170 res!1846709) b!4455171))

(declare-fun b_lambda!147631 () Bool)

(assert (=> (not b_lambda!147631) (not b!4455170)))

(declare-fun m!5156705 () Bool)

(assert (=> b!4455170 m!5156705))

(declare-fun m!5156707 () Bool)

(assert (=> b!4455171 m!5156707))

(assert (=> b!4455131 d!1359156))

(declare-fun bs!790728 () Bool)

(declare-fun d!1359158 () Bool)

(assert (= bs!790728 (and d!1359158 start!436538)))

(declare-fun lambda!160022 () Int)

(assert (=> bs!790728 (= lambda!160022 lambda!160006)))

(declare-fun bs!790729 () Bool)

(assert (= bs!790729 (and d!1359158 d!1359148)))

(assert (=> bs!790729 (not (= lambda!160022 lambda!160014))))

(declare-fun bs!790731 () Bool)

(assert (= bs!790731 (and d!1359158 d!1359150)))

(assert (=> bs!790731 (not (= lambda!160022 lambda!160015))))

(declare-fun lt!1646709 () ListMap!3027)

(declare-fun invariantList!871 (List!50078) Bool)

(assert (=> d!1359158 (invariantList!871 (toList!3788 lt!1646709))))

(declare-fun e!2774284 () ListMap!3027)

(assert (=> d!1359158 (= lt!1646709 e!2774284)))

(declare-fun c!758441 () Bool)

(assert (=> d!1359158 (= c!758441 (is-Cons!49955 (toList!3787 lm!1837)))))

(assert (=> d!1359158 (forall!9807 (toList!3787 lm!1837) lambda!160022)))

(assert (=> d!1359158 (= (extractMap!959 (toList!3787 lm!1837)) lt!1646709)))

(declare-fun b!4455184 () Bool)

(assert (=> b!4455184 (= e!2774284 (addToMapMapFromBucket!490 (_2!28288 (h!55700 (toList!3787 lm!1837))) (extractMap!959 (t!357029 (toList!3787 lm!1837)))))))

(declare-fun b!4455185 () Bool)

(assert (=> b!4455185 (= e!2774284 (ListMap!3028 Nil!49954))))

(assert (= (and d!1359158 c!758441) b!4455184))

(assert (= (and d!1359158 (not c!758441)) b!4455185))

(declare-fun m!5156719 () Bool)

(assert (=> d!1359158 m!5156719))

(declare-fun m!5156721 () Bool)

(assert (=> d!1359158 m!5156721))

(declare-fun m!5156723 () Bool)

(assert (=> b!4455184 m!5156723))

(assert (=> b!4455184 m!5156723))

(declare-fun m!5156725 () Bool)

(assert (=> b!4455184 m!5156725))

(assert (=> b!4455131 d!1359158))

(declare-fun b!4455204 () Bool)

(assert (=> b!4455204 true))

(declare-fun bs!790735 () Bool)

(declare-fun b!4455206 () Bool)

(assert (= bs!790735 (and b!4455206 b!4455204)))

(declare-fun lambda!160055 () Int)

(declare-fun lambda!160054 () Int)

(assert (=> bs!790735 (= lambda!160055 lambda!160054)))

(assert (=> b!4455206 true))

(declare-fun lt!1646761 () ListMap!3027)

(declare-fun lambda!160056 () Int)

(assert (=> bs!790735 (= (= lt!1646761 lt!1646700) (= lambda!160056 lambda!160054))))

(assert (=> b!4455206 (= (= lt!1646761 lt!1646700) (= lambda!160056 lambda!160055))))

(assert (=> b!4455206 true))

(declare-fun bs!790736 () Bool)

(declare-fun d!1359168 () Bool)

(assert (= bs!790736 (and d!1359168 b!4455204)))

(declare-fun lt!1646756 () ListMap!3027)

(declare-fun lambda!160057 () Int)

(assert (=> bs!790736 (= (= lt!1646756 lt!1646700) (= lambda!160057 lambda!160054))))

(declare-fun bs!790737 () Bool)

(assert (= bs!790737 (and d!1359168 b!4455206)))

(assert (=> bs!790737 (= (= lt!1646756 lt!1646700) (= lambda!160057 lambda!160055))))

(assert (=> bs!790737 (= (= lt!1646756 lt!1646761) (= lambda!160057 lambda!160056))))

(assert (=> d!1359168 true))

(declare-fun e!2774296 () ListMap!3027)

(assert (=> b!4455204 (= e!2774296 lt!1646700)))

(declare-datatypes ((Unit!85961 0))(
  ( (Unit!85962) )
))
(declare-fun lt!1646757 () Unit!85961)

(declare-fun call!310055 () Unit!85961)

(assert (=> b!4455204 (= lt!1646757 call!310055)))

(declare-fun call!310053 () Bool)

(assert (=> b!4455204 call!310053))

(declare-fun lt!1646771 () Unit!85961)

(assert (=> b!4455204 (= lt!1646771 lt!1646757)))

(declare-fun call!310054 () Bool)

(assert (=> b!4455204 call!310054))

(declare-fun lt!1646772 () Unit!85961)

(declare-fun Unit!85963 () Unit!85961)

(assert (=> b!4455204 (= lt!1646772 Unit!85963)))

(declare-fun b!4455205 () Bool)

(declare-fun res!1846725 () Bool)

(declare-fun e!2774297 () Bool)

(assert (=> b!4455205 (=> (not res!1846725) (not e!2774297))))

(declare-fun forall!9809 (List!50078 Int) Bool)

(assert (=> b!4455205 (= res!1846725 (forall!9809 (toList!3788 lt!1646700) lambda!160057))))

(assert (=> b!4455206 (= e!2774296 lt!1646761)))

(declare-fun lt!1646768 () ListMap!3027)

(declare-fun +!1281 (ListMap!3027 tuple2!49986) ListMap!3027)

(assert (=> b!4455206 (= lt!1646768 (+!1281 lt!1646700 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(assert (=> b!4455206 (= lt!1646761 (addToMapMapFromBucket!490 (t!357028 (_2!28288 (h!55700 (toList!3787 lm!1837)))) (+!1281 lt!1646700 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837)))))))))

(declare-fun lt!1646770 () Unit!85961)

(assert (=> b!4455206 (= lt!1646770 call!310055)))

(assert (=> b!4455206 (forall!9809 (toList!3788 lt!1646700) lambda!160055)))

(declare-fun lt!1646758 () Unit!85961)

(assert (=> b!4455206 (= lt!1646758 lt!1646770)))

(assert (=> b!4455206 call!310054))

(declare-fun lt!1646762 () Unit!85961)

(declare-fun Unit!85964 () Unit!85961)

(assert (=> b!4455206 (= lt!1646762 Unit!85964)))

(assert (=> b!4455206 (forall!9809 (t!357028 (_2!28288 (h!55700 (toList!3787 lm!1837)))) lambda!160056)))

(declare-fun lt!1646769 () Unit!85961)

(declare-fun Unit!85965 () Unit!85961)

(assert (=> b!4455206 (= lt!1646769 Unit!85965)))

(declare-fun lt!1646773 () Unit!85961)

(declare-fun Unit!85966 () Unit!85961)

(assert (=> b!4455206 (= lt!1646773 Unit!85966)))

(declare-fun lt!1646767 () Unit!85961)

(declare-fun forallContained!2174 (List!50078 Int tuple2!49986) Unit!85961)

(assert (=> b!4455206 (= lt!1646767 (forallContained!2174 (toList!3788 lt!1646768) lambda!160056 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(assert (=> b!4455206 (contains!12520 lt!1646768 (_1!28287 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(declare-fun lt!1646760 () Unit!85961)

(declare-fun Unit!85967 () Unit!85961)

(assert (=> b!4455206 (= lt!1646760 Unit!85967)))

(assert (=> b!4455206 (contains!12520 lt!1646761 (_1!28287 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))))))

(declare-fun lt!1646765 () Unit!85961)

(declare-fun Unit!85968 () Unit!85961)

(assert (=> b!4455206 (= lt!1646765 Unit!85968)))

(assert (=> b!4455206 (forall!9809 (_2!28288 (h!55700 (toList!3787 lm!1837))) lambda!160056)))

(declare-fun lt!1646775 () Unit!85961)

(declare-fun Unit!85969 () Unit!85961)

(assert (=> b!4455206 (= lt!1646775 Unit!85969)))

(assert (=> b!4455206 (forall!9809 (toList!3788 lt!1646768) lambda!160056)))

(declare-fun lt!1646774 () Unit!85961)

(declare-fun Unit!85970 () Unit!85961)

(assert (=> b!4455206 (= lt!1646774 Unit!85970)))

(declare-fun lt!1646755 () Unit!85961)

(declare-fun Unit!85971 () Unit!85961)

(assert (=> b!4455206 (= lt!1646755 Unit!85971)))

(declare-fun lt!1646766 () Unit!85961)

(declare-fun addForallContainsKeyThenBeforeAdding!224 (ListMap!3027 ListMap!3027 K!11328 V!11574) Unit!85961)

(assert (=> b!4455206 (= lt!1646766 (addForallContainsKeyThenBeforeAdding!224 lt!1646700 lt!1646761 (_1!28287 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837))))) (_2!28287 (h!55699 (_2!28288 (h!55700 (toList!3787 lm!1837)))))))))

(assert (=> b!4455206 (forall!9809 (toList!3788 lt!1646700) lambda!160056)))

(declare-fun lt!1646759 () Unit!85961)

(assert (=> b!4455206 (= lt!1646759 lt!1646766)))

(assert (=> b!4455206 (forall!9809 (toList!3788 lt!1646700) lambda!160056)))

(declare-fun lt!1646764 () Unit!85961)

(declare-fun Unit!85972 () Unit!85961)

(assert (=> b!4455206 (= lt!1646764 Unit!85972)))

(declare-fun res!1846724 () Bool)

(assert (=> b!4455206 (= res!1846724 (forall!9809 (_2!28288 (h!55700 (toList!3787 lm!1837))) lambda!160056))))

(declare-fun e!2774298 () Bool)

(assert (=> b!4455206 (=> (not res!1846724) (not e!2774298))))

(assert (=> b!4455206 e!2774298))

(declare-fun lt!1646763 () Unit!85961)

(declare-fun Unit!85973 () Unit!85961)

(assert (=> b!4455206 (= lt!1646763 Unit!85973)))

(declare-fun bm!310048 () Bool)

(declare-fun c!758447 () Bool)

(assert (=> bm!310048 (= call!310054 (forall!9809 (ite c!758447 (toList!3788 lt!1646700) (toList!3788 lt!1646768)) (ite c!758447 lambda!160054 lambda!160056)))))

(assert (=> d!1359168 e!2774297))

(declare-fun res!1846726 () Bool)

(assert (=> d!1359168 (=> (not res!1846726) (not e!2774297))))

(assert (=> d!1359168 (= res!1846726 (forall!9809 (_2!28288 (h!55700 (toList!3787 lm!1837))) lambda!160057))))

(assert (=> d!1359168 (= lt!1646756 e!2774296)))

(assert (=> d!1359168 (= c!758447 (is-Nil!49954 (_2!28288 (h!55700 (toList!3787 lm!1837)))))))

(assert (=> d!1359168 (noDuplicateKeys!890 (_2!28288 (h!55700 (toList!3787 lm!1837))))))

(assert (=> d!1359168 (= (addToMapMapFromBucket!490 (_2!28288 (h!55700 (toList!3787 lm!1837))) lt!1646700) lt!1646756)))

(declare-fun bm!310049 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!224 (ListMap!3027) Unit!85961)

(assert (=> bm!310049 (= call!310055 (lemmaContainsAllItsOwnKeys!224 lt!1646700))))

(declare-fun b!4455207 () Bool)

(assert (=> b!4455207 (= e!2774298 call!310053)))

(declare-fun bm!310050 () Bool)

(assert (=> bm!310050 (= call!310053 (forall!9809 (toList!3788 lt!1646700) (ite c!758447 lambda!160054 lambda!160056)))))

(declare-fun b!4455208 () Bool)

(assert (=> b!4455208 (= e!2774297 (invariantList!871 (toList!3788 lt!1646756)))))

(assert (= (and d!1359168 c!758447) b!4455204))

(assert (= (and d!1359168 (not c!758447)) b!4455206))

(assert (= (and b!4455206 res!1846724) b!4455207))

(assert (= (or b!4455204 b!4455207) bm!310050))

(assert (= (or b!4455204 b!4455206) bm!310048))

(assert (= (or b!4455204 b!4455206) bm!310049))

(assert (= (and d!1359168 res!1846726) b!4455205))

(assert (= (and b!4455205 res!1846725) b!4455208))

(declare-fun m!5156739 () Bool)

(assert (=> bm!310049 m!5156739))

(declare-fun m!5156741 () Bool)

(assert (=> b!4455205 m!5156741))

(declare-fun m!5156743 () Bool)

(assert (=> b!4455206 m!5156743))

(declare-fun m!5156745 () Bool)

(assert (=> b!4455206 m!5156745))

(declare-fun m!5156747 () Bool)

(assert (=> b!4455206 m!5156747))

(declare-fun m!5156749 () Bool)

(assert (=> b!4455206 m!5156749))

(declare-fun m!5156751 () Bool)

(assert (=> b!4455206 m!5156751))

(declare-fun m!5156753 () Bool)

(assert (=> b!4455206 m!5156753))

(assert (=> b!4455206 m!5156753))

(declare-fun m!5156755 () Bool)

(assert (=> b!4455206 m!5156755))

(declare-fun m!5156757 () Bool)

(assert (=> b!4455206 m!5156757))

(declare-fun m!5156759 () Bool)

(assert (=> b!4455206 m!5156759))

(assert (=> b!4455206 m!5156755))

(assert (=> b!4455206 m!5156743))

(declare-fun m!5156761 () Bool)

(assert (=> b!4455206 m!5156761))

(declare-fun m!5156763 () Bool)

(assert (=> b!4455206 m!5156763))

(declare-fun m!5156765 () Bool)

(assert (=> b!4455208 m!5156765))

(declare-fun m!5156767 () Bool)

(assert (=> bm!310048 m!5156767))

(declare-fun m!5156769 () Bool)

(assert (=> bm!310050 m!5156769))

(declare-fun m!5156771 () Bool)

(assert (=> d!1359168 m!5156771))

(assert (=> d!1359168 m!5156659))

(assert (=> b!4455131 d!1359168))

(declare-fun b!4455229 () Bool)

(declare-datatypes ((List!50082 0))(
  ( (Nil!49958) (Cons!49958 (h!55703 K!11328) (t!357032 List!50082)) )
))
(declare-fun e!2774315 () List!50082)

(declare-fun getKeysList!318 (List!50078) List!50082)

(assert (=> b!4455229 (= e!2774315 (getKeysList!318 (toList!3788 lt!1646700)))))

(declare-fun bm!310053 () Bool)

(declare-fun call!310058 () Bool)

(declare-fun contains!12522 (List!50082 K!11328) Bool)

(assert (=> bm!310053 (= call!310058 (contains!12522 e!2774315 key!4369))))

(declare-fun c!758454 () Bool)

(declare-fun c!758456 () Bool)

(assert (=> bm!310053 (= c!758454 c!758456)))

(declare-fun b!4455231 () Bool)

(assert (=> b!4455231 false))

(declare-fun lt!1646797 () Unit!85961)

(declare-fun lt!1646795 () Unit!85961)

(assert (=> b!4455231 (= lt!1646797 lt!1646795)))

(declare-fun containsKey!1315 (List!50078 K!11328) Bool)

(assert (=> b!4455231 (containsKey!1315 (toList!3788 lt!1646700) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!316 (List!50078 K!11328) Unit!85961)

(assert (=> b!4455231 (= lt!1646795 (lemmaInGetKeysListThenContainsKey!316 (toList!3788 lt!1646700) key!4369))))

(declare-fun e!2774311 () Unit!85961)

(declare-fun Unit!85974 () Unit!85961)

(assert (=> b!4455231 (= e!2774311 Unit!85974)))

(declare-fun b!4455232 () Bool)

(declare-fun e!2774314 () Unit!85961)

(assert (=> b!4455232 (= e!2774314 e!2774311)))

(declare-fun c!758455 () Bool)

(assert (=> b!4455232 (= c!758455 call!310058)))

(declare-fun b!4455233 () Bool)

(declare-fun e!2774316 () Bool)

(declare-fun keys!17156 (ListMap!3027) List!50082)

(assert (=> b!4455233 (= e!2774316 (contains!12522 (keys!17156 lt!1646700) key!4369))))

(declare-fun b!4455234 () Bool)

(declare-fun lt!1646799 () Unit!85961)

(assert (=> b!4455234 (= e!2774314 lt!1646799)))

(declare-fun lt!1646798 () Unit!85961)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!740 (List!50078 K!11328) Unit!85961)

(assert (=> b!4455234 (= lt!1646798 (lemmaContainsKeyImpliesGetValueByKeyDefined!740 (toList!3788 lt!1646700) key!4369))))

(declare-datatypes ((Option!10850 0))(
  ( (None!10849) (Some!10849 (v!44107 V!11574)) )
))
(declare-fun isDefined!8138 (Option!10850) Bool)

(declare-fun getValueByKey!836 (List!50078 K!11328) Option!10850)

(assert (=> b!4455234 (isDefined!8138 (getValueByKey!836 (toList!3788 lt!1646700) key!4369))))

(declare-fun lt!1646796 () Unit!85961)

(assert (=> b!4455234 (= lt!1646796 lt!1646798)))

(declare-fun lemmaInListThenGetKeysListContains!314 (List!50078 K!11328) Unit!85961)

(assert (=> b!4455234 (= lt!1646799 (lemmaInListThenGetKeysListContains!314 (toList!3788 lt!1646700) key!4369))))

(assert (=> b!4455234 call!310058))

(declare-fun b!4455235 () Bool)

(assert (=> b!4455235 (= e!2774315 (keys!17156 lt!1646700))))

(declare-fun d!1359174 () Bool)

(declare-fun e!2774313 () Bool)

(assert (=> d!1359174 e!2774313))

(declare-fun res!1846733 () Bool)

(assert (=> d!1359174 (=> res!1846733 e!2774313)))

(declare-fun e!2774312 () Bool)

(assert (=> d!1359174 (= res!1846733 e!2774312)))

(declare-fun res!1846735 () Bool)

(assert (=> d!1359174 (=> (not res!1846735) (not e!2774312))))

(declare-fun lt!1646793 () Bool)

(assert (=> d!1359174 (= res!1846735 (not lt!1646793))))

(declare-fun lt!1646794 () Bool)

(assert (=> d!1359174 (= lt!1646793 lt!1646794)))

(declare-fun lt!1646792 () Unit!85961)

(assert (=> d!1359174 (= lt!1646792 e!2774314)))

(assert (=> d!1359174 (= c!758456 lt!1646794)))

(assert (=> d!1359174 (= lt!1646794 (containsKey!1315 (toList!3788 lt!1646700) key!4369))))

(assert (=> d!1359174 (= (contains!12520 lt!1646700 key!4369) lt!1646793)))

(declare-fun b!4455230 () Bool)

(assert (=> b!4455230 (= e!2774313 e!2774316)))

(declare-fun res!1846734 () Bool)

(assert (=> b!4455230 (=> (not res!1846734) (not e!2774316))))

(assert (=> b!4455230 (= res!1846734 (isDefined!8138 (getValueByKey!836 (toList!3788 lt!1646700) key!4369)))))

(declare-fun b!4455236 () Bool)

(assert (=> b!4455236 (= e!2774312 (not (contains!12522 (keys!17156 lt!1646700) key!4369)))))

(declare-fun b!4455237 () Bool)

(declare-fun Unit!85975 () Unit!85961)

(assert (=> b!4455237 (= e!2774311 Unit!85975)))

(assert (= (and d!1359174 c!758456) b!4455234))

(assert (= (and d!1359174 (not c!758456)) b!4455232))

(assert (= (and b!4455232 c!758455) b!4455231))

(assert (= (and b!4455232 (not c!758455)) b!4455237))

(assert (= (or b!4455234 b!4455232) bm!310053))

(assert (= (and bm!310053 c!758454) b!4455229))

(assert (= (and bm!310053 (not c!758454)) b!4455235))

(assert (= (and d!1359174 res!1846735) b!4455236))

(assert (= (and d!1359174 (not res!1846733)) b!4455230))

(assert (= (and b!4455230 res!1846734) b!4455233))

(declare-fun m!5156773 () Bool)

(assert (=> b!4455235 m!5156773))

(declare-fun m!5156775 () Bool)

(assert (=> bm!310053 m!5156775))

(declare-fun m!5156777 () Bool)

(assert (=> b!4455234 m!5156777))

(declare-fun m!5156779 () Bool)

(assert (=> b!4455234 m!5156779))

(assert (=> b!4455234 m!5156779))

(declare-fun m!5156781 () Bool)

(assert (=> b!4455234 m!5156781))

(declare-fun m!5156783 () Bool)

(assert (=> b!4455234 m!5156783))

(declare-fun m!5156785 () Bool)

(assert (=> b!4455229 m!5156785))

(declare-fun m!5156787 () Bool)

(assert (=> b!4455231 m!5156787))

(declare-fun m!5156789 () Bool)

(assert (=> b!4455231 m!5156789))

(assert (=> d!1359174 m!5156787))

(assert (=> b!4455230 m!5156779))

(assert (=> b!4455230 m!5156779))

(assert (=> b!4455230 m!5156781))

(assert (=> b!4455233 m!5156773))

(assert (=> b!4455233 m!5156773))

(declare-fun m!5156791 () Bool)

(assert (=> b!4455233 m!5156791))

(assert (=> b!4455236 m!5156773))

(assert (=> b!4455236 m!5156773))

(assert (=> b!4455236 m!5156791))

(assert (=> b!4455127 d!1359174))

(declare-fun bs!790738 () Bool)

(declare-fun d!1359176 () Bool)

(assert (= bs!790738 (and d!1359176 start!436538)))

(declare-fun lambda!160058 () Int)

(assert (=> bs!790738 (= lambda!160058 lambda!160006)))

(declare-fun bs!790739 () Bool)

(assert (= bs!790739 (and d!1359176 d!1359148)))

(assert (=> bs!790739 (not (= lambda!160058 lambda!160014))))

(declare-fun bs!790740 () Bool)

(assert (= bs!790740 (and d!1359176 d!1359150)))

(assert (=> bs!790740 (not (= lambda!160058 lambda!160015))))

(declare-fun bs!790741 () Bool)

(assert (= bs!790741 (and d!1359176 d!1359158)))

(assert (=> bs!790741 (= lambda!160058 lambda!160022)))

(declare-fun lt!1646800 () ListMap!3027)

(assert (=> d!1359176 (invariantList!871 (toList!3788 lt!1646800))))

(declare-fun e!2774317 () ListMap!3027)

(assert (=> d!1359176 (= lt!1646800 e!2774317)))

(declare-fun c!758457 () Bool)

(assert (=> d!1359176 (= c!758457 (is-Cons!49955 (toList!3787 lt!1646699)))))

(assert (=> d!1359176 (forall!9807 (toList!3787 lt!1646699) lambda!160058)))

(assert (=> d!1359176 (= (extractMap!959 (toList!3787 lt!1646699)) lt!1646800)))

(declare-fun b!4455238 () Bool)

(assert (=> b!4455238 (= e!2774317 (addToMapMapFromBucket!490 (_2!28288 (h!55700 (toList!3787 lt!1646699))) (extractMap!959 (t!357029 (toList!3787 lt!1646699)))))))

(declare-fun b!4455239 () Bool)

(assert (=> b!4455239 (= e!2774317 (ListMap!3028 Nil!49954))))

(assert (= (and d!1359176 c!758457) b!4455238))

(assert (= (and d!1359176 (not c!758457)) b!4455239))

(declare-fun m!5156793 () Bool)

(assert (=> d!1359176 m!5156793))

(declare-fun m!5156795 () Bool)

(assert (=> d!1359176 m!5156795))

(declare-fun m!5156797 () Bool)

(assert (=> b!4455238 m!5156797))

(assert (=> b!4455238 m!5156797))

(declare-fun m!5156799 () Bool)

(assert (=> b!4455238 m!5156799))

(assert (=> b!4455127 d!1359176))

(declare-fun d!1359178 () Bool)

(declare-fun tail!7472 (List!50079) List!50079)

(assert (=> d!1359178 (= (tail!7470 lm!1837) (ListLongMap!2442 (tail!7472 (toList!3787 lm!1837))))))

(declare-fun bs!790742 () Bool)

(assert (= bs!790742 d!1359178))

(declare-fun m!5156801 () Bool)

(assert (=> bs!790742 m!5156801))

(assert (=> b!4455127 d!1359178))

(declare-fun b!4455244 () Bool)

(declare-fun e!2774320 () Bool)

(declare-fun tp!1334850 () Bool)

(declare-fun tp!1334851 () Bool)

(assert (=> b!4455244 (= e!2774320 (and tp!1334850 tp!1334851))))

(assert (=> b!4455126 (= tp!1334842 e!2774320)))

(assert (= (and b!4455126 (is-Cons!49955 (toList!3787 lm!1837))) b!4455244))

(declare-fun b_lambda!147637 () Bool)

(assert (= b_lambda!147629 (or start!436538 b_lambda!147637)))

(declare-fun bs!790743 () Bool)

(declare-fun d!1359180 () Bool)

(assert (= bs!790743 (and d!1359180 start!436538)))

(assert (=> bs!790743 (= (dynLambda!20962 lambda!160006 (h!55700 (toList!3787 lm!1837))) (noDuplicateKeys!890 (_2!28288 (h!55700 (toList!3787 lm!1837)))))))

(assert (=> bs!790743 m!5156659))

(assert (=> b!4455168 d!1359180))

(declare-fun b_lambda!147639 () Bool)

(assert (= b_lambda!147631 (or start!436538 b_lambda!147639)))

(declare-fun bs!790744 () Bool)

(declare-fun d!1359182 () Bool)

(assert (= bs!790744 (and d!1359182 start!436538)))

(assert (=> bs!790744 (= (dynLambda!20962 lambda!160006 (h!55700 (toList!3787 lt!1646699))) (noDuplicateKeys!890 (_2!28288 (h!55700 (toList!3787 lt!1646699)))))))

(declare-fun m!5156803 () Bool)

(assert (=> bs!790744 m!5156803))

(assert (=> b!4455170 d!1359182))

(push 1)

(assert (not b!4455161))

(assert (not b_lambda!147639))

(assert (not bm!310048))

(assert tp_is_empty!26793)

(assert (not b!4455171))

(assert (not d!1359174))

(assert (not b!4455244))

(assert (not b!4455238))

(assert (not bs!790744))

(assert (not bm!310050))

(assert (not d!1359178))

(assert (not d!1359158))

(assert (not b!4455233))

(assert (not b!4455206))

(assert (not b!4455205))

(assert (not d!1359148))

(assert (not b!4455235))

(assert (not b!4455160))

(assert (not b!4455230))

(assert (not bm!310053))

(assert (not d!1359150))

(assert (not d!1359168))

(assert (not bs!790743))

(assert (not b!4455236))

(assert (not d!1359176))

(assert (not b!4455169))

(assert (not b_lambda!147637))

(assert (not b!4455234))

(assert (not b!4455208))

(assert (not d!1359154))

(assert (not b!4455184))

(assert (not b!4455231))

(assert (not bm!310049))

(assert (not b!4455229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

