; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252030 () Bool)

(assert start!252030)

(declare-fun b!2596882 () Bool)

(assert (=> b!2596882 true))

(declare-fun b!2596886 () Bool)

(declare-fun m!2933205 () Bool)

(assert (=> b!2596886 m!2933205))

(declare-fun bs!472970 () Bool)

(assert (= bs!472970 (and b!2596886 b!2596882)))

(declare-datatypes ((B!2211 0))(
  ( (B!2212 (val!9573 Int)) )
))
(declare-datatypes ((List!30006 0))(
  ( (Nil!29906) (Cons!29906 (h!35326 B!2211) (t!213019 List!30006)) )
))
(declare-fun l1!1546 () List!30006)

(declare-fun lambda!97048 () Int)

(declare-fun lambda!97047 () Int)

(declare-fun tail!4158 (List!30006) List!30006)

(assert (=> bs!472970 (= (= (tail!4158 l1!1546) l1!1546) (= lambda!97048 lambda!97047))))

(assert (=> b!2596886 true))

(declare-fun lambda!97049 () Int)

(assert (=> bs!472970 (= (= (t!213019 l1!1546) l1!1546) (= lambda!97049 lambda!97047))))

(assert (=> b!2596886 (= (= (t!213019 l1!1546) (tail!4158 l1!1546)) (= lambda!97049 lambda!97048))))

(assert (=> b!2596886 true))

(declare-fun res!1093105 () Bool)

(declare-fun e!1638959 () Bool)

(assert (=> b!2596882 (=> (not res!1093105) (not e!1638959))))

(declare-fun l2!1515 () List!30006)

(declare-fun forall!6143 (List!30006 Int) Bool)

(assert (=> b!2596882 (= res!1093105 (forall!6143 l2!1515 lambda!97047))))

(declare-fun b!2596883 () Bool)

(declare-fun res!1093104 () Bool)

(declare-fun e!1638958 () Bool)

(assert (=> b!2596883 (=> (not res!1093104) (not e!1638958))))

(declare-fun noDuplicate!454 (List!30006) Bool)

(assert (=> b!2596883 (= res!1093104 (noDuplicate!454 l2!1515))))

(declare-fun b!2596884 () Bool)

(declare-fun e!1638957 () Bool)

(assert (=> b!2596884 (= e!1638959 (not e!1638957))))

(declare-fun res!1093102 () Bool)

(assert (=> b!2596884 (=> res!1093102 e!1638957)))

(declare-fun lt!914537 () List!30006)

(assert (=> b!2596884 (= res!1093102 (not (forall!6143 lt!914537 lambda!97047)))))

(declare-fun lt!914534 () Int)

(declare-fun lt!914535 () Int)

(assert (=> b!2596884 (= lt!914534 (- lt!914535 1))))

(declare-fun size!23211 (List!30006) Int)

(assert (=> b!2596884 (= lt!914534 (size!23211 lt!914537))))

(declare-datatypes ((Unit!43969 0))(
  ( (Unit!43970) )
))
(declare-fun lt!914536 () Unit!43969)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!39 (List!30006 B!2211) Unit!43969)

(assert (=> b!2596884 (= lt!914536 (lemmaRemoveElmtNoDuplicateRemoveOne!39 l2!1515 (h!35326 l1!1546)))))

(assert (=> b!2596884 (forall!6143 lt!914537 lambda!97047)))

(declare-fun lt!914539 () Unit!43969)

(declare-fun lemmaRemoveElmtMaintainsForall!41 (List!30006 B!2211 Int) Unit!43969)

(assert (=> b!2596884 (= lt!914539 (lemmaRemoveElmtMaintainsForall!41 l2!1515 (h!35326 l1!1546) lambda!97047))))

(assert (=> b!2596884 (noDuplicate!454 lt!914537)))

(declare-fun -!181 (List!30006 B!2211) List!30006)

(assert (=> b!2596884 (= lt!914537 (-!181 l2!1515 (h!35326 l1!1546)))))

(declare-fun lt!914533 () Unit!43969)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!47 (List!30006 B!2211) Unit!43969)

(assert (=> b!2596884 (= lt!914533 (lemmaRemoveElmtMaintainsNoDuplicate!47 l2!1515 (h!35326 l1!1546)))))

(declare-fun res!1093106 () Bool)

(assert (=> start!252030 (=> (not res!1093106) (not e!1638958))))

(assert (=> start!252030 (= res!1093106 (noDuplicate!454 l1!1546))))

(assert (=> start!252030 e!1638958))

(declare-fun e!1638960 () Bool)

(assert (=> start!252030 e!1638960))

(declare-fun e!1638961 () Bool)

(assert (=> start!252030 e!1638961))

(declare-fun b!2596885 () Bool)

(declare-fun res!1093107 () Bool)

(assert (=> b!2596885 (=> (not res!1093107) (not e!1638959))))

(assert (=> b!2596885 (= res!1093107 (is-Cons!29906 l1!1546))))

(declare-fun e!1638956 () Bool)

(assert (=> b!2596886 (= e!1638957 e!1638956)))

(declare-fun res!1093101 () Bool)

(assert (=> b!2596886 (=> res!1093101 e!1638956)))

(assert (=> b!2596886 (= res!1093101 (not (forall!6143 lt!914537 lambda!97049)))))

(assert (=> b!2596886 (forall!6143 lt!914537 lambda!97048)))

(declare-fun lt!914538 () Unit!43969)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!23 (List!30006 List!30006 B!2211) Unit!43969)

(assert (=> b!2596886 (= lt!914538 (lemmaForallContainsThenForTailIfContainsNotHead!23 lt!914537 l1!1546 (h!35326 l1!1546)))))

(declare-fun b!2596887 () Bool)

(declare-fun tp_is_empty!13491 () Bool)

(declare-fun tp!823286 () Bool)

(assert (=> b!2596887 (= e!1638960 (and tp_is_empty!13491 tp!823286))))

(declare-fun b!2596888 () Bool)

(declare-fun tp!823285 () Bool)

(assert (=> b!2596888 (= e!1638961 (and tp_is_empty!13491 tp!823285))))

(declare-fun b!2596889 () Bool)

(declare-fun res!1093103 () Bool)

(assert (=> b!2596889 (=> (not res!1093103) (not e!1638959))))

(declare-fun contains!5454 (List!30006 B!2211) Bool)

(assert (=> b!2596889 (= res!1093103 (contains!5454 l2!1515 (h!35326 l1!1546)))))

(declare-fun b!2596890 () Bool)

(declare-fun res!1093108 () Bool)

(assert (=> b!2596890 (=> res!1093108 e!1638956)))

(assert (=> b!2596890 (= res!1093108 (not (noDuplicate!454 (t!213019 l1!1546))))))

(declare-fun b!2596891 () Bool)

(assert (=> b!2596891 (= e!1638958 e!1638959)))

(declare-fun res!1093100 () Bool)

(assert (=> b!2596891 (=> (not res!1093100) (not e!1638959))))

(declare-fun lt!914532 () Int)

(assert (=> b!2596891 (= res!1093100 (> lt!914532 lt!914535))))

(assert (=> b!2596891 (= lt!914535 (size!23211 l2!1515))))

(assert (=> b!2596891 (= lt!914532 (size!23211 l1!1546))))

(declare-fun b!2596892 () Bool)

(assert (=> b!2596892 (= e!1638956 (> (size!23211 (t!213019 l1!1546)) lt!914534))))

(assert (= (and start!252030 res!1093106) b!2596883))

(assert (= (and b!2596883 res!1093104) b!2596891))

(assert (= (and b!2596891 res!1093100) b!2596882))

(assert (= (and b!2596882 res!1093105) b!2596885))

(assert (= (and b!2596885 res!1093107) b!2596889))

(assert (= (and b!2596889 res!1093103) b!2596884))

(assert (= (and b!2596884 (not res!1093102)) b!2596886))

(assert (= (and b!2596886 (not res!1093101)) b!2596890))

(assert (= (and b!2596890 (not res!1093108)) b!2596892))

(assert (= (and start!252030 (is-Cons!29906 l1!1546)) b!2596887))

(assert (= (and start!252030 (is-Cons!29906 l2!1515)) b!2596888))

(declare-fun m!2933207 () Bool)

(assert (=> b!2596882 m!2933207))

(declare-fun m!2933209 () Bool)

(assert (=> start!252030 m!2933209))

(declare-fun m!2933211 () Bool)

(assert (=> b!2596883 m!2933211))

(declare-fun m!2933213 () Bool)

(assert (=> b!2596891 m!2933213))

(declare-fun m!2933215 () Bool)

(assert (=> b!2596891 m!2933215))

(declare-fun m!2933217 () Bool)

(assert (=> b!2596890 m!2933217))

(declare-fun m!2933219 () Bool)

(assert (=> b!2596884 m!2933219))

(declare-fun m!2933221 () Bool)

(assert (=> b!2596884 m!2933221))

(declare-fun m!2933223 () Bool)

(assert (=> b!2596884 m!2933223))

(declare-fun m!2933225 () Bool)

(assert (=> b!2596884 m!2933225))

(declare-fun m!2933227 () Bool)

(assert (=> b!2596884 m!2933227))

(assert (=> b!2596884 m!2933223))

(declare-fun m!2933229 () Bool)

(assert (=> b!2596884 m!2933229))

(declare-fun m!2933231 () Bool)

(assert (=> b!2596884 m!2933231))

(declare-fun m!2933233 () Bool)

(assert (=> b!2596892 m!2933233))

(declare-fun m!2933235 () Bool)

(assert (=> b!2596889 m!2933235))

(declare-fun m!2933237 () Bool)

(assert (=> b!2596886 m!2933237))

(declare-fun m!2933239 () Bool)

(assert (=> b!2596886 m!2933239))

(declare-fun m!2933241 () Bool)

(assert (=> b!2596886 m!2933241))

(push 1)

(assert tp_is_empty!13491)

(assert (not b!2596883))

(assert (not b!2596888))

(assert (not b!2596891))

(assert (not b!2596889))

(assert (not b!2596892))

(assert (not start!252030))

(assert (not b!2596882))

(assert (not b!2596890))

(assert (not b!2596886))

(assert (not b!2596887))

(assert (not b!2596884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735839 () Bool)

(declare-fun res!1093146 () Bool)

(declare-fun e!1639003 () Bool)

(assert (=> d!735839 (=> res!1093146 e!1639003)))

(assert (=> d!735839 (= res!1093146 (is-Nil!29906 l2!1515))))

(assert (=> d!735839 (= (forall!6143 l2!1515 lambda!97047) e!1639003)))

(declare-fun b!2596946 () Bool)

(declare-fun e!1639004 () Bool)

(assert (=> b!2596946 (= e!1639003 e!1639004)))

(declare-fun res!1093147 () Bool)

(assert (=> b!2596946 (=> (not res!1093147) (not e!1639004))))

(declare-fun dynLambda!12657 (Int B!2211) Bool)

(assert (=> b!2596946 (= res!1093147 (dynLambda!12657 lambda!97047 (h!35326 l2!1515)))))

(declare-fun b!2596947 () Bool)

(assert (=> b!2596947 (= e!1639004 (forall!6143 (t!213019 l2!1515) lambda!97047))))

(assert (= (and d!735839 (not res!1093146)) b!2596946))

(assert (= (and b!2596946 res!1093147) b!2596947))

(declare-fun b_lambda!77629 () Bool)

(assert (=> (not b_lambda!77629) (not b!2596946)))

(declare-fun m!2933289 () Bool)

(assert (=> b!2596946 m!2933289))

(declare-fun m!2933291 () Bool)

(assert (=> b!2596947 m!2933291))

(assert (=> b!2596882 d!735839))

(declare-fun d!735843 () Bool)

(declare-fun res!1093156 () Bool)

(declare-fun e!1639013 () Bool)

(assert (=> d!735843 (=> res!1093156 e!1639013)))

(assert (=> d!735843 (= res!1093156 (is-Nil!29906 l2!1515))))

(assert (=> d!735843 (= (noDuplicate!454 l2!1515) e!1639013)))

(declare-fun b!2596956 () Bool)

(declare-fun e!1639014 () Bool)

(assert (=> b!2596956 (= e!1639013 e!1639014)))

(declare-fun res!1093157 () Bool)

(assert (=> b!2596956 (=> (not res!1093157) (not e!1639014))))

(assert (=> b!2596956 (= res!1093157 (not (contains!5454 (t!213019 l2!1515) (h!35326 l2!1515))))))

(declare-fun b!2596957 () Bool)

(assert (=> b!2596957 (= e!1639014 (noDuplicate!454 (t!213019 l2!1515)))))

(assert (= (and d!735843 (not res!1093156)) b!2596956))

(assert (= (and b!2596956 res!1093157) b!2596957))

(declare-fun m!2933293 () Bool)

(assert (=> b!2596956 m!2933293))

(declare-fun m!2933295 () Bool)

(assert (=> b!2596957 m!2933295))

(assert (=> b!2596883 d!735843))

(declare-fun d!735845 () Bool)

(declare-fun lt!914572 () Bool)

(declare-fun content!4205 (List!30006) (Set B!2211))

(assert (=> d!735845 (= lt!914572 (set.member (h!35326 l1!1546) (content!4205 l2!1515)))))

(declare-fun e!1639022 () Bool)

(assert (=> d!735845 (= lt!914572 e!1639022)))

(declare-fun res!1093164 () Bool)

(assert (=> d!735845 (=> (not res!1093164) (not e!1639022))))

(assert (=> d!735845 (= res!1093164 (is-Cons!29906 l2!1515))))

(assert (=> d!735845 (= (contains!5454 l2!1515 (h!35326 l1!1546)) lt!914572)))

(declare-fun b!2596964 () Bool)

(declare-fun e!1639021 () Bool)

(assert (=> b!2596964 (= e!1639022 e!1639021)))

(declare-fun res!1093165 () Bool)

(assert (=> b!2596964 (=> res!1093165 e!1639021)))

(assert (=> b!2596964 (= res!1093165 (= (h!35326 l2!1515) (h!35326 l1!1546)))))

(declare-fun b!2596965 () Bool)

(assert (=> b!2596965 (= e!1639021 (contains!5454 (t!213019 l2!1515) (h!35326 l1!1546)))))

(assert (= (and d!735845 res!1093164) b!2596964))

(assert (= (and b!2596964 (not res!1093165)) b!2596965))

(declare-fun m!2933301 () Bool)

(assert (=> d!735845 m!2933301))

(declare-fun m!2933303 () Bool)

(assert (=> d!735845 m!2933303))

(declare-fun m!2933305 () Bool)

(assert (=> b!2596965 m!2933305))

(assert (=> b!2596889 d!735845))

(declare-fun b!2596984 () Bool)

(declare-fun e!1639040 () List!30006)

(assert (=> b!2596984 (= e!1639040 Nil!29906)))

(declare-fun d!735851 () Bool)

(declare-fun e!1639038 () Bool)

(assert (=> d!735851 e!1639038))

(declare-fun res!1093176 () Bool)

(assert (=> d!735851 (=> (not res!1093176) (not e!1639038))))

(declare-fun lt!914575 () List!30006)

(assert (=> d!735851 (= res!1093176 (<= (size!23211 lt!914575) (size!23211 l2!1515)))))

(assert (=> d!735851 (= lt!914575 e!1639040)))

(declare-fun c!418380 () Bool)

(assert (=> d!735851 (= c!418380 (is-Cons!29906 l2!1515))))

(assert (=> d!735851 (= (-!181 l2!1515 (h!35326 l1!1546)) lt!914575)))

(declare-fun b!2596985 () Bool)

(declare-fun e!1639039 () List!30006)

(declare-fun call!167349 () List!30006)

(assert (=> b!2596985 (= e!1639039 (Cons!29906 (h!35326 l2!1515) call!167349))))

(declare-fun b!2596986 () Bool)

(assert (=> b!2596986 (= e!1639039 call!167349)))

(declare-fun b!2596987 () Bool)

(assert (=> b!2596987 (= e!1639040 e!1639039)))

(declare-fun c!418381 () Bool)

(assert (=> b!2596987 (= c!418381 (= (h!35326 l1!1546) (h!35326 l2!1515)))))

(declare-fun b!2596988 () Bool)

(assert (=> b!2596988 (= e!1639038 (= (content!4205 lt!914575) (set.minus (content!4205 l2!1515) (set.insert (h!35326 l1!1546) (as set.empty (Set B!2211))))))))

(declare-fun bm!167344 () Bool)

(assert (=> bm!167344 (= call!167349 (-!181 (t!213019 l2!1515) (h!35326 l1!1546)))))

(assert (= (and d!735851 c!418380) b!2596987))

(assert (= (and d!735851 (not c!418380)) b!2596984))

(assert (= (and b!2596987 c!418381) b!2596986))

(assert (= (and b!2596987 (not c!418381)) b!2596985))

(assert (= (or b!2596986 b!2596985) bm!167344))

(assert (= (and d!735851 res!1093176) b!2596988))

(declare-fun m!2933315 () Bool)

(assert (=> d!735851 m!2933315))

(assert (=> d!735851 m!2933213))

(declare-fun m!2933317 () Bool)

(assert (=> b!2596988 m!2933317))

(assert (=> b!2596988 m!2933301))

(declare-fun m!2933319 () Bool)

(assert (=> b!2596988 m!2933319))

(declare-fun m!2933321 () Bool)

(assert (=> bm!167344 m!2933321))

(assert (=> b!2596884 d!735851))

(declare-fun d!735857 () Bool)

(declare-fun lt!914578 () Int)

(assert (=> d!735857 (>= lt!914578 0)))

(declare-fun e!1639043 () Int)

(assert (=> d!735857 (= lt!914578 e!1639043)))

(declare-fun c!418384 () Bool)

(assert (=> d!735857 (= c!418384 (is-Nil!29906 lt!914537))))

(assert (=> d!735857 (= (size!23211 lt!914537) lt!914578)))

(declare-fun b!2596993 () Bool)

(assert (=> b!2596993 (= e!1639043 0)))

(declare-fun b!2596994 () Bool)

(assert (=> b!2596994 (= e!1639043 (+ 1 (size!23211 (t!213019 lt!914537))))))

(assert (= (and d!735857 c!418384) b!2596993))

(assert (= (and d!735857 (not c!418384)) b!2596994))

(declare-fun m!2933323 () Bool)

(assert (=> b!2596994 m!2933323))

(assert (=> b!2596884 d!735857))

(declare-fun d!735859 () Bool)

(assert (=> d!735859 (= (size!23211 (-!181 l2!1515 (h!35326 l1!1546))) (- (size!23211 l2!1515) 1))))

(declare-fun lt!914583 () Unit!43969)

(declare-fun choose!15432 (List!30006 B!2211) Unit!43969)

(assert (=> d!735859 (= lt!914583 (choose!15432 l2!1515 (h!35326 l1!1546)))))

(assert (=> d!735859 (noDuplicate!454 l2!1515)))

(assert (=> d!735859 (= (lemmaRemoveElmtNoDuplicateRemoveOne!39 l2!1515 (h!35326 l1!1546)) lt!914583)))

(declare-fun bs!472972 () Bool)

(assert (= bs!472972 d!735859))

(declare-fun m!2933325 () Bool)

(assert (=> bs!472972 m!2933325))

(assert (=> bs!472972 m!2933213))

(assert (=> bs!472972 m!2933227))

(declare-fun m!2933327 () Bool)

(assert (=> bs!472972 m!2933327))

(assert (=> bs!472972 m!2933211))

(assert (=> bs!472972 m!2933227))

(assert (=> b!2596884 d!735859))

(declare-fun d!735861 () Bool)

(declare-fun res!1093177 () Bool)

(declare-fun e!1639047 () Bool)

(assert (=> d!735861 (=> res!1093177 e!1639047)))

(assert (=> d!735861 (= res!1093177 (is-Nil!29906 lt!914537))))

(assert (=> d!735861 (= (noDuplicate!454 lt!914537) e!1639047)))

(declare-fun b!2596995 () Bool)

(declare-fun e!1639048 () Bool)

(assert (=> b!2596995 (= e!1639047 e!1639048)))

(declare-fun res!1093178 () Bool)

(assert (=> b!2596995 (=> (not res!1093178) (not e!1639048))))

(assert (=> b!2596995 (= res!1093178 (not (contains!5454 (t!213019 lt!914537) (h!35326 lt!914537))))))

(declare-fun b!2596996 () Bool)

(assert (=> b!2596996 (= e!1639048 (noDuplicate!454 (t!213019 lt!914537)))))

(assert (= (and d!735861 (not res!1093177)) b!2596995))

(assert (= (and b!2596995 res!1093178) b!2596996))

(declare-fun m!2933329 () Bool)

(assert (=> b!2596995 m!2933329))

(declare-fun m!2933331 () Bool)

(assert (=> b!2596996 m!2933331))

(assert (=> b!2596884 d!735861))

(declare-fun d!735863 () Bool)

(assert (=> d!735863 (noDuplicate!454 (-!181 l2!1515 (h!35326 l1!1546)))))

(declare-fun lt!914587 () Unit!43969)

(declare-fun choose!15433 (List!30006 B!2211) Unit!43969)

(assert (=> d!735863 (= lt!914587 (choose!15433 l2!1515 (h!35326 l1!1546)))))

(assert (=> d!735863 (noDuplicate!454 l2!1515)))

(assert (=> d!735863 (= (lemmaRemoveElmtMaintainsNoDuplicate!47 l2!1515 (h!35326 l1!1546)) lt!914587)))

(declare-fun bs!472974 () Bool)

(assert (= bs!472974 d!735863))

(assert (=> bs!472974 m!2933227))

(assert (=> bs!472974 m!2933227))

(declare-fun m!2933333 () Bool)

(assert (=> bs!472974 m!2933333))

(declare-fun m!2933335 () Bool)

(assert (=> bs!472974 m!2933335))

(assert (=> bs!472974 m!2933211))

(assert (=> b!2596884 d!735863))

(declare-fun d!735865 () Bool)

(assert (=> d!735865 (forall!6143 (-!181 l2!1515 (h!35326 l1!1546)) lambda!97047)))

(declare-fun lt!914590 () Unit!43969)

(declare-fun choose!15434 (List!30006 B!2211 Int) Unit!43969)

(assert (=> d!735865 (= lt!914590 (choose!15434 l2!1515 (h!35326 l1!1546) lambda!97047))))

(assert (=> d!735865 (noDuplicate!454 l2!1515)))

(assert (=> d!735865 (= (lemmaRemoveElmtMaintainsForall!41 l2!1515 (h!35326 l1!1546) lambda!97047) lt!914590)))

(declare-fun bs!472977 () Bool)

(assert (= bs!472977 d!735865))

(assert (=> bs!472977 m!2933227))

(assert (=> bs!472977 m!2933227))

(declare-fun m!2933347 () Bool)

(assert (=> bs!472977 m!2933347))

(declare-fun m!2933349 () Bool)

(assert (=> bs!472977 m!2933349))

(assert (=> bs!472977 m!2933211))

(assert (=> b!2596884 d!735865))

(declare-fun d!735871 () Bool)

(declare-fun res!1093181 () Bool)

(declare-fun e!1639054 () Bool)

(assert (=> d!735871 (=> res!1093181 e!1639054)))

(assert (=> d!735871 (= res!1093181 (is-Nil!29906 lt!914537))))

(assert (=> d!735871 (= (forall!6143 lt!914537 lambda!97047) e!1639054)))

(declare-fun b!2597001 () Bool)

(declare-fun e!1639055 () Bool)

(assert (=> b!2597001 (= e!1639054 e!1639055)))

(declare-fun res!1093182 () Bool)

(assert (=> b!2597001 (=> (not res!1093182) (not e!1639055))))

(assert (=> b!2597001 (= res!1093182 (dynLambda!12657 lambda!97047 (h!35326 lt!914537)))))

(declare-fun b!2597002 () Bool)

(assert (=> b!2597002 (= e!1639055 (forall!6143 (t!213019 lt!914537) lambda!97047))))

(assert (= (and d!735871 (not res!1093181)) b!2597001))

(assert (= (and b!2597001 res!1093182) b!2597002))

(declare-fun b_lambda!77635 () Bool)

(assert (=> (not b_lambda!77635) (not b!2597001)))

(declare-fun m!2933353 () Bool)

(assert (=> b!2597001 m!2933353))

(declare-fun m!2933355 () Bool)

(assert (=> b!2597002 m!2933355))

(assert (=> b!2596884 d!735871))

(declare-fun d!735875 () Bool)

(declare-fun res!1093183 () Bool)

(declare-fun e!1639057 () Bool)

(assert (=> d!735875 (=> res!1093183 e!1639057)))

(assert (=> d!735875 (= res!1093183 (is-Nil!29906 (t!213019 l1!1546)))))

(assert (=> d!735875 (= (noDuplicate!454 (t!213019 l1!1546)) e!1639057)))

(declare-fun b!2597005 () Bool)

(declare-fun e!1639058 () Bool)

(assert (=> b!2597005 (= e!1639057 e!1639058)))

(declare-fun res!1093184 () Bool)

(assert (=> b!2597005 (=> (not res!1093184) (not e!1639058))))

(assert (=> b!2597005 (= res!1093184 (not (contains!5454 (t!213019 (t!213019 l1!1546)) (h!35326 (t!213019 l1!1546)))))))

(declare-fun b!2597006 () Bool)

(assert (=> b!2597006 (= e!1639058 (noDuplicate!454 (t!213019 (t!213019 l1!1546))))))

(assert (= (and d!735875 (not res!1093183)) b!2597005))

(assert (= (and b!2597005 res!1093184) b!2597006))

(declare-fun m!2933357 () Bool)

(assert (=> b!2597005 m!2933357))

(declare-fun m!2933359 () Bool)

(assert (=> b!2597006 m!2933359))

(assert (=> b!2596890 d!735875))

(declare-fun d!735879 () Bool)

(declare-fun lt!914593 () Int)

(assert (=> d!735879 (>= lt!914593 0)))

(declare-fun e!1639061 () Int)

(assert (=> d!735879 (= lt!914593 e!1639061)))

(declare-fun c!418387 () Bool)

(assert (=> d!735879 (= c!418387 (is-Nil!29906 l2!1515))))

(assert (=> d!735879 (= (size!23211 l2!1515) lt!914593)))

(declare-fun b!2597008 () Bool)

(assert (=> b!2597008 (= e!1639061 0)))

(declare-fun b!2597010 () Bool)

(assert (=> b!2597010 (= e!1639061 (+ 1 (size!23211 (t!213019 l2!1515))))))

(assert (= (and d!735879 c!418387) b!2597008))

(assert (= (and d!735879 (not c!418387)) b!2597010))

(declare-fun m!2933361 () Bool)

(assert (=> b!2597010 m!2933361))

(assert (=> b!2596891 d!735879))

(declare-fun d!735881 () Bool)

(declare-fun lt!914594 () Int)

(assert (=> d!735881 (>= lt!914594 0)))

(declare-fun e!1639062 () Int)

(assert (=> d!735881 (= lt!914594 e!1639062)))

(declare-fun c!418388 () Bool)

(assert (=> d!735881 (= c!418388 (is-Nil!29906 l1!1546))))

(assert (=> d!735881 (= (size!23211 l1!1546) lt!914594)))

(declare-fun b!2597011 () Bool)

(assert (=> b!2597011 (= e!1639062 0)))

(declare-fun b!2597012 () Bool)

(assert (=> b!2597012 (= e!1639062 (+ 1 (size!23211 (t!213019 l1!1546))))))

(assert (= (and d!735881 c!418388) b!2597011))

(assert (= (and d!735881 (not c!418388)) b!2597012))

(assert (=> b!2597012 m!2933233))

(assert (=> b!2596891 d!735881))

(declare-fun d!735883 () Bool)

(assert (=> d!735883 (= (tail!4158 l1!1546) (t!213019 l1!1546))))

(assert (=> b!2596886 d!735883))

(declare-fun d!735887 () Bool)

(declare-fun res!1093189 () Bool)

(declare-fun e!1639065 () Bool)

(assert (=> d!735887 (=> res!1093189 e!1639065)))

(assert (=> d!735887 (= res!1093189 (is-Nil!29906 lt!914537))))

(assert (=> d!735887 (= (forall!6143 lt!914537 lambda!97049) e!1639065)))

(declare-fun b!2597015 () Bool)

(declare-fun e!1639066 () Bool)

(assert (=> b!2597015 (= e!1639065 e!1639066)))

(declare-fun res!1093190 () Bool)

(assert (=> b!2597015 (=> (not res!1093190) (not e!1639066))))

(assert (=> b!2597015 (= res!1093190 (dynLambda!12657 lambda!97049 (h!35326 lt!914537)))))

(declare-fun b!2597016 () Bool)

(assert (=> b!2597016 (= e!1639066 (forall!6143 (t!213019 lt!914537) lambda!97049))))

(assert (= (and d!735887 (not res!1093189)) b!2597015))

(assert (= (and b!2597015 res!1093190) b!2597016))

(declare-fun b_lambda!77639 () Bool)

(assert (=> (not b_lambda!77639) (not b!2597015)))

(declare-fun m!2933367 () Bool)

(assert (=> b!2597015 m!2933367))

(declare-fun m!2933369 () Bool)

(assert (=> b!2597016 m!2933369))

(assert (=> b!2596886 d!735887))

(declare-fun d!735889 () Bool)

(declare-fun res!1093191 () Bool)

(declare-fun e!1639067 () Bool)

(assert (=> d!735889 (=> res!1093191 e!1639067)))

(assert (=> d!735889 (= res!1093191 (is-Nil!29906 lt!914537))))

(assert (=> d!735889 (= (forall!6143 lt!914537 lambda!97048) e!1639067)))

(declare-fun b!2597017 () Bool)

(declare-fun e!1639068 () Bool)

(assert (=> b!2597017 (= e!1639067 e!1639068)))

(declare-fun res!1093192 () Bool)

(assert (=> b!2597017 (=> (not res!1093192) (not e!1639068))))

(assert (=> b!2597017 (= res!1093192 (dynLambda!12657 lambda!97048 (h!35326 lt!914537)))))

(declare-fun b!2597018 () Bool)

(assert (=> b!2597018 (= e!1639068 (forall!6143 (t!213019 lt!914537) lambda!97048))))

(assert (= (and d!735889 (not res!1093191)) b!2597017))

(assert (= (and b!2597017 res!1093192) b!2597018))

(declare-fun b_lambda!77641 () Bool)

(assert (=> (not b_lambda!77641) (not b!2597017)))

(declare-fun m!2933373 () Bool)

(assert (=> b!2597017 m!2933373))

(declare-fun m!2933375 () Bool)

(assert (=> b!2597018 m!2933375))

(assert (=> b!2596886 d!735889))

(declare-fun bs!472978 () Bool)

(declare-fun d!735893 () Bool)

(assert (= bs!472978 d!735893))

(assert (=> bs!472978 m!2933205))

(declare-fun bs!472979 () Bool)

(assert (= bs!472979 (and d!735893 b!2596882)))

(declare-fun lambda!97068 () Int)

(assert (=> bs!472979 (= (= (tail!4158 l1!1546) l1!1546) (= lambda!97068 lambda!97047))))

(declare-fun bs!472980 () Bool)

(assert (= bs!472980 (and d!735893 b!2596886)))

(assert (=> bs!472980 (= lambda!97068 lambda!97048)))

(assert (=> bs!472980 (= (= (tail!4158 l1!1546) (t!213019 l1!1546)) (= lambda!97068 lambda!97049))))

(assert (=> d!735893 true))

(assert (=> d!735893 (forall!6143 lt!914537 lambda!97068)))

(declare-fun lt!914597 () Unit!43969)

(declare-fun choose!15435 (List!30006 List!30006 B!2211) Unit!43969)

(assert (=> d!735893 (= lt!914597 (choose!15435 lt!914537 l1!1546 (h!35326 l1!1546)))))

(declare-fun isEmpty!17142 (List!30006) Bool)

(assert (=> d!735893 (not (isEmpty!17142 l1!1546))))

(assert (=> d!735893 (= (lemmaForallContainsThenForTailIfContainsNotHead!23 lt!914537 l1!1546 (h!35326 l1!1546)) lt!914597)))

(declare-fun m!2933381 () Bool)

(assert (=> bs!472978 m!2933381))

(declare-fun m!2933383 () Bool)

(assert (=> bs!472978 m!2933383))

(declare-fun m!2933385 () Bool)

(assert (=> bs!472978 m!2933385))

(assert (=> b!2596886 d!735893))

(declare-fun d!735897 () Bool)

(declare-fun res!1093195 () Bool)

(declare-fun e!1639073 () Bool)

(assert (=> d!735897 (=> res!1093195 e!1639073)))

(assert (=> d!735897 (= res!1093195 (is-Nil!29906 l1!1546))))

(assert (=> d!735897 (= (noDuplicate!454 l1!1546) e!1639073)))

(declare-fun b!2597021 () Bool)

(declare-fun e!1639074 () Bool)

(assert (=> b!2597021 (= e!1639073 e!1639074)))

(declare-fun res!1093196 () Bool)

(assert (=> b!2597021 (=> (not res!1093196) (not e!1639074))))

(assert (=> b!2597021 (= res!1093196 (not (contains!5454 (t!213019 l1!1546) (h!35326 l1!1546))))))

(declare-fun b!2597022 () Bool)

(assert (=> b!2597022 (= e!1639074 (noDuplicate!454 (t!213019 l1!1546)))))

(assert (= (and d!735897 (not res!1093195)) b!2597021))

(assert (= (and b!2597021 res!1093196) b!2597022))

(declare-fun m!2933387 () Bool)

(assert (=> b!2597021 m!2933387))

(assert (=> b!2597022 m!2933217))

(assert (=> start!252030 d!735897))

(declare-fun d!735899 () Bool)

(declare-fun lt!914598 () Int)

(assert (=> d!735899 (>= lt!914598 0)))

(declare-fun e!1639075 () Int)

(assert (=> d!735899 (= lt!914598 e!1639075)))

(declare-fun c!418389 () Bool)

(assert (=> d!735899 (= c!418389 (is-Nil!29906 (t!213019 l1!1546)))))

(assert (=> d!735899 (= (size!23211 (t!213019 l1!1546)) lt!914598)))

(declare-fun b!2597023 () Bool)

(assert (=> b!2597023 (= e!1639075 0)))

(declare-fun b!2597024 () Bool)

(assert (=> b!2597024 (= e!1639075 (+ 1 (size!23211 (t!213019 (t!213019 l1!1546)))))))

(assert (= (and d!735899 c!418389) b!2597023))

(assert (= (and d!735899 (not c!418389)) b!2597024))

(declare-fun m!2933389 () Bool)

(assert (=> b!2597024 m!2933389))

(assert (=> b!2596892 d!735899))

(declare-fun b!2597029 () Bool)

(declare-fun e!1639078 () Bool)

(declare-fun tp!823295 () Bool)

(assert (=> b!2597029 (= e!1639078 (and tp_is_empty!13491 tp!823295))))

(assert (=> b!2596887 (= tp!823286 e!1639078)))

(assert (= (and b!2596887 (is-Cons!29906 (t!213019 l1!1546))) b!2597029))

(declare-fun b!2597030 () Bool)

(declare-fun e!1639079 () Bool)

(declare-fun tp!823296 () Bool)

(assert (=> b!2597030 (= e!1639079 (and tp_is_empty!13491 tp!823296))))

(assert (=> b!2596888 (= tp!823285 e!1639079)))

(assert (= (and b!2596888 (is-Cons!29906 (t!213019 l2!1515))) b!2597030))

(declare-fun b_lambda!77645 () Bool)

(assert (= b_lambda!77641 (or b!2596886 b_lambda!77645)))

(declare-fun bs!472981 () Bool)

(declare-fun d!735901 () Bool)

(assert (= bs!472981 (and d!735901 b!2596886)))

(assert (=> bs!472981 (= (dynLambda!12657 lambda!97048 (h!35326 lt!914537)) (contains!5454 (tail!4158 l1!1546) (h!35326 lt!914537)))))

(declare-fun m!2933391 () Bool)

(assert (=> bs!472981 m!2933391))

(assert (=> b!2597017 d!735901))

(declare-fun b_lambda!77647 () Bool)

(assert (= b_lambda!77639 (or b!2596886 b_lambda!77647)))

(declare-fun bs!472982 () Bool)

(declare-fun d!735903 () Bool)

(assert (= bs!472982 (and d!735903 b!2596886)))

(assert (=> bs!472982 (= (dynLambda!12657 lambda!97049 (h!35326 lt!914537)) (contains!5454 (t!213019 l1!1546) (h!35326 lt!914537)))))

(declare-fun m!2933393 () Bool)

(assert (=> bs!472982 m!2933393))

(assert (=> b!2597015 d!735903))

(declare-fun b_lambda!77649 () Bool)

(assert (= b_lambda!77629 (or b!2596882 b_lambda!77649)))

(declare-fun bs!472983 () Bool)

(declare-fun d!735905 () Bool)

(assert (= bs!472983 (and d!735905 b!2596882)))

(assert (=> bs!472983 (= (dynLambda!12657 lambda!97047 (h!35326 l2!1515)) (contains!5454 l1!1546 (h!35326 l2!1515)))))

(declare-fun m!2933395 () Bool)

(assert (=> bs!472983 m!2933395))

(assert (=> b!2596946 d!735905))

(declare-fun b_lambda!77651 () Bool)

(assert (= b_lambda!77635 (or b!2596882 b_lambda!77651)))

(declare-fun bs!472984 () Bool)

(declare-fun d!735907 () Bool)

(assert (= bs!472984 (and d!735907 b!2596882)))

(assert (=> bs!472984 (= (dynLambda!12657 lambda!97047 (h!35326 lt!914537)) (contains!5454 l1!1546 (h!35326 lt!914537)))))

(declare-fun m!2933397 () Bool)

(assert (=> bs!472984 m!2933397))

(assert (=> b!2597001 d!735907))

(push 1)

(assert tp_is_empty!13491)

(assert (not b_lambda!77649))

(assert (not d!735845))

(assert (not b!2597030))

(assert (not d!735863))

(assert (not b!2596956))

(assert (not bm!167344))

(assert (not b!2597012))

(assert (not d!735851))

(assert (not bs!472981))

(assert (not bs!472983))

(assert (not b!2597002))

(assert (not d!735893))

(assert (not b!2596947))

(assert (not b_lambda!77651))

(assert (not d!735859))

(assert (not b!2597021))

(assert (not b!2597016))

(assert (not b!2597022))

(assert (not b!2596996))

(assert (not b!2597005))

(assert (not b!2596965))

(assert (not bs!472982))

(assert (not b!2597024))

(assert (not b!2596995))

(assert (not b!2597006))

(assert (not b!2597010))

(assert (not b!2596957))

(assert (not b!2596988))

(assert (not b_lambda!77645))

(assert (not bs!472984))

(assert (not b!2597018))

(assert (not b_lambda!77647))

(assert (not b!2597029))

(assert (not d!735865))

(assert (not b!2596994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

