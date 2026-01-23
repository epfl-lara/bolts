; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251578 () Bool)

(assert start!251578)

(declare-fun b!2594709 () Bool)

(assert (=> b!2594709 true))

(declare-fun b!2594710 () Bool)

(declare-fun m!2930737 () Bool)

(assert (=> b!2594710 m!2930737))

(declare-fun bs!472631 () Bool)

(assert (= bs!472631 (and b!2594710 b!2594709)))

(declare-datatypes ((B!2155 0))(
  ( (B!2156 (val!9545 Int)) )
))
(declare-datatypes ((List!29978 0))(
  ( (Nil!29878) (Cons!29878 (h!35298 B!2155) (t!212991 List!29978)) )
))
(declare-fun l1!1546 () List!29978)

(declare-fun lambda!96644 () Int)

(declare-fun lambda!96643 () Int)

(declare-fun tail!4144 (List!29978) List!29978)

(assert (=> bs!472631 (= (= (tail!4144 l1!1546) l1!1546) (= lambda!96644 lambda!96643))))

(assert (=> b!2594710 true))

(declare-fun lambda!96645 () Int)

(assert (=> bs!472631 (= (= (t!212991 l1!1546) l1!1546) (= lambda!96645 lambda!96643))))

(assert (=> b!2594710 (= (= (t!212991 l1!1546) (tail!4144 l1!1546)) (= lambda!96645 lambda!96644))))

(assert (=> b!2594710 true))

(declare-fun b!2594706 () Bool)

(declare-fun e!1637145 () Bool)

(declare-fun e!1637146 () Bool)

(assert (=> b!2594706 (= e!1637145 e!1637146)))

(declare-fun res!1091773 () Bool)

(assert (=> b!2594706 (=> (not res!1091773) (not e!1637146))))

(declare-fun lt!913572 () Int)

(declare-fun lt!913573 () Int)

(assert (=> b!2594706 (= res!1091773 (> lt!913572 lt!913573))))

(declare-fun l2!1515 () List!29978)

(declare-fun size!23183 (List!29978) Int)

(assert (=> b!2594706 (= lt!913573 (size!23183 l2!1515))))

(assert (=> b!2594706 (= lt!913572 (size!23183 l1!1546))))

(declare-fun b!2594707 () Bool)

(declare-fun e!1637143 () Bool)

(declare-fun tp_is_empty!13435 () Bool)

(declare-fun tp!823042 () Bool)

(assert (=> b!2594707 (= e!1637143 (and tp_is_empty!13435 tp!823042))))

(declare-fun b!2594708 () Bool)

(declare-fun e!1637142 () Bool)

(assert (=> b!2594708 (= e!1637146 (not e!1637142))))

(declare-fun res!1091769 () Bool)

(assert (=> b!2594708 (=> res!1091769 e!1637142)))

(declare-fun lt!913569 () List!29978)

(declare-fun forall!6115 (List!29978 Int) Bool)

(assert (=> b!2594708 (= res!1091769 (not (forall!6115 lt!913569 lambda!96643)))))

(assert (=> b!2594708 (= (size!23183 lt!913569) (- lt!913573 1))))

(declare-datatypes ((Unit!43910 0))(
  ( (Unit!43911) )
))
(declare-fun lt!913568 () Unit!43910)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!17 (List!29978 B!2155) Unit!43910)

(assert (=> b!2594708 (= lt!913568 (lemmaRemoveElmtNoDuplicateRemoveOne!17 l2!1515 (h!35298 l1!1546)))))

(assert (=> b!2594708 (forall!6115 lt!913569 lambda!96643)))

(declare-fun lt!913570 () Unit!43910)

(declare-fun lemmaRemoveElmtMaintainsForall!19 (List!29978 B!2155 Int) Unit!43910)

(assert (=> b!2594708 (= lt!913570 (lemmaRemoveElmtMaintainsForall!19 l2!1515 (h!35298 l1!1546) lambda!96643))))

(declare-fun noDuplicate!426 (List!29978) Bool)

(assert (=> b!2594708 (noDuplicate!426 lt!913569)))

(declare-fun -!155 (List!29978 B!2155) List!29978)

(assert (=> b!2594708 (= lt!913569 (-!155 l2!1515 (h!35298 l1!1546)))))

(declare-fun lt!913574 () Unit!43910)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!21 (List!29978 B!2155) Unit!43910)

(assert (=> b!2594708 (= lt!913574 (lemmaRemoveElmtMaintainsNoDuplicate!21 l2!1515 (h!35298 l1!1546)))))

(declare-fun res!1091772 () Bool)

(assert (=> b!2594709 (=> (not res!1091772) (not e!1637146))))

(assert (=> b!2594709 (= res!1091772 (forall!6115 l2!1515 lambda!96643))))

(declare-fun res!1091770 () Bool)

(assert (=> start!251578 (=> (not res!1091770) (not e!1637145))))

(assert (=> start!251578 (= res!1091770 (noDuplicate!426 l1!1546))))

(assert (=> start!251578 e!1637145))

(declare-fun e!1637144 () Bool)

(assert (=> start!251578 e!1637144))

(assert (=> start!251578 e!1637143))

(assert (=> b!2594710 (= e!1637142 (forall!6115 lt!913569 lambda!96645))))

(assert (=> b!2594710 (forall!6115 lt!913569 lambda!96644)))

(declare-fun lt!913571 () Unit!43910)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!9 (List!29978 List!29978 B!2155) Unit!43910)

(assert (=> b!2594710 (= lt!913571 (lemmaForallContainsThenForTailIfContainsNotHead!9 lt!913569 l1!1546 (h!35298 l1!1546)))))

(declare-fun b!2594711 () Bool)

(declare-fun res!1091774 () Bool)

(assert (=> b!2594711 (=> (not res!1091774) (not e!1637146))))

(declare-fun contains!5426 (List!29978 B!2155) Bool)

(assert (=> b!2594711 (= res!1091774 (contains!5426 l2!1515 (h!35298 l1!1546)))))

(declare-fun b!2594712 () Bool)

(declare-fun res!1091771 () Bool)

(assert (=> b!2594712 (=> (not res!1091771) (not e!1637146))))

(assert (=> b!2594712 (= res!1091771 (is-Cons!29878 l1!1546))))

(declare-fun b!2594713 () Bool)

(declare-fun res!1091768 () Bool)

(assert (=> b!2594713 (=> (not res!1091768) (not e!1637145))))

(assert (=> b!2594713 (= res!1091768 (noDuplicate!426 l2!1515))))

(declare-fun b!2594714 () Bool)

(declare-fun tp!823041 () Bool)

(assert (=> b!2594714 (= e!1637144 (and tp_is_empty!13435 tp!823041))))

(assert (= (and start!251578 res!1091770) b!2594713))

(assert (= (and b!2594713 res!1091768) b!2594706))

(assert (= (and b!2594706 res!1091773) b!2594709))

(assert (= (and b!2594709 res!1091772) b!2594712))

(assert (= (and b!2594712 res!1091771) b!2594711))

(assert (= (and b!2594711 res!1091774) b!2594708))

(assert (= (and b!2594708 (not res!1091769)) b!2594710))

(assert (= (and start!251578 (is-Cons!29878 l1!1546)) b!2594714))

(assert (= (and start!251578 (is-Cons!29878 l2!1515)) b!2594707))

(declare-fun m!2930739 () Bool)

(assert (=> start!251578 m!2930739))

(declare-fun m!2930741 () Bool)

(assert (=> b!2594706 m!2930741))

(declare-fun m!2930743 () Bool)

(assert (=> b!2594706 m!2930743))

(declare-fun m!2930745 () Bool)

(assert (=> b!2594713 m!2930745))

(declare-fun m!2930747 () Bool)

(assert (=> b!2594710 m!2930747))

(declare-fun m!2930749 () Bool)

(assert (=> b!2594710 m!2930749))

(declare-fun m!2930751 () Bool)

(assert (=> b!2594710 m!2930751))

(declare-fun m!2930753 () Bool)

(assert (=> b!2594709 m!2930753))

(declare-fun m!2930755 () Bool)

(assert (=> b!2594708 m!2930755))

(declare-fun m!2930757 () Bool)

(assert (=> b!2594708 m!2930757))

(declare-fun m!2930759 () Bool)

(assert (=> b!2594708 m!2930759))

(declare-fun m!2930761 () Bool)

(assert (=> b!2594708 m!2930761))

(declare-fun m!2930763 () Bool)

(assert (=> b!2594708 m!2930763))

(declare-fun m!2930765 () Bool)

(assert (=> b!2594708 m!2930765))

(assert (=> b!2594708 m!2930755))

(declare-fun m!2930767 () Bool)

(assert (=> b!2594708 m!2930767))

(declare-fun m!2930769 () Bool)

(assert (=> b!2594711 m!2930769))

(push 1)

(assert (not b!2594711))

(assert (not b!2594706))

(assert (not b!2594708))

(assert (not b!2594707))

(assert (not b!2594714))

(assert (not b!2594710))

(assert tp_is_empty!13435)

(assert (not b!2594713))

(assert (not start!251578))

(assert (not b!2594709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734903 () Bool)

(declare-fun res!1091800 () Bool)

(declare-fun e!1637176 () Bool)

(assert (=> d!734903 (=> res!1091800 e!1637176)))

(assert (=> d!734903 (= res!1091800 (is-Nil!29878 l2!1515))))

(assert (=> d!734903 (= (noDuplicate!426 l2!1515) e!1637176)))

(declare-fun b!2594750 () Bool)

(declare-fun e!1637177 () Bool)

(assert (=> b!2594750 (= e!1637176 e!1637177)))

(declare-fun res!1091801 () Bool)

(assert (=> b!2594750 (=> (not res!1091801) (not e!1637177))))

(assert (=> b!2594750 (= res!1091801 (not (contains!5426 (t!212991 l2!1515) (h!35298 l2!1515))))))

(declare-fun b!2594751 () Bool)

(assert (=> b!2594751 (= e!1637177 (noDuplicate!426 (t!212991 l2!1515)))))

(assert (= (and d!734903 (not res!1091800)) b!2594750))

(assert (= (and b!2594750 res!1091801) b!2594751))

(declare-fun m!2930805 () Bool)

(assert (=> b!2594750 m!2930805))

(declare-fun m!2930807 () Bool)

(assert (=> b!2594751 m!2930807))

(assert (=> b!2594713 d!734903))

(declare-fun d!734905 () Bool)

(assert (=> d!734905 (forall!6115 (-!155 l2!1515 (h!35298 l1!1546)) lambda!96643)))

(declare-fun lt!913598 () Unit!43910)

(declare-fun choose!15372 (List!29978 B!2155 Int) Unit!43910)

(assert (=> d!734905 (= lt!913598 (choose!15372 l2!1515 (h!35298 l1!1546) lambda!96643))))

(assert (=> d!734905 (noDuplicate!426 l2!1515)))

(assert (=> d!734905 (= (lemmaRemoveElmtMaintainsForall!19 l2!1515 (h!35298 l1!1546) lambda!96643) lt!913598)))

(declare-fun bs!472633 () Bool)

(assert (= bs!472633 d!734905))

(assert (=> bs!472633 m!2930763))

(assert (=> bs!472633 m!2930763))

(declare-fun m!2930809 () Bool)

(assert (=> bs!472633 m!2930809))

(declare-fun m!2930811 () Bool)

(assert (=> bs!472633 m!2930811))

(assert (=> bs!472633 m!2930745))

(assert (=> b!2594708 d!734905))

(declare-fun d!734907 () Bool)

(declare-fun res!1091806 () Bool)

(declare-fun e!1637183 () Bool)

(assert (=> d!734907 (=> res!1091806 e!1637183)))

(assert (=> d!734907 (= res!1091806 (is-Nil!29878 lt!913569))))

(assert (=> d!734907 (= (forall!6115 lt!913569 lambda!96643) e!1637183)))

(declare-fun b!2594756 () Bool)

(declare-fun e!1637184 () Bool)

(assert (=> b!2594756 (= e!1637183 e!1637184)))

(declare-fun res!1091807 () Bool)

(assert (=> b!2594756 (=> (not res!1091807) (not e!1637184))))

(declare-fun dynLambda!12633 (Int B!2155) Bool)

(assert (=> b!2594756 (= res!1091807 (dynLambda!12633 lambda!96643 (h!35298 lt!913569)))))

(declare-fun b!2594757 () Bool)

(assert (=> b!2594757 (= e!1637184 (forall!6115 (t!212991 lt!913569) lambda!96643))))

(assert (= (and d!734907 (not res!1091806)) b!2594756))

(assert (= (and b!2594756 res!1091807) b!2594757))

(declare-fun b_lambda!77291 () Bool)

(assert (=> (not b_lambda!77291) (not b!2594756)))

(declare-fun m!2930813 () Bool)

(assert (=> b!2594756 m!2930813))

(declare-fun m!2930815 () Bool)

(assert (=> b!2594757 m!2930815))

(assert (=> b!2594708 d!734907))

(declare-fun e!1637194 () Bool)

(declare-fun lt!913601 () List!29978)

(declare-fun b!2594768 () Bool)

(declare-fun content!4189 (List!29978) (Set B!2155))

(assert (=> b!2594768 (= e!1637194 (= (content!4189 lt!913601) (set.minus (content!4189 l2!1515) (set.insert (h!35298 l1!1546) (as set.empty (Set B!2155))))))))

(declare-fun b!2594769 () Bool)

(declare-fun e!1637193 () List!29978)

(declare-fun call!167299 () List!29978)

(assert (=> b!2594769 (= e!1637193 (Cons!29878 (h!35298 l2!1515) call!167299))))

(declare-fun b!2594770 () Bool)

(assert (=> b!2594770 (= e!1637193 call!167299)))

(declare-fun d!734909 () Bool)

(assert (=> d!734909 e!1637194))

(declare-fun res!1091810 () Bool)

(assert (=> d!734909 (=> (not res!1091810) (not e!1637194))))

(assert (=> d!734909 (= res!1091810 (<= (size!23183 lt!913601) (size!23183 l2!1515)))))

(declare-fun e!1637192 () List!29978)

(assert (=> d!734909 (= lt!913601 e!1637192)))

(declare-fun c!418130 () Bool)

(assert (=> d!734909 (= c!418130 (is-Cons!29878 l2!1515))))

(assert (=> d!734909 (= (-!155 l2!1515 (h!35298 l1!1546)) lt!913601)))

(declare-fun bm!167294 () Bool)

(assert (=> bm!167294 (= call!167299 (-!155 (t!212991 l2!1515) (h!35298 l1!1546)))))

(declare-fun b!2594771 () Bool)

(assert (=> b!2594771 (= e!1637192 e!1637193)))

(declare-fun c!418129 () Bool)

(assert (=> b!2594771 (= c!418129 (= (h!35298 l1!1546) (h!35298 l2!1515)))))

(declare-fun b!2594772 () Bool)

(assert (=> b!2594772 (= e!1637192 Nil!29878)))

(assert (= (and d!734909 c!418130) b!2594771))

(assert (= (and d!734909 (not c!418130)) b!2594772))

(assert (= (and b!2594771 c!418129) b!2594770))

(assert (= (and b!2594771 (not c!418129)) b!2594769))

(assert (= (or b!2594770 b!2594769) bm!167294))

(assert (= (and d!734909 res!1091810) b!2594768))

(declare-fun m!2930817 () Bool)

(assert (=> b!2594768 m!2930817))

(declare-fun m!2930819 () Bool)

(assert (=> b!2594768 m!2930819))

(declare-fun m!2930821 () Bool)

(assert (=> b!2594768 m!2930821))

(declare-fun m!2930823 () Bool)

(assert (=> d!734909 m!2930823))

(assert (=> d!734909 m!2930741))

(declare-fun m!2930825 () Bool)

(assert (=> bm!167294 m!2930825))

(assert (=> b!2594708 d!734909))

(declare-fun d!734911 () Bool)

(declare-fun lt!913604 () Int)

(assert (=> d!734911 (>= lt!913604 0)))

(declare-fun e!1637197 () Int)

(assert (=> d!734911 (= lt!913604 e!1637197)))

(declare-fun c!418133 () Bool)

(assert (=> d!734911 (= c!418133 (is-Nil!29878 lt!913569))))

(assert (=> d!734911 (= (size!23183 lt!913569) lt!913604)))

(declare-fun b!2594777 () Bool)

(assert (=> b!2594777 (= e!1637197 0)))

(declare-fun b!2594778 () Bool)

(assert (=> b!2594778 (= e!1637197 (+ 1 (size!23183 (t!212991 lt!913569))))))

(assert (= (and d!734911 c!418133) b!2594777))

(assert (= (and d!734911 (not c!418133)) b!2594778))

(declare-fun m!2930827 () Bool)

(assert (=> b!2594778 m!2930827))

(assert (=> b!2594708 d!734911))

(declare-fun d!734915 () Bool)

(assert (=> d!734915 (noDuplicate!426 (-!155 l2!1515 (h!35298 l1!1546)))))

(declare-fun lt!913607 () Unit!43910)

(declare-fun choose!15373 (List!29978 B!2155) Unit!43910)

(assert (=> d!734915 (= lt!913607 (choose!15373 l2!1515 (h!35298 l1!1546)))))

(assert (=> d!734915 (noDuplicate!426 l2!1515)))

(assert (=> d!734915 (= (lemmaRemoveElmtMaintainsNoDuplicate!21 l2!1515 (h!35298 l1!1546)) lt!913607)))

(declare-fun bs!472634 () Bool)

(assert (= bs!472634 d!734915))

(assert (=> bs!472634 m!2930763))

(assert (=> bs!472634 m!2930763))

(declare-fun m!2930829 () Bool)

(assert (=> bs!472634 m!2930829))

(declare-fun m!2930831 () Bool)

(assert (=> bs!472634 m!2930831))

(assert (=> bs!472634 m!2930745))

(assert (=> b!2594708 d!734915))

(declare-fun d!734919 () Bool)

(assert (=> d!734919 (= (size!23183 (-!155 l2!1515 (h!35298 l1!1546))) (- (size!23183 l2!1515) 1))))

(declare-fun lt!913610 () Unit!43910)

(declare-fun choose!15374 (List!29978 B!2155) Unit!43910)

(assert (=> d!734919 (= lt!913610 (choose!15374 l2!1515 (h!35298 l1!1546)))))

(assert (=> d!734919 (noDuplicate!426 l2!1515)))

(assert (=> d!734919 (= (lemmaRemoveElmtNoDuplicateRemoveOne!17 l2!1515 (h!35298 l1!1546)) lt!913610)))

(declare-fun bs!472635 () Bool)

(assert (= bs!472635 d!734919))

(assert (=> bs!472635 m!2930763))

(declare-fun m!2930833 () Bool)

(assert (=> bs!472635 m!2930833))

(assert (=> bs!472635 m!2930745))

(assert (=> bs!472635 m!2930763))

(assert (=> bs!472635 m!2930741))

(declare-fun m!2930835 () Bool)

(assert (=> bs!472635 m!2930835))

(assert (=> b!2594708 d!734919))

(declare-fun d!734921 () Bool)

(declare-fun res!1091817 () Bool)

(declare-fun e!1637206 () Bool)

(assert (=> d!734921 (=> res!1091817 e!1637206)))

(assert (=> d!734921 (= res!1091817 (is-Nil!29878 lt!913569))))

(assert (=> d!734921 (= (noDuplicate!426 lt!913569) e!1637206)))

(declare-fun b!2594785 () Bool)

(declare-fun e!1637207 () Bool)

(assert (=> b!2594785 (= e!1637206 e!1637207)))

(declare-fun res!1091818 () Bool)

(assert (=> b!2594785 (=> (not res!1091818) (not e!1637207))))

(assert (=> b!2594785 (= res!1091818 (not (contains!5426 (t!212991 lt!913569) (h!35298 lt!913569))))))

(declare-fun b!2594786 () Bool)

(assert (=> b!2594786 (= e!1637207 (noDuplicate!426 (t!212991 lt!913569)))))

(assert (= (and d!734921 (not res!1091817)) b!2594785))

(assert (= (and b!2594785 res!1091818) b!2594786))

(declare-fun m!2930837 () Bool)

(assert (=> b!2594785 m!2930837))

(declare-fun m!2930839 () Bool)

(assert (=> b!2594786 m!2930839))

(assert (=> b!2594708 d!734921))

(declare-fun d!734923 () Bool)

(declare-fun lt!913613 () Bool)

(assert (=> d!734923 (= lt!913613 (set.member (h!35298 l1!1546) (content!4189 l2!1515)))))

(declare-fun e!1637214 () Bool)

(assert (=> d!734923 (= lt!913613 e!1637214)))

(declare-fun res!1091825 () Bool)

(assert (=> d!734923 (=> (not res!1091825) (not e!1637214))))

(assert (=> d!734923 (= res!1091825 (is-Cons!29878 l2!1515))))

(assert (=> d!734923 (= (contains!5426 l2!1515 (h!35298 l1!1546)) lt!913613)))

(declare-fun b!2594793 () Bool)

(declare-fun e!1637215 () Bool)

(assert (=> b!2594793 (= e!1637214 e!1637215)))

(declare-fun res!1091826 () Bool)

(assert (=> b!2594793 (=> res!1091826 e!1637215)))

(assert (=> b!2594793 (= res!1091826 (= (h!35298 l2!1515) (h!35298 l1!1546)))))

(declare-fun b!2594794 () Bool)

(assert (=> b!2594794 (= e!1637215 (contains!5426 (t!212991 l2!1515) (h!35298 l1!1546)))))

(assert (= (and d!734923 res!1091825) b!2594793))

(assert (= (and b!2594793 (not res!1091826)) b!2594794))

(assert (=> d!734923 m!2930819))

(declare-fun m!2930849 () Bool)

(assert (=> d!734923 m!2930849))

(declare-fun m!2930851 () Bool)

(assert (=> b!2594794 m!2930851))

(assert (=> b!2594711 d!734923))

(declare-fun d!734929 () Bool)

(declare-fun lt!913614 () Int)

(assert (=> d!734929 (>= lt!913614 0)))

(declare-fun e!1637216 () Int)

(assert (=> d!734929 (= lt!913614 e!1637216)))

(declare-fun c!418134 () Bool)

(assert (=> d!734929 (= c!418134 (is-Nil!29878 l2!1515))))

(assert (=> d!734929 (= (size!23183 l2!1515) lt!913614)))

(declare-fun b!2594795 () Bool)

(assert (=> b!2594795 (= e!1637216 0)))

(declare-fun b!2594796 () Bool)

(assert (=> b!2594796 (= e!1637216 (+ 1 (size!23183 (t!212991 l2!1515))))))

(assert (= (and d!734929 c!418134) b!2594795))

(assert (= (and d!734929 (not c!418134)) b!2594796))

(declare-fun m!2930853 () Bool)

(assert (=> b!2594796 m!2930853))

(assert (=> b!2594706 d!734929))

(declare-fun d!734931 () Bool)

(declare-fun lt!913615 () Int)

(assert (=> d!734931 (>= lt!913615 0)))

(declare-fun e!1637217 () Int)

(assert (=> d!734931 (= lt!913615 e!1637217)))

(declare-fun c!418135 () Bool)

(assert (=> d!734931 (= c!418135 (is-Nil!29878 l1!1546))))

(assert (=> d!734931 (= (size!23183 l1!1546) lt!913615)))

(declare-fun b!2594797 () Bool)

(assert (=> b!2594797 (= e!1637217 0)))

(declare-fun b!2594798 () Bool)

(assert (=> b!2594798 (= e!1637217 (+ 1 (size!23183 (t!212991 l1!1546))))))

(assert (= (and d!734931 c!418135) b!2594797))

(assert (= (and d!734931 (not c!418135)) b!2594798))

(declare-fun m!2930855 () Bool)

(assert (=> b!2594798 m!2930855))

(assert (=> b!2594706 d!734931))

(declare-fun d!734933 () Bool)

(declare-fun res!1091827 () Bool)

(declare-fun e!1637218 () Bool)

(assert (=> d!734933 (=> res!1091827 e!1637218)))

(assert (=> d!734933 (= res!1091827 (is-Nil!29878 l1!1546))))

(assert (=> d!734933 (= (noDuplicate!426 l1!1546) e!1637218)))

(declare-fun b!2594799 () Bool)

(declare-fun e!1637219 () Bool)

(assert (=> b!2594799 (= e!1637218 e!1637219)))

(declare-fun res!1091828 () Bool)

(assert (=> b!2594799 (=> (not res!1091828) (not e!1637219))))

(assert (=> b!2594799 (= res!1091828 (not (contains!5426 (t!212991 l1!1546) (h!35298 l1!1546))))))

(declare-fun b!2594800 () Bool)

(assert (=> b!2594800 (= e!1637219 (noDuplicate!426 (t!212991 l1!1546)))))

(assert (= (and d!734933 (not res!1091827)) b!2594799))

(assert (= (and b!2594799 res!1091828) b!2594800))

(declare-fun m!2930857 () Bool)

(assert (=> b!2594799 m!2930857))

(declare-fun m!2930859 () Bool)

(assert (=> b!2594800 m!2930859))

(assert (=> start!251578 d!734933))

(declare-fun d!734935 () Bool)

(assert (=> d!734935 (= (tail!4144 l1!1546) (t!212991 l1!1546))))

(assert (=> b!2594710 d!734935))

(declare-fun d!734937 () Bool)

(declare-fun res!1091829 () Bool)

(declare-fun e!1637220 () Bool)

(assert (=> d!734937 (=> res!1091829 e!1637220)))

(assert (=> d!734937 (= res!1091829 (is-Nil!29878 lt!913569))))

(assert (=> d!734937 (= (forall!6115 lt!913569 lambda!96645) e!1637220)))

(declare-fun b!2594801 () Bool)

(declare-fun e!1637221 () Bool)

(assert (=> b!2594801 (= e!1637220 e!1637221)))

(declare-fun res!1091830 () Bool)

(assert (=> b!2594801 (=> (not res!1091830) (not e!1637221))))

(assert (=> b!2594801 (= res!1091830 (dynLambda!12633 lambda!96645 (h!35298 lt!913569)))))

(declare-fun b!2594802 () Bool)

(assert (=> b!2594802 (= e!1637221 (forall!6115 (t!212991 lt!913569) lambda!96645))))

(assert (= (and d!734937 (not res!1091829)) b!2594801))

(assert (= (and b!2594801 res!1091830) b!2594802))

(declare-fun b_lambda!77297 () Bool)

(assert (=> (not b_lambda!77297) (not b!2594801)))

(declare-fun m!2930861 () Bool)

(assert (=> b!2594801 m!2930861))

(declare-fun m!2930863 () Bool)

(assert (=> b!2594802 m!2930863))

(assert (=> b!2594710 d!734937))

(declare-fun d!734939 () Bool)

(declare-fun res!1091831 () Bool)

(declare-fun e!1637222 () Bool)

(assert (=> d!734939 (=> res!1091831 e!1637222)))

(assert (=> d!734939 (= res!1091831 (is-Nil!29878 lt!913569))))

(assert (=> d!734939 (= (forall!6115 lt!913569 lambda!96644) e!1637222)))

(declare-fun b!2594803 () Bool)

(declare-fun e!1637223 () Bool)

(assert (=> b!2594803 (= e!1637222 e!1637223)))

(declare-fun res!1091832 () Bool)

(assert (=> b!2594803 (=> (not res!1091832) (not e!1637223))))

(assert (=> b!2594803 (= res!1091832 (dynLambda!12633 lambda!96644 (h!35298 lt!913569)))))

(declare-fun b!2594804 () Bool)

(assert (=> b!2594804 (= e!1637223 (forall!6115 (t!212991 lt!913569) lambda!96644))))

(assert (= (and d!734939 (not res!1091831)) b!2594803))

(assert (= (and b!2594803 res!1091832) b!2594804))

(declare-fun b_lambda!77299 () Bool)

(assert (=> (not b_lambda!77299) (not b!2594803)))

(declare-fun m!2930865 () Bool)

(assert (=> b!2594803 m!2930865))

(declare-fun m!2930867 () Bool)

(assert (=> b!2594804 m!2930867))

(assert (=> b!2594710 d!734939))

(declare-fun bs!472636 () Bool)

(declare-fun d!734941 () Bool)

(assert (= bs!472636 d!734941))

(assert (=> bs!472636 m!2930737))

(declare-fun bs!472637 () Bool)

(assert (= bs!472637 (and d!734941 b!2594709)))

(declare-fun lambda!96663 () Int)

(assert (=> bs!472637 (= (= (tail!4144 l1!1546) l1!1546) (= lambda!96663 lambda!96643))))

(declare-fun bs!472638 () Bool)

(assert (= bs!472638 (and d!734941 b!2594710)))

(assert (=> bs!472638 (= lambda!96663 lambda!96644)))

(assert (=> bs!472638 (= (= (tail!4144 l1!1546) (t!212991 l1!1546)) (= lambda!96663 lambda!96645))))

(assert (=> d!734941 true))

(assert (=> d!734941 (forall!6115 lt!913569 lambda!96663)))

(declare-fun lt!913620 () Unit!43910)

(declare-fun choose!15375 (List!29978 List!29978 B!2155) Unit!43910)

(assert (=> d!734941 (= lt!913620 (choose!15375 lt!913569 l1!1546 (h!35298 l1!1546)))))

(declare-fun isEmpty!17124 (List!29978) Bool)

(assert (=> d!734941 (not (isEmpty!17124 l1!1546))))

(assert (=> d!734941 (= (lemmaForallContainsThenForTailIfContainsNotHead!9 lt!913569 l1!1546 (h!35298 l1!1546)) lt!913620)))

(declare-fun m!2930869 () Bool)

(assert (=> bs!472636 m!2930869))

(declare-fun m!2930871 () Bool)

(assert (=> bs!472636 m!2930871))

(declare-fun m!2930873 () Bool)

(assert (=> bs!472636 m!2930873))

(assert (=> b!2594710 d!734941))

(declare-fun d!734943 () Bool)

(declare-fun res!1091833 () Bool)

(declare-fun e!1637228 () Bool)

(assert (=> d!734943 (=> res!1091833 e!1637228)))

(assert (=> d!734943 (= res!1091833 (is-Nil!29878 l2!1515))))

(assert (=> d!734943 (= (forall!6115 l2!1515 lambda!96643) e!1637228)))

(declare-fun b!2594805 () Bool)

(declare-fun e!1637229 () Bool)

(assert (=> b!2594805 (= e!1637228 e!1637229)))

(declare-fun res!1091834 () Bool)

(assert (=> b!2594805 (=> (not res!1091834) (not e!1637229))))

(assert (=> b!2594805 (= res!1091834 (dynLambda!12633 lambda!96643 (h!35298 l2!1515)))))

(declare-fun b!2594806 () Bool)

(assert (=> b!2594806 (= e!1637229 (forall!6115 (t!212991 l2!1515) lambda!96643))))

(assert (= (and d!734943 (not res!1091833)) b!2594805))

(assert (= (and b!2594805 res!1091834) b!2594806))

(declare-fun b_lambda!77301 () Bool)

(assert (=> (not b_lambda!77301) (not b!2594805)))

(declare-fun m!2930875 () Bool)

(assert (=> b!2594805 m!2930875))

(declare-fun m!2930877 () Bool)

(assert (=> b!2594806 m!2930877))

(assert (=> b!2594709 d!734943))

(declare-fun b!2594811 () Bool)

(declare-fun e!1637232 () Bool)

(declare-fun tp!823051 () Bool)

(assert (=> b!2594811 (= e!1637232 (and tp_is_empty!13435 tp!823051))))

(assert (=> b!2594714 (= tp!823041 e!1637232)))

(assert (= (and b!2594714 (is-Cons!29878 (t!212991 l1!1546))) b!2594811))

(declare-fun b!2594812 () Bool)

(declare-fun e!1637233 () Bool)

(declare-fun tp!823052 () Bool)

(assert (=> b!2594812 (= e!1637233 (and tp_is_empty!13435 tp!823052))))

(assert (=> b!2594707 (= tp!823042 e!1637233)))

(assert (= (and b!2594707 (is-Cons!29878 (t!212991 l2!1515))) b!2594812))

(declare-fun b_lambda!77303 () Bool)

(assert (= b_lambda!77291 (or b!2594709 b_lambda!77303)))

(declare-fun bs!472639 () Bool)

(declare-fun d!734945 () Bool)

(assert (= bs!472639 (and d!734945 b!2594709)))

(assert (=> bs!472639 (= (dynLambda!12633 lambda!96643 (h!35298 lt!913569)) (contains!5426 l1!1546 (h!35298 lt!913569)))))

(declare-fun m!2930879 () Bool)

(assert (=> bs!472639 m!2930879))

(assert (=> b!2594756 d!734945))

(declare-fun b_lambda!77305 () Bool)

(assert (= b_lambda!77297 (or b!2594710 b_lambda!77305)))

(declare-fun bs!472640 () Bool)

(declare-fun d!734947 () Bool)

(assert (= bs!472640 (and d!734947 b!2594710)))

(assert (=> bs!472640 (= (dynLambda!12633 lambda!96645 (h!35298 lt!913569)) (contains!5426 (t!212991 l1!1546) (h!35298 lt!913569)))))

(declare-fun m!2930881 () Bool)

(assert (=> bs!472640 m!2930881))

(assert (=> b!2594801 d!734947))

(declare-fun b_lambda!77307 () Bool)

(assert (= b_lambda!77299 (or b!2594710 b_lambda!77307)))

(declare-fun bs!472642 () Bool)

(declare-fun d!734949 () Bool)

(assert (= bs!472642 (and d!734949 b!2594710)))

(assert (=> bs!472642 (= (dynLambda!12633 lambda!96644 (h!35298 lt!913569)) (contains!5426 (tail!4144 l1!1546) (h!35298 lt!913569)))))

(declare-fun m!2930883 () Bool)

(assert (=> bs!472642 m!2930883))

(assert (=> b!2594803 d!734949))

(declare-fun b_lambda!77309 () Bool)

(assert (= b_lambda!77301 (or b!2594709 b_lambda!77309)))

(declare-fun bs!472643 () Bool)

(declare-fun d!734951 () Bool)

(assert (= bs!472643 (and d!734951 b!2594709)))

(assert (=> bs!472643 (= (dynLambda!12633 lambda!96643 (h!35298 l2!1515)) (contains!5426 l1!1546 (h!35298 l2!1515)))))

(declare-fun m!2930885 () Bool)

(assert (=> bs!472643 m!2930885))

(assert (=> b!2594805 d!734951))

(push 1)

(assert (not b!2594800))

(assert (not bs!472643))

(assert (not d!734909))

(assert (not d!734905))

(assert (not b!2594751))

(assert (not d!734915))

(assert (not b!2594794))

(assert (not d!734941))

(assert (not b!2594806))

(assert (not b!2594811))

(assert (not b!2594778))

(assert (not b_lambda!77303))

(assert tp_is_empty!13435)

(assert (not b!2594802))

(assert (not b!2594750))

(assert (not b!2594785))

(assert (not b!2594798))

(assert (not bm!167294))

(assert (not b_lambda!77307))

(assert (not b!2594768))

(assert (not b!2594796))

(assert (not bs!472640))

(assert (not b!2594812))

(assert (not d!734923))

(assert (not b!2594757))

(assert (not b!2594786))

(assert (not b!2594799))

(assert (not d!734919))

(assert (not bs!472639))

(assert (not bs!472642))

(assert (not b_lambda!77305))

(assert (not b!2594804))

(assert (not b_lambda!77309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

