; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108020 () Bool)

(assert start!108020)

(declare-fun b!1211000 () Bool)

(declare-fun e!776905 () Bool)

(declare-fun tp_is_empty!6233 () Bool)

(declare-fun tp!342948 () Bool)

(assert (=> b!1211000 (= e!776905 (and tp_is_empty!6233 tp!342948))))

(declare-fun b!1211001 () Bool)

(declare-fun e!776904 () Bool)

(declare-fun e!776903 () Bool)

(assert (=> b!1211001 (= e!776904 e!776903)))

(declare-fun res!544694 () Bool)

(assert (=> b!1211001 (=> (not res!544694) (not e!776903))))

(declare-datatypes ((B!1375 0))(
  ( (B!1376 (val!4045 Int)) )
))
(declare-datatypes ((List!12292 0))(
  ( (Nil!12234) (Cons!12234 (h!17635 B!1375) (t!112676 List!12292)) )
))
(declare-fun lt!414494 () List!12292)

(declare-fun e!9491 () B!1375)

(declare-fun l!3821 () List!12292)

(declare-fun -!95 (List!12292 B!1375) List!12292)

(assert (=> b!1211001 (= res!544694 (= lt!414494 (-!95 (t!112676 l!3821) e!9491)))))

(assert (=> b!1211001 (= lt!414494 (-!95 l!3821 e!9491))))

(declare-fun b!1211002 () Bool)

(declare-fun res!544697 () Bool)

(assert (=> b!1211002 (=> (not res!544697) (not e!776903))))

(declare-fun contains!2051 (List!12292 B!1375) Bool)

(assert (=> b!1211002 (= res!544697 (not (contains!2051 (t!112676 l!3821) e!9491)))))

(declare-fun b!1211003 () Bool)

(declare-fun size!9750 (List!12292) Int)

(assert (=> b!1211003 (= e!776903 (>= (size!9750 lt!414494) (size!9750 l!3821)))))

(declare-fun b!1211004 () Bool)

(declare-fun res!544696 () Bool)

(assert (=> b!1211004 (=> (not res!544696) (not e!776904))))

(assert (=> b!1211004 (= res!544696 (and (is-Cons!12234 l!3821) (= (h!17635 l!3821) e!9491)))))

(declare-fun res!544695 () Bool)

(assert (=> start!108020 (=> (not res!544695) (not e!776904))))

(assert (=> start!108020 (= res!544695 (contains!2051 l!3821 e!9491))))

(assert (=> start!108020 e!776904))

(assert (=> start!108020 e!776905))

(assert (=> start!108020 tp_is_empty!6233))

(assert (= (and start!108020 res!544695) b!1211004))

(assert (= (and b!1211004 res!544696) b!1211001))

(assert (= (and b!1211001 res!544694) b!1211002))

(assert (= (and b!1211002 res!544697) b!1211003))

(assert (= (and start!108020 (is-Cons!12234 l!3821)) b!1211000))

(declare-fun m!1386783 () Bool)

(assert (=> b!1211001 m!1386783))

(declare-fun m!1386785 () Bool)

(assert (=> b!1211001 m!1386785))

(declare-fun m!1386787 () Bool)

(assert (=> b!1211002 m!1386787))

(declare-fun m!1386789 () Bool)

(assert (=> b!1211003 m!1386789))

(declare-fun m!1386791 () Bool)

(assert (=> b!1211003 m!1386791))

(declare-fun m!1386793 () Bool)

(assert (=> start!108020 m!1386793))

(push 1)

(assert (not b!1211003))

(assert (not b!1211001))

(assert (not b!1211000))

(assert (not start!108020))

(assert (not b!1211002))

(assert tp_is_empty!6233)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!346446 () Bool)

(declare-fun lt!414500 () Bool)

(declare-fun content!1748 (List!12292) (Set B!1375))

(assert (=> d!346446 (= lt!414500 (set.member e!9491 (content!1748 l!3821)))))

(declare-fun e!776920 () Bool)

(assert (=> d!346446 (= lt!414500 e!776920)))

(declare-fun res!544715 () Bool)

(assert (=> d!346446 (=> (not res!544715) (not e!776920))))

(assert (=> d!346446 (= res!544715 (is-Cons!12234 l!3821))))

(assert (=> d!346446 (= (contains!2051 l!3821 e!9491) lt!414500)))

(declare-fun b!1211024 () Bool)

(declare-fun e!776919 () Bool)

(assert (=> b!1211024 (= e!776920 e!776919)))

(declare-fun res!544714 () Bool)

(assert (=> b!1211024 (=> res!544714 e!776919)))

(assert (=> b!1211024 (= res!544714 (= (h!17635 l!3821) e!9491))))

(declare-fun b!1211025 () Bool)

(assert (=> b!1211025 (= e!776919 (contains!2051 (t!112676 l!3821) e!9491))))

(assert (= (and d!346446 res!544715) b!1211024))

(assert (= (and b!1211024 (not res!544714)) b!1211025))

(declare-fun m!1386807 () Bool)

(assert (=> d!346446 m!1386807))

(declare-fun m!1386809 () Bool)

(assert (=> d!346446 m!1386809))

(assert (=> b!1211025 m!1386787))

(assert (=> start!108020 d!346446))

(declare-fun d!346450 () Bool)

(declare-fun lt!414503 () Int)

(assert (=> d!346450 (>= lt!414503 0)))

(declare-fun e!776923 () Int)

(assert (=> d!346450 (= lt!414503 e!776923)))

(declare-fun c!202836 () Bool)

(assert (=> d!346450 (= c!202836 (is-Nil!12234 lt!414494))))

(assert (=> d!346450 (= (size!9750 lt!414494) lt!414503)))

(declare-fun b!1211030 () Bool)

(assert (=> b!1211030 (= e!776923 0)))

(declare-fun b!1211031 () Bool)

(assert (=> b!1211031 (= e!776923 (+ 1 (size!9750 (t!112676 lt!414494))))))

(assert (= (and d!346450 c!202836) b!1211030))

(assert (= (and d!346450 (not c!202836)) b!1211031))

(declare-fun m!1386811 () Bool)

(assert (=> b!1211031 m!1386811))

(assert (=> b!1211003 d!346450))

(declare-fun d!346452 () Bool)

(declare-fun lt!414506 () Int)

(assert (=> d!346452 (>= lt!414506 0)))

(declare-fun e!776926 () Int)

(assert (=> d!346452 (= lt!414506 e!776926)))

(declare-fun c!202837 () Bool)

(assert (=> d!346452 (= c!202837 (is-Nil!12234 l!3821))))

(assert (=> d!346452 (= (size!9750 l!3821) lt!414506)))

(declare-fun b!1211034 () Bool)

(assert (=> b!1211034 (= e!776926 0)))

(declare-fun b!1211035 () Bool)

(assert (=> b!1211035 (= e!776926 (+ 1 (size!9750 (t!112676 l!3821))))))

(assert (= (and d!346452 c!202837) b!1211034))

(assert (= (and d!346452 (not c!202837)) b!1211035))

(declare-fun m!1386813 () Bool)

(assert (=> b!1211035 m!1386813))

(assert (=> b!1211003 d!346452))

(declare-fun b!1211050 () Bool)

(declare-fun e!776940 () List!12292)

(declare-fun call!84466 () List!12292)

(assert (=> b!1211050 (= e!776940 call!84466)))

(declare-fun e!776939 () Bool)

(declare-fun b!1211051 () Bool)

(declare-fun lt!414510 () List!12292)

(assert (=> b!1211051 (= e!776939 (= (content!1748 lt!414510) (set.minus (content!1748 (t!112676 l!3821)) (set.insert e!9491 (as set.empty (Set B!1375))))))))

(declare-fun b!1211052 () Bool)

(assert (=> b!1211052 (= e!776940 (Cons!12234 (h!17635 (t!112676 l!3821)) call!84466))))

(declare-fun bm!84461 () Bool)

(assert (=> bm!84461 (= call!84466 (-!95 (t!112676 (t!112676 l!3821)) e!9491))))

(declare-fun b!1211053 () Bool)

(declare-fun e!776938 () List!12292)

(assert (=> b!1211053 (= e!776938 Nil!12234)))

(declare-fun b!1211054 () Bool)

(assert (=> b!1211054 (= e!776938 e!776940)))

(declare-fun c!202842 () Bool)

(assert (=> b!1211054 (= c!202842 (= e!9491 (h!17635 (t!112676 l!3821))))))

(declare-fun d!346454 () Bool)

(assert (=> d!346454 e!776939))

(declare-fun res!544724 () Bool)

(assert (=> d!346454 (=> (not res!544724) (not e!776939))))

(assert (=> d!346454 (= res!544724 (<= (size!9750 lt!414510) (size!9750 (t!112676 l!3821))))))

(assert (=> d!346454 (= lt!414510 e!776938)))

(declare-fun c!202843 () Bool)

(assert (=> d!346454 (= c!202843 (is-Cons!12234 (t!112676 l!3821)))))

(assert (=> d!346454 (= (-!95 (t!112676 l!3821) e!9491) lt!414510)))

(assert (= (and d!346454 c!202843) b!1211054))

(assert (= (and d!346454 (not c!202843)) b!1211053))

(assert (= (and b!1211054 c!202842) b!1211050))

(assert (= (and b!1211054 (not c!202842)) b!1211052))

(assert (= (or b!1211050 b!1211052) bm!84461))

(assert (= (and d!346454 res!544724) b!1211051))

(declare-fun m!1386821 () Bool)

(assert (=> b!1211051 m!1386821))

(declare-fun m!1386823 () Bool)

(assert (=> b!1211051 m!1386823))

(declare-fun m!1386825 () Bool)

(assert (=> b!1211051 m!1386825))

(declare-fun m!1386827 () Bool)

(assert (=> bm!84461 m!1386827))

(declare-fun m!1386829 () Bool)

(assert (=> d!346454 m!1386829))

(assert (=> d!346454 m!1386813))

(assert (=> b!1211001 d!346454))

(declare-fun b!1211055 () Bool)

(declare-fun e!776943 () List!12292)

(declare-fun call!84467 () List!12292)

(assert (=> b!1211055 (= e!776943 call!84467)))

(declare-fun b!1211056 () Bool)

(declare-fun e!776942 () Bool)

(declare-fun lt!414511 () List!12292)

(assert (=> b!1211056 (= e!776942 (= (content!1748 lt!414511) (set.minus (content!1748 l!3821) (set.insert e!9491 (as set.empty (Set B!1375))))))))

(declare-fun b!1211057 () Bool)

(assert (=> b!1211057 (= e!776943 (Cons!12234 (h!17635 l!3821) call!84467))))

(declare-fun bm!84462 () Bool)

(assert (=> bm!84462 (= call!84467 (-!95 (t!112676 l!3821) e!9491))))

(declare-fun b!1211058 () Bool)

(declare-fun e!776941 () List!12292)

(assert (=> b!1211058 (= e!776941 Nil!12234)))

(declare-fun b!1211059 () Bool)

(assert (=> b!1211059 (= e!776941 e!776943)))

(declare-fun c!202844 () Bool)

(assert (=> b!1211059 (= c!202844 (= e!9491 (h!17635 l!3821)))))

(declare-fun d!346458 () Bool)

(assert (=> d!346458 e!776942))

(declare-fun res!544725 () Bool)

(assert (=> d!346458 (=> (not res!544725) (not e!776942))))

(assert (=> d!346458 (= res!544725 (<= (size!9750 lt!414511) (size!9750 l!3821)))))

(assert (=> d!346458 (= lt!414511 e!776941)))

(declare-fun c!202845 () Bool)

(assert (=> d!346458 (= c!202845 (is-Cons!12234 l!3821))))

(assert (=> d!346458 (= (-!95 l!3821 e!9491) lt!414511)))

(assert (= (and d!346458 c!202845) b!1211059))

(assert (= (and d!346458 (not c!202845)) b!1211058))

(assert (= (and b!1211059 c!202844) b!1211055))

(assert (= (and b!1211059 (not c!202844)) b!1211057))

(assert (= (or b!1211055 b!1211057) bm!84462))

(assert (= (and d!346458 res!544725) b!1211056))

(declare-fun m!1386831 () Bool)

(assert (=> b!1211056 m!1386831))

(assert (=> b!1211056 m!1386807))

(assert (=> b!1211056 m!1386825))

(assert (=> bm!84462 m!1386783))

(declare-fun m!1386833 () Bool)

(assert (=> d!346458 m!1386833))

(assert (=> d!346458 m!1386791))

(assert (=> b!1211001 d!346458))

(declare-fun d!346460 () Bool)

(declare-fun lt!414512 () Bool)

(assert (=> d!346460 (= lt!414512 (set.member e!9491 (content!1748 (t!112676 l!3821))))))

(declare-fun e!776945 () Bool)

(assert (=> d!346460 (= lt!414512 e!776945)))

(declare-fun res!544727 () Bool)

(assert (=> d!346460 (=> (not res!544727) (not e!776945))))

(assert (=> d!346460 (= res!544727 (is-Cons!12234 (t!112676 l!3821)))))

(assert (=> d!346460 (= (contains!2051 (t!112676 l!3821) e!9491) lt!414512)))

(declare-fun b!1211060 () Bool)

(declare-fun e!776944 () Bool)

(assert (=> b!1211060 (= e!776945 e!776944)))

(declare-fun res!544726 () Bool)

(assert (=> b!1211060 (=> res!544726 e!776944)))

(assert (=> b!1211060 (= res!544726 (= (h!17635 (t!112676 l!3821)) e!9491))))

(declare-fun b!1211061 () Bool)

(assert (=> b!1211061 (= e!776944 (contains!2051 (t!112676 (t!112676 l!3821)) e!9491))))

(assert (= (and d!346460 res!544727) b!1211060))

(assert (= (and b!1211060 (not res!544726)) b!1211061))

(assert (=> d!346460 m!1386823))

(declare-fun m!1386835 () Bool)

(assert (=> d!346460 m!1386835))

(declare-fun m!1386837 () Bool)

(assert (=> b!1211061 m!1386837))

(assert (=> b!1211002 d!346460))

(declare-fun b!1211066 () Bool)

(declare-fun e!776948 () Bool)

(declare-fun tp!342954 () Bool)

(assert (=> b!1211066 (= e!776948 (and tp_is_empty!6233 tp!342954))))

(assert (=> b!1211000 (= tp!342948 e!776948)))

(assert (= (and b!1211000 (is-Cons!12234 (t!112676 l!3821))) b!1211066))

(push 1)

(assert (not d!346460))

(assert (not b!1211025))

(assert (not d!346446))

(assert tp_is_empty!6233)

(assert (not b!1211031))

(assert (not d!346454))

(assert (not b!1211056))

(assert (not b!1211066))

(assert (not d!346458))

(assert (not bm!84462))

(assert (not b!1211035))

(assert (not b!1211051))

(assert (not b!1211061))

(assert (not bm!84461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

