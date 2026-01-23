; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485292 () Bool)

(assert start!485292)

(declare-fun b!4749920 () Bool)

(declare-fun e!2962918 () Bool)

(declare-datatypes ((K!14485 0))(
  ( (K!14486 (val!19859 Int)) )
))
(declare-datatypes ((V!14731 0))(
  ( (V!14732 (val!19860 Int)) )
))
(declare-datatypes ((tuple2!54828 0))(
  ( (tuple2!54829 (_1!30708 K!14485) (_2!30708 V!14731)) )
))
(declare-fun t!14174 () tuple2!54828)

(declare-datatypes ((List!53194 0))(
  ( (Nil!53070) (Cons!53070 (h!59467 tuple2!54828) (t!360518 List!53194)) )
))
(declare-fun l!14304 () List!53194)

(declare-fun noDuplicateKeys!2134 (List!53194) Bool)

(assert (=> b!4749920 (= e!2962918 (not (noDuplicateKeys!2134 (Cons!53070 t!14174 (t!360518 l!14304)))))))

(declare-fun b!4749921 () Bool)

(declare-fun e!2962917 () Bool)

(assert (=> b!4749921 (= e!2962917 e!2962918)))

(declare-fun res!2013972 () Bool)

(assert (=> b!4749921 (=> (not res!2013972) (not e!2962918))))

(assert (=> b!4749921 (= res!2013972 (noDuplicateKeys!2134 (t!360518 l!14304)))))

(declare-datatypes ((ListMap!5513 0))(
  ( (ListMap!5514 (toList!6102 List!53194)) )
))
(declare-fun lt!1913409 () ListMap!5513)

(declare-fun acc!1214 () ListMap!5513)

(declare-fun addToMapMapFromBucket!1558 (List!53194 ListMap!5513) ListMap!5513)

(declare-fun +!2368 (ListMap!5513 tuple2!54828) ListMap!5513)

(assert (=> b!4749921 (= lt!1913409 (addToMapMapFromBucket!1558 (t!360518 l!14304) (+!2368 acc!1214 (h!59467 l!14304))))))

(declare-fun b!4749922 () Bool)

(declare-fun res!2013974 () Bool)

(assert (=> b!4749922 (=> (not res!2013974) (not e!2962917))))

(assert (=> b!4749922 (= res!2013974 (noDuplicateKeys!2134 (Cons!53070 t!14174 l!14304)))))

(declare-fun b!4749923 () Bool)

(declare-fun e!2962916 () Bool)

(declare-fun tp!1350049 () Bool)

(assert (=> b!4749923 (= e!2962916 tp!1350049)))

(declare-fun b!4749925 () Bool)

(declare-fun res!2013973 () Bool)

(assert (=> b!4749925 (=> (not res!2013973) (not e!2962917))))

(get-info :version)

(assert (=> b!4749925 (= res!2013973 (not ((_ is Nil!53070) l!14304)))))

(declare-fun tp_is_empty!31829 () Bool)

(declare-fun b!4749924 () Bool)

(declare-fun tp!1350048 () Bool)

(declare-fun tp_is_empty!31831 () Bool)

(declare-fun e!2962915 () Bool)

(assert (=> b!4749924 (= e!2962915 (and tp_is_empty!31829 tp_is_empty!31831 tp!1350048))))

(declare-fun res!2013975 () Bool)

(assert (=> start!485292 (=> (not res!2013975) (not e!2962917))))

(assert (=> start!485292 (= res!2013975 (noDuplicateKeys!2134 l!14304))))

(assert (=> start!485292 e!2962917))

(assert (=> start!485292 e!2962915))

(assert (=> start!485292 (and tp_is_empty!31829 tp_is_empty!31831)))

(declare-fun inv!68355 (ListMap!5513) Bool)

(assert (=> start!485292 (and (inv!68355 acc!1214) e!2962916)))

(assert (= (and start!485292 res!2013975) b!4749922))

(assert (= (and b!4749922 res!2013974) b!4749925))

(assert (= (and b!4749925 res!2013973) b!4749921))

(assert (= (and b!4749921 res!2013972) b!4749920))

(assert (= (and start!485292 ((_ is Cons!53070) l!14304)) b!4749924))

(assert (= start!485292 b!4749923))

(declare-fun m!5710483 () Bool)

(assert (=> b!4749920 m!5710483))

(declare-fun m!5710485 () Bool)

(assert (=> b!4749921 m!5710485))

(declare-fun m!5710487 () Bool)

(assert (=> b!4749921 m!5710487))

(assert (=> b!4749921 m!5710487))

(declare-fun m!5710489 () Bool)

(assert (=> b!4749921 m!5710489))

(declare-fun m!5710491 () Bool)

(assert (=> b!4749922 m!5710491))

(declare-fun m!5710493 () Bool)

(assert (=> start!485292 m!5710493))

(declare-fun m!5710495 () Bool)

(assert (=> start!485292 m!5710495))

(check-sat tp_is_empty!31829 (not b!4749921) (not b!4749922) tp_is_empty!31831 (not b!4749920) (not b!4749923) (not b!4749924) (not start!485292))
(check-sat)
(get-model)

(declare-fun d!1518075 () Bool)

(declare-fun res!2013990 () Bool)

(declare-fun e!2962933 () Bool)

(assert (=> d!1518075 (=> res!2013990 e!2962933)))

(assert (=> d!1518075 (= res!2013990 (not ((_ is Cons!53070) (Cons!53070 t!14174 (t!360518 l!14304)))))))

(assert (=> d!1518075 (= (noDuplicateKeys!2134 (Cons!53070 t!14174 (t!360518 l!14304))) e!2962933)))

(declare-fun b!4749940 () Bool)

(declare-fun e!2962934 () Bool)

(assert (=> b!4749940 (= e!2962933 e!2962934)))

(declare-fun res!2013991 () Bool)

(assert (=> b!4749940 (=> (not res!2013991) (not e!2962934))))

(declare-fun containsKey!3543 (List!53194 K!14485) Bool)

(assert (=> b!4749940 (= res!2013991 (not (containsKey!3543 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))) (_1!30708 (h!59467 (Cons!53070 t!14174 (t!360518 l!14304)))))))))

(declare-fun b!4749941 () Bool)

(assert (=> b!4749941 (= e!2962934 (noDuplicateKeys!2134 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))))))

(assert (= (and d!1518075 (not res!2013990)) b!4749940))

(assert (= (and b!4749940 res!2013991) b!4749941))

(declare-fun m!5710507 () Bool)

(assert (=> b!4749940 m!5710507))

(declare-fun m!5710509 () Bool)

(assert (=> b!4749941 m!5710509))

(assert (=> b!4749920 d!1518075))

(declare-fun d!1518083 () Bool)

(declare-fun res!2013992 () Bool)

(declare-fun e!2962935 () Bool)

(assert (=> d!1518083 (=> res!2013992 e!2962935)))

(assert (=> d!1518083 (= res!2013992 (not ((_ is Cons!53070) (t!360518 l!14304))))))

(assert (=> d!1518083 (= (noDuplicateKeys!2134 (t!360518 l!14304)) e!2962935)))

(declare-fun b!4749942 () Bool)

(declare-fun e!2962936 () Bool)

(assert (=> b!4749942 (= e!2962935 e!2962936)))

(declare-fun res!2013993 () Bool)

(assert (=> b!4749942 (=> (not res!2013993) (not e!2962936))))

(assert (=> b!4749942 (= res!2013993 (not (containsKey!3543 (t!360518 (t!360518 l!14304)) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun b!4749943 () Bool)

(assert (=> b!4749943 (= e!2962936 (noDuplicateKeys!2134 (t!360518 (t!360518 l!14304))))))

(assert (= (and d!1518083 (not res!2013992)) b!4749942))

(assert (= (and b!4749942 res!2013993) b!4749943))

(declare-fun m!5710511 () Bool)

(assert (=> b!4749942 m!5710511))

(declare-fun m!5710515 () Bool)

(assert (=> b!4749943 m!5710515))

(assert (=> b!4749921 d!1518083))

(declare-fun b!4749988 () Bool)

(assert (=> b!4749988 true))

(declare-fun bs!1140119 () Bool)

(declare-fun b!4749987 () Bool)

(assert (= bs!1140119 (and b!4749987 b!4749988)))

(declare-fun lambda!221522 () Int)

(declare-fun lambda!221521 () Int)

(assert (=> bs!1140119 (= lambda!221522 lambda!221521)))

(assert (=> b!4749987 true))

(declare-fun lt!1913543 () ListMap!5513)

(declare-fun lambda!221523 () Int)

(assert (=> bs!1140119 (= (= lt!1913543 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221523 lambda!221521))))

(assert (=> b!4749987 (= (= lt!1913543 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221523 lambda!221522))))

(assert (=> b!4749987 true))

(declare-fun bs!1140120 () Bool)

(declare-fun d!1518085 () Bool)

(assert (= bs!1140120 (and d!1518085 b!4749988)))

(declare-fun lt!1913530 () ListMap!5513)

(declare-fun lambda!221524 () Int)

(assert (=> bs!1140120 (= (= lt!1913530 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221524 lambda!221521))))

(declare-fun bs!1140121 () Bool)

(assert (= bs!1140121 (and d!1518085 b!4749987)))

(assert (=> bs!1140121 (= (= lt!1913530 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221524 lambda!221522))))

(assert (=> bs!1140121 (= (= lt!1913530 lt!1913543) (= lambda!221524 lambda!221523))))

(assert (=> d!1518085 true))

(declare-fun b!4749985 () Bool)

(declare-fun e!2962962 () Bool)

(declare-fun invariantList!1582 (List!53194) Bool)

(assert (=> b!4749985 (= e!2962962 (invariantList!1582 (toList!6102 lt!1913530)))))

(declare-fun b!4749986 () Bool)

(declare-fun e!2962961 () Bool)

(declare-fun forall!11750 (List!53194 Int) Bool)

(assert (=> b!4749986 (= e!2962961 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221523))))

(assert (=> d!1518085 e!2962962))

(declare-fun res!2014019 () Bool)

(assert (=> d!1518085 (=> (not res!2014019) (not e!2962962))))

(assert (=> d!1518085 (= res!2014019 (forall!11750 (t!360518 l!14304) lambda!221524))))

(declare-fun e!2962963 () ListMap!5513)

(assert (=> d!1518085 (= lt!1913530 e!2962963)))

(declare-fun c!811045 () Bool)

(assert (=> d!1518085 (= c!811045 ((_ is Nil!53070) (t!360518 l!14304)))))

(assert (=> d!1518085 (noDuplicateKeys!2134 (t!360518 l!14304))))

(assert (=> d!1518085 (= (addToMapMapFromBucket!1558 (t!360518 l!14304) (+!2368 acc!1214 (h!59467 l!14304))) lt!1913530)))

(declare-fun call!332599 () Bool)

(declare-fun bm!332594 () Bool)

(assert (=> bm!332594 (= call!332599 (forall!11750 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (t!360518 (t!360518 l!14304))) (ite c!811045 lambda!221521 lambda!221523)))))

(declare-fun bm!332595 () Bool)

(declare-fun call!332600 () Bool)

(declare-fun lt!1913529 () ListMap!5513)

(assert (=> bm!332595 (= call!332600 (forall!11750 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (toList!6102 lt!1913529)) (ite c!811045 lambda!221521 lambda!221523)))))

(assert (=> b!4749987 (= e!2962963 lt!1913543)))

(assert (=> b!4749987 (= lt!1913529 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))))))

(assert (=> b!4749987 (= lt!1913543 (addToMapMapFromBucket!1558 (t!360518 (t!360518 l!14304)) (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))))))

(declare-datatypes ((Unit!135355 0))(
  ( (Unit!135356) )
))
(declare-fun lt!1913532 () Unit!135355)

(declare-fun call!332601 () Unit!135355)

(assert (=> b!4749987 (= lt!1913532 call!332601)))

(assert (=> b!4749987 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221522)))

(declare-fun lt!1913539 () Unit!135355)

(assert (=> b!4749987 (= lt!1913539 lt!1913532)))

(assert (=> b!4749987 (forall!11750 (toList!6102 lt!1913529) lambda!221523)))

(declare-fun lt!1913541 () Unit!135355)

(declare-fun Unit!135357 () Unit!135355)

(assert (=> b!4749987 (= lt!1913541 Unit!135357)))

(assert (=> b!4749987 call!332599))

(declare-fun lt!1913547 () Unit!135355)

(declare-fun Unit!135358 () Unit!135355)

(assert (=> b!4749987 (= lt!1913547 Unit!135358)))

(declare-fun lt!1913540 () Unit!135355)

(declare-fun Unit!135359 () Unit!135355)

(assert (=> b!4749987 (= lt!1913540 Unit!135359)))

(declare-fun lt!1913536 () Unit!135355)

(declare-fun forallContained!3776 (List!53194 Int tuple2!54828) Unit!135355)

(assert (=> b!4749987 (= lt!1913536 (forallContained!3776 (toList!6102 lt!1913529) lambda!221523 (h!59467 (t!360518 l!14304))))))

(declare-fun contains!16484 (ListMap!5513 K!14485) Bool)

(assert (=> b!4749987 (contains!16484 lt!1913529 (_1!30708 (h!59467 (t!360518 l!14304))))))

(declare-fun lt!1913537 () Unit!135355)

(declare-fun Unit!135360 () Unit!135355)

(assert (=> b!4749987 (= lt!1913537 Unit!135360)))

(assert (=> b!4749987 (contains!16484 lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304))))))

(declare-fun lt!1913527 () Unit!135355)

(declare-fun Unit!135361 () Unit!135355)

(assert (=> b!4749987 (= lt!1913527 Unit!135361)))

(assert (=> b!4749987 (forall!11750 (t!360518 l!14304) lambda!221523)))

(declare-fun lt!1913544 () Unit!135355)

(declare-fun Unit!135362 () Unit!135355)

(assert (=> b!4749987 (= lt!1913544 Unit!135362)))

(assert (=> b!4749987 call!332600))

(declare-fun lt!1913538 () Unit!135355)

(declare-fun Unit!135363 () Unit!135355)

(assert (=> b!4749987 (= lt!1913538 Unit!135363)))

(declare-fun lt!1913534 () Unit!135355)

(declare-fun Unit!135364 () Unit!135355)

(assert (=> b!4749987 (= lt!1913534 Unit!135364)))

(declare-fun lt!1913535 () Unit!135355)

(declare-fun addForallContainsKeyThenBeforeAdding!864 (ListMap!5513 ListMap!5513 K!14485 V!14731) Unit!135355)

(assert (=> b!4749987 (= lt!1913535 (addForallContainsKeyThenBeforeAdding!864 (+!2368 acc!1214 (h!59467 l!14304)) lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> b!4749987 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221523)))

(declare-fun lt!1913528 () Unit!135355)

(assert (=> b!4749987 (= lt!1913528 lt!1913535)))

(assert (=> b!4749987 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221523)))

(declare-fun lt!1913545 () Unit!135355)

(declare-fun Unit!135365 () Unit!135355)

(assert (=> b!4749987 (= lt!1913545 Unit!135365)))

(declare-fun res!2014018 () Bool)

(assert (=> b!4749987 (= res!2014018 (forall!11750 (t!360518 l!14304) lambda!221523))))

(assert (=> b!4749987 (=> (not res!2014018) (not e!2962961))))

(assert (=> b!4749987 e!2962961))

(declare-fun lt!1913533 () Unit!135355)

(declare-fun Unit!135366 () Unit!135355)

(assert (=> b!4749987 (= lt!1913533 Unit!135366)))

(assert (=> b!4749988 (= e!2962963 (+!2368 acc!1214 (h!59467 l!14304)))))

(declare-fun lt!1913531 () Unit!135355)

(assert (=> b!4749988 (= lt!1913531 call!332601)))

(assert (=> b!4749988 call!332599))

(declare-fun lt!1913546 () Unit!135355)

(assert (=> b!4749988 (= lt!1913546 lt!1913531)))

(assert (=> b!4749988 call!332600))

(declare-fun lt!1913542 () Unit!135355)

(declare-fun Unit!135367 () Unit!135355)

(assert (=> b!4749988 (= lt!1913542 Unit!135367)))

(declare-fun b!4749989 () Bool)

(declare-fun res!2014017 () Bool)

(assert (=> b!4749989 (=> (not res!2014017) (not e!2962962))))

(assert (=> b!4749989 (= res!2014017 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221524))))

(declare-fun bm!332596 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!865 (ListMap!5513) Unit!135355)

(assert (=> bm!332596 (= call!332601 (lemmaContainsAllItsOwnKeys!865 (+!2368 acc!1214 (h!59467 l!14304))))))

(assert (= (and d!1518085 c!811045) b!4749988))

(assert (= (and d!1518085 (not c!811045)) b!4749987))

(assert (= (and b!4749987 res!2014018) b!4749986))

(assert (= (or b!4749988 b!4749987) bm!332596))

(assert (= (or b!4749988 b!4749987) bm!332595))

(assert (= (or b!4749988 b!4749987) bm!332594))

(assert (= (and d!1518085 res!2014019) b!4749989))

(assert (= (and b!4749989 res!2014017) b!4749985))

(declare-fun m!5710567 () Bool)

(assert (=> bm!332594 m!5710567))

(assert (=> bm!332596 m!5710487))

(declare-fun m!5710569 () Bool)

(assert (=> bm!332596 m!5710569))

(declare-fun m!5710571 () Bool)

(assert (=> b!4749985 m!5710571))

(declare-fun m!5710573 () Bool)

(assert (=> bm!332595 m!5710573))

(declare-fun m!5710575 () Bool)

(assert (=> b!4749989 m!5710575))

(declare-fun m!5710577 () Bool)

(assert (=> b!4749986 m!5710577))

(declare-fun m!5710579 () Bool)

(assert (=> d!1518085 m!5710579))

(assert (=> d!1518085 m!5710485))

(declare-fun m!5710581 () Bool)

(assert (=> b!4749987 m!5710581))

(declare-fun m!5710583 () Bool)

(assert (=> b!4749987 m!5710583))

(declare-fun m!5710585 () Bool)

(assert (=> b!4749987 m!5710585))

(assert (=> b!4749987 m!5710487))

(declare-fun m!5710587 () Bool)

(assert (=> b!4749987 m!5710587))

(declare-fun m!5710589 () Bool)

(assert (=> b!4749987 m!5710589))

(assert (=> b!4749987 m!5710577))

(assert (=> b!4749987 m!5710487))

(declare-fun m!5710591 () Bool)

(assert (=> b!4749987 m!5710591))

(declare-fun m!5710593 () Bool)

(assert (=> b!4749987 m!5710593))

(assert (=> b!4749987 m!5710581))

(assert (=> b!4749987 m!5710587))

(declare-fun m!5710595 () Bool)

(assert (=> b!4749987 m!5710595))

(declare-fun m!5710597 () Bool)

(assert (=> b!4749987 m!5710597))

(assert (=> b!4749987 m!5710577))

(assert (=> b!4749921 d!1518085))

(declare-fun d!1518093 () Bool)

(declare-fun e!2962966 () Bool)

(assert (=> d!1518093 e!2962966))

(declare-fun res!2014024 () Bool)

(assert (=> d!1518093 (=> (not res!2014024) (not e!2962966))))

(declare-fun lt!1913558 () ListMap!5513)

(assert (=> d!1518093 (= res!2014024 (contains!16484 lt!1913558 (_1!30708 (h!59467 l!14304))))))

(declare-fun lt!1913559 () List!53194)

(assert (=> d!1518093 (= lt!1913558 (ListMap!5514 lt!1913559))))

(declare-fun lt!1913557 () Unit!135355)

(declare-fun lt!1913556 () Unit!135355)

(assert (=> d!1518093 (= lt!1913557 lt!1913556)))

(declare-datatypes ((Option!12519 0))(
  ( (None!12518) (Some!12518 (v!47215 V!14731)) )
))
(declare-fun getValueByKey!2069 (List!53194 K!14485) Option!12519)

(assert (=> d!1518093 (= (getValueByKey!2069 lt!1913559 (_1!30708 (h!59467 l!14304))) (Some!12518 (_2!30708 (h!59467 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1146 (List!53194 K!14485 V!14731) Unit!135355)

(assert (=> d!1518093 (= lt!1913556 (lemmaContainsTupThenGetReturnValue!1146 lt!1913559 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))))))

(declare-fun insertNoDuplicatedKeys!654 (List!53194 K!14485 V!14731) List!53194)

(assert (=> d!1518093 (= lt!1913559 (insertNoDuplicatedKeys!654 (toList!6102 acc!1214) (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))))))

(assert (=> d!1518093 (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913558)))

(declare-fun b!4749996 () Bool)

(declare-fun res!2014025 () Bool)

(assert (=> b!4749996 (=> (not res!2014025) (not e!2962966))))

(assert (=> b!4749996 (= res!2014025 (= (getValueByKey!2069 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))) (Some!12518 (_2!30708 (h!59467 l!14304)))))))

(declare-fun b!4749997 () Bool)

(declare-fun contains!16485 (List!53194 tuple2!54828) Bool)

(assert (=> b!4749997 (= e!2962966 (contains!16485 (toList!6102 lt!1913558) (h!59467 l!14304)))))

(assert (= (and d!1518093 res!2014024) b!4749996))

(assert (= (and b!4749996 res!2014025) b!4749997))

(declare-fun m!5710599 () Bool)

(assert (=> d!1518093 m!5710599))

(declare-fun m!5710601 () Bool)

(assert (=> d!1518093 m!5710601))

(declare-fun m!5710603 () Bool)

(assert (=> d!1518093 m!5710603))

(declare-fun m!5710605 () Bool)

(assert (=> d!1518093 m!5710605))

(declare-fun m!5710607 () Bool)

(assert (=> b!4749996 m!5710607))

(declare-fun m!5710609 () Bool)

(assert (=> b!4749997 m!5710609))

(assert (=> b!4749921 d!1518093))

(declare-fun d!1518095 () Bool)

(declare-fun res!2014026 () Bool)

(declare-fun e!2962967 () Bool)

(assert (=> d!1518095 (=> res!2014026 e!2962967)))

(assert (=> d!1518095 (= res!2014026 (not ((_ is Cons!53070) (Cons!53070 t!14174 l!14304))))))

(assert (=> d!1518095 (= (noDuplicateKeys!2134 (Cons!53070 t!14174 l!14304)) e!2962967)))

(declare-fun b!4749998 () Bool)

(declare-fun e!2962968 () Bool)

(assert (=> b!4749998 (= e!2962967 e!2962968)))

(declare-fun res!2014027 () Bool)

(assert (=> b!4749998 (=> (not res!2014027) (not e!2962968))))

(assert (=> b!4749998 (= res!2014027 (not (containsKey!3543 (t!360518 (Cons!53070 t!14174 l!14304)) (_1!30708 (h!59467 (Cons!53070 t!14174 l!14304))))))))

(declare-fun b!4749999 () Bool)

(assert (=> b!4749999 (= e!2962968 (noDuplicateKeys!2134 (t!360518 (Cons!53070 t!14174 l!14304))))))

(assert (= (and d!1518095 (not res!2014026)) b!4749998))

(assert (= (and b!4749998 res!2014027) b!4749999))

(declare-fun m!5710611 () Bool)

(assert (=> b!4749998 m!5710611))

(declare-fun m!5710613 () Bool)

(assert (=> b!4749999 m!5710613))

(assert (=> b!4749922 d!1518095))

(declare-fun d!1518097 () Bool)

(declare-fun res!2014028 () Bool)

(declare-fun e!2962969 () Bool)

(assert (=> d!1518097 (=> res!2014028 e!2962969)))

(assert (=> d!1518097 (= res!2014028 (not ((_ is Cons!53070) l!14304)))))

(assert (=> d!1518097 (= (noDuplicateKeys!2134 l!14304) e!2962969)))

(declare-fun b!4750000 () Bool)

(declare-fun e!2962970 () Bool)

(assert (=> b!4750000 (= e!2962969 e!2962970)))

(declare-fun res!2014029 () Bool)

(assert (=> b!4750000 (=> (not res!2014029) (not e!2962970))))

(assert (=> b!4750000 (= res!2014029 (not (containsKey!3543 (t!360518 l!14304) (_1!30708 (h!59467 l!14304)))))))

(declare-fun b!4750001 () Bool)

(assert (=> b!4750001 (= e!2962970 (noDuplicateKeys!2134 (t!360518 l!14304)))))

(assert (= (and d!1518097 (not res!2014028)) b!4750000))

(assert (= (and b!4750000 res!2014029) b!4750001))

(declare-fun m!5710615 () Bool)

(assert (=> b!4750000 m!5710615))

(assert (=> b!4750001 m!5710485))

(assert (=> start!485292 d!1518097))

(declare-fun d!1518099 () Bool)

(assert (=> d!1518099 (= (inv!68355 acc!1214) (invariantList!1582 (toList!6102 acc!1214)))))

(declare-fun bs!1140122 () Bool)

(assert (= bs!1140122 d!1518099))

(declare-fun m!5710617 () Bool)

(assert (=> bs!1140122 m!5710617))

(assert (=> start!485292 d!1518099))

(declare-fun tp!1350056 () Bool)

(declare-fun b!4750006 () Bool)

(declare-fun e!2962973 () Bool)

(assert (=> b!4750006 (= e!2962973 (and tp_is_empty!31829 tp_is_empty!31831 tp!1350056))))

(assert (=> b!4749923 (= tp!1350049 e!2962973)))

(assert (= (and b!4749923 ((_ is Cons!53070) (toList!6102 acc!1214))) b!4750006))

(declare-fun tp!1350057 () Bool)

(declare-fun b!4750007 () Bool)

(declare-fun e!2962974 () Bool)

(assert (=> b!4750007 (= e!2962974 (and tp_is_empty!31829 tp_is_empty!31831 tp!1350057))))

(assert (=> b!4749924 (= tp!1350048 e!2962974)))

(assert (= (and b!4749924 ((_ is Cons!53070) (t!360518 l!14304))) b!4750007))

(check-sat (not bm!332596) tp_is_empty!31829 (not d!1518093) (not d!1518099) (not b!4749940) (not b!4749943) (not b!4750007) (not b!4749997) (not bm!332594) (not b!4749996) (not b!4749986) (not b!4749941) (not b!4749987) (not b!4750001) (not d!1518085) (not b!4749999) tp_is_empty!31831 (not b!4750006) (not b!4749989) (not b!4749985) (not bm!332595) (not b!4749942) (not b!4750000) (not b!4749998))
(check-sat)
(get-model)

(declare-fun d!1518105 () Bool)

(declare-fun noDuplicatedKeys!400 (List!53194) Bool)

(assert (=> d!1518105 (= (invariantList!1582 (toList!6102 lt!1913530)) (noDuplicatedKeys!400 (toList!6102 lt!1913530)))))

(declare-fun bs!1140123 () Bool)

(assert (= bs!1140123 d!1518105))

(declare-fun m!5710623 () Bool)

(assert (=> bs!1140123 m!5710623))

(assert (=> b!4749985 d!1518105))

(declare-fun d!1518107 () Bool)

(assert (=> d!1518107 (= (invariantList!1582 (toList!6102 acc!1214)) (noDuplicatedKeys!400 (toList!6102 acc!1214)))))

(declare-fun bs!1140124 () Bool)

(assert (= bs!1140124 d!1518107))

(declare-fun m!5710625 () Bool)

(assert (=> bs!1140124 m!5710625))

(assert (=> d!1518099 d!1518107))

(declare-fun d!1518109 () Bool)

(declare-fun res!2014044 () Bool)

(declare-fun e!2962995 () Bool)

(assert (=> d!1518109 (=> res!2014044 e!2962995)))

(assert (=> d!1518109 (= res!2014044 ((_ is Nil!53070) (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))

(assert (=> d!1518109 (= (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221523) e!2962995)))

(declare-fun b!4750032 () Bool)

(declare-fun e!2962996 () Bool)

(assert (=> b!4750032 (= e!2962995 e!2962996)))

(declare-fun res!2014045 () Bool)

(assert (=> b!4750032 (=> (not res!2014045) (not e!2962996))))

(declare-fun dynLambda!21899 (Int tuple2!54828) Bool)

(assert (=> b!4750032 (= res!2014045 (dynLambda!21899 lambda!221523 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))))))

(declare-fun b!4750033 () Bool)

(assert (=> b!4750033 (= e!2962996 (forall!11750 (t!360518 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))) lambda!221523))))

(assert (= (and d!1518109 (not res!2014044)) b!4750032))

(assert (= (and b!4750032 res!2014045) b!4750033))

(declare-fun b_lambda!183115 () Bool)

(assert (=> (not b_lambda!183115) (not b!4750032)))

(declare-fun m!5710627 () Bool)

(assert (=> b!4750032 m!5710627))

(declare-fun m!5710629 () Bool)

(assert (=> b!4750033 m!5710629))

(assert (=> b!4749986 d!1518109))

(declare-fun d!1518111 () Bool)

(declare-fun res!2014052 () Bool)

(declare-fun e!2963003 () Bool)

(assert (=> d!1518111 (=> res!2014052 e!2963003)))

(assert (=> d!1518111 (= res!2014052 (and ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))) (= (_1!30708 (h!59467 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))))) (_1!30708 (h!59467 (Cons!53070 t!14174 (t!360518 l!14304)))))))))

(assert (=> d!1518111 (= (containsKey!3543 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))) (_1!30708 (h!59467 (Cons!53070 t!14174 (t!360518 l!14304))))) e!2963003)))

(declare-fun b!4750042 () Bool)

(declare-fun e!2963004 () Bool)

(assert (=> b!4750042 (= e!2963003 e!2963004)))

(declare-fun res!2014053 () Bool)

(assert (=> b!4750042 (=> (not res!2014053) (not e!2963004))))

(assert (=> b!4750042 (= res!2014053 ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))))))

(declare-fun b!4750043 () Bool)

(assert (=> b!4750043 (= e!2963004 (containsKey!3543 (t!360518 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))) (_1!30708 (h!59467 (Cons!53070 t!14174 (t!360518 l!14304))))))))

(assert (= (and d!1518111 (not res!2014052)) b!4750042))

(assert (= (and b!4750042 res!2014053) b!4750043))

(declare-fun m!5710631 () Bool)

(assert (=> b!4750043 m!5710631))

(assert (=> b!4749940 d!1518111))

(declare-fun b!4750089 () Bool)

(declare-fun e!2963036 () Unit!135355)

(declare-fun e!2963037 () Unit!135355)

(assert (=> b!4750089 (= e!2963036 e!2963037)))

(declare-fun c!811069 () Bool)

(declare-fun call!332607 () Bool)

(assert (=> b!4750089 (= c!811069 call!332607)))

(declare-fun b!4750090 () Bool)

(declare-fun e!2963032 () Bool)

(declare-fun e!2963034 () Bool)

(assert (=> b!4750090 (= e!2963032 e!2963034)))

(declare-fun res!2014071 () Bool)

(assert (=> b!4750090 (=> (not res!2014071) (not e!2963034))))

(declare-fun isDefined!9755 (Option!12519) Bool)

(assert (=> b!4750090 (= res!2014071 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304)))))))

(declare-fun b!4750091 () Bool)

(declare-fun e!2963033 () Bool)

(declare-datatypes ((List!53196 0))(
  ( (Nil!53072) (Cons!53072 (h!59469 K!14485) (t!360520 List!53196)) )
))
(declare-fun contains!16487 (List!53196 K!14485) Bool)

(declare-fun keys!19147 (ListMap!5513) List!53196)

(assert (=> b!4750091 (= e!2963033 (not (contains!16487 (keys!19147 lt!1913558) (_1!30708 (h!59467 l!14304)))))))

(declare-fun bm!332602 () Bool)

(declare-fun e!2963035 () List!53196)

(assert (=> bm!332602 (= call!332607 (contains!16487 e!2963035 (_1!30708 (h!59467 l!14304))))))

(declare-fun c!811067 () Bool)

(declare-fun c!811068 () Bool)

(assert (=> bm!332602 (= c!811067 c!811068)))

(declare-fun b!4750092 () Bool)

(declare-fun getKeysList!1002 (List!53194) List!53196)

(assert (=> b!4750092 (= e!2963035 (getKeysList!1002 (toList!6102 lt!1913558)))))

(declare-fun b!4750094 () Bool)

(declare-fun Unit!135370 () Unit!135355)

(assert (=> b!4750094 (= e!2963037 Unit!135370)))

(declare-fun b!4750095 () Bool)

(assert (=> b!4750095 (= e!2963035 (keys!19147 lt!1913558))))

(declare-fun b!4750096 () Bool)

(assert (=> b!4750096 (= e!2963034 (contains!16487 (keys!19147 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(declare-fun b!4750097 () Bool)

(assert (=> b!4750097 false))

(declare-fun lt!1913609 () Unit!135355)

(declare-fun lt!1913607 () Unit!135355)

(assert (=> b!4750097 (= lt!1913609 lt!1913607)))

(declare-fun containsKey!3545 (List!53194 K!14485) Bool)

(assert (=> b!4750097 (containsKey!3545 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1001 (List!53194 K!14485) Unit!135355)

(assert (=> b!4750097 (= lt!1913607 (lemmaInGetKeysListThenContainsKey!1001 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(declare-fun Unit!135371 () Unit!135355)

(assert (=> b!4750097 (= e!2963037 Unit!135371)))

(declare-fun b!4750093 () Bool)

(declare-fun lt!1913608 () Unit!135355)

(assert (=> b!4750093 (= e!2963036 lt!1913608)))

(declare-fun lt!1913606 () Unit!135355)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1942 (List!53194 K!14485) Unit!135355)

(assert (=> b!4750093 (= lt!1913606 (lemmaContainsKeyImpliesGetValueByKeyDefined!1942 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(assert (=> b!4750093 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(declare-fun lt!1913603 () Unit!135355)

(assert (=> b!4750093 (= lt!1913603 lt!1913606)))

(declare-fun lemmaInListThenGetKeysListContains!997 (List!53194 K!14485) Unit!135355)

(assert (=> b!4750093 (= lt!1913608 (lemmaInListThenGetKeysListContains!997 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(assert (=> b!4750093 call!332607))

(declare-fun d!1518113 () Bool)

(assert (=> d!1518113 e!2963032))

(declare-fun res!2014069 () Bool)

(assert (=> d!1518113 (=> res!2014069 e!2963032)))

(assert (=> d!1518113 (= res!2014069 e!2963033)))

(declare-fun res!2014070 () Bool)

(assert (=> d!1518113 (=> (not res!2014070) (not e!2963033))))

(declare-fun lt!1913610 () Bool)

(assert (=> d!1518113 (= res!2014070 (not lt!1913610))))

(declare-fun lt!1913604 () Bool)

(assert (=> d!1518113 (= lt!1913610 lt!1913604)))

(declare-fun lt!1913605 () Unit!135355)

(assert (=> d!1518113 (= lt!1913605 e!2963036)))

(assert (=> d!1518113 (= c!811068 lt!1913604)))

(assert (=> d!1518113 (= lt!1913604 (containsKey!3545 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))))))

(assert (=> d!1518113 (= (contains!16484 lt!1913558 (_1!30708 (h!59467 l!14304))) lt!1913610)))

(assert (= (and d!1518113 c!811068) b!4750093))

(assert (= (and d!1518113 (not c!811068)) b!4750089))

(assert (= (and b!4750089 c!811069) b!4750097))

(assert (= (and b!4750089 (not c!811069)) b!4750094))

(assert (= (or b!4750093 b!4750089) bm!332602))

(assert (= (and bm!332602 c!811067) b!4750092))

(assert (= (and bm!332602 (not c!811067)) b!4750095))

(assert (= (and d!1518113 res!2014070) b!4750091))

(assert (= (and d!1518113 (not res!2014069)) b!4750090))

(assert (= (and b!4750090 res!2014071) b!4750096))

(declare-fun m!5710661 () Bool)

(assert (=> b!4750096 m!5710661))

(assert (=> b!4750096 m!5710661))

(declare-fun m!5710663 () Bool)

(assert (=> b!4750096 m!5710663))

(declare-fun m!5710665 () Bool)

(assert (=> d!1518113 m!5710665))

(assert (=> b!4750097 m!5710665))

(declare-fun m!5710667 () Bool)

(assert (=> b!4750097 m!5710667))

(assert (=> b!4750090 m!5710607))

(assert (=> b!4750090 m!5710607))

(declare-fun m!5710669 () Bool)

(assert (=> b!4750090 m!5710669))

(declare-fun m!5710671 () Bool)

(assert (=> bm!332602 m!5710671))

(assert (=> b!4750091 m!5710661))

(assert (=> b!4750091 m!5710661))

(assert (=> b!4750091 m!5710663))

(declare-fun m!5710673 () Bool)

(assert (=> b!4750093 m!5710673))

(assert (=> b!4750093 m!5710607))

(assert (=> b!4750093 m!5710607))

(assert (=> b!4750093 m!5710669))

(declare-fun m!5710675 () Bool)

(assert (=> b!4750093 m!5710675))

(assert (=> b!4750095 m!5710661))

(declare-fun m!5710677 () Bool)

(assert (=> b!4750092 m!5710677))

(assert (=> d!1518093 d!1518113))

(declare-fun b!4750107 () Bool)

(declare-fun e!2963042 () Option!12519)

(declare-fun e!2963043 () Option!12519)

(assert (=> b!4750107 (= e!2963042 e!2963043)))

(declare-fun c!811075 () Bool)

(assert (=> b!4750107 (= c!811075 (and ((_ is Cons!53070) lt!1913559) (not (= (_1!30708 (h!59467 lt!1913559)) (_1!30708 (h!59467 l!14304))))))))

(declare-fun b!4750106 () Bool)

(assert (=> b!4750106 (= e!2963042 (Some!12518 (_2!30708 (h!59467 lt!1913559))))))

(declare-fun d!1518121 () Bool)

(declare-fun c!811074 () Bool)

(assert (=> d!1518121 (= c!811074 (and ((_ is Cons!53070) lt!1913559) (= (_1!30708 (h!59467 lt!1913559)) (_1!30708 (h!59467 l!14304)))))))

(assert (=> d!1518121 (= (getValueByKey!2069 lt!1913559 (_1!30708 (h!59467 l!14304))) e!2963042)))

(declare-fun b!4750109 () Bool)

(assert (=> b!4750109 (= e!2963043 None!12518)))

(declare-fun b!4750108 () Bool)

(assert (=> b!4750108 (= e!2963043 (getValueByKey!2069 (t!360518 lt!1913559) (_1!30708 (h!59467 l!14304))))))

(assert (= (and d!1518121 c!811074) b!4750106))

(assert (= (and d!1518121 (not c!811074)) b!4750107))

(assert (= (and b!4750107 c!811075) b!4750108))

(assert (= (and b!4750107 (not c!811075)) b!4750109))

(declare-fun m!5710679 () Bool)

(assert (=> b!4750108 m!5710679))

(assert (=> d!1518093 d!1518121))

(declare-fun d!1518123 () Bool)

(assert (=> d!1518123 (= (getValueByKey!2069 lt!1913559 (_1!30708 (h!59467 l!14304))) (Some!12518 (_2!30708 (h!59467 l!14304))))))

(declare-fun lt!1913613 () Unit!135355)

(declare-fun choose!33806 (List!53194 K!14485 V!14731) Unit!135355)

(assert (=> d!1518123 (= lt!1913613 (choose!33806 lt!1913559 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))))))

(declare-fun e!2963046 () Bool)

(assert (=> d!1518123 e!2963046))

(declare-fun res!2014076 () Bool)

(assert (=> d!1518123 (=> (not res!2014076) (not e!2963046))))

(assert (=> d!1518123 (= res!2014076 (invariantList!1582 lt!1913559))))

(assert (=> d!1518123 (= (lemmaContainsTupThenGetReturnValue!1146 lt!1913559 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))) lt!1913613)))

(declare-fun b!4750114 () Bool)

(declare-fun res!2014077 () Bool)

(assert (=> b!4750114 (=> (not res!2014077) (not e!2963046))))

(assert (=> b!4750114 (= res!2014077 (containsKey!3545 lt!1913559 (_1!30708 (h!59467 l!14304))))))

(declare-fun b!4750115 () Bool)

(assert (=> b!4750115 (= e!2963046 (contains!16485 lt!1913559 (tuple2!54829 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304)))))))

(assert (= (and d!1518123 res!2014076) b!4750114))

(assert (= (and b!4750114 res!2014077) b!4750115))

(assert (=> d!1518123 m!5710601))

(declare-fun m!5710681 () Bool)

(assert (=> d!1518123 m!5710681))

(declare-fun m!5710683 () Bool)

(assert (=> d!1518123 m!5710683))

(declare-fun m!5710685 () Bool)

(assert (=> b!4750114 m!5710685))

(declare-fun m!5710687 () Bool)

(assert (=> b!4750115 m!5710687))

(assert (=> d!1518093 d!1518123))

(declare-fun b!4750212 () Bool)

(declare-fun e!2963110 () Bool)

(declare-fun lt!1913676 () List!53194)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9517 (List!53196) (InoxSet K!14485))

(assert (=> b!4750212 (= e!2963110 (= (content!9517 (getKeysList!1002 lt!1913676)) ((_ map or) (content!9517 (getKeysList!1002 (toList!6102 acc!1214))) (store ((as const (Array K!14485 Bool)) false) (_1!30708 (h!59467 l!14304)) true))))))

(declare-fun b!4750213 () Bool)

(declare-fun e!2963109 () List!53194)

(declare-fun call!332630 () List!53194)

(assert (=> b!4750213 (= e!2963109 call!332630)))

(declare-fun b!4750214 () Bool)

(declare-fun e!2963114 () Unit!135355)

(declare-fun Unit!135374 () Unit!135355)

(assert (=> b!4750214 (= e!2963114 Unit!135374)))

(declare-fun b!4750215 () Bool)

(declare-fun e!2963113 () List!53194)

(assert (=> b!4750215 (= e!2963113 e!2963109)))

(declare-fun res!2014125 () Bool)

(assert (=> b!4750215 (= res!2014125 ((_ is Cons!53070) (toList!6102 acc!1214)))))

(declare-fun e!2963112 () Bool)

(assert (=> b!4750215 (=> (not res!2014125) (not e!2963112))))

(declare-fun c!811101 () Bool)

(assert (=> b!4750215 (= c!811101 e!2963112)))

(declare-fun b!4750216 () Bool)

(declare-fun res!2014127 () Bool)

(assert (=> b!4750216 (=> (not res!2014127) (not e!2963110))))

(assert (=> b!4750216 (= res!2014127 (containsKey!3545 lt!1913676 (_1!30708 (h!59467 l!14304))))))

(declare-fun b!4750217 () Bool)

(assert (=> b!4750217 (= e!2963112 (not (containsKey!3545 (toList!6102 acc!1214) (_1!30708 (h!59467 l!14304)))))))

(declare-fun b!4750218 () Bool)

(declare-fun e!2963111 () List!53194)

(assert (=> b!4750218 (= e!2963111 (insertNoDuplicatedKeys!654 (t!360518 (toList!6102 acc!1214)) (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))))))

(declare-fun b!4750219 () Bool)

(declare-fun res!2014126 () Bool)

(assert (=> b!4750219 (=> (not res!2014126) (not e!2963110))))

(assert (=> b!4750219 (= res!2014126 (contains!16485 lt!1913676 (tuple2!54829 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304)))))))

(declare-fun d!1518125 () Bool)

(assert (=> d!1518125 e!2963110))

(declare-fun res!2014124 () Bool)

(assert (=> d!1518125 (=> (not res!2014124) (not e!2963110))))

(assert (=> d!1518125 (= res!2014124 (invariantList!1582 lt!1913676))))

(assert (=> d!1518125 (= lt!1913676 e!2963113)))

(declare-fun c!811105 () Bool)

(assert (=> d!1518125 (= c!811105 (and ((_ is Cons!53070) (toList!6102 acc!1214)) (= (_1!30708 (h!59467 (toList!6102 acc!1214))) (_1!30708 (h!59467 l!14304)))))))

(assert (=> d!1518125 (invariantList!1582 (toList!6102 acc!1214))))

(assert (=> d!1518125 (= (insertNoDuplicatedKeys!654 (toList!6102 acc!1214) (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))) lt!1913676)))

(declare-fun call!332628 () List!53196)

(declare-fun lt!1913684 () List!53194)

(declare-fun bm!332623 () Bool)

(assert (=> bm!332623 (= call!332628 (getKeysList!1002 (ite c!811105 (toList!6102 acc!1214) lt!1913684)))))

(declare-fun call!332631 () List!53194)

(declare-fun bm!332624 () Bool)

(declare-fun c!811104 () Bool)

(declare-fun $colon$colon!1096 (List!53194 tuple2!54828) List!53194)

(assert (=> bm!332624 (= call!332631 ($colon$colon!1096 (ite c!811105 (t!360518 (toList!6102 acc!1214)) (ite c!811101 (toList!6102 acc!1214) e!2963111)) (ite (or c!811105 c!811101) (tuple2!54829 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))) (ite c!811104 (h!59467 (toList!6102 acc!1214)) (tuple2!54829 (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304)))))))))

(declare-fun b!4750220 () Bool)

(assert (=> b!4750220 (= c!811104 ((_ is Cons!53070) (toList!6102 acc!1214)))))

(declare-fun e!2963108 () List!53194)

(assert (=> b!4750220 (= e!2963109 e!2963108)))

(declare-fun bm!332625 () Bool)

(declare-fun call!332629 () List!53194)

(assert (=> bm!332625 (= call!332629 call!332630)))

(declare-fun c!811102 () Bool)

(assert (=> bm!332625 (= c!811102 c!811104)))

(declare-fun b!4750221 () Bool)

(assert (=> b!4750221 (= e!2963113 call!332631)))

(declare-fun lt!1913677 () List!53196)

(assert (=> b!4750221 (= lt!1913677 call!332628)))

(declare-fun lt!1913675 () Unit!135355)

(declare-fun lemmaSubseqRefl!159 (List!53196) Unit!135355)

(assert (=> b!4750221 (= lt!1913675 (lemmaSubseqRefl!159 lt!1913677))))

(declare-fun subseq!675 (List!53196 List!53196) Bool)

(assert (=> b!4750221 (subseq!675 lt!1913677 lt!1913677)))

(declare-fun lt!1913682 () Unit!135355)

(assert (=> b!4750221 (= lt!1913682 lt!1913675)))

(declare-fun b!4750222 () Bool)

(declare-fun lt!1913683 () List!53194)

(assert (=> b!4750222 (= e!2963108 lt!1913683)))

(assert (=> b!4750222 (= lt!1913683 call!332629)))

(declare-fun c!811103 () Bool)

(assert (=> b!4750222 (= c!811103 (containsKey!3545 (insertNoDuplicatedKeys!654 (t!360518 (toList!6102 acc!1214)) (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))) (_1!30708 (h!59467 (toList!6102 acc!1214)))))))

(declare-fun lt!1913680 () Unit!135355)

(assert (=> b!4750222 (= lt!1913680 e!2963114)))

(declare-fun b!4750223 () Bool)

(assert (=> b!4750223 false))

(declare-fun lt!1913674 () Unit!135355)

(declare-fun lt!1913678 () Unit!135355)

(assert (=> b!4750223 (= lt!1913674 lt!1913678)))

(assert (=> b!4750223 (containsKey!3545 (t!360518 (toList!6102 acc!1214)) (_1!30708 (h!59467 (toList!6102 acc!1214))))))

(assert (=> b!4750223 (= lt!1913678 (lemmaInGetKeysListThenContainsKey!1001 (t!360518 (toList!6102 acc!1214)) (_1!30708 (h!59467 (toList!6102 acc!1214)))))))

(declare-fun lt!1913679 () Unit!135355)

(declare-fun lt!1913681 () Unit!135355)

(assert (=> b!4750223 (= lt!1913679 lt!1913681)))

(assert (=> b!4750223 (contains!16487 call!332628 (_1!30708 (h!59467 (toList!6102 acc!1214))))))

(assert (=> b!4750223 (= lt!1913681 (lemmaInListThenGetKeysListContains!997 lt!1913684 (_1!30708 (h!59467 (toList!6102 acc!1214)))))))

(assert (=> b!4750223 (= lt!1913684 (insertNoDuplicatedKeys!654 (t!360518 (toList!6102 acc!1214)) (_1!30708 (h!59467 l!14304)) (_2!30708 (h!59467 l!14304))))))

(declare-fun Unit!135375 () Unit!135355)

(assert (=> b!4750223 (= e!2963114 Unit!135375)))

(declare-fun b!4750224 () Bool)

(assert (=> b!4750224 (= e!2963108 call!332629)))

(declare-fun bm!332626 () Bool)

(assert (=> bm!332626 (= call!332630 call!332631)))

(declare-fun b!4750225 () Bool)

(assert (=> b!4750225 (= e!2963111 Nil!53070)))

(assert (= (and d!1518125 c!811105) b!4750221))

(assert (= (and d!1518125 (not c!811105)) b!4750215))

(assert (= (and b!4750215 res!2014125) b!4750217))

(assert (= (and b!4750215 c!811101) b!4750213))

(assert (= (and b!4750215 (not c!811101)) b!4750220))

(assert (= (and b!4750220 c!811104) b!4750222))

(assert (= (and b!4750220 (not c!811104)) b!4750224))

(assert (= (and b!4750222 c!811103) b!4750223))

(assert (= (and b!4750222 (not c!811103)) b!4750214))

(assert (= (or b!4750222 b!4750224) bm!332625))

(assert (= (and bm!332625 c!811102) b!4750218))

(assert (= (and bm!332625 (not c!811102)) b!4750225))

(assert (= (or b!4750213 bm!332625) bm!332626))

(assert (= (or b!4750221 b!4750223) bm!332623))

(assert (= (or b!4750221 bm!332626) bm!332624))

(assert (= (and d!1518125 res!2014124) b!4750216))

(assert (= (and b!4750216 res!2014127) b!4750219))

(assert (= (and b!4750219 res!2014126) b!4750212))

(declare-fun m!5710771 () Bool)

(assert (=> b!4750221 m!5710771))

(declare-fun m!5710773 () Bool)

(assert (=> b!4750221 m!5710773))

(declare-fun m!5710775 () Bool)

(assert (=> b!4750218 m!5710775))

(declare-fun m!5710777 () Bool)

(assert (=> bm!332624 m!5710777))

(declare-fun m!5710779 () Bool)

(assert (=> b!4750212 m!5710779))

(assert (=> b!4750212 m!5710779))

(declare-fun m!5710781 () Bool)

(assert (=> b!4750212 m!5710781))

(declare-fun m!5710783 () Bool)

(assert (=> b!4750212 m!5710783))

(declare-fun m!5710785 () Bool)

(assert (=> b!4750212 m!5710785))

(assert (=> b!4750212 m!5710783))

(declare-fun m!5710787 () Bool)

(assert (=> b!4750212 m!5710787))

(declare-fun m!5710789 () Bool)

(assert (=> d!1518125 m!5710789))

(assert (=> d!1518125 m!5710617))

(declare-fun m!5710791 () Bool)

(assert (=> b!4750223 m!5710791))

(declare-fun m!5710793 () Bool)

(assert (=> b!4750223 m!5710793))

(assert (=> b!4750223 m!5710775))

(declare-fun m!5710795 () Bool)

(assert (=> b!4750223 m!5710795))

(declare-fun m!5710797 () Bool)

(assert (=> b!4750223 m!5710797))

(declare-fun m!5710799 () Bool)

(assert (=> b!4750217 m!5710799))

(declare-fun m!5710801 () Bool)

(assert (=> b!4750219 m!5710801))

(declare-fun m!5710803 () Bool)

(assert (=> bm!332623 m!5710803))

(assert (=> b!4750222 m!5710775))

(assert (=> b!4750222 m!5710775))

(declare-fun m!5710805 () Bool)

(assert (=> b!4750222 m!5710805))

(declare-fun m!5710807 () Bool)

(assert (=> b!4750216 m!5710807))

(assert (=> d!1518093 d!1518125))

(declare-fun d!1518153 () Bool)

(declare-fun res!2014132 () Bool)

(declare-fun e!2963119 () Bool)

(assert (=> d!1518153 (=> res!2014132 e!2963119)))

(assert (=> d!1518153 (= res!2014132 ((_ is Nil!53070) (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (t!360518 (t!360518 l!14304)))))))

(assert (=> d!1518153 (= (forall!11750 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (t!360518 (t!360518 l!14304))) (ite c!811045 lambda!221521 lambda!221523)) e!2963119)))

(declare-fun b!4750232 () Bool)

(declare-fun e!2963120 () Bool)

(assert (=> b!4750232 (= e!2963119 e!2963120)))

(declare-fun res!2014133 () Bool)

(assert (=> b!4750232 (=> (not res!2014133) (not e!2963120))))

(assert (=> b!4750232 (= res!2014133 (dynLambda!21899 (ite c!811045 lambda!221521 lambda!221523) (h!59467 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (t!360518 (t!360518 l!14304))))))))

(declare-fun b!4750233 () Bool)

(assert (=> b!4750233 (= e!2963120 (forall!11750 (t!360518 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (t!360518 (t!360518 l!14304)))) (ite c!811045 lambda!221521 lambda!221523)))))

(assert (= (and d!1518153 (not res!2014132)) b!4750232))

(assert (= (and b!4750232 res!2014133) b!4750233))

(declare-fun b_lambda!183129 () Bool)

(assert (=> (not b_lambda!183129) (not b!4750232)))

(declare-fun m!5710809 () Bool)

(assert (=> b!4750232 m!5710809))

(declare-fun m!5710811 () Bool)

(assert (=> b!4750233 m!5710811))

(assert (=> bm!332594 d!1518153))

(declare-fun d!1518155 () Bool)

(declare-fun res!2014134 () Bool)

(declare-fun e!2963121 () Bool)

(assert (=> d!1518155 (=> res!2014134 e!2963121)))

(assert (=> d!1518155 (= res!2014134 ((_ is Nil!53070) (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (toList!6102 lt!1913529))))))

(assert (=> d!1518155 (= (forall!11750 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (toList!6102 lt!1913529)) (ite c!811045 lambda!221521 lambda!221523)) e!2963121)))

(declare-fun b!4750234 () Bool)

(declare-fun e!2963122 () Bool)

(assert (=> b!4750234 (= e!2963121 e!2963122)))

(declare-fun res!2014135 () Bool)

(assert (=> b!4750234 (=> (not res!2014135) (not e!2963122))))

(assert (=> b!4750234 (= res!2014135 (dynLambda!21899 (ite c!811045 lambda!221521 lambda!221523) (h!59467 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (toList!6102 lt!1913529)))))))

(declare-fun b!4750235 () Bool)

(assert (=> b!4750235 (= e!2963122 (forall!11750 (t!360518 (ite c!811045 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (toList!6102 lt!1913529))) (ite c!811045 lambda!221521 lambda!221523)))))

(assert (= (and d!1518155 (not res!2014134)) b!4750234))

(assert (= (and b!4750234 res!2014135) b!4750235))

(declare-fun b_lambda!183131 () Bool)

(assert (=> (not b_lambda!183131) (not b!4750234)))

(declare-fun m!5710813 () Bool)

(assert (=> b!4750234 m!5710813))

(declare-fun m!5710815 () Bool)

(assert (=> b!4750235 m!5710815))

(assert (=> bm!332595 d!1518155))

(declare-fun d!1518157 () Bool)

(declare-fun res!2014136 () Bool)

(declare-fun e!2963123 () Bool)

(assert (=> d!1518157 (=> res!2014136 e!2963123)))

(assert (=> d!1518157 (= res!2014136 (not ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))))))))

(assert (=> d!1518157 (= (noDuplicateKeys!2134 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))) e!2963123)))

(declare-fun b!4750236 () Bool)

(declare-fun e!2963124 () Bool)

(assert (=> b!4750236 (= e!2963123 e!2963124)))

(declare-fun res!2014137 () Bool)

(assert (=> b!4750236 (=> (not res!2014137) (not e!2963124))))

(assert (=> b!4750236 (= res!2014137 (not (containsKey!3543 (t!360518 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304)))) (_1!30708 (h!59467 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))))))))))

(declare-fun b!4750237 () Bool)

(assert (=> b!4750237 (= e!2963124 (noDuplicateKeys!2134 (t!360518 (t!360518 (Cons!53070 t!14174 (t!360518 l!14304))))))))

(assert (= (and d!1518157 (not res!2014136)) b!4750236))

(assert (= (and b!4750236 res!2014137) b!4750237))

(declare-fun m!5710817 () Bool)

(assert (=> b!4750236 m!5710817))

(declare-fun m!5710819 () Bool)

(assert (=> b!4750237 m!5710819))

(assert (=> b!4749941 d!1518157))

(declare-fun b!4750238 () Bool)

(declare-fun e!2963129 () Unit!135355)

(declare-fun e!2963130 () Unit!135355)

(assert (=> b!4750238 (= e!2963129 e!2963130)))

(declare-fun c!811109 () Bool)

(declare-fun call!332635 () Bool)

(assert (=> b!4750238 (= c!811109 call!332635)))

(declare-fun b!4750239 () Bool)

(declare-fun e!2963125 () Bool)

(declare-fun e!2963127 () Bool)

(assert (=> b!4750239 (= e!2963125 e!2963127)))

(declare-fun res!2014140 () Bool)

(assert (=> b!4750239 (=> (not res!2014140) (not e!2963127))))

(assert (=> b!4750239 (= res!2014140 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun b!4750240 () Bool)

(declare-fun e!2963126 () Bool)

(assert (=> b!4750240 (= e!2963126 (not (contains!16487 (keys!19147 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun bm!332630 () Bool)

(declare-fun e!2963128 () List!53196)

(assert (=> bm!332630 (= call!332635 (contains!16487 e!2963128 (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun c!811107 () Bool)

(declare-fun c!811108 () Bool)

(assert (=> bm!332630 (= c!811107 c!811108)))

(declare-fun b!4750241 () Bool)

(assert (=> b!4750241 (= e!2963128 (getKeysList!1002 (toList!6102 lt!1913543)))))

(declare-fun b!4750243 () Bool)

(declare-fun Unit!135376 () Unit!135355)

(assert (=> b!4750243 (= e!2963130 Unit!135376)))

(declare-fun b!4750244 () Bool)

(assert (=> b!4750244 (= e!2963128 (keys!19147 lt!1913543))))

(declare-fun b!4750245 () Bool)

(assert (=> b!4750245 (= e!2963127 (contains!16487 (keys!19147 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun b!4750246 () Bool)

(assert (=> b!4750246 false))

(declare-fun lt!1913713 () Unit!135355)

(declare-fun lt!1913711 () Unit!135355)

(assert (=> b!4750246 (= lt!1913713 lt!1913711)))

(assert (=> b!4750246 (containsKey!3545 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304))))))

(assert (=> b!4750246 (= lt!1913711 (lemmaInGetKeysListThenContainsKey!1001 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun Unit!135377 () Unit!135355)

(assert (=> b!4750246 (= e!2963130 Unit!135377)))

(declare-fun b!4750242 () Bool)

(declare-fun lt!1913712 () Unit!135355)

(assert (=> b!4750242 (= e!2963129 lt!1913712)))

(declare-fun lt!1913710 () Unit!135355)

(assert (=> b!4750242 (= lt!1913710 (lemmaContainsKeyImpliesGetValueByKeyDefined!1942 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> b!4750242 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun lt!1913707 () Unit!135355)

(assert (=> b!4750242 (= lt!1913707 lt!1913710)))

(assert (=> b!4750242 (= lt!1913712 (lemmaInListThenGetKeysListContains!997 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> b!4750242 call!332635))

(declare-fun d!1518159 () Bool)

(assert (=> d!1518159 e!2963125))

(declare-fun res!2014138 () Bool)

(assert (=> d!1518159 (=> res!2014138 e!2963125)))

(assert (=> d!1518159 (= res!2014138 e!2963126)))

(declare-fun res!2014139 () Bool)

(assert (=> d!1518159 (=> (not res!2014139) (not e!2963126))))

(declare-fun lt!1913714 () Bool)

(assert (=> d!1518159 (= res!2014139 (not lt!1913714))))

(declare-fun lt!1913708 () Bool)

(assert (=> d!1518159 (= lt!1913714 lt!1913708)))

(declare-fun lt!1913709 () Unit!135355)

(assert (=> d!1518159 (= lt!1913709 e!2963129)))

(assert (=> d!1518159 (= c!811108 lt!1913708)))

(assert (=> d!1518159 (= lt!1913708 (containsKey!3545 (toList!6102 lt!1913543) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518159 (= (contains!16484 lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304)))) lt!1913714)))

(assert (= (and d!1518159 c!811108) b!4750242))

(assert (= (and d!1518159 (not c!811108)) b!4750238))

(assert (= (and b!4750238 c!811109) b!4750246))

(assert (= (and b!4750238 (not c!811109)) b!4750243))

(assert (= (or b!4750242 b!4750238) bm!332630))

(assert (= (and bm!332630 c!811107) b!4750241))

(assert (= (and bm!332630 (not c!811107)) b!4750244))

(assert (= (and d!1518159 res!2014139) b!4750240))

(assert (= (and d!1518159 (not res!2014138)) b!4750239))

(assert (= (and b!4750239 res!2014140) b!4750245))

(declare-fun m!5710821 () Bool)

(assert (=> b!4750245 m!5710821))

(assert (=> b!4750245 m!5710821))

(declare-fun m!5710823 () Bool)

(assert (=> b!4750245 m!5710823))

(declare-fun m!5710825 () Bool)

(assert (=> d!1518159 m!5710825))

(assert (=> b!4750246 m!5710825))

(declare-fun m!5710827 () Bool)

(assert (=> b!4750246 m!5710827))

(declare-fun m!5710829 () Bool)

(assert (=> b!4750239 m!5710829))

(assert (=> b!4750239 m!5710829))

(declare-fun m!5710831 () Bool)

(assert (=> b!4750239 m!5710831))

(declare-fun m!5710833 () Bool)

(assert (=> bm!332630 m!5710833))

(assert (=> b!4750240 m!5710821))

(assert (=> b!4750240 m!5710821))

(assert (=> b!4750240 m!5710823))

(declare-fun m!5710835 () Bool)

(assert (=> b!4750242 m!5710835))

(assert (=> b!4750242 m!5710829))

(assert (=> b!4750242 m!5710829))

(assert (=> b!4750242 m!5710831))

(declare-fun m!5710837 () Bool)

(assert (=> b!4750242 m!5710837))

(assert (=> b!4750244 m!5710821))

(declare-fun m!5710839 () Bool)

(assert (=> b!4750241 m!5710839))

(assert (=> b!4749987 d!1518159))

(declare-fun b!4750247 () Bool)

(declare-fun e!2963135 () Unit!135355)

(declare-fun e!2963136 () Unit!135355)

(assert (=> b!4750247 (= e!2963135 e!2963136)))

(declare-fun c!811112 () Bool)

(declare-fun call!332636 () Bool)

(assert (=> b!4750247 (= c!811112 call!332636)))

(declare-fun b!4750248 () Bool)

(declare-fun e!2963131 () Bool)

(declare-fun e!2963133 () Bool)

(assert (=> b!4750248 (= e!2963131 e!2963133)))

(declare-fun res!2014143 () Bool)

(assert (=> b!4750248 (=> (not res!2014143) (not e!2963133))))

(assert (=> b!4750248 (= res!2014143 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun b!4750249 () Bool)

(declare-fun e!2963132 () Bool)

(assert (=> b!4750249 (= e!2963132 (not (contains!16487 (keys!19147 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun bm!332631 () Bool)

(declare-fun e!2963134 () List!53196)

(assert (=> bm!332631 (= call!332636 (contains!16487 e!2963134 (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun c!811110 () Bool)

(declare-fun c!811111 () Bool)

(assert (=> bm!332631 (= c!811110 c!811111)))

(declare-fun b!4750250 () Bool)

(assert (=> b!4750250 (= e!2963134 (getKeysList!1002 (toList!6102 lt!1913529)))))

(declare-fun b!4750252 () Bool)

(declare-fun Unit!135378 () Unit!135355)

(assert (=> b!4750252 (= e!2963136 Unit!135378)))

(declare-fun b!4750253 () Bool)

(assert (=> b!4750253 (= e!2963134 (keys!19147 lt!1913529))))

(declare-fun b!4750254 () Bool)

(assert (=> b!4750254 (= e!2963133 (contains!16487 (keys!19147 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun b!4750255 () Bool)

(assert (=> b!4750255 false))

(declare-fun lt!1913721 () Unit!135355)

(declare-fun lt!1913719 () Unit!135355)

(assert (=> b!4750255 (= lt!1913721 lt!1913719)))

(assert (=> b!4750255 (containsKey!3545 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304))))))

(assert (=> b!4750255 (= lt!1913719 (lemmaInGetKeysListThenContainsKey!1001 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun Unit!135379 () Unit!135355)

(assert (=> b!4750255 (= e!2963136 Unit!135379)))

(declare-fun b!4750251 () Bool)

(declare-fun lt!1913720 () Unit!135355)

(assert (=> b!4750251 (= e!2963135 lt!1913720)))

(declare-fun lt!1913718 () Unit!135355)

(assert (=> b!4750251 (= lt!1913718 (lemmaContainsKeyImpliesGetValueByKeyDefined!1942 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> b!4750251 (isDefined!9755 (getValueByKey!2069 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun lt!1913715 () Unit!135355)

(assert (=> b!4750251 (= lt!1913715 lt!1913718)))

(assert (=> b!4750251 (= lt!1913720 (lemmaInListThenGetKeysListContains!997 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> b!4750251 call!332636))

(declare-fun d!1518161 () Bool)

(assert (=> d!1518161 e!2963131))

(declare-fun res!2014141 () Bool)

(assert (=> d!1518161 (=> res!2014141 e!2963131)))

(assert (=> d!1518161 (= res!2014141 e!2963132)))

(declare-fun res!2014142 () Bool)

(assert (=> d!1518161 (=> (not res!2014142) (not e!2963132))))

(declare-fun lt!1913722 () Bool)

(assert (=> d!1518161 (= res!2014142 (not lt!1913722))))

(declare-fun lt!1913716 () Bool)

(assert (=> d!1518161 (= lt!1913722 lt!1913716)))

(declare-fun lt!1913717 () Unit!135355)

(assert (=> d!1518161 (= lt!1913717 e!2963135)))

(assert (=> d!1518161 (= c!811111 lt!1913716)))

(assert (=> d!1518161 (= lt!1913716 (containsKey!3545 (toList!6102 lt!1913529) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518161 (= (contains!16484 lt!1913529 (_1!30708 (h!59467 (t!360518 l!14304)))) lt!1913722)))

(assert (= (and d!1518161 c!811111) b!4750251))

(assert (= (and d!1518161 (not c!811111)) b!4750247))

(assert (= (and b!4750247 c!811112) b!4750255))

(assert (= (and b!4750247 (not c!811112)) b!4750252))

(assert (= (or b!4750251 b!4750247) bm!332631))

(assert (= (and bm!332631 c!811110) b!4750250))

(assert (= (and bm!332631 (not c!811110)) b!4750253))

(assert (= (and d!1518161 res!2014142) b!4750249))

(assert (= (and d!1518161 (not res!2014141)) b!4750248))

(assert (= (and b!4750248 res!2014143) b!4750254))

(declare-fun m!5710841 () Bool)

(assert (=> b!4750254 m!5710841))

(assert (=> b!4750254 m!5710841))

(declare-fun m!5710843 () Bool)

(assert (=> b!4750254 m!5710843))

(declare-fun m!5710845 () Bool)

(assert (=> d!1518161 m!5710845))

(assert (=> b!4750255 m!5710845))

(declare-fun m!5710847 () Bool)

(assert (=> b!4750255 m!5710847))

(declare-fun m!5710849 () Bool)

(assert (=> b!4750248 m!5710849))

(assert (=> b!4750248 m!5710849))

(declare-fun m!5710851 () Bool)

(assert (=> b!4750248 m!5710851))

(declare-fun m!5710853 () Bool)

(assert (=> bm!332631 m!5710853))

(assert (=> b!4750249 m!5710841))

(assert (=> b!4750249 m!5710841))

(assert (=> b!4750249 m!5710843))

(declare-fun m!5710855 () Bool)

(assert (=> b!4750251 m!5710855))

(assert (=> b!4750251 m!5710849))

(assert (=> b!4750251 m!5710849))

(assert (=> b!4750251 m!5710851))

(declare-fun m!5710857 () Bool)

(assert (=> b!4750251 m!5710857))

(assert (=> b!4750253 m!5710841))

(declare-fun m!5710859 () Bool)

(assert (=> b!4750250 m!5710859))

(assert (=> b!4749987 d!1518161))

(declare-fun bs!1140144 () Bool)

(declare-fun b!4750259 () Bool)

(assert (= bs!1140144 (and b!4750259 b!4749988)))

(declare-fun lambda!221532 () Int)

(assert (=> bs!1140144 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221532 lambda!221521))))

(declare-fun bs!1140145 () Bool)

(assert (= bs!1140145 (and b!4750259 b!4749987)))

(assert (=> bs!1140145 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221532 lambda!221522))))

(assert (=> bs!1140145 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913543) (= lambda!221532 lambda!221523))))

(declare-fun bs!1140146 () Bool)

(assert (= bs!1140146 (and b!4750259 d!1518085)))

(assert (=> bs!1140146 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913530) (= lambda!221532 lambda!221524))))

(assert (=> b!4750259 true))

(declare-fun bs!1140147 () Bool)

(declare-fun b!4750258 () Bool)

(assert (= bs!1140147 (and b!4750258 b!4750259)))

(declare-fun lambda!221533 () Int)

(assert (=> bs!1140147 (= lambda!221533 lambda!221532)))

(declare-fun bs!1140148 () Bool)

(assert (= bs!1140148 (and b!4750258 b!4749987)))

(assert (=> bs!1140148 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221533 lambda!221522))))

(assert (=> bs!1140148 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913543) (= lambda!221533 lambda!221523))))

(declare-fun bs!1140149 () Bool)

(assert (= bs!1140149 (and b!4750258 b!4749988)))

(assert (=> bs!1140149 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221533 lambda!221521))))

(declare-fun bs!1140150 () Bool)

(assert (= bs!1140150 (and b!4750258 d!1518085)))

(assert (=> bs!1140150 (= (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913530) (= lambda!221533 lambda!221524))))

(assert (=> b!4750258 true))

(declare-fun lt!1913739 () ListMap!5513)

(declare-fun lambda!221534 () Int)

(assert (=> bs!1140147 (= (= lt!1913739 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221534 lambda!221532))))

(assert (=> b!4750258 (= (= lt!1913739 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221534 lambda!221533))))

(assert (=> bs!1140148 (= (= lt!1913739 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221534 lambda!221522))))

(assert (=> bs!1140148 (= (= lt!1913739 lt!1913543) (= lambda!221534 lambda!221523))))

(assert (=> bs!1140149 (= (= lt!1913739 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221534 lambda!221521))))

(assert (=> bs!1140150 (= (= lt!1913739 lt!1913530) (= lambda!221534 lambda!221524))))

(assert (=> b!4750258 true))

(declare-fun bs!1140151 () Bool)

(declare-fun d!1518163 () Bool)

(assert (= bs!1140151 (and d!1518163 b!4750259)))

(declare-fun lt!1913726 () ListMap!5513)

(declare-fun lambda!221535 () Int)

(assert (=> bs!1140151 (= (= lt!1913726 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221535 lambda!221532))))

(declare-fun bs!1140152 () Bool)

(assert (= bs!1140152 (and d!1518163 b!4750258)))

(assert (=> bs!1140152 (= (= lt!1913726 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221535 lambda!221533))))

(declare-fun bs!1140153 () Bool)

(assert (= bs!1140153 (and d!1518163 b!4749987)))

(assert (=> bs!1140153 (= (= lt!1913726 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221535 lambda!221522))))

(assert (=> bs!1140153 (= (= lt!1913726 lt!1913543) (= lambda!221535 lambda!221523))))

(assert (=> bs!1140152 (= (= lt!1913726 lt!1913739) (= lambda!221535 lambda!221534))))

(declare-fun bs!1140154 () Bool)

(assert (= bs!1140154 (and d!1518163 b!4749988)))

(assert (=> bs!1140154 (= (= lt!1913726 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221535 lambda!221521))))

(declare-fun bs!1140155 () Bool)

(assert (= bs!1140155 (and d!1518163 d!1518085)))

(assert (=> bs!1140155 (= (= lt!1913726 lt!1913530) (= lambda!221535 lambda!221524))))

(assert (=> d!1518163 true))

(declare-fun b!4750256 () Bool)

(declare-fun e!2963138 () Bool)

(assert (=> b!4750256 (= e!2963138 (invariantList!1582 (toList!6102 lt!1913726)))))

(declare-fun b!4750257 () Bool)

(declare-fun e!2963137 () Bool)

(assert (=> b!4750257 (= e!2963137 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lambda!221534))))

(assert (=> d!1518163 e!2963138))

(declare-fun res!2014146 () Bool)

(assert (=> d!1518163 (=> (not res!2014146) (not e!2963138))))

(assert (=> d!1518163 (= res!2014146 (forall!11750 (t!360518 (t!360518 l!14304)) lambda!221535))))

(declare-fun e!2963139 () ListMap!5513)

(assert (=> d!1518163 (= lt!1913726 e!2963139)))

(declare-fun c!811113 () Bool)

(assert (=> d!1518163 (= c!811113 ((_ is Nil!53070) (t!360518 (t!360518 l!14304))))))

(assert (=> d!1518163 (noDuplicateKeys!2134 (t!360518 (t!360518 l!14304)))))

(assert (=> d!1518163 (= (addToMapMapFromBucket!1558 (t!360518 (t!360518 l!14304)) (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lt!1913726)))

(declare-fun bm!332632 () Bool)

(declare-fun call!332637 () Bool)

(assert (=> bm!332632 (= call!332637 (forall!11750 (ite c!811113 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (t!360518 (t!360518 (t!360518 l!14304)))) (ite c!811113 lambda!221532 lambda!221534)))))

(declare-fun lt!1913725 () ListMap!5513)

(declare-fun bm!332633 () Bool)

(declare-fun call!332638 () Bool)

(assert (=> bm!332633 (= call!332638 (forall!11750 (ite c!811113 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (toList!6102 lt!1913725)) (ite c!811113 lambda!221532 lambda!221534)))))

(assert (=> b!4750258 (= e!2963139 lt!1913739)))

(assert (=> b!4750258 (= lt!1913725 (+!2368 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (h!59467 (t!360518 (t!360518 l!14304)))))))

(assert (=> b!4750258 (= lt!1913739 (addToMapMapFromBucket!1558 (t!360518 (t!360518 (t!360518 l!14304))) (+!2368 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) (h!59467 (t!360518 (t!360518 l!14304))))))))

(declare-fun lt!1913728 () Unit!135355)

(declare-fun call!332639 () Unit!135355)

(assert (=> b!4750258 (= lt!1913728 call!332639)))

(assert (=> b!4750258 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lambda!221533)))

(declare-fun lt!1913735 () Unit!135355)

(assert (=> b!4750258 (= lt!1913735 lt!1913728)))

(assert (=> b!4750258 (forall!11750 (toList!6102 lt!1913725) lambda!221534)))

(declare-fun lt!1913737 () Unit!135355)

(declare-fun Unit!135388 () Unit!135355)

(assert (=> b!4750258 (= lt!1913737 Unit!135388)))

(assert (=> b!4750258 call!332637))

(declare-fun lt!1913743 () Unit!135355)

(declare-fun Unit!135390 () Unit!135355)

(assert (=> b!4750258 (= lt!1913743 Unit!135390)))

(declare-fun lt!1913736 () Unit!135355)

(declare-fun Unit!135391 () Unit!135355)

(assert (=> b!4750258 (= lt!1913736 Unit!135391)))

(declare-fun lt!1913732 () Unit!135355)

(assert (=> b!4750258 (= lt!1913732 (forallContained!3776 (toList!6102 lt!1913725) lambda!221534 (h!59467 (t!360518 (t!360518 l!14304)))))))

(assert (=> b!4750258 (contains!16484 lt!1913725 (_1!30708 (h!59467 (t!360518 (t!360518 l!14304)))))))

(declare-fun lt!1913733 () Unit!135355)

(declare-fun Unit!135393 () Unit!135355)

(assert (=> b!4750258 (= lt!1913733 Unit!135393)))

(assert (=> b!4750258 (contains!16484 lt!1913739 (_1!30708 (h!59467 (t!360518 (t!360518 l!14304)))))))

(declare-fun lt!1913723 () Unit!135355)

(declare-fun Unit!135394 () Unit!135355)

(assert (=> b!4750258 (= lt!1913723 Unit!135394)))

(assert (=> b!4750258 (forall!11750 (t!360518 (t!360518 l!14304)) lambda!221534)))

(declare-fun lt!1913740 () Unit!135355)

(declare-fun Unit!135395 () Unit!135355)

(assert (=> b!4750258 (= lt!1913740 Unit!135395)))

(assert (=> b!4750258 call!332638))

(declare-fun lt!1913734 () Unit!135355)

(declare-fun Unit!135397 () Unit!135355)

(assert (=> b!4750258 (= lt!1913734 Unit!135397)))

(declare-fun lt!1913730 () Unit!135355)

(declare-fun Unit!135398 () Unit!135355)

(assert (=> b!4750258 (= lt!1913730 Unit!135398)))

(declare-fun lt!1913731 () Unit!135355)

(assert (=> b!4750258 (= lt!1913731 (addForallContainsKeyThenBeforeAdding!864 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913739 (_1!30708 (h!59467 (t!360518 (t!360518 l!14304)))) (_2!30708 (h!59467 (t!360518 (t!360518 l!14304))))))))

(assert (=> b!4750258 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lambda!221534)))

(declare-fun lt!1913724 () Unit!135355)

(assert (=> b!4750258 (= lt!1913724 lt!1913731)))

(assert (=> b!4750258 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lambda!221534)))

(declare-fun lt!1913741 () Unit!135355)

(declare-fun Unit!135399 () Unit!135355)

(assert (=> b!4750258 (= lt!1913741 Unit!135399)))

(declare-fun res!2014145 () Bool)

(assert (=> b!4750258 (= res!2014145 (forall!11750 (t!360518 (t!360518 l!14304)) lambda!221534))))

(assert (=> b!4750258 (=> (not res!2014145) (not e!2963137))))

(assert (=> b!4750258 e!2963137))

(declare-fun lt!1913729 () Unit!135355)

(declare-fun Unit!135400 () Unit!135355)

(assert (=> b!4750258 (= lt!1913729 Unit!135400)))

(assert (=> b!4750259 (= e!2963139 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))))))

(declare-fun lt!1913727 () Unit!135355)

(assert (=> b!4750259 (= lt!1913727 call!332639)))

(assert (=> b!4750259 call!332637))

(declare-fun lt!1913742 () Unit!135355)

(assert (=> b!4750259 (= lt!1913742 lt!1913727)))

(assert (=> b!4750259 call!332638))

(declare-fun lt!1913738 () Unit!135355)

(declare-fun Unit!135401 () Unit!135355)

(assert (=> b!4750259 (= lt!1913738 Unit!135401)))

(declare-fun b!4750260 () Bool)

(declare-fun res!2014144 () Bool)

(assert (=> b!4750260 (=> (not res!2014144) (not e!2963138))))

(assert (=> b!4750260 (= res!2014144 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) lambda!221535))))

(declare-fun bm!332634 () Bool)

(assert (=> bm!332634 (= call!332639 (lemmaContainsAllItsOwnKeys!865 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))))))

(assert (= (and d!1518163 c!811113) b!4750259))

(assert (= (and d!1518163 (not c!811113)) b!4750258))

(assert (= (and b!4750258 res!2014145) b!4750257))

(assert (= (or b!4750259 b!4750258) bm!332634))

(assert (= (or b!4750259 b!4750258) bm!332633))

(assert (= (or b!4750259 b!4750258) bm!332632))

(assert (= (and d!1518163 res!2014146) b!4750260))

(assert (= (and b!4750260 res!2014144) b!4750256))

(declare-fun m!5710947 () Bool)

(assert (=> bm!332632 m!5710947))

(assert (=> bm!332634 m!5710587))

(declare-fun m!5710949 () Bool)

(assert (=> bm!332634 m!5710949))

(declare-fun m!5710951 () Bool)

(assert (=> b!4750256 m!5710951))

(declare-fun m!5710953 () Bool)

(assert (=> bm!332633 m!5710953))

(declare-fun m!5710955 () Bool)

(assert (=> b!4750260 m!5710955))

(declare-fun m!5710957 () Bool)

(assert (=> b!4750257 m!5710957))

(declare-fun m!5710959 () Bool)

(assert (=> d!1518163 m!5710959))

(assert (=> d!1518163 m!5710515))

(declare-fun m!5710961 () Bool)

(assert (=> b!4750258 m!5710961))

(declare-fun m!5710963 () Bool)

(assert (=> b!4750258 m!5710963))

(declare-fun m!5710965 () Bool)

(assert (=> b!4750258 m!5710965))

(assert (=> b!4750258 m!5710587))

(declare-fun m!5710967 () Bool)

(assert (=> b!4750258 m!5710967))

(declare-fun m!5710969 () Bool)

(assert (=> b!4750258 m!5710969))

(assert (=> b!4750258 m!5710957))

(assert (=> b!4750258 m!5710587))

(declare-fun m!5710971 () Bool)

(assert (=> b!4750258 m!5710971))

(declare-fun m!5710973 () Bool)

(assert (=> b!4750258 m!5710973))

(assert (=> b!4750258 m!5710961))

(assert (=> b!4750258 m!5710967))

(declare-fun m!5710975 () Bool)

(assert (=> b!4750258 m!5710975))

(declare-fun m!5710977 () Bool)

(assert (=> b!4750258 m!5710977))

(assert (=> b!4750258 m!5710957))

(assert (=> b!4749987 d!1518163))

(declare-fun d!1518173 () Bool)

(declare-fun res!2014155 () Bool)

(declare-fun e!2963153 () Bool)

(assert (=> d!1518173 (=> res!2014155 e!2963153)))

(assert (=> d!1518173 (= res!2014155 ((_ is Nil!53070) (t!360518 l!14304)))))

(assert (=> d!1518173 (= (forall!11750 (t!360518 l!14304) lambda!221523) e!2963153)))

(declare-fun b!4750281 () Bool)

(declare-fun e!2963154 () Bool)

(assert (=> b!4750281 (= e!2963153 e!2963154)))

(declare-fun res!2014156 () Bool)

(assert (=> b!4750281 (=> (not res!2014156) (not e!2963154))))

(assert (=> b!4750281 (= res!2014156 (dynLambda!21899 lambda!221523 (h!59467 (t!360518 l!14304))))))

(declare-fun b!4750282 () Bool)

(assert (=> b!4750282 (= e!2963154 (forall!11750 (t!360518 (t!360518 l!14304)) lambda!221523))))

(assert (= (and d!1518173 (not res!2014155)) b!4750281))

(assert (= (and b!4750281 res!2014156) b!4750282))

(declare-fun b_lambda!183133 () Bool)

(assert (=> (not b_lambda!183133) (not b!4750281)))

(declare-fun m!5710979 () Bool)

(assert (=> b!4750281 m!5710979))

(declare-fun m!5710981 () Bool)

(assert (=> b!4750282 m!5710981))

(assert (=> b!4749987 d!1518173))

(declare-fun d!1518175 () Bool)

(declare-fun res!2014157 () Bool)

(declare-fun e!2963155 () Bool)

(assert (=> d!1518175 (=> res!2014157 e!2963155)))

(assert (=> d!1518175 (= res!2014157 ((_ is Nil!53070) (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))

(assert (=> d!1518175 (= (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221522) e!2963155)))

(declare-fun b!4750283 () Bool)

(declare-fun e!2963156 () Bool)

(assert (=> b!4750283 (= e!2963155 e!2963156)))

(declare-fun res!2014158 () Bool)

(assert (=> b!4750283 (=> (not res!2014158) (not e!2963156))))

(assert (=> b!4750283 (= res!2014158 (dynLambda!21899 lambda!221522 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))))))

(declare-fun b!4750284 () Bool)

(assert (=> b!4750284 (= e!2963156 (forall!11750 (t!360518 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))) lambda!221522))))

(assert (= (and d!1518175 (not res!2014157)) b!4750283))

(assert (= (and b!4750283 res!2014158) b!4750284))

(declare-fun b_lambda!183135 () Bool)

(assert (=> (not b_lambda!183135) (not b!4750283)))

(declare-fun m!5710983 () Bool)

(assert (=> b!4750283 m!5710983))

(declare-fun m!5710985 () Bool)

(assert (=> b!4750284 m!5710985))

(assert (=> b!4749987 d!1518175))

(declare-fun d!1518177 () Bool)

(declare-fun e!2963157 () Bool)

(assert (=> d!1518177 e!2963157))

(declare-fun res!2014159 () Bool)

(assert (=> d!1518177 (=> (not res!2014159) (not e!2963157))))

(declare-fun lt!1913766 () ListMap!5513)

(assert (=> d!1518177 (= res!2014159 (contains!16484 lt!1913766 (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun lt!1913767 () List!53194)

(assert (=> d!1518177 (= lt!1913766 (ListMap!5514 lt!1913767))))

(declare-fun lt!1913765 () Unit!135355)

(declare-fun lt!1913764 () Unit!135355)

(assert (=> d!1518177 (= lt!1913765 lt!1913764)))

(assert (=> d!1518177 (= (getValueByKey!2069 lt!1913767 (_1!30708 (h!59467 (t!360518 l!14304)))) (Some!12518 (_2!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518177 (= lt!1913764 (lemmaContainsTupThenGetReturnValue!1146 lt!1913767 (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518177 (= lt!1913767 (insertNoDuplicatedKeys!654 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518177 (= (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304))) lt!1913766)))

(declare-fun b!4750285 () Bool)

(declare-fun res!2014160 () Bool)

(assert (=> b!4750285 (=> (not res!2014160) (not e!2963157))))

(assert (=> b!4750285 (= res!2014160 (= (getValueByKey!2069 (toList!6102 lt!1913766) (_1!30708 (h!59467 (t!360518 l!14304)))) (Some!12518 (_2!30708 (h!59467 (t!360518 l!14304))))))))

(declare-fun b!4750286 () Bool)

(assert (=> b!4750286 (= e!2963157 (contains!16485 (toList!6102 lt!1913766) (h!59467 (t!360518 l!14304))))))

(assert (= (and d!1518177 res!2014159) b!4750285))

(assert (= (and b!4750285 res!2014160) b!4750286))

(declare-fun m!5710987 () Bool)

(assert (=> d!1518177 m!5710987))

(declare-fun m!5710989 () Bool)

(assert (=> d!1518177 m!5710989))

(declare-fun m!5710991 () Bool)

(assert (=> d!1518177 m!5710991))

(declare-fun m!5710993 () Bool)

(assert (=> d!1518177 m!5710993))

(declare-fun m!5710995 () Bool)

(assert (=> b!4750285 m!5710995))

(declare-fun m!5710997 () Bool)

(assert (=> b!4750286 m!5710997))

(assert (=> b!4749987 d!1518177))

(declare-fun d!1518179 () Bool)

(declare-fun res!2014161 () Bool)

(declare-fun e!2963158 () Bool)

(assert (=> d!1518179 (=> res!2014161 e!2963158)))

(assert (=> d!1518179 (= res!2014161 ((_ is Nil!53070) (toList!6102 lt!1913529)))))

(assert (=> d!1518179 (= (forall!11750 (toList!6102 lt!1913529) lambda!221523) e!2963158)))

(declare-fun b!4750287 () Bool)

(declare-fun e!2963159 () Bool)

(assert (=> b!4750287 (= e!2963158 e!2963159)))

(declare-fun res!2014162 () Bool)

(assert (=> b!4750287 (=> (not res!2014162) (not e!2963159))))

(assert (=> b!4750287 (= res!2014162 (dynLambda!21899 lambda!221523 (h!59467 (toList!6102 lt!1913529))))))

(declare-fun b!4750288 () Bool)

(assert (=> b!4750288 (= e!2963159 (forall!11750 (t!360518 (toList!6102 lt!1913529)) lambda!221523))))

(assert (= (and d!1518179 (not res!2014161)) b!4750287))

(assert (= (and b!4750287 res!2014162) b!4750288))

(declare-fun b_lambda!183137 () Bool)

(assert (=> (not b_lambda!183137) (not b!4750287)))

(declare-fun m!5710999 () Bool)

(assert (=> b!4750287 m!5710999))

(declare-fun m!5711001 () Bool)

(assert (=> b!4750288 m!5711001))

(assert (=> b!4749987 d!1518179))

(assert (=> b!4749987 d!1518109))

(declare-fun bs!1140166 () Bool)

(declare-fun d!1518181 () Bool)

(assert (= bs!1140166 (and d!1518181 b!4750259)))

(declare-fun lambda!221545 () Int)

(assert (=> bs!1140166 (= (= lt!1913543 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221545 lambda!221532))))

(declare-fun bs!1140167 () Bool)

(assert (= bs!1140167 (and d!1518181 b!4749987)))

(assert (=> bs!1140167 (= (= lt!1913543 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221545 lambda!221522))))

(assert (=> bs!1140167 (= lambda!221545 lambda!221523)))

(declare-fun bs!1140168 () Bool)

(assert (= bs!1140168 (and d!1518181 b!4750258)))

(assert (=> bs!1140168 (= (= lt!1913543 lt!1913739) (= lambda!221545 lambda!221534))))

(assert (=> bs!1140168 (= (= lt!1913543 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221545 lambda!221533))))

(declare-fun bs!1140169 () Bool)

(assert (= bs!1140169 (and d!1518181 d!1518163)))

(assert (=> bs!1140169 (= (= lt!1913543 lt!1913726) (= lambda!221545 lambda!221535))))

(declare-fun bs!1140170 () Bool)

(assert (= bs!1140170 (and d!1518181 b!4749988)))

(assert (=> bs!1140170 (= (= lt!1913543 (+!2368 acc!1214 (h!59467 l!14304))) (= lambda!221545 lambda!221521))))

(declare-fun bs!1140171 () Bool)

(assert (= bs!1140171 (and d!1518181 d!1518085)))

(assert (=> bs!1140171 (= (= lt!1913543 lt!1913530) (= lambda!221545 lambda!221524))))

(assert (=> d!1518181 true))

(assert (=> d!1518181 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221545)))

(declare-fun lt!1913773 () Unit!135355)

(declare-fun choose!33809 (ListMap!5513 ListMap!5513 K!14485 V!14731) Unit!135355)

(assert (=> d!1518181 (= lt!1913773 (choose!33809 (+!2368 acc!1214 (h!59467 l!14304)) lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> d!1518181 (forall!11750 (toList!6102 (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (tuple2!54829 (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))))) lambda!221545)))

(assert (=> d!1518181 (= (addForallContainsKeyThenBeforeAdding!864 (+!2368 acc!1214 (h!59467 l!14304)) lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304))) (_2!30708 (h!59467 (t!360518 l!14304)))) lt!1913773)))

(declare-fun bs!1140172 () Bool)

(assert (= bs!1140172 d!1518181))

(declare-fun m!5711027 () Bool)

(assert (=> bs!1140172 m!5711027))

(assert (=> bs!1140172 m!5710487))

(declare-fun m!5711029 () Bool)

(assert (=> bs!1140172 m!5711029))

(assert (=> bs!1140172 m!5710487))

(declare-fun m!5711031 () Bool)

(assert (=> bs!1140172 m!5711031))

(declare-fun m!5711033 () Bool)

(assert (=> bs!1140172 m!5711033))

(assert (=> b!4749987 d!1518181))

(declare-fun d!1518199 () Bool)

(assert (=> d!1518199 (dynLambda!21899 lambda!221523 (h!59467 (t!360518 l!14304)))))

(declare-fun lt!1913779 () Unit!135355)

(declare-fun choose!33810 (List!53194 Int tuple2!54828) Unit!135355)

(assert (=> d!1518199 (= lt!1913779 (choose!33810 (toList!6102 lt!1913529) lambda!221523 (h!59467 (t!360518 l!14304))))))

(declare-fun e!2963182 () Bool)

(assert (=> d!1518199 e!2963182))

(declare-fun res!2014181 () Bool)

(assert (=> d!1518199 (=> (not res!2014181) (not e!2963182))))

(assert (=> d!1518199 (= res!2014181 (forall!11750 (toList!6102 lt!1913529) lambda!221523))))

(assert (=> d!1518199 (= (forallContained!3776 (toList!6102 lt!1913529) lambda!221523 (h!59467 (t!360518 l!14304))) lt!1913779)))

(declare-fun b!4750315 () Bool)

(assert (=> b!4750315 (= e!2963182 (contains!16485 (toList!6102 lt!1913529) (h!59467 (t!360518 l!14304))))))

(assert (= (and d!1518199 res!2014181) b!4750315))

(declare-fun b_lambda!183161 () Bool)

(assert (=> (not b_lambda!183161) (not d!1518199)))

(assert (=> d!1518199 m!5710979))

(declare-fun m!5711049 () Bool)

(assert (=> d!1518199 m!5711049))

(assert (=> d!1518199 m!5710589))

(declare-fun m!5711053 () Bool)

(assert (=> b!4750315 m!5711053))

(assert (=> b!4749987 d!1518199))

(declare-fun d!1518213 () Bool)

(declare-fun res!2014182 () Bool)

(declare-fun e!2963183 () Bool)

(assert (=> d!1518213 (=> res!2014182 e!2963183)))

(assert (=> d!1518213 (= res!2014182 (and ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 l!14304))) (= (_1!30708 (h!59467 (t!360518 (Cons!53070 t!14174 l!14304)))) (_1!30708 (h!59467 (Cons!53070 t!14174 l!14304))))))))

(assert (=> d!1518213 (= (containsKey!3543 (t!360518 (Cons!53070 t!14174 l!14304)) (_1!30708 (h!59467 (Cons!53070 t!14174 l!14304)))) e!2963183)))

(declare-fun b!4750316 () Bool)

(declare-fun e!2963184 () Bool)

(assert (=> b!4750316 (= e!2963183 e!2963184)))

(declare-fun res!2014183 () Bool)

(assert (=> b!4750316 (=> (not res!2014183) (not e!2963184))))

(assert (=> b!4750316 (= res!2014183 ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 l!14304))))))

(declare-fun b!4750317 () Bool)

(assert (=> b!4750317 (= e!2963184 (containsKey!3543 (t!360518 (t!360518 (Cons!53070 t!14174 l!14304))) (_1!30708 (h!59467 (Cons!53070 t!14174 l!14304)))))))

(assert (= (and d!1518213 (not res!2014182)) b!4750316))

(assert (= (and b!4750316 res!2014183) b!4750317))

(declare-fun m!5711061 () Bool)

(assert (=> b!4750317 m!5711061))

(assert (=> b!4749998 d!1518213))

(declare-fun d!1518219 () Bool)

(declare-fun res!2014184 () Bool)

(declare-fun e!2963185 () Bool)

(assert (=> d!1518219 (=> res!2014184 e!2963185)))

(assert (=> d!1518219 (= res!2014184 (not ((_ is Cons!53070) (t!360518 (Cons!53070 t!14174 l!14304)))))))

(assert (=> d!1518219 (= (noDuplicateKeys!2134 (t!360518 (Cons!53070 t!14174 l!14304))) e!2963185)))

(declare-fun b!4750318 () Bool)

(declare-fun e!2963186 () Bool)

(assert (=> b!4750318 (= e!2963185 e!2963186)))

(declare-fun res!2014185 () Bool)

(assert (=> b!4750318 (=> (not res!2014185) (not e!2963186))))

(assert (=> b!4750318 (= res!2014185 (not (containsKey!3543 (t!360518 (t!360518 (Cons!53070 t!14174 l!14304))) (_1!30708 (h!59467 (t!360518 (Cons!53070 t!14174 l!14304)))))))))

(declare-fun b!4750319 () Bool)

(assert (=> b!4750319 (= e!2963186 (noDuplicateKeys!2134 (t!360518 (t!360518 (Cons!53070 t!14174 l!14304)))))))

(assert (= (and d!1518219 (not res!2014184)) b!4750318))

(assert (= (and b!4750318 res!2014185) b!4750319))

(declare-fun m!5711063 () Bool)

(assert (=> b!4750318 m!5711063))

(declare-fun m!5711065 () Bool)

(assert (=> b!4750319 m!5711065))

(assert (=> b!4749999 d!1518219))

(declare-fun d!1518221 () Bool)

(declare-fun res!2014186 () Bool)

(declare-fun e!2963187 () Bool)

(assert (=> d!1518221 (=> res!2014186 e!2963187)))

(assert (=> d!1518221 (= res!2014186 ((_ is Nil!53070) (t!360518 l!14304)))))

(assert (=> d!1518221 (= (forall!11750 (t!360518 l!14304) lambda!221524) e!2963187)))

(declare-fun b!4750320 () Bool)

(declare-fun e!2963188 () Bool)

(assert (=> b!4750320 (= e!2963187 e!2963188)))

(declare-fun res!2014187 () Bool)

(assert (=> b!4750320 (=> (not res!2014187) (not e!2963188))))

(assert (=> b!4750320 (= res!2014187 (dynLambda!21899 lambda!221524 (h!59467 (t!360518 l!14304))))))

(declare-fun b!4750321 () Bool)

(assert (=> b!4750321 (= e!2963188 (forall!11750 (t!360518 (t!360518 l!14304)) lambda!221524))))

(assert (= (and d!1518221 (not res!2014186)) b!4750320))

(assert (= (and b!4750320 res!2014187) b!4750321))

(declare-fun b_lambda!183163 () Bool)

(assert (=> (not b_lambda!183163) (not b!4750320)))

(declare-fun m!5711067 () Bool)

(assert (=> b!4750320 m!5711067))

(declare-fun m!5711069 () Bool)

(assert (=> b!4750321 m!5711069))

(assert (=> d!1518085 d!1518221))

(assert (=> d!1518085 d!1518083))

(declare-fun d!1518223 () Bool)

(declare-fun res!2014188 () Bool)

(declare-fun e!2963189 () Bool)

(assert (=> d!1518223 (=> res!2014188 e!2963189)))

(assert (=> d!1518223 (= res!2014188 ((_ is Nil!53070) (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))

(assert (=> d!1518223 (= (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221524) e!2963189)))

(declare-fun b!4750322 () Bool)

(declare-fun e!2963190 () Bool)

(assert (=> b!4750322 (= e!2963189 e!2963190)))

(declare-fun res!2014189 () Bool)

(assert (=> b!4750322 (=> (not res!2014189) (not e!2963190))))

(assert (=> b!4750322 (= res!2014189 (dynLambda!21899 lambda!221524 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))))))

(declare-fun b!4750323 () Bool)

(assert (=> b!4750323 (= e!2963190 (forall!11750 (t!360518 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))) lambda!221524))))

(assert (= (and d!1518223 (not res!2014188)) b!4750322))

(assert (= (and b!4750322 res!2014189) b!4750323))

(declare-fun b_lambda!183165 () Bool)

(assert (=> (not b_lambda!183165) (not b!4750322)))

(declare-fun m!5711071 () Bool)

(assert (=> b!4750322 m!5711071))

(declare-fun m!5711073 () Bool)

(assert (=> b!4750323 m!5711073))

(assert (=> b!4749989 d!1518223))

(declare-fun b!4750325 () Bool)

(declare-fun e!2963191 () Option!12519)

(declare-fun e!2963192 () Option!12519)

(assert (=> b!4750325 (= e!2963191 e!2963192)))

(declare-fun c!811123 () Bool)

(assert (=> b!4750325 (= c!811123 (and ((_ is Cons!53070) (toList!6102 lt!1913558)) (not (= (_1!30708 (h!59467 (toList!6102 lt!1913558))) (_1!30708 (h!59467 l!14304))))))))

(declare-fun b!4750324 () Bool)

(assert (=> b!4750324 (= e!2963191 (Some!12518 (_2!30708 (h!59467 (toList!6102 lt!1913558)))))))

(declare-fun d!1518225 () Bool)

(declare-fun c!811122 () Bool)

(assert (=> d!1518225 (= c!811122 (and ((_ is Cons!53070) (toList!6102 lt!1913558)) (= (_1!30708 (h!59467 (toList!6102 lt!1913558))) (_1!30708 (h!59467 l!14304)))))))

(assert (=> d!1518225 (= (getValueByKey!2069 (toList!6102 lt!1913558) (_1!30708 (h!59467 l!14304))) e!2963191)))

(declare-fun b!4750327 () Bool)

(assert (=> b!4750327 (= e!2963192 None!12518)))

(declare-fun b!4750326 () Bool)

(assert (=> b!4750326 (= e!2963192 (getValueByKey!2069 (t!360518 (toList!6102 lt!1913558)) (_1!30708 (h!59467 l!14304))))))

(assert (= (and d!1518225 c!811122) b!4750324))

(assert (= (and d!1518225 (not c!811122)) b!4750325))

(assert (= (and b!4750325 c!811123) b!4750326))

(assert (= (and b!4750325 (not c!811123)) b!4750327))

(declare-fun m!5711075 () Bool)

(assert (=> b!4750326 m!5711075))

(assert (=> b!4749996 d!1518225))

(declare-fun d!1518227 () Bool)

(declare-fun res!2014190 () Bool)

(declare-fun e!2963193 () Bool)

(assert (=> d!1518227 (=> res!2014190 e!2963193)))

(assert (=> d!1518227 (= res!2014190 (and ((_ is Cons!53070) (t!360518 l!14304)) (= (_1!30708 (h!59467 (t!360518 l!14304))) (_1!30708 (h!59467 l!14304)))))))

(assert (=> d!1518227 (= (containsKey!3543 (t!360518 l!14304) (_1!30708 (h!59467 l!14304))) e!2963193)))

(declare-fun b!4750328 () Bool)

(declare-fun e!2963194 () Bool)

(assert (=> b!4750328 (= e!2963193 e!2963194)))

(declare-fun res!2014191 () Bool)

(assert (=> b!4750328 (=> (not res!2014191) (not e!2963194))))

(assert (=> b!4750328 (= res!2014191 ((_ is Cons!53070) (t!360518 l!14304)))))

(declare-fun b!4750329 () Bool)

(assert (=> b!4750329 (= e!2963194 (containsKey!3543 (t!360518 (t!360518 l!14304)) (_1!30708 (h!59467 l!14304))))))

(assert (= (and d!1518227 (not res!2014190)) b!4750328))

(assert (= (and b!4750328 res!2014191) b!4750329))

(declare-fun m!5711077 () Bool)

(assert (=> b!4750329 m!5711077))

(assert (=> b!4750000 d!1518227))

(declare-fun d!1518229 () Bool)

(declare-fun res!2014192 () Bool)

(declare-fun e!2963195 () Bool)

(assert (=> d!1518229 (=> res!2014192 e!2963195)))

(assert (=> d!1518229 (= res!2014192 (and ((_ is Cons!53070) (t!360518 (t!360518 l!14304))) (= (_1!30708 (h!59467 (t!360518 (t!360518 l!14304)))) (_1!30708 (h!59467 (t!360518 l!14304))))))))

(assert (=> d!1518229 (= (containsKey!3543 (t!360518 (t!360518 l!14304)) (_1!30708 (h!59467 (t!360518 l!14304)))) e!2963195)))

(declare-fun b!4750330 () Bool)

(declare-fun e!2963196 () Bool)

(assert (=> b!4750330 (= e!2963195 e!2963196)))

(declare-fun res!2014193 () Bool)

(assert (=> b!4750330 (=> (not res!2014193) (not e!2963196))))

(assert (=> b!4750330 (= res!2014193 ((_ is Cons!53070) (t!360518 (t!360518 l!14304))))))

(declare-fun b!4750331 () Bool)

(assert (=> b!4750331 (= e!2963196 (containsKey!3543 (t!360518 (t!360518 (t!360518 l!14304))) (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (= (and d!1518229 (not res!2014192)) b!4750330))

(assert (= (and b!4750330 res!2014193) b!4750331))

(declare-fun m!5711079 () Bool)

(assert (=> b!4750331 m!5711079))

(assert (=> b!4749942 d!1518229))

(declare-fun d!1518231 () Bool)

(declare-fun res!2014194 () Bool)

(declare-fun e!2963197 () Bool)

(assert (=> d!1518231 (=> res!2014194 e!2963197)))

(assert (=> d!1518231 (= res!2014194 (not ((_ is Cons!53070) (t!360518 (t!360518 l!14304)))))))

(assert (=> d!1518231 (= (noDuplicateKeys!2134 (t!360518 (t!360518 l!14304))) e!2963197)))

(declare-fun b!4750332 () Bool)

(declare-fun e!2963198 () Bool)

(assert (=> b!4750332 (= e!2963197 e!2963198)))

(declare-fun res!2014195 () Bool)

(assert (=> b!4750332 (=> (not res!2014195) (not e!2963198))))

(assert (=> b!4750332 (= res!2014195 (not (containsKey!3543 (t!360518 (t!360518 (t!360518 l!14304))) (_1!30708 (h!59467 (t!360518 (t!360518 l!14304)))))))))

(declare-fun b!4750333 () Bool)

(assert (=> b!4750333 (= e!2963198 (noDuplicateKeys!2134 (t!360518 (t!360518 (t!360518 l!14304)))))))

(assert (= (and d!1518231 (not res!2014194)) b!4750332))

(assert (= (and b!4750332 res!2014195) b!4750333))

(declare-fun m!5711081 () Bool)

(assert (=> b!4750332 m!5711081))

(declare-fun m!5711083 () Bool)

(assert (=> b!4750333 m!5711083))

(assert (=> b!4749943 d!1518231))

(declare-fun bs!1140180 () Bool)

(declare-fun d!1518233 () Bool)

(assert (= bs!1140180 (and d!1518233 b!4750259)))

(declare-fun lambda!221548 () Int)

(assert (=> bs!1140180 (= (= (+!2368 acc!1214 (h!59467 l!14304)) (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221548 lambda!221532))))

(declare-fun bs!1140181 () Bool)

(assert (= bs!1140181 (and d!1518233 b!4749987)))

(assert (=> bs!1140181 (= lambda!221548 lambda!221522)))

(declare-fun bs!1140182 () Bool)

(assert (= bs!1140182 (and d!1518233 d!1518181)))

(assert (=> bs!1140182 (= (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913543) (= lambda!221548 lambda!221545))))

(assert (=> bs!1140181 (= (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913543) (= lambda!221548 lambda!221523))))

(declare-fun bs!1140183 () Bool)

(assert (= bs!1140183 (and d!1518233 b!4750258)))

(assert (=> bs!1140183 (= (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913739) (= lambda!221548 lambda!221534))))

(assert (=> bs!1140183 (= (= (+!2368 acc!1214 (h!59467 l!14304)) (+!2368 (+!2368 acc!1214 (h!59467 l!14304)) (h!59467 (t!360518 l!14304)))) (= lambda!221548 lambda!221533))))

(declare-fun bs!1140184 () Bool)

(assert (= bs!1140184 (and d!1518233 d!1518163)))

(assert (=> bs!1140184 (= (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913726) (= lambda!221548 lambda!221535))))

(declare-fun bs!1140185 () Bool)

(assert (= bs!1140185 (and d!1518233 b!4749988)))

(assert (=> bs!1140185 (= lambda!221548 lambda!221521)))

(declare-fun bs!1140186 () Bool)

(assert (= bs!1140186 (and d!1518233 d!1518085)))

(assert (=> bs!1140186 (= (= (+!2368 acc!1214 (h!59467 l!14304)) lt!1913530) (= lambda!221548 lambda!221524))))

(assert (=> d!1518233 true))

(assert (=> d!1518233 (forall!11750 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))) lambda!221548)))

(declare-fun lt!1913782 () Unit!135355)

(declare-fun choose!33812 (ListMap!5513) Unit!135355)

(assert (=> d!1518233 (= lt!1913782 (choose!33812 (+!2368 acc!1214 (h!59467 l!14304))))))

(assert (=> d!1518233 (= (lemmaContainsAllItsOwnKeys!865 (+!2368 acc!1214 (h!59467 l!14304))) lt!1913782)))

(declare-fun bs!1140187 () Bool)

(assert (= bs!1140187 d!1518233))

(declare-fun m!5711085 () Bool)

(assert (=> bs!1140187 m!5711085))

(assert (=> bs!1140187 m!5710487))

(declare-fun m!5711087 () Bool)

(assert (=> bs!1140187 m!5711087))

(assert (=> bm!332596 d!1518233))

(declare-fun d!1518235 () Bool)

(declare-fun lt!1913785 () Bool)

(declare-fun content!9518 (List!53194) (InoxSet tuple2!54828))

(assert (=> d!1518235 (= lt!1913785 (select (content!9518 (toList!6102 lt!1913558)) (h!59467 l!14304)))))

(declare-fun e!2963203 () Bool)

(assert (=> d!1518235 (= lt!1913785 e!2963203)))

(declare-fun res!2014201 () Bool)

(assert (=> d!1518235 (=> (not res!2014201) (not e!2963203))))

(assert (=> d!1518235 (= res!2014201 ((_ is Cons!53070) (toList!6102 lt!1913558)))))

(assert (=> d!1518235 (= (contains!16485 (toList!6102 lt!1913558) (h!59467 l!14304)) lt!1913785)))

(declare-fun b!4750338 () Bool)

(declare-fun e!2963204 () Bool)

(assert (=> b!4750338 (= e!2963203 e!2963204)))

(declare-fun res!2014200 () Bool)

(assert (=> b!4750338 (=> res!2014200 e!2963204)))

(assert (=> b!4750338 (= res!2014200 (= (h!59467 (toList!6102 lt!1913558)) (h!59467 l!14304)))))

(declare-fun b!4750339 () Bool)

(assert (=> b!4750339 (= e!2963204 (contains!16485 (t!360518 (toList!6102 lt!1913558)) (h!59467 l!14304)))))

(assert (= (and d!1518235 res!2014201) b!4750338))

(assert (= (and b!4750338 (not res!2014200)) b!4750339))

(declare-fun m!5711089 () Bool)

(assert (=> d!1518235 m!5711089))

(declare-fun m!5711091 () Bool)

(assert (=> d!1518235 m!5711091))

(declare-fun m!5711093 () Bool)

(assert (=> b!4750339 m!5711093))

(assert (=> b!4749997 d!1518235))

(assert (=> b!4750001 d!1518083))

(declare-fun tp!1350060 () Bool)

(declare-fun e!2963205 () Bool)

(declare-fun b!4750340 () Bool)

(assert (=> b!4750340 (= e!2963205 (and tp_is_empty!31829 tp_is_empty!31831 tp!1350060))))

(assert (=> b!4750006 (= tp!1350056 e!2963205)))

(assert (= (and b!4750006 ((_ is Cons!53070) (t!360518 (toList!6102 acc!1214)))) b!4750340))

(declare-fun b!4750341 () Bool)

(declare-fun e!2963206 () Bool)

(declare-fun tp!1350061 () Bool)

(assert (=> b!4750341 (= e!2963206 (and tp_is_empty!31829 tp_is_empty!31831 tp!1350061))))

(assert (=> b!4750007 (= tp!1350057 e!2963206)))

(assert (= (and b!4750007 ((_ is Cons!53070) (t!360518 (t!360518 l!14304)))) b!4750341))

(declare-fun b_lambda!183167 () Bool)

(assert (= b_lambda!183135 (or b!4749987 b_lambda!183167)))

(declare-fun bs!1140188 () Bool)

(declare-fun d!1518237 () Bool)

(assert (= bs!1140188 (and d!1518237 b!4749987)))

(assert (=> bs!1140188 (= (dynLambda!21899 lambda!221522 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))) (contains!16484 (+!2368 acc!1214 (h!59467 l!14304)) (_1!30708 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))))

(assert (=> bs!1140188 m!5710487))

(declare-fun m!5711095 () Bool)

(assert (=> bs!1140188 m!5711095))

(assert (=> b!4750283 d!1518237))

(declare-fun b_lambda!183169 () Bool)

(assert (= b_lambda!183165 (or d!1518085 b_lambda!183169)))

(declare-fun bs!1140189 () Bool)

(declare-fun d!1518239 () Bool)

(assert (= bs!1140189 (and d!1518239 d!1518085)))

(assert (=> bs!1140189 (= (dynLambda!21899 lambda!221524 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))) (contains!16484 lt!1913530 (_1!30708 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))))

(declare-fun m!5711097 () Bool)

(assert (=> bs!1140189 m!5711097))

(assert (=> b!4750322 d!1518239))

(declare-fun b_lambda!183171 () Bool)

(assert (= b_lambda!183137 (or b!4749987 b_lambda!183171)))

(declare-fun bs!1140190 () Bool)

(declare-fun d!1518241 () Bool)

(assert (= bs!1140190 (and d!1518241 b!4749987)))

(assert (=> bs!1140190 (= (dynLambda!21899 lambda!221523 (h!59467 (toList!6102 lt!1913529))) (contains!16484 lt!1913543 (_1!30708 (h!59467 (toList!6102 lt!1913529)))))))

(declare-fun m!5711099 () Bool)

(assert (=> bs!1140190 m!5711099))

(assert (=> b!4750287 d!1518241))

(declare-fun b_lambda!183173 () Bool)

(assert (= b_lambda!183115 (or b!4749987 b_lambda!183173)))

(declare-fun bs!1140191 () Bool)

(declare-fun d!1518243 () Bool)

(assert (= bs!1140191 (and d!1518243 b!4749987)))

(assert (=> bs!1140191 (= (dynLambda!21899 lambda!221523 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304))))) (contains!16484 lt!1913543 (_1!30708 (h!59467 (toList!6102 (+!2368 acc!1214 (h!59467 l!14304)))))))))

(declare-fun m!5711101 () Bool)

(assert (=> bs!1140191 m!5711101))

(assert (=> b!4750032 d!1518243))

(declare-fun b_lambda!183175 () Bool)

(assert (= b_lambda!183161 (or b!4749987 b_lambda!183175)))

(declare-fun bs!1140192 () Bool)

(declare-fun d!1518245 () Bool)

(assert (= bs!1140192 (and d!1518245 b!4749987)))

(assert (=> bs!1140192 (= (dynLambda!21899 lambda!221523 (h!59467 (t!360518 l!14304))) (contains!16484 lt!1913543 (_1!30708 (h!59467 (t!360518 l!14304)))))))

(assert (=> bs!1140192 m!5710593))

(assert (=> d!1518199 d!1518245))

(declare-fun b_lambda!183177 () Bool)

(assert (= b_lambda!183163 (or d!1518085 b_lambda!183177)))

(declare-fun bs!1140193 () Bool)

(declare-fun d!1518247 () Bool)

(assert (= bs!1140193 (and d!1518247 d!1518085)))

(assert (=> bs!1140193 (= (dynLambda!21899 lambda!221524 (h!59467 (t!360518 l!14304))) (contains!16484 lt!1913530 (_1!30708 (h!59467 (t!360518 l!14304)))))))

(declare-fun m!5711103 () Bool)

(assert (=> bs!1140193 m!5711103))

(assert (=> b!4750320 d!1518247))

(declare-fun b_lambda!183179 () Bool)

(assert (= b_lambda!183133 (or b!4749987 b_lambda!183179)))

(assert (=> b!4750281 d!1518245))

(check-sat (not b!4750260) (not b!4750331) (not d!1518105) (not b!4750245) (not bm!332634) (not b!4750257) (not d!1518125) (not bm!332623) (not b!4750223) (not b!4750233) (not d!1518113) (not b!4750333) tp_is_empty!31829 (not b_lambda!183173) (not b!4750326) (not b!4750246) (not b!4750091) (not b_lambda!183167) (not d!1518163) (not b!4750115) (not b!4750340) (not b!4750242) (not b!4750033) (not b!4750253) (not b!4750323) (not b!4750108) (not b!4750236) (not bm!332631) (not b!4750251) (not b!4750256) (not b!4750248) (not b!4750241) (not bm!332630) (not b!4750093) (not bs!1140191) (not b!4750235) (not d!1518159) (not b!4750217) (not b!4750250) (not b!4750043) (not b!4750097) (not bm!332624) (not b!4750244) (not d!1518177) (not b!4750218) (not b!4750222) (not b!4750282) (not b!4750240) (not b!4750284) (not b!4750239) (not d!1518181) tp_is_empty!31831 (not b!4750286) (not b!4750317) (not b!4750219) (not b_lambda!183131) (not b!4750237) (not b!4750114) (not bs!1140189) (not b!4750285) (not d!1518199) (not b!4750315) (not d!1518235) (not d!1518161) (not b_lambda!183129) (not bs!1140193) (not d!1518107) (not b!4750096) (not b!4750329) (not bs!1140188) (not b!4750318) (not b!4750332) (not d!1518123) (not b!4750090) (not b!4750255) (not b!4750258) (not bm!332602) (not b!4750339) (not b_lambda!183177) (not bs!1140192) (not b!4750288) (not b_lambda!183179) (not bm!332633) (not b_lambda!183175) (not b!4750212) (not bm!332632) (not b!4750221) (not b!4750095) (not b!4750341) (not bs!1140190) (not b!4750321) (not b!4750216) (not b!4750249) (not b!4750254) (not d!1518233) (not b_lambda!183169) (not b!4750319) (not b!4750092) (not b_lambda!183171))
(check-sat)
