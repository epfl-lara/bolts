; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502374 () Bool)

(assert start!502374)

(declare-fun tp_is_empty!34665 () Bool)

(declare-fun tp!1363118 () Bool)

(declare-fun tp_is_empty!34667 () Bool)

(declare-fun b!4833393 () Bool)

(declare-fun e!3020439 () Bool)

(assert (=> b!4833393 (= e!3020439 (and tp_is_empty!34665 tp_is_empty!34667 tp!1363118))))

(declare-fun b!4833395 () Bool)

(declare-fun e!3020441 () Bool)

(declare-datatypes ((K!16814 0))(
  ( (K!16815 (val!21757 Int)) )
))
(declare-datatypes ((V!17060 0))(
  ( (V!17061 (val!21758 Int)) )
))
(declare-datatypes ((tuple2!58412 0))(
  ( (tuple2!58413 (_1!32500 K!16814) (_2!32500 V!17060)) )
))
(declare-datatypes ((List!55227 0))(
  ( (Nil!55103) (Cons!55103 (h!61537 tuple2!58412) (t!362723 List!55227)) )
))
(declare-fun l!14180 () List!55227)

(declare-fun ListPrimitiveSize!351 (List!55227) Int)

(assert (=> b!4833395 (= e!3020441 (>= (ListPrimitiveSize!351 (t!362723 l!14180)) (ListPrimitiveSize!351 l!14180)))))

(declare-fun res!2058958 () Bool)

(declare-fun e!3020438 () Bool)

(assert (=> start!502374 (=> (not res!2058958) (not e!3020438))))

(declare-fun noDuplicateKeys!2496 (List!55227) Bool)

(assert (=> start!502374 (= res!2058958 (noDuplicateKeys!2496 l!14180))))

(assert (=> start!502374 e!3020438))

(assert (=> start!502374 e!3020439))

(declare-datatypes ((ListMap!6973 0))(
  ( (ListMap!6974 (toList!7582 List!55227)) )
))
(declare-fun acc!1183 () ListMap!6973)

(declare-fun e!3020440 () Bool)

(declare-fun inv!70714 (ListMap!6973) Bool)

(assert (=> start!502374 (and (inv!70714 acc!1183) e!3020440)))

(declare-fun b!4833394 () Bool)

(declare-fun res!2058957 () Bool)

(assert (=> b!4833394 (=> (not res!2058957) (not e!3020438))))

(get-info :version)

(assert (=> b!4833394 (= res!2058957 (not ((_ is Nil!55103) l!14180)))))

(declare-fun b!4833396 () Bool)

(assert (=> b!4833396 (= e!3020438 e!3020441)))

(declare-fun res!2058959 () Bool)

(assert (=> b!4833396 (=> (not res!2058959) (not e!3020441))))

(assert (=> b!4833396 (= res!2058959 (noDuplicateKeys!2496 (t!362723 l!14180)))))

(declare-fun lt!1978979 () ListMap!6973)

(declare-fun addToMapMapFromBucket!1851 (List!55227 ListMap!6973) ListMap!6973)

(declare-fun +!2575 (ListMap!6973 tuple2!58412) ListMap!6973)

(assert (=> b!4833396 (= lt!1978979 (addToMapMapFromBucket!1851 (t!362723 l!14180) (+!2575 acc!1183 (h!61537 l!14180))))))

(declare-fun b!4833397 () Bool)

(declare-fun tp!1363117 () Bool)

(assert (=> b!4833397 (= e!3020440 tp!1363117)))

(assert (= (and start!502374 res!2058958) b!4833394))

(assert (= (and b!4833394 res!2058957) b!4833396))

(assert (= (and b!4833396 res!2058959) b!4833395))

(assert (= (and start!502374 ((_ is Cons!55103) l!14180)) b!4833393))

(assert (= start!502374 b!4833397))

(declare-fun m!5827822 () Bool)

(assert (=> b!4833395 m!5827822))

(declare-fun m!5827824 () Bool)

(assert (=> b!4833395 m!5827824))

(declare-fun m!5827826 () Bool)

(assert (=> start!502374 m!5827826))

(declare-fun m!5827828 () Bool)

(assert (=> start!502374 m!5827828))

(declare-fun m!5827830 () Bool)

(assert (=> b!4833396 m!5827830))

(declare-fun m!5827832 () Bool)

(assert (=> b!4833396 m!5827832))

(assert (=> b!4833396 m!5827832))

(declare-fun m!5827834 () Bool)

(assert (=> b!4833396 m!5827834))

(check-sat (not b!4833395) tp_is_empty!34665 (not b!4833393) (not b!4833396) tp_is_empty!34667 (not start!502374) (not b!4833397))
(check-sat)
(get-model)

(declare-fun d!1549814 () Bool)

(declare-fun lt!1978982 () Int)

(assert (=> d!1549814 (>= lt!1978982 0)))

(declare-fun e!3020444 () Int)

(assert (=> d!1549814 (= lt!1978982 e!3020444)))

(declare-fun c!823550 () Bool)

(assert (=> d!1549814 (= c!823550 ((_ is Nil!55103) (t!362723 l!14180)))))

(assert (=> d!1549814 (= (ListPrimitiveSize!351 (t!362723 l!14180)) lt!1978982)))

(declare-fun b!4833402 () Bool)

(assert (=> b!4833402 (= e!3020444 0)))

(declare-fun b!4833403 () Bool)

(assert (=> b!4833403 (= e!3020444 (+ 1 (ListPrimitiveSize!351 (t!362723 (t!362723 l!14180)))))))

(assert (= (and d!1549814 c!823550) b!4833402))

(assert (= (and d!1549814 (not c!823550)) b!4833403))

(declare-fun m!5827836 () Bool)

(assert (=> b!4833403 m!5827836))

(assert (=> b!4833395 d!1549814))

(declare-fun d!1549818 () Bool)

(declare-fun lt!1978983 () Int)

(assert (=> d!1549818 (>= lt!1978983 0)))

(declare-fun e!3020445 () Int)

(assert (=> d!1549818 (= lt!1978983 e!3020445)))

(declare-fun c!823551 () Bool)

(assert (=> d!1549818 (= c!823551 ((_ is Nil!55103) l!14180))))

(assert (=> d!1549818 (= (ListPrimitiveSize!351 l!14180) lt!1978983)))

(declare-fun b!4833404 () Bool)

(assert (=> b!4833404 (= e!3020445 0)))

(declare-fun b!4833405 () Bool)

(assert (=> b!4833405 (= e!3020445 (+ 1 (ListPrimitiveSize!351 (t!362723 l!14180))))))

(assert (= (and d!1549818 c!823551) b!4833404))

(assert (= (and d!1549818 (not c!823551)) b!4833405))

(assert (=> b!4833405 m!5827822))

(assert (=> b!4833395 d!1549818))

(declare-fun d!1549820 () Bool)

(declare-fun res!2058970 () Bool)

(declare-fun e!3020456 () Bool)

(assert (=> d!1549820 (=> res!2058970 e!3020456)))

(assert (=> d!1549820 (= res!2058970 (not ((_ is Cons!55103) (t!362723 l!14180))))))

(assert (=> d!1549820 (= (noDuplicateKeys!2496 (t!362723 l!14180)) e!3020456)))

(declare-fun b!4833416 () Bool)

(declare-fun e!3020457 () Bool)

(assert (=> b!4833416 (= e!3020456 e!3020457)))

(declare-fun res!2058971 () Bool)

(assert (=> b!4833416 (=> (not res!2058971) (not e!3020457))))

(declare-fun containsKey!4467 (List!55227 K!16814) Bool)

(assert (=> b!4833416 (= res!2058971 (not (containsKey!4467 (t!362723 (t!362723 l!14180)) (_1!32500 (h!61537 (t!362723 l!14180))))))))

(declare-fun b!4833417 () Bool)

(assert (=> b!4833417 (= e!3020457 (noDuplicateKeys!2496 (t!362723 (t!362723 l!14180))))))

(assert (= (and d!1549820 (not res!2058970)) b!4833416))

(assert (= (and b!4833416 res!2058971) b!4833417))

(declare-fun m!5827840 () Bool)

(assert (=> b!4833416 m!5827840))

(declare-fun m!5827842 () Bool)

(assert (=> b!4833417 m!5827842))

(assert (=> b!4833396 d!1549820))

(declare-fun b!4833447 () Bool)

(assert (=> b!4833447 true))

(declare-fun bs!1167212 () Bool)

(declare-fun b!4833448 () Bool)

(assert (= bs!1167212 (and b!4833448 b!4833447)))

(declare-fun lambda!238718 () Int)

(declare-fun lambda!238717 () Int)

(assert (=> bs!1167212 (= lambda!238718 lambda!238717)))

(assert (=> b!4833448 true))

(declare-fun lambda!238719 () Int)

(declare-fun lt!1979103 () ListMap!6973)

(assert (=> bs!1167212 (= (= lt!1979103 (+!2575 acc!1183 (h!61537 l!14180))) (= lambda!238719 lambda!238717))))

(assert (=> b!4833448 (= (= lt!1979103 (+!2575 acc!1183 (h!61537 l!14180))) (= lambda!238719 lambda!238718))))

(assert (=> b!4833448 true))

(declare-fun bs!1167213 () Bool)

(declare-fun d!1549824 () Bool)

(assert (= bs!1167213 (and d!1549824 b!4833447)))

(declare-fun lt!1979090 () ListMap!6973)

(declare-fun lambda!238720 () Int)

(assert (=> bs!1167213 (= (= lt!1979090 (+!2575 acc!1183 (h!61537 l!14180))) (= lambda!238720 lambda!238717))))

(declare-fun bs!1167214 () Bool)

(assert (= bs!1167214 (and d!1549824 b!4833448)))

(assert (=> bs!1167214 (= (= lt!1979090 (+!2575 acc!1183 (h!61537 l!14180))) (= lambda!238720 lambda!238718))))

(assert (=> bs!1167214 (= (= lt!1979090 lt!1979103) (= lambda!238720 lambda!238719))))

(assert (=> d!1549824 true))

(declare-fun e!3020477 () ListMap!6973)

(assert (=> b!4833447 (= e!3020477 (+!2575 acc!1183 (h!61537 l!14180)))))

(declare-datatypes ((Unit!144170 0))(
  ( (Unit!144171) )
))
(declare-fun lt!1979109 () Unit!144170)

(declare-fun call!336842 () Unit!144170)

(assert (=> b!4833447 (= lt!1979109 call!336842)))

(declare-fun call!336843 () Bool)

(assert (=> b!4833447 call!336843))

(declare-fun lt!1979104 () Unit!144170)

(assert (=> b!4833447 (= lt!1979104 lt!1979109)))

(declare-fun call!336844 () Bool)

(assert (=> b!4833447 call!336844))

(declare-fun lt!1979100 () Unit!144170)

(declare-fun Unit!144172 () Unit!144170)

(assert (=> b!4833447 (= lt!1979100 Unit!144172)))

(declare-fun bm!336837 () Bool)

(declare-fun c!823557 () Bool)

(declare-fun forall!12697 (List!55227 Int) Bool)

(assert (=> bm!336837 (= call!336844 (forall!12697 (ite c!823557 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) (t!362723 l!14180)) (ite c!823557 lambda!238717 lambda!238719)))))

(assert (=> b!4833448 (= e!3020477 lt!1979103)))

(declare-fun lt!1979108 () ListMap!6973)

(assert (=> b!4833448 (= lt!1979108 (+!2575 (+!2575 acc!1183 (h!61537 l!14180)) (h!61537 (t!362723 l!14180))))))

(assert (=> b!4833448 (= lt!1979103 (addToMapMapFromBucket!1851 (t!362723 (t!362723 l!14180)) (+!2575 (+!2575 acc!1183 (h!61537 l!14180)) (h!61537 (t!362723 l!14180)))))))

(declare-fun lt!1979101 () Unit!144170)

(assert (=> b!4833448 (= lt!1979101 call!336842)))

(assert (=> b!4833448 (forall!12697 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) lambda!238718)))

(declare-fun lt!1979098 () Unit!144170)

(assert (=> b!4833448 (= lt!1979098 lt!1979101)))

(assert (=> b!4833448 (forall!12697 (toList!7582 lt!1979108) lambda!238719)))

(declare-fun lt!1979093 () Unit!144170)

(declare-fun Unit!144175 () Unit!144170)

(assert (=> b!4833448 (= lt!1979093 Unit!144175)))

(assert (=> b!4833448 (forall!12697 (t!362723 (t!362723 l!14180)) lambda!238719)))

(declare-fun lt!1979107 () Unit!144170)

(declare-fun Unit!144176 () Unit!144170)

(assert (=> b!4833448 (= lt!1979107 Unit!144176)))

(declare-fun lt!1979091 () Unit!144170)

(declare-fun Unit!144177 () Unit!144170)

(assert (=> b!4833448 (= lt!1979091 Unit!144177)))

(declare-fun lt!1979094 () Unit!144170)

(declare-fun forallContained!4426 (List!55227 Int tuple2!58412) Unit!144170)

(assert (=> b!4833448 (= lt!1979094 (forallContained!4426 (toList!7582 lt!1979108) lambda!238719 (h!61537 (t!362723 l!14180))))))

(declare-fun contains!18914 (ListMap!6973 K!16814) Bool)

(assert (=> b!4833448 (contains!18914 lt!1979108 (_1!32500 (h!61537 (t!362723 l!14180))))))

(declare-fun lt!1979095 () Unit!144170)

(declare-fun Unit!144180 () Unit!144170)

(assert (=> b!4833448 (= lt!1979095 Unit!144180)))

(assert (=> b!4833448 (contains!18914 lt!1979103 (_1!32500 (h!61537 (t!362723 l!14180))))))

(declare-fun lt!1979102 () Unit!144170)

(declare-fun Unit!144182 () Unit!144170)

(assert (=> b!4833448 (= lt!1979102 Unit!144182)))

(assert (=> b!4833448 (forall!12697 (t!362723 l!14180) lambda!238719)))

(declare-fun lt!1979092 () Unit!144170)

(declare-fun Unit!144183 () Unit!144170)

(assert (=> b!4833448 (= lt!1979092 Unit!144183)))

(assert (=> b!4833448 (forall!12697 (toList!7582 lt!1979108) lambda!238719)))

(declare-fun lt!1979099 () Unit!144170)

(declare-fun Unit!144185 () Unit!144170)

(assert (=> b!4833448 (= lt!1979099 Unit!144185)))

(declare-fun lt!1979097 () Unit!144170)

(declare-fun Unit!144186 () Unit!144170)

(assert (=> b!4833448 (= lt!1979097 Unit!144186)))

(declare-fun lt!1979089 () Unit!144170)

(declare-fun addForallContainsKeyThenBeforeAdding!1013 (ListMap!6973 ListMap!6973 K!16814 V!17060) Unit!144170)

(assert (=> b!4833448 (= lt!1979089 (addForallContainsKeyThenBeforeAdding!1013 (+!2575 acc!1183 (h!61537 l!14180)) lt!1979103 (_1!32500 (h!61537 (t!362723 l!14180))) (_2!32500 (h!61537 (t!362723 l!14180)))))))

(assert (=> b!4833448 (forall!12697 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) lambda!238719)))

(declare-fun lt!1979096 () Unit!144170)

(assert (=> b!4833448 (= lt!1979096 lt!1979089)))

(assert (=> b!4833448 call!336843))

(declare-fun lt!1979105 () Unit!144170)

(declare-fun Unit!144191 () Unit!144170)

(assert (=> b!4833448 (= lt!1979105 Unit!144191)))

(declare-fun res!2058991 () Bool)

(assert (=> b!4833448 (= res!2058991 call!336844)))

(declare-fun e!3020476 () Bool)

(assert (=> b!4833448 (=> (not res!2058991) (not e!3020476))))

(assert (=> b!4833448 e!3020476))

(declare-fun lt!1979106 () Unit!144170)

(declare-fun Unit!144192 () Unit!144170)

(assert (=> b!4833448 (= lt!1979106 Unit!144192)))

(declare-fun e!3020475 () Bool)

(assert (=> d!1549824 e!3020475))

(declare-fun res!2058989 () Bool)

(assert (=> d!1549824 (=> (not res!2058989) (not e!3020475))))

(assert (=> d!1549824 (= res!2058989 (forall!12697 (t!362723 l!14180) lambda!238720))))

(assert (=> d!1549824 (= lt!1979090 e!3020477)))

(assert (=> d!1549824 (= c!823557 ((_ is Nil!55103) (t!362723 l!14180)))))

(assert (=> d!1549824 (noDuplicateKeys!2496 (t!362723 l!14180))))

(assert (=> d!1549824 (= (addToMapMapFromBucket!1851 (t!362723 l!14180) (+!2575 acc!1183 (h!61537 l!14180))) lt!1979090)))

(declare-fun b!4833449 () Bool)

(assert (=> b!4833449 (= e!3020476 (forall!12697 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) lambda!238719))))

(declare-fun b!4833450 () Bool)

(declare-fun res!2058990 () Bool)

(assert (=> b!4833450 (=> (not res!2058990) (not e!3020475))))

(assert (=> b!4833450 (= res!2058990 (forall!12697 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) lambda!238720))))

(declare-fun bm!336838 () Bool)

(assert (=> bm!336838 (= call!336843 (forall!12697 (toList!7582 (+!2575 acc!1183 (h!61537 l!14180))) (ite c!823557 lambda!238717 lambda!238719)))))

(declare-fun bm!336839 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1015 (ListMap!6973) Unit!144170)

(assert (=> bm!336839 (= call!336842 (lemmaContainsAllItsOwnKeys!1015 (+!2575 acc!1183 (h!61537 l!14180))))))

(declare-fun b!4833451 () Bool)

(declare-fun invariantList!1838 (List!55227) Bool)

(assert (=> b!4833451 (= e!3020475 (invariantList!1838 (toList!7582 lt!1979090)))))

(assert (= (and d!1549824 c!823557) b!4833447))

(assert (= (and d!1549824 (not c!823557)) b!4833448))

(assert (= (and b!4833448 res!2058991) b!4833449))

(assert (= (or b!4833447 b!4833448) bm!336837))

(assert (= (or b!4833447 b!4833448) bm!336838))

(assert (= (or b!4833447 b!4833448) bm!336839))

(assert (= (and d!1549824 res!2058989) b!4833450))

(assert (= (and b!4833450 res!2058990) b!4833451))

(assert (=> bm!336839 m!5827832))

(declare-fun m!5827882 () Bool)

(assert (=> bm!336839 m!5827882))

(declare-fun m!5827884 () Bool)

(assert (=> b!4833450 m!5827884))

(declare-fun m!5827886 () Bool)

(assert (=> b!4833451 m!5827886))

(declare-fun m!5827888 () Bool)

(assert (=> bm!336838 m!5827888))

(declare-fun m!5827890 () Bool)

(assert (=> b!4833448 m!5827890))

(assert (=> b!4833448 m!5827832))

(declare-fun m!5827892 () Bool)

(assert (=> b!4833448 m!5827892))

(assert (=> b!4833448 m!5827832))

(declare-fun m!5827894 () Bool)

(assert (=> b!4833448 m!5827894))

(declare-fun m!5827896 () Bool)

(assert (=> b!4833448 m!5827896))

(declare-fun m!5827898 () Bool)

(assert (=> b!4833448 m!5827898))

(declare-fun m!5827900 () Bool)

(assert (=> b!4833448 m!5827900))

(declare-fun m!5827902 () Bool)

(assert (=> b!4833448 m!5827902))

(assert (=> b!4833448 m!5827894))

(declare-fun m!5827904 () Bool)

(assert (=> b!4833448 m!5827904))

(declare-fun m!5827906 () Bool)

(assert (=> b!4833448 m!5827906))

(assert (=> b!4833448 m!5827896))

(declare-fun m!5827908 () Bool)

(assert (=> b!4833448 m!5827908))

(declare-fun m!5827910 () Bool)

(assert (=> b!4833448 m!5827910))

(assert (=> b!4833449 m!5827910))

(declare-fun m!5827912 () Bool)

(assert (=> d!1549824 m!5827912))

(assert (=> d!1549824 m!5827830))

(declare-fun m!5827914 () Bool)

(assert (=> bm!336837 m!5827914))

(assert (=> b!4833396 d!1549824))

(declare-fun d!1549832 () Bool)

(declare-fun e!3020489 () Bool)

(assert (=> d!1549832 e!3020489))

(declare-fun res!2059003 () Bool)

(assert (=> d!1549832 (=> (not res!2059003) (not e!3020489))))

(declare-fun lt!1979136 () ListMap!6973)

(assert (=> d!1549832 (= res!2059003 (contains!18914 lt!1979136 (_1!32500 (h!61537 l!14180))))))

(declare-fun lt!1979137 () List!55227)

(assert (=> d!1549832 (= lt!1979136 (ListMap!6974 lt!1979137))))

(declare-fun lt!1979134 () Unit!144170)

(declare-fun lt!1979135 () Unit!144170)

(assert (=> d!1549832 (= lt!1979134 lt!1979135)))

(declare-datatypes ((Option!13541 0))(
  ( (None!13540) (Some!13540 (v!49241 V!17060)) )
))
(declare-fun getValueByKey!2668 (List!55227 K!16814) Option!13541)

(assert (=> d!1549832 (= (getValueByKey!2668 lt!1979137 (_1!32500 (h!61537 l!14180))) (Some!13540 (_2!32500 (h!61537 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1238 (List!55227 K!16814 V!17060) Unit!144170)

(assert (=> d!1549832 (= lt!1979135 (lemmaContainsTupThenGetReturnValue!1238 lt!1979137 (_1!32500 (h!61537 l!14180)) (_2!32500 (h!61537 l!14180))))))

(declare-fun insertNoDuplicatedKeys!746 (List!55227 K!16814 V!17060) List!55227)

(assert (=> d!1549832 (= lt!1979137 (insertNoDuplicatedKeys!746 (toList!7582 acc!1183) (_1!32500 (h!61537 l!14180)) (_2!32500 (h!61537 l!14180))))))

(assert (=> d!1549832 (= (+!2575 acc!1183 (h!61537 l!14180)) lt!1979136)))

(declare-fun b!4833476 () Bool)

(declare-fun res!2059002 () Bool)

(assert (=> b!4833476 (=> (not res!2059002) (not e!3020489))))

(assert (=> b!4833476 (= res!2059002 (= (getValueByKey!2668 (toList!7582 lt!1979136) (_1!32500 (h!61537 l!14180))) (Some!13540 (_2!32500 (h!61537 l!14180)))))))

(declare-fun b!4833477 () Bool)

(declare-fun contains!18916 (List!55227 tuple2!58412) Bool)

(assert (=> b!4833477 (= e!3020489 (contains!18916 (toList!7582 lt!1979136) (h!61537 l!14180)))))

(assert (= (and d!1549832 res!2059003) b!4833476))

(assert (= (and b!4833476 res!2059002) b!4833477))

(declare-fun m!5827930 () Bool)

(assert (=> d!1549832 m!5827930))

(declare-fun m!5827932 () Bool)

(assert (=> d!1549832 m!5827932))

(declare-fun m!5827934 () Bool)

(assert (=> d!1549832 m!5827934))

(declare-fun m!5827936 () Bool)

(assert (=> d!1549832 m!5827936))

(declare-fun m!5827938 () Bool)

(assert (=> b!4833476 m!5827938))

(declare-fun m!5827940 () Bool)

(assert (=> b!4833477 m!5827940))

(assert (=> b!4833396 d!1549832))

(declare-fun d!1549838 () Bool)

(declare-fun res!2059004 () Bool)

(declare-fun e!3020492 () Bool)

(assert (=> d!1549838 (=> res!2059004 e!3020492)))

(assert (=> d!1549838 (= res!2059004 (not ((_ is Cons!55103) l!14180)))))

(assert (=> d!1549838 (= (noDuplicateKeys!2496 l!14180) e!3020492)))

(declare-fun b!4833480 () Bool)

(declare-fun e!3020493 () Bool)

(assert (=> b!4833480 (= e!3020492 e!3020493)))

(declare-fun res!2059005 () Bool)

(assert (=> b!4833480 (=> (not res!2059005) (not e!3020493))))

(assert (=> b!4833480 (= res!2059005 (not (containsKey!4467 (t!362723 l!14180) (_1!32500 (h!61537 l!14180)))))))

(declare-fun b!4833481 () Bool)

(assert (=> b!4833481 (= e!3020493 (noDuplicateKeys!2496 (t!362723 l!14180)))))

(assert (= (and d!1549838 (not res!2059004)) b!4833480))

(assert (= (and b!4833480 res!2059005) b!4833481))

(declare-fun m!5827942 () Bool)

(assert (=> b!4833480 m!5827942))

(assert (=> b!4833481 m!5827830))

(assert (=> start!502374 d!1549838))

(declare-fun d!1549840 () Bool)

(assert (=> d!1549840 (= (inv!70714 acc!1183) (invariantList!1838 (toList!7582 acc!1183)))))

(declare-fun bs!1167215 () Bool)

(assert (= bs!1167215 d!1549840))

(declare-fun m!5827944 () Bool)

(assert (=> bs!1167215 m!5827944))

(assert (=> start!502374 d!1549840))

(declare-fun e!3020496 () Bool)

(declare-fun b!4833486 () Bool)

(declare-fun tp!1363125 () Bool)

(assert (=> b!4833486 (= e!3020496 (and tp_is_empty!34665 tp_is_empty!34667 tp!1363125))))

(assert (=> b!4833397 (= tp!1363117 e!3020496)))

(assert (= (and b!4833397 ((_ is Cons!55103) (toList!7582 acc!1183))) b!4833486))

(declare-fun e!3020497 () Bool)

(declare-fun tp!1363126 () Bool)

(declare-fun b!4833487 () Bool)

(assert (=> b!4833487 (= e!3020497 (and tp_is_empty!34665 tp_is_empty!34667 tp!1363126))))

(assert (=> b!4833393 (= tp!1363118 e!3020497)))

(assert (= (and b!4833393 ((_ is Cons!55103) (t!362723 l!14180))) b!4833487))

(check-sat (not b!4833481) (not b!4833448) (not d!1549832) (not b!4833487) (not b!4833476) tp_is_empty!34667 (not b!4833486) (not d!1549824) (not bm!336839) (not b!4833403) (not b!4833416) (not bm!336838) (not b!4833451) (not b!4833417) (not b!4833405) (not b!4833477) tp_is_empty!34665 (not bm!336837) (not b!4833450) (not b!4833449) (not d!1549840) (not b!4833480))
(check-sat)
