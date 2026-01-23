; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534108 () Bool)

(assert start!534108)

(declare-fun res!2150614 () Bool)

(declare-fun e!3152819 () Bool)

(assert (=> start!534108 (=> (not res!2150614) (not e!3152819))))

(declare-datatypes ((T!104626 0))(
  ( (T!104627 (val!23577 Int)) )
))
(declare-datatypes ((List!58487 0))(
  ( (Nil!58363) (Cons!58363 (h!64811 T!104626) (t!371126 List!58487)) )
))
(declare-fun l!2785 () List!58487)

(assert (=> start!534108 (= res!2150614 (not (is-Nil!58363 l!2785)))))

(assert (=> start!534108 e!3152819))

(declare-fun e!3152820 () Bool)

(assert (=> start!534108 e!3152820))

(declare-fun b!5049662 () Bool)

(declare-fun take!868 (List!58487 Int) List!58487)

(declare-fun size!38986 (List!58487) Int)

(assert (=> b!5049662 (= e!3152819 (not (= (take!868 l!2785 (size!38986 l!2785)) l!2785)))))

(assert (=> b!5049662 (= (take!868 (t!371126 l!2785) (size!38986 (t!371126 l!2785))) (t!371126 l!2785))))

(declare-datatypes ((Unit!149557 0))(
  ( (Unit!149558) )
))
(declare-fun lt!2086394 () Unit!149557)

(declare-fun takeFullLemma!19 (List!58487) Unit!149557)

(assert (=> b!5049662 (= lt!2086394 (takeFullLemma!19 (t!371126 l!2785)))))

(declare-fun b!5049663 () Bool)

(declare-fun tp_is_empty!36909 () Bool)

(declare-fun tp!1412094 () Bool)

(assert (=> b!5049663 (= e!3152820 (and tp_is_empty!36909 tp!1412094))))

(assert (= (and start!534108 res!2150614) b!5049662))

(assert (= (and start!534108 (is-Cons!58363 l!2785)) b!5049663))

(declare-fun m!6084326 () Bool)

(assert (=> b!5049662 m!6084326))

(declare-fun m!6084328 () Bool)

(assert (=> b!5049662 m!6084328))

(declare-fun m!6084330 () Bool)

(assert (=> b!5049662 m!6084330))

(declare-fun m!6084332 () Bool)

(assert (=> b!5049662 m!6084332))

(declare-fun m!6084334 () Bool)

(assert (=> b!5049662 m!6084334))

(assert (=> b!5049662 m!6084330))

(assert (=> b!5049662 m!6084326))

(push 1)

(assert (not b!5049662))

(assert (not b!5049663))

(assert tp_is_empty!36909)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5049684 () Bool)

(declare-fun e!3152835 () Int)

(assert (=> b!5049684 (= e!3152835 (size!38986 (t!371126 l!2785)))))

(declare-fun b!5049685 () Bool)

(assert (=> b!5049685 (= e!3152835 (size!38986 (t!371126 l!2785)))))

(declare-fun b!5049686 () Bool)

(declare-fun e!3152838 () Int)

(assert (=> b!5049686 (= e!3152838 e!3152835)))

(declare-fun c!866044 () Bool)

(assert (=> b!5049686 (= c!866044 (>= (size!38986 (t!371126 l!2785)) (size!38986 (t!371126 l!2785))))))

(declare-fun b!5049687 () Bool)

(declare-fun e!3152837 () List!58487)

(assert (=> b!5049687 (= e!3152837 (Cons!58363 (h!64811 (t!371126 l!2785)) (take!868 (t!371126 (t!371126 l!2785)) (- (size!38986 (t!371126 l!2785)) 1))))))

(declare-fun b!5049688 () Bool)

(assert (=> b!5049688 (= e!3152837 Nil!58363)))

(declare-fun b!5049689 () Bool)

(declare-fun e!3152836 () Bool)

(declare-fun lt!2086400 () List!58487)

(assert (=> b!5049689 (= e!3152836 (= (size!38986 lt!2086400) e!3152838))))

(declare-fun c!866043 () Bool)

(assert (=> b!5049689 (= c!866043 (<= (size!38986 (t!371126 l!2785)) 0))))

(declare-fun d!1624856 () Bool)

(assert (=> d!1624856 e!3152836))

(declare-fun res!2150620 () Bool)

(assert (=> d!1624856 (=> (not res!2150620) (not e!3152836))))

(declare-fun content!10383 (List!58487) (Set T!104626))

(assert (=> d!1624856 (= res!2150620 (set.subset (content!10383 lt!2086400) (content!10383 (t!371126 l!2785))))))

(assert (=> d!1624856 (= lt!2086400 e!3152837)))

(declare-fun c!866042 () Bool)

(assert (=> d!1624856 (= c!866042 (or (is-Nil!58363 (t!371126 l!2785)) (<= (size!38986 (t!371126 l!2785)) 0)))))

(assert (=> d!1624856 (= (take!868 (t!371126 l!2785) (size!38986 (t!371126 l!2785))) lt!2086400)))

(declare-fun b!5049690 () Bool)

(assert (=> b!5049690 (= e!3152838 0)))

(assert (= (and d!1624856 c!866042) b!5049688))

(assert (= (and d!1624856 (not c!866042)) b!5049687))

(assert (= (and d!1624856 res!2150620) b!5049689))

(assert (= (and b!5049689 c!866043) b!5049690))

(assert (= (and b!5049689 (not c!866043)) b!5049686))

(assert (= (and b!5049686 c!866044) b!5049684))

(assert (= (and b!5049686 (not c!866044)) b!5049685))

(assert (=> b!5049686 m!6084330))

(declare-fun m!6084346 () Bool)

(assert (=> b!5049689 m!6084346))

(declare-fun m!6084348 () Bool)

(assert (=> d!1624856 m!6084348))

(declare-fun m!6084350 () Bool)

(assert (=> d!1624856 m!6084350))

(declare-fun m!6084352 () Bool)

(assert (=> b!5049687 m!6084352))

(assert (=> b!5049684 m!6084330))

(assert (=> b!5049662 d!1624856))

(declare-fun b!5049691 () Bool)

(declare-fun e!3152839 () Int)

(assert (=> b!5049691 (= e!3152839 (size!38986 l!2785))))

(declare-fun b!5049692 () Bool)

(assert (=> b!5049692 (= e!3152839 (size!38986 l!2785))))

(declare-fun b!5049693 () Bool)

(declare-fun e!3152842 () Int)

(assert (=> b!5049693 (= e!3152842 e!3152839)))

(declare-fun c!866047 () Bool)

(assert (=> b!5049693 (= c!866047 (>= (size!38986 l!2785) (size!38986 l!2785)))))

(declare-fun b!5049694 () Bool)

(declare-fun e!3152841 () List!58487)

(assert (=> b!5049694 (= e!3152841 (Cons!58363 (h!64811 l!2785) (take!868 (t!371126 l!2785) (- (size!38986 l!2785) 1))))))

(declare-fun b!5049695 () Bool)

(assert (=> b!5049695 (= e!3152841 Nil!58363)))

(declare-fun b!5049696 () Bool)

(declare-fun e!3152840 () Bool)

(declare-fun lt!2086401 () List!58487)

(assert (=> b!5049696 (= e!3152840 (= (size!38986 lt!2086401) e!3152842))))

(declare-fun c!866046 () Bool)

(assert (=> b!5049696 (= c!866046 (<= (size!38986 l!2785) 0))))

(declare-fun d!1624860 () Bool)

(assert (=> d!1624860 e!3152840))

(declare-fun res!2150621 () Bool)

(assert (=> d!1624860 (=> (not res!2150621) (not e!3152840))))

(assert (=> d!1624860 (= res!2150621 (set.subset (content!10383 lt!2086401) (content!10383 l!2785)))))

(assert (=> d!1624860 (= lt!2086401 e!3152841)))

(declare-fun c!866045 () Bool)

(assert (=> d!1624860 (= c!866045 (or (is-Nil!58363 l!2785) (<= (size!38986 l!2785) 0)))))

(assert (=> d!1624860 (= (take!868 l!2785 (size!38986 l!2785)) lt!2086401)))

(declare-fun b!5049697 () Bool)

(assert (=> b!5049697 (= e!3152842 0)))

(assert (= (and d!1624860 c!866045) b!5049695))

(assert (= (and d!1624860 (not c!866045)) b!5049694))

(assert (= (and d!1624860 res!2150621) b!5049696))

(assert (= (and b!5049696 c!866046) b!5049697))

(assert (= (and b!5049696 (not c!866046)) b!5049693))

(assert (= (and b!5049693 c!866047) b!5049691))

(assert (= (and b!5049693 (not c!866047)) b!5049692))

(assert (=> b!5049693 m!6084326))

(declare-fun m!6084354 () Bool)

(assert (=> b!5049696 m!6084354))

(declare-fun m!6084356 () Bool)

(assert (=> d!1624860 m!6084356))

(declare-fun m!6084358 () Bool)

(assert (=> d!1624860 m!6084358))

(declare-fun m!6084360 () Bool)

(assert (=> b!5049694 m!6084360))

(assert (=> b!5049691 m!6084326))

(assert (=> b!5049662 d!1624860))

(declare-fun d!1624862 () Bool)

(declare-fun lt!2086404 () Int)

(assert (=> d!1624862 (>= lt!2086404 0)))

(declare-fun e!3152845 () Int)

(assert (=> d!1624862 (= lt!2086404 e!3152845)))

(declare-fun c!866050 () Bool)

(assert (=> d!1624862 (= c!866050 (is-Nil!58363 l!2785))))

(assert (=> d!1624862 (= (size!38986 l!2785) lt!2086404)))

(declare-fun b!5049702 () Bool)

(assert (=> b!5049702 (= e!3152845 0)))

(declare-fun b!5049703 () Bool)

(assert (=> b!5049703 (= e!3152845 (+ 1 (size!38986 (t!371126 l!2785))))))

(assert (= (and d!1624862 c!866050) b!5049702))

(assert (= (and d!1624862 (not c!866050)) b!5049703))

(assert (=> b!5049703 m!6084330))

(assert (=> b!5049662 d!1624862))

(declare-fun d!1624864 () Bool)

(declare-fun lt!2086405 () Int)

(assert (=> d!1624864 (>= lt!2086405 0)))

(declare-fun e!3152846 () Int)

(assert (=> d!1624864 (= lt!2086405 e!3152846)))

(declare-fun c!866051 () Bool)

(assert (=> d!1624864 (= c!866051 (is-Nil!58363 (t!371126 l!2785)))))

(assert (=> d!1624864 (= (size!38986 (t!371126 l!2785)) lt!2086405)))

(declare-fun b!5049704 () Bool)

(assert (=> b!5049704 (= e!3152846 0)))

(declare-fun b!5049705 () Bool)

(assert (=> b!5049705 (= e!3152846 (+ 1 (size!38986 (t!371126 (t!371126 l!2785)))))))

(assert (= (and d!1624864 c!866051) b!5049704))

(assert (= (and d!1624864 (not c!866051)) b!5049705))

(declare-fun m!6084362 () Bool)

(assert (=> b!5049705 m!6084362))

(assert (=> b!5049662 d!1624864))

(declare-fun d!1624866 () Bool)

(assert (=> d!1624866 (= (take!868 (t!371126 l!2785) (size!38986 (t!371126 l!2785))) (t!371126 l!2785))))

(declare-fun lt!2086408 () Unit!149557)

(declare-fun choose!37283 (List!58487) Unit!149557)

(assert (=> d!1624866 (= lt!2086408 (choose!37283 (t!371126 l!2785)))))

(assert (=> d!1624866 (= (takeFullLemma!19 (t!371126 l!2785)) lt!2086408)))

(declare-fun bs!1189230 () Bool)

(assert (= bs!1189230 d!1624866))

(assert (=> bs!1189230 m!6084330))

(assert (=> bs!1189230 m!6084330))

(assert (=> bs!1189230 m!6084332))

(declare-fun m!6084364 () Bool)

(assert (=> bs!1189230 m!6084364))

(assert (=> b!5049662 d!1624866))

(declare-fun b!5049710 () Bool)

(declare-fun e!3152849 () Bool)

(declare-fun tp!1412100 () Bool)

(assert (=> b!5049710 (= e!3152849 (and tp_is_empty!36909 tp!1412100))))

(assert (=> b!5049663 (= tp!1412094 e!3152849)))

(assert (= (and b!5049663 (is-Cons!58363 (t!371126 l!2785))) b!5049710))

(push 1)

(assert (not b!5049703))

(assert tp_is_empty!36909)

(assert (not b!5049689))

(assert (not d!1624856))

(assert (not b!5049686))

(assert (not b!5049684))

(assert (not b!5049687))

(assert (not b!5049693))

(assert (not b!5049691))

(assert (not b!5049710))

(assert (not d!1624866))

(assert (not b!5049694))

(assert (not d!1624860))

(assert (not b!5049705))

(assert (not b!5049696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

