; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416994 () Bool)

(assert start!416994)

(declare-fun res!1773955 () Bool)

(declare-fun e!2693668 () Bool)

(assert (=> start!416994 (=> (not res!1773955) (not e!2693668))))

(declare-datatypes ((K!9790 0))(
  ( (K!9791 (val!16103 Int)) )
))
(declare-datatypes ((V!10036 0))(
  ( (V!10037 (val!16104 Int)) )
))
(declare-datatypes ((tuple2!47568 0))(
  ( (tuple2!47569 (_1!27078 K!9790) (_2!27078 V!10036)) )
))
(declare-datatypes ((List!48612 0))(
  ( (Nil!48488) (Cons!48488 (h!53957 tuple2!47568) (t!355524 List!48612)) )
))
(declare-fun l!13867 () List!48612)

(declare-fun noDuplicateKeys!301 (List!48612) Bool)

(assert (=> start!416994 (= res!1773955 (noDuplicateKeys!301 l!13867))))

(assert (=> start!416994 e!2693668))

(declare-fun e!2693669 () Bool)

(assert (=> start!416994 e!2693669))

(declare-fun tp_is_empty!24393 () Bool)

(assert (=> start!416994 tp_is_empty!24393))

(declare-fun b!4328856 () Bool)

(declare-fun res!1773954 () Bool)

(assert (=> b!4328856 (=> (not res!1773954) (not e!2693668))))

(declare-fun key!5269 () K!9790)

(get-info :version)

(assert (=> b!4328856 (= res!1773954 (and (or (not ((_ is Cons!48488) l!13867)) (not (= (_1!27078 (h!53957 l!13867)) key!5269))) ((_ is Cons!48488) l!13867)))))

(declare-fun b!4328857 () Bool)

(declare-fun removePairForKey!309 (List!48612 K!9790) List!48612)

(assert (=> b!4328857 (= e!2693668 (not (noDuplicateKeys!301 (removePairForKey!309 l!13867 key!5269))))))

(declare-fun lt!1545319 () List!48612)

(declare-fun contains!10554 (List!48612 tuple2!47568) Bool)

(assert (=> b!4328857 (not (contains!10554 lt!1545319 (h!53957 l!13867)))))

(declare-datatypes ((Unit!68131 0))(
  ( (Unit!68132) )
))
(declare-fun lt!1545318 () Unit!68131)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!4 (List!48612 K!9790 V!10036) Unit!68131)

(assert (=> b!4328857 (= lt!1545318 (lemmaNotContainsKeyThenCannotContainPair!4 lt!1545319 (_1!27078 (h!53957 l!13867)) (_2!27078 (h!53957 l!13867))))))

(declare-fun containsKey!448 (List!48612 K!9790) Bool)

(assert (=> b!4328857 (not (containsKey!448 lt!1545319 (_1!27078 (h!53957 l!13867))))))

(declare-fun lt!1545321 () Unit!68131)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!8 (List!48612 K!9790 K!9790) Unit!68131)

(assert (=> b!4328857 (= lt!1545321 (lemmaRemovePairForKeyPreservesNotContainsKey!8 (t!355524 l!13867) key!5269 (_1!27078 (h!53957 l!13867))))))

(assert (=> b!4328857 (noDuplicateKeys!301 lt!1545319)))

(assert (=> b!4328857 (= lt!1545319 (removePairForKey!309 (t!355524 l!13867) key!5269))))

(declare-fun lt!1545320 () Unit!68131)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!217 (List!48612 K!9790) Unit!68131)

(assert (=> b!4328857 (= lt!1545320 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!217 (t!355524 l!13867) key!5269))))

(declare-fun tp_is_empty!24395 () Bool)

(declare-fun tp!1328088 () Bool)

(declare-fun b!4328858 () Bool)

(assert (=> b!4328858 (= e!2693669 (and tp_is_empty!24393 tp_is_empty!24395 tp!1328088))))

(assert (= (and start!416994 res!1773955) b!4328856))

(assert (= (and b!4328856 res!1773954) b!4328857))

(assert (= (and start!416994 ((_ is Cons!48488) l!13867)) b!4328858))

(declare-fun m!4923529 () Bool)

(assert (=> start!416994 m!4923529))

(declare-fun m!4923531 () Bool)

(assert (=> b!4328857 m!4923531))

(declare-fun m!4923533 () Bool)

(assert (=> b!4328857 m!4923533))

(declare-fun m!4923535 () Bool)

(assert (=> b!4328857 m!4923535))

(declare-fun m!4923537 () Bool)

(assert (=> b!4328857 m!4923537))

(declare-fun m!4923539 () Bool)

(assert (=> b!4328857 m!4923539))

(assert (=> b!4328857 m!4923537))

(declare-fun m!4923541 () Bool)

(assert (=> b!4328857 m!4923541))

(declare-fun m!4923543 () Bool)

(assert (=> b!4328857 m!4923543))

(declare-fun m!4923545 () Bool)

(assert (=> b!4328857 m!4923545))

(declare-fun m!4923547 () Bool)

(assert (=> b!4328857 m!4923547))

(check-sat (not b!4328857) tp_is_empty!24395 (not b!4328858) tp_is_empty!24393 (not start!416994))
(check-sat)
(get-model)

(declare-fun d!1272284 () Bool)

(declare-fun res!1773960 () Bool)

(declare-fun e!2693674 () Bool)

(assert (=> d!1272284 (=> res!1773960 e!2693674)))

(assert (=> d!1272284 (= res!1773960 (not ((_ is Cons!48488) l!13867)))))

(assert (=> d!1272284 (= (noDuplicateKeys!301 l!13867) e!2693674)))

(declare-fun b!4328863 () Bool)

(declare-fun e!2693675 () Bool)

(assert (=> b!4328863 (= e!2693674 e!2693675)))

(declare-fun res!1773961 () Bool)

(assert (=> b!4328863 (=> (not res!1773961) (not e!2693675))))

(assert (=> b!4328863 (= res!1773961 (not (containsKey!448 (t!355524 l!13867) (_1!27078 (h!53957 l!13867)))))))

(declare-fun b!4328864 () Bool)

(assert (=> b!4328864 (= e!2693675 (noDuplicateKeys!301 (t!355524 l!13867)))))

(assert (= (and d!1272284 (not res!1773960)) b!4328863))

(assert (= (and b!4328863 res!1773961) b!4328864))

(declare-fun m!4923549 () Bool)

(assert (=> b!4328863 m!4923549))

(declare-fun m!4923551 () Bool)

(assert (=> b!4328864 m!4923551))

(assert (=> start!416994 d!1272284))

(declare-fun d!1272288 () Bool)

(declare-fun res!1773966 () Bool)

(declare-fun e!2693680 () Bool)

(assert (=> d!1272288 (=> res!1773966 e!2693680)))

(assert (=> d!1272288 (= res!1773966 (not ((_ is Cons!48488) (removePairForKey!309 l!13867 key!5269))))))

(assert (=> d!1272288 (= (noDuplicateKeys!301 (removePairForKey!309 l!13867 key!5269)) e!2693680)))

(declare-fun b!4328869 () Bool)

(declare-fun e!2693681 () Bool)

(assert (=> b!4328869 (= e!2693680 e!2693681)))

(declare-fun res!1773967 () Bool)

(assert (=> b!4328869 (=> (not res!1773967) (not e!2693681))))

(assert (=> b!4328869 (= res!1773967 (not (containsKey!448 (t!355524 (removePairForKey!309 l!13867 key!5269)) (_1!27078 (h!53957 (removePairForKey!309 l!13867 key!5269))))))))

(declare-fun b!4328870 () Bool)

(assert (=> b!4328870 (= e!2693681 (noDuplicateKeys!301 (t!355524 (removePairForKey!309 l!13867 key!5269))))))

(assert (= (and d!1272288 (not res!1773966)) b!4328869))

(assert (= (and b!4328869 res!1773967) b!4328870))

(declare-fun m!4923553 () Bool)

(assert (=> b!4328869 m!4923553))

(declare-fun m!4923555 () Bool)

(assert (=> b!4328870 m!4923555))

(assert (=> b!4328857 d!1272288))

(declare-fun d!1272290 () Bool)

(assert (=> d!1272290 (not (containsKey!448 (removePairForKey!309 (t!355524 l!13867) key!5269) (_1!27078 (h!53957 l!13867))))))

(declare-fun lt!1545324 () Unit!68131)

(declare-fun choose!26474 (List!48612 K!9790 K!9790) Unit!68131)

(assert (=> d!1272290 (= lt!1545324 (choose!26474 (t!355524 l!13867) key!5269 (_1!27078 (h!53957 l!13867))))))

(assert (=> d!1272290 (noDuplicateKeys!301 (t!355524 l!13867))))

(assert (=> d!1272290 (= (lemmaRemovePairForKeyPreservesNotContainsKey!8 (t!355524 l!13867) key!5269 (_1!27078 (h!53957 l!13867))) lt!1545324)))

(declare-fun bs!607602 () Bool)

(assert (= bs!607602 d!1272290))

(assert (=> bs!607602 m!4923531))

(assert (=> bs!607602 m!4923531))

(declare-fun m!4923561 () Bool)

(assert (=> bs!607602 m!4923561))

(declare-fun m!4923563 () Bool)

(assert (=> bs!607602 m!4923563))

(assert (=> bs!607602 m!4923551))

(assert (=> b!4328857 d!1272290))

(declare-fun d!1272294 () Bool)

(declare-fun res!1773970 () Bool)

(declare-fun e!2693684 () Bool)

(assert (=> d!1272294 (=> res!1773970 e!2693684)))

(assert (=> d!1272294 (= res!1773970 (not ((_ is Cons!48488) lt!1545319)))))

(assert (=> d!1272294 (= (noDuplicateKeys!301 lt!1545319) e!2693684)))

(declare-fun b!4328873 () Bool)

(declare-fun e!2693685 () Bool)

(assert (=> b!4328873 (= e!2693684 e!2693685)))

(declare-fun res!1773971 () Bool)

(assert (=> b!4328873 (=> (not res!1773971) (not e!2693685))))

(assert (=> b!4328873 (= res!1773971 (not (containsKey!448 (t!355524 lt!1545319) (_1!27078 (h!53957 lt!1545319)))))))

(declare-fun b!4328874 () Bool)

(assert (=> b!4328874 (= e!2693685 (noDuplicateKeys!301 (t!355524 lt!1545319)))))

(assert (= (and d!1272294 (not res!1773970)) b!4328873))

(assert (= (and b!4328873 res!1773971) b!4328874))

(declare-fun m!4923565 () Bool)

(assert (=> b!4328873 m!4923565))

(declare-fun m!4923567 () Bool)

(assert (=> b!4328874 m!4923567))

(assert (=> b!4328857 d!1272294))

(declare-fun d!1272296 () Bool)

(declare-fun lt!1545333 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7581 (List!48612) (InoxSet tuple2!47568))

(assert (=> d!1272296 (= lt!1545333 (select (content!7581 lt!1545319) (h!53957 l!13867)))))

(declare-fun e!2693693 () Bool)

(assert (=> d!1272296 (= lt!1545333 e!2693693)))

(declare-fun res!1773978 () Bool)

(assert (=> d!1272296 (=> (not res!1773978) (not e!2693693))))

(assert (=> d!1272296 (= res!1773978 ((_ is Cons!48488) lt!1545319))))

(assert (=> d!1272296 (= (contains!10554 lt!1545319 (h!53957 l!13867)) lt!1545333)))

(declare-fun b!4328881 () Bool)

(declare-fun e!2693692 () Bool)

(assert (=> b!4328881 (= e!2693693 e!2693692)))

(declare-fun res!1773979 () Bool)

(assert (=> b!4328881 (=> res!1773979 e!2693692)))

(assert (=> b!4328881 (= res!1773979 (= (h!53957 lt!1545319) (h!53957 l!13867)))))

(declare-fun b!4328882 () Bool)

(assert (=> b!4328882 (= e!2693692 (contains!10554 (t!355524 lt!1545319) (h!53957 l!13867)))))

(assert (= (and d!1272296 res!1773978) b!4328881))

(assert (= (and b!4328881 (not res!1773979)) b!4328882))

(declare-fun m!4923583 () Bool)

(assert (=> d!1272296 m!4923583))

(declare-fun m!4923585 () Bool)

(assert (=> d!1272296 m!4923585))

(declare-fun m!4923587 () Bool)

(assert (=> b!4328882 m!4923587))

(assert (=> b!4328857 d!1272296))

(declare-fun b!4328904 () Bool)

(declare-fun e!2693705 () List!48612)

(declare-fun e!2693704 () List!48612)

(assert (=> b!4328904 (= e!2693705 e!2693704)))

(declare-fun c!736595 () Bool)

(assert (=> b!4328904 (= c!736595 ((_ is Cons!48488) (t!355524 l!13867)))))

(declare-fun b!4328906 () Bool)

(assert (=> b!4328906 (= e!2693704 Nil!48488)))

(declare-fun b!4328903 () Bool)

(assert (=> b!4328903 (= e!2693705 (t!355524 (t!355524 l!13867)))))

(declare-fun d!1272304 () Bool)

(declare-fun lt!1545339 () List!48612)

(assert (=> d!1272304 (not (containsKey!448 lt!1545339 key!5269))))

(assert (=> d!1272304 (= lt!1545339 e!2693705)))

(declare-fun c!736594 () Bool)

(assert (=> d!1272304 (= c!736594 (and ((_ is Cons!48488) (t!355524 l!13867)) (= (_1!27078 (h!53957 (t!355524 l!13867))) key!5269)))))

(assert (=> d!1272304 (noDuplicateKeys!301 (t!355524 l!13867))))

(assert (=> d!1272304 (= (removePairForKey!309 (t!355524 l!13867) key!5269) lt!1545339)))

(declare-fun b!4328905 () Bool)

(assert (=> b!4328905 (= e!2693704 (Cons!48488 (h!53957 (t!355524 l!13867)) (removePairForKey!309 (t!355524 (t!355524 l!13867)) key!5269)))))

(assert (= (and d!1272304 c!736594) b!4328903))

(assert (= (and d!1272304 (not c!736594)) b!4328904))

(assert (= (and b!4328904 c!736595) b!4328905))

(assert (= (and b!4328904 (not c!736595)) b!4328906))

(declare-fun m!4923593 () Bool)

(assert (=> d!1272304 m!4923593))

(assert (=> d!1272304 m!4923551))

(declare-fun m!4923595 () Bool)

(assert (=> b!4328905 m!4923595))

(assert (=> b!4328857 d!1272304))

(declare-fun d!1272308 () Bool)

(assert (=> d!1272308 (noDuplicateKeys!301 (removePairForKey!309 (t!355524 l!13867) key!5269))))

(declare-fun lt!1545345 () Unit!68131)

(declare-fun choose!26476 (List!48612 K!9790) Unit!68131)

(assert (=> d!1272308 (= lt!1545345 (choose!26476 (t!355524 l!13867) key!5269))))

(assert (=> d!1272308 (noDuplicateKeys!301 (t!355524 l!13867))))

(assert (=> d!1272308 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!217 (t!355524 l!13867) key!5269) lt!1545345)))

(declare-fun bs!607606 () Bool)

(assert (= bs!607606 d!1272308))

(assert (=> bs!607606 m!4923531))

(assert (=> bs!607606 m!4923531))

(declare-fun m!4923601 () Bool)

(assert (=> bs!607606 m!4923601))

(declare-fun m!4923603 () Bool)

(assert (=> bs!607606 m!4923603))

(assert (=> bs!607606 m!4923551))

(assert (=> b!4328857 d!1272308))

(declare-fun b!4328912 () Bool)

(declare-fun e!2693709 () List!48612)

(declare-fun e!2693708 () List!48612)

(assert (=> b!4328912 (= e!2693709 e!2693708)))

(declare-fun c!736599 () Bool)

(assert (=> b!4328912 (= c!736599 ((_ is Cons!48488) l!13867))))

(declare-fun b!4328914 () Bool)

(assert (=> b!4328914 (= e!2693708 Nil!48488)))

(declare-fun b!4328911 () Bool)

(assert (=> b!4328911 (= e!2693709 (t!355524 l!13867))))

(declare-fun d!1272312 () Bool)

(declare-fun lt!1545347 () List!48612)

(assert (=> d!1272312 (not (containsKey!448 lt!1545347 key!5269))))

(assert (=> d!1272312 (= lt!1545347 e!2693709)))

(declare-fun c!736598 () Bool)

(assert (=> d!1272312 (= c!736598 (and ((_ is Cons!48488) l!13867) (= (_1!27078 (h!53957 l!13867)) key!5269)))))

(assert (=> d!1272312 (noDuplicateKeys!301 l!13867)))

(assert (=> d!1272312 (= (removePairForKey!309 l!13867 key!5269) lt!1545347)))

(declare-fun b!4328913 () Bool)

(assert (=> b!4328913 (= e!2693708 (Cons!48488 (h!53957 l!13867) (removePairForKey!309 (t!355524 l!13867) key!5269)))))

(assert (= (and d!1272312 c!736598) b!4328911))

(assert (= (and d!1272312 (not c!736598)) b!4328912))

(assert (= (and b!4328912 c!736599) b!4328913))

(assert (= (and b!4328912 (not c!736599)) b!4328914))

(declare-fun m!4923607 () Bool)

(assert (=> d!1272312 m!4923607))

(assert (=> d!1272312 m!4923529))

(assert (=> b!4328913 m!4923531))

(assert (=> b!4328857 d!1272312))

(declare-fun d!1272316 () Bool)

(assert (=> d!1272316 (not (contains!10554 lt!1545319 (tuple2!47569 (_1!27078 (h!53957 l!13867)) (_2!27078 (h!53957 l!13867)))))))

(declare-fun lt!1545350 () Unit!68131)

(declare-fun choose!26478 (List!48612 K!9790 V!10036) Unit!68131)

(assert (=> d!1272316 (= lt!1545350 (choose!26478 lt!1545319 (_1!27078 (h!53957 l!13867)) (_2!27078 (h!53957 l!13867))))))

(assert (=> d!1272316 (not (containsKey!448 lt!1545319 (_1!27078 (h!53957 l!13867))))))

(assert (=> d!1272316 (= (lemmaNotContainsKeyThenCannotContainPair!4 lt!1545319 (_1!27078 (h!53957 l!13867)) (_2!27078 (h!53957 l!13867))) lt!1545350)))

(declare-fun bs!607607 () Bool)

(assert (= bs!607607 d!1272316))

(declare-fun m!4923611 () Bool)

(assert (=> bs!607607 m!4923611))

(declare-fun m!4923613 () Bool)

(assert (=> bs!607607 m!4923613))

(assert (=> bs!607607 m!4923543))

(assert (=> b!4328857 d!1272316))

(declare-fun d!1272320 () Bool)

(declare-fun res!1773994 () Bool)

(declare-fun e!2693724 () Bool)

(assert (=> d!1272320 (=> res!1773994 e!2693724)))

(assert (=> d!1272320 (= res!1773994 (and ((_ is Cons!48488) lt!1545319) (= (_1!27078 (h!53957 lt!1545319)) (_1!27078 (h!53957 l!13867)))))))

(assert (=> d!1272320 (= (containsKey!448 lt!1545319 (_1!27078 (h!53957 l!13867))) e!2693724)))

(declare-fun b!4328929 () Bool)

(declare-fun e!2693725 () Bool)

(assert (=> b!4328929 (= e!2693724 e!2693725)))

(declare-fun res!1773995 () Bool)

(assert (=> b!4328929 (=> (not res!1773995) (not e!2693725))))

(assert (=> b!4328929 (= res!1773995 ((_ is Cons!48488) lt!1545319))))

(declare-fun b!4328930 () Bool)

(assert (=> b!4328930 (= e!2693725 (containsKey!448 (t!355524 lt!1545319) (_1!27078 (h!53957 l!13867))))))

(assert (= (and d!1272320 (not res!1773994)) b!4328929))

(assert (= (and b!4328929 res!1773995) b!4328930))

(declare-fun m!4923615 () Bool)

(assert (=> b!4328930 m!4923615))

(assert (=> b!4328857 d!1272320))

(declare-fun e!2693730 () Bool)

(declare-fun b!4328937 () Bool)

(declare-fun tp!1328091 () Bool)

(assert (=> b!4328937 (= e!2693730 (and tp_is_empty!24393 tp_is_empty!24395 tp!1328091))))

(assert (=> b!4328858 (= tp!1328088 e!2693730)))

(assert (= (and b!4328858 ((_ is Cons!48488) (t!355524 l!13867))) b!4328937))

(check-sat (not d!1272312) (not d!1272316) tp_is_empty!24395 (not b!4328870) (not d!1272304) (not b!4328863) tp_is_empty!24393 (not b!4328913) (not b!4328882) (not b!4328930) (not b!4328869) (not b!4328905) (not d!1272308) (not b!4328937) (not b!4328864) (not d!1272296) (not b!4328873) (not d!1272290) (not b!4328874))
(check-sat)
