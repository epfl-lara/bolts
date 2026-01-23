; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251938 () Bool)

(assert start!251938)

(declare-fun b!2596445 () Bool)

(assert (=> b!2596445 true))

(declare-fun b!2596444 () Bool)

(declare-fun res!1092830 () Bool)

(declare-fun e!1638590 () Bool)

(assert (=> b!2596444 (=> res!1092830 e!1638590)))

(declare-datatypes ((B!2199 0))(
  ( (B!2200 (val!9567 Int)) )
))
(declare-datatypes ((List!30000 0))(
  ( (Nil!29900) (Cons!29900 (h!35320 B!2199) (t!213013 List!30000)) )
))
(declare-fun l1!1546 () List!30000)

(declare-fun isEmpty!17138 (List!30000) Bool)

(assert (=> b!2596444 (= res!1092830 (isEmpty!17138 l1!1546))))

(declare-fun res!1092825 () Bool)

(declare-fun e!1638592 () Bool)

(assert (=> b!2596445 (=> (not res!1092825) (not e!1638592))))

(declare-fun l2!1515 () List!30000)

(declare-fun lambda!96969 () Int)

(declare-fun forall!6137 (List!30000 Int) Bool)

(assert (=> b!2596445 (= res!1092825 (forall!6137 l2!1515 lambda!96969))))

(declare-fun b!2596446 () Bool)

(declare-fun res!1092826 () Bool)

(assert (=> b!2596446 (=> (not res!1092826) (not e!1638592))))

(declare-fun contains!5448 (List!30000 B!2199) Bool)

(assert (=> b!2596446 (= res!1092826 (contains!5448 l2!1515 (h!35320 l1!1546)))))

(declare-fun b!2596447 () Bool)

(assert (=> b!2596447 (= e!1638592 (not e!1638590))))

(declare-fun res!1092823 () Bool)

(assert (=> b!2596447 (=> res!1092823 e!1638590)))

(declare-fun lt!914315 () List!30000)

(assert (=> b!2596447 (= res!1092823 (not (forall!6137 lt!914315 lambda!96969)))))

(declare-fun lt!914319 () Int)

(declare-fun size!23205 (List!30000) Int)

(assert (=> b!2596447 (= (size!23205 lt!914315) (- lt!914319 1))))

(declare-datatypes ((Unit!43957 0))(
  ( (Unit!43958) )
))
(declare-fun lt!914317 () Unit!43957)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!33 (List!30000 B!2199) Unit!43957)

(assert (=> b!2596447 (= lt!914317 (lemmaRemoveElmtNoDuplicateRemoveOne!33 l2!1515 (h!35320 l1!1546)))))

(assert (=> b!2596447 (forall!6137 lt!914315 lambda!96969)))

(declare-fun lt!914318 () Unit!43957)

(declare-fun lemmaRemoveElmtMaintainsForall!35 (List!30000 B!2199 Int) Unit!43957)

(assert (=> b!2596447 (= lt!914318 (lemmaRemoveElmtMaintainsForall!35 l2!1515 (h!35320 l1!1546) lambda!96969))))

(declare-fun noDuplicate!448 (List!30000) Bool)

(assert (=> b!2596447 (noDuplicate!448 lt!914315)))

(declare-fun -!175 (List!30000 B!2199) List!30000)

(assert (=> b!2596447 (= lt!914315 (-!175 l2!1515 (h!35320 l1!1546)))))

(declare-fun lt!914316 () Unit!43957)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!41 (List!30000 B!2199) Unit!43957)

(assert (=> b!2596447 (= lt!914316 (lemmaRemoveElmtMaintainsNoDuplicate!41 l2!1515 (h!35320 l1!1546)))))

(declare-fun b!2596448 () Bool)

(declare-fun e!1638593 () Bool)

(declare-fun tp_is_empty!13479 () Bool)

(declare-fun tp!823233 () Bool)

(assert (=> b!2596448 (= e!1638593 (and tp_is_empty!13479 tp!823233))))

(declare-fun b!2596449 () Bool)

(declare-fun e!1638591 () Bool)

(assert (=> b!2596449 (= e!1638591 e!1638592)))

(declare-fun res!1092828 () Bool)

(assert (=> b!2596449 (=> (not res!1092828) (not e!1638592))))

(declare-fun lt!914314 () Int)

(assert (=> b!2596449 (= res!1092828 (> lt!914314 lt!914319))))

(assert (=> b!2596449 (= lt!914319 (size!23205 l2!1515))))

(assert (=> b!2596449 (= lt!914314 (size!23205 l1!1546))))

(declare-fun res!1092831 () Bool)

(assert (=> start!251938 (=> (not res!1092831) (not e!1638591))))

(assert (=> start!251938 (= res!1092831 (noDuplicate!448 l1!1546))))

(assert (=> start!251938 e!1638591))

(assert (=> start!251938 e!1638593))

(declare-fun e!1638594 () Bool)

(assert (=> start!251938 e!1638594))

(declare-fun b!2596450 () Bool)

(declare-fun tp!823234 () Bool)

(assert (=> b!2596450 (= e!1638594 (and tp_is_empty!13479 tp!823234))))

(declare-fun b!2596451 () Bool)

(declare-fun res!1092829 () Bool)

(assert (=> b!2596451 (=> res!1092829 e!1638590)))

(assert (=> b!2596451 (= res!1092829 (not (forall!6137 lt!914315 lambda!96969)))))

(declare-fun b!2596452 () Bool)

(assert (=> b!2596452 (= e!1638590 (not (contains!5448 lt!914315 (h!35320 l1!1546))))))

(declare-fun b!2596453 () Bool)

(declare-fun res!1092824 () Bool)

(assert (=> b!2596453 (=> (not res!1092824) (not e!1638592))))

(assert (=> b!2596453 (= res!1092824 (is-Cons!29900 l1!1546))))

(declare-fun b!2596454 () Bool)

(declare-fun res!1092822 () Bool)

(assert (=> b!2596454 (=> (not res!1092822) (not e!1638591))))

(assert (=> b!2596454 (= res!1092822 (noDuplicate!448 l2!1515))))

(declare-fun b!2596455 () Bool)

(declare-fun res!1092827 () Bool)

(assert (=> b!2596455 (=> res!1092827 e!1638590)))

(declare-fun head!5893 (List!30000) B!2199)

(assert (=> b!2596455 (= res!1092827 (not (= (h!35320 l1!1546) (head!5893 l1!1546))))))

(assert (= (and start!251938 res!1092831) b!2596454))

(assert (= (and b!2596454 res!1092822) b!2596449))

(assert (= (and b!2596449 res!1092828) b!2596445))

(assert (= (and b!2596445 res!1092825) b!2596453))

(assert (= (and b!2596453 res!1092824) b!2596446))

(assert (= (and b!2596446 res!1092826) b!2596447))

(assert (= (and b!2596447 (not res!1092823)) b!2596444))

(assert (= (and b!2596444 (not res!1092830)) b!2596451))

(assert (= (and b!2596451 (not res!1092829)) b!2596455))

(assert (= (and b!2596455 (not res!1092827)) b!2596452))

(assert (= (and start!251938 (is-Cons!29900 l1!1546)) b!2596448))

(assert (= (and start!251938 (is-Cons!29900 l2!1515)) b!2596450))

(declare-fun m!2932721 () Bool)

(assert (=> start!251938 m!2932721))

(declare-fun m!2932723 () Bool)

(assert (=> b!2596454 m!2932723))

(declare-fun m!2932725 () Bool)

(assert (=> b!2596455 m!2932725))

(declare-fun m!2932727 () Bool)

(assert (=> b!2596445 m!2932727))

(declare-fun m!2932729 () Bool)

(assert (=> b!2596444 m!2932729))

(declare-fun m!2932731 () Bool)

(assert (=> b!2596451 m!2932731))

(declare-fun m!2932733 () Bool)

(assert (=> b!2596452 m!2932733))

(declare-fun m!2932735 () Bool)

(assert (=> b!2596449 m!2932735))

(declare-fun m!2932737 () Bool)

(assert (=> b!2596449 m!2932737))

(declare-fun m!2932739 () Bool)

(assert (=> b!2596446 m!2932739))

(declare-fun m!2932741 () Bool)

(assert (=> b!2596447 m!2932741))

(assert (=> b!2596447 m!2932731))

(declare-fun m!2932743 () Bool)

(assert (=> b!2596447 m!2932743))

(declare-fun m!2932745 () Bool)

(assert (=> b!2596447 m!2932745))

(declare-fun m!2932747 () Bool)

(assert (=> b!2596447 m!2932747))

(declare-fun m!2932749 () Bool)

(assert (=> b!2596447 m!2932749))

(assert (=> b!2596447 m!2932731))

(declare-fun m!2932751 () Bool)

(assert (=> b!2596447 m!2932751))

(push 1)

(assert (not b!2596451))

(assert (not b!2596448))

(assert (not b!2596445))

(assert (not start!251938))

(assert (not b!2596449))

(assert (not b!2596452))

(assert (not b!2596450))

(assert (not b!2596446))

(assert (not b!2596455))

(assert tp_is_empty!13479)

(assert (not b!2596447))

(assert (not b!2596454))

(assert (not b!2596444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735672 () Bool)

(declare-fun lt!914340 () Bool)

(declare-fun content!4201 (List!30000) (Set B!2199))

(assert (=> d!735672 (= lt!914340 (set.member (h!35320 l1!1546) (content!4201 l2!1515)))))

(declare-fun e!1638623 () Bool)

(assert (=> d!735672 (= lt!914340 e!1638623)))

(declare-fun res!1092866 () Bool)

(assert (=> d!735672 (=> (not res!1092866) (not e!1638623))))

(assert (=> d!735672 (= res!1092866 (is-Cons!29900 l2!1515))))

(assert (=> d!735672 (= (contains!5448 l2!1515 (h!35320 l1!1546)) lt!914340)))

(declare-fun b!2596500 () Bool)

(declare-fun e!1638622 () Bool)

(assert (=> b!2596500 (= e!1638623 e!1638622)))

(declare-fun res!1092867 () Bool)

(assert (=> b!2596500 (=> res!1092867 e!1638622)))

(assert (=> b!2596500 (= res!1092867 (= (h!35320 l2!1515) (h!35320 l1!1546)))))

(declare-fun b!2596501 () Bool)

(assert (=> b!2596501 (= e!1638622 (contains!5448 (t!213013 l2!1515) (h!35320 l1!1546)))))

(assert (= (and d!735672 res!1092866) b!2596500))

(assert (= (and b!2596500 (not res!1092867)) b!2596501))

(declare-fun m!2932785 () Bool)

(assert (=> d!735672 m!2932785))

(declare-fun m!2932787 () Bool)

(assert (=> d!735672 m!2932787))

(declare-fun m!2932789 () Bool)

(assert (=> b!2596501 m!2932789))

(assert (=> b!2596446 d!735672))

(declare-fun d!735674 () Bool)

(declare-fun res!1092872 () Bool)

(declare-fun e!1638628 () Bool)

(assert (=> d!735674 (=> res!1092872 e!1638628)))

(assert (=> d!735674 (= res!1092872 (is-Nil!29900 lt!914315))))

(assert (=> d!735674 (= (forall!6137 lt!914315 lambda!96969) e!1638628)))

(declare-fun b!2596506 () Bool)

(declare-fun e!1638629 () Bool)

(assert (=> b!2596506 (= e!1638628 e!1638629)))

(declare-fun res!1092873 () Bool)

(assert (=> b!2596506 (=> (not res!1092873) (not e!1638629))))

(declare-fun dynLambda!12653 (Int B!2199) Bool)

(assert (=> b!2596506 (= res!1092873 (dynLambda!12653 lambda!96969 (h!35320 lt!914315)))))

(declare-fun b!2596507 () Bool)

(assert (=> b!2596507 (= e!1638629 (forall!6137 (t!213013 lt!914315) lambda!96969))))

(assert (= (and d!735674 (not res!1092872)) b!2596506))

(assert (= (and b!2596506 res!1092873) b!2596507))

(declare-fun b_lambda!77581 () Bool)

(assert (=> (not b_lambda!77581) (not b!2596506)))

(declare-fun m!2932791 () Bool)

(assert (=> b!2596506 m!2932791))

(declare-fun m!2932793 () Bool)

(assert (=> b!2596507 m!2932793))

(assert (=> b!2596451 d!735674))

(declare-fun b!2596518 () Bool)

(declare-fun e!1638637 () List!30000)

(declare-fun call!167337 () List!30000)

(assert (=> b!2596518 (= e!1638637 call!167337)))

(declare-fun b!2596519 () Bool)

(declare-fun e!1638638 () Bool)

(declare-fun lt!914343 () List!30000)

(assert (=> b!2596519 (= e!1638638 (= (content!4201 lt!914343) (set.minus (content!4201 l2!1515) (set.insert (h!35320 l1!1546) (as set.empty (Set B!2199))))))))

(declare-fun b!2596520 () Bool)

(declare-fun e!1638639 () List!30000)

(assert (=> b!2596520 (= e!1638639 e!1638637)))

(declare-fun c!418334 () Bool)

(assert (=> b!2596520 (= c!418334 (= (h!35320 l1!1546) (h!35320 l2!1515)))))

(declare-fun b!2596521 () Bool)

(assert (=> b!2596521 (= e!1638639 Nil!29900)))

(declare-fun b!2596522 () Bool)

(assert (=> b!2596522 (= e!1638637 (Cons!29900 (h!35320 l2!1515) call!167337))))

(declare-fun bm!167332 () Bool)

(assert (=> bm!167332 (= call!167337 (-!175 (t!213013 l2!1515) (h!35320 l1!1546)))))

(declare-fun d!735676 () Bool)

(assert (=> d!735676 e!1638638))

(declare-fun res!1092876 () Bool)

(assert (=> d!735676 (=> (not res!1092876) (not e!1638638))))

(assert (=> d!735676 (= res!1092876 (<= (size!23205 lt!914343) (size!23205 l2!1515)))))

(assert (=> d!735676 (= lt!914343 e!1638639)))

(declare-fun c!418333 () Bool)

(assert (=> d!735676 (= c!418333 (is-Cons!29900 l2!1515))))

(assert (=> d!735676 (= (-!175 l2!1515 (h!35320 l1!1546)) lt!914343)))

(assert (= (and d!735676 c!418333) b!2596520))

(assert (= (and d!735676 (not c!418333)) b!2596521))

(assert (= (and b!2596520 c!418334) b!2596518))

(assert (= (and b!2596520 (not c!418334)) b!2596522))

(assert (= (or b!2596518 b!2596522) bm!167332))

(assert (= (and d!735676 res!1092876) b!2596519))

(declare-fun m!2932795 () Bool)

(assert (=> b!2596519 m!2932795))

(assert (=> b!2596519 m!2932785))

(declare-fun m!2932797 () Bool)

(assert (=> b!2596519 m!2932797))

(declare-fun m!2932799 () Bool)

(assert (=> bm!167332 m!2932799))

(declare-fun m!2932801 () Bool)

(assert (=> d!735676 m!2932801))

(assert (=> d!735676 m!2932735))

(assert (=> b!2596447 d!735676))

(declare-fun d!735680 () Bool)

(declare-fun res!1092885 () Bool)

(declare-fun e!1638648 () Bool)

(assert (=> d!735680 (=> res!1092885 e!1638648)))

(assert (=> d!735680 (= res!1092885 (is-Nil!29900 lt!914315))))

(assert (=> d!735680 (= (noDuplicate!448 lt!914315) e!1638648)))

(declare-fun b!2596531 () Bool)

(declare-fun e!1638649 () Bool)

(assert (=> b!2596531 (= e!1638648 e!1638649)))

(declare-fun res!1092886 () Bool)

(assert (=> b!2596531 (=> (not res!1092886) (not e!1638649))))

(assert (=> b!2596531 (= res!1092886 (not (contains!5448 (t!213013 lt!914315) (h!35320 lt!914315))))))

(declare-fun b!2596532 () Bool)

(assert (=> b!2596532 (= e!1638649 (noDuplicate!448 (t!213013 lt!914315)))))

(assert (= (and d!735680 (not res!1092885)) b!2596531))

(assert (= (and b!2596531 res!1092886) b!2596532))

(declare-fun m!2932803 () Bool)

(assert (=> b!2596531 m!2932803))

(declare-fun m!2932805 () Bool)

(assert (=> b!2596532 m!2932805))

(assert (=> b!2596447 d!735680))

(assert (=> b!2596447 d!735674))

(declare-fun d!735682 () Bool)

(assert (=> d!735682 (noDuplicate!448 (-!175 l2!1515 (h!35320 l1!1546)))))

(declare-fun lt!914346 () Unit!43957)

(declare-fun choose!15418 (List!30000 B!2199) Unit!43957)

(assert (=> d!735682 (= lt!914346 (choose!15418 l2!1515 (h!35320 l1!1546)))))

(assert (=> d!735682 (noDuplicate!448 l2!1515)))

(assert (=> d!735682 (= (lemmaRemoveElmtMaintainsNoDuplicate!41 l2!1515 (h!35320 l1!1546)) lt!914346)))

(declare-fun bs!472930 () Bool)

(assert (= bs!472930 d!735682))

(assert (=> bs!472930 m!2932749))

(assert (=> bs!472930 m!2932749))

(declare-fun m!2932811 () Bool)

(assert (=> bs!472930 m!2932811))

(declare-fun m!2932813 () Bool)

(assert (=> bs!472930 m!2932813))

(assert (=> bs!472930 m!2932723))

(assert (=> b!2596447 d!735682))

(declare-fun d!735686 () Bool)

(declare-fun lt!914349 () Int)

(assert (=> d!735686 (>= lt!914349 0)))

(declare-fun e!1638655 () Int)

(assert (=> d!735686 (= lt!914349 e!1638655)))

(declare-fun c!418337 () Bool)

(assert (=> d!735686 (= c!418337 (is-Nil!29900 lt!914315))))

(assert (=> d!735686 (= (size!23205 lt!914315) lt!914349)))

(declare-fun b!2596539 () Bool)

(assert (=> b!2596539 (= e!1638655 0)))

(declare-fun b!2596540 () Bool)

(assert (=> b!2596540 (= e!1638655 (+ 1 (size!23205 (t!213013 lt!914315))))))

(assert (= (and d!735686 c!418337) b!2596539))

(assert (= (and d!735686 (not c!418337)) b!2596540))

(declare-fun m!2932815 () Bool)

(assert (=> b!2596540 m!2932815))

(assert (=> b!2596447 d!735686))

(declare-fun d!735688 () Bool)

(assert (=> d!735688 (forall!6137 (-!175 l2!1515 (h!35320 l1!1546)) lambda!96969)))

(declare-fun lt!914352 () Unit!43957)

(declare-fun choose!15419 (List!30000 B!2199 Int) Unit!43957)

(assert (=> d!735688 (= lt!914352 (choose!15419 l2!1515 (h!35320 l1!1546) lambda!96969))))

(assert (=> d!735688 (noDuplicate!448 l2!1515)))

(assert (=> d!735688 (= (lemmaRemoveElmtMaintainsForall!35 l2!1515 (h!35320 l1!1546) lambda!96969) lt!914352)))

(declare-fun bs!472931 () Bool)

(assert (= bs!472931 d!735688))

(assert (=> bs!472931 m!2932749))

(assert (=> bs!472931 m!2932749))

(declare-fun m!2932817 () Bool)

(assert (=> bs!472931 m!2932817))

(declare-fun m!2932819 () Bool)

(assert (=> bs!472931 m!2932819))

(assert (=> bs!472931 m!2932723))

(assert (=> b!2596447 d!735688))

(declare-fun d!735690 () Bool)

(assert (=> d!735690 (= (size!23205 (-!175 l2!1515 (h!35320 l1!1546))) (- (size!23205 l2!1515) 1))))

(declare-fun lt!914355 () Unit!43957)

(declare-fun choose!15420 (List!30000 B!2199) Unit!43957)

(assert (=> d!735690 (= lt!914355 (choose!15420 l2!1515 (h!35320 l1!1546)))))

(assert (=> d!735690 (noDuplicate!448 l2!1515)))

(assert (=> d!735690 (= (lemmaRemoveElmtNoDuplicateRemoveOne!33 l2!1515 (h!35320 l1!1546)) lt!914355)))

(declare-fun bs!472932 () Bool)

(assert (= bs!472932 d!735690))

(assert (=> bs!472932 m!2932723))

(declare-fun m!2932825 () Bool)

(assert (=> bs!472932 m!2932825))

(assert (=> bs!472932 m!2932749))

(assert (=> bs!472932 m!2932735))

(assert (=> bs!472932 m!2932749))

(declare-fun m!2932827 () Bool)

(assert (=> bs!472932 m!2932827))

(assert (=> b!2596447 d!735690))

(declare-fun d!735694 () Bool)

(declare-fun lt!914356 () Bool)

(assert (=> d!735694 (= lt!914356 (set.member (h!35320 l1!1546) (content!4201 lt!914315)))))

(declare-fun e!1638665 () Bool)

(assert (=> d!735694 (= lt!914356 e!1638665)))

(declare-fun res!1092895 () Bool)

(assert (=> d!735694 (=> (not res!1092895) (not e!1638665))))

(assert (=> d!735694 (= res!1092895 (is-Cons!29900 lt!914315))))

(assert (=> d!735694 (= (contains!5448 lt!914315 (h!35320 l1!1546)) lt!914356)))

(declare-fun b!2596547 () Bool)

(declare-fun e!1638664 () Bool)

(assert (=> b!2596547 (= e!1638665 e!1638664)))

(declare-fun res!1092896 () Bool)

(assert (=> b!2596547 (=> res!1092896 e!1638664)))

(assert (=> b!2596547 (= res!1092896 (= (h!35320 lt!914315) (h!35320 l1!1546)))))

(declare-fun b!2596548 () Bool)

(assert (=> b!2596548 (= e!1638664 (contains!5448 (t!213013 lt!914315) (h!35320 l1!1546)))))

(assert (= (and d!735694 res!1092895) b!2596547))

(assert (= (and b!2596547 (not res!1092896)) b!2596548))

(declare-fun m!2932829 () Bool)

(assert (=> d!735694 m!2932829))

(declare-fun m!2932831 () Bool)

(assert (=> d!735694 m!2932831))

(declare-fun m!2932833 () Bool)

(assert (=> b!2596548 m!2932833))

(assert (=> b!2596452 d!735694))

(declare-fun d!735696 () Bool)

(declare-fun res!1092897 () Bool)

(declare-fun e!1638666 () Bool)

(assert (=> d!735696 (=> res!1092897 e!1638666)))

(assert (=> d!735696 (= res!1092897 (is-Nil!29900 l1!1546))))

(assert (=> d!735696 (= (noDuplicate!448 l1!1546) e!1638666)))

(declare-fun b!2596549 () Bool)

(declare-fun e!1638667 () Bool)

(assert (=> b!2596549 (= e!1638666 e!1638667)))

(declare-fun res!1092898 () Bool)

(assert (=> b!2596549 (=> (not res!1092898) (not e!1638667))))

(assert (=> b!2596549 (= res!1092898 (not (contains!5448 (t!213013 l1!1546) (h!35320 l1!1546))))))

(declare-fun b!2596550 () Bool)

(assert (=> b!2596550 (= e!1638667 (noDuplicate!448 (t!213013 l1!1546)))))

(assert (= (and d!735696 (not res!1092897)) b!2596549))

(assert (= (and b!2596549 res!1092898) b!2596550))

(declare-fun m!2932835 () Bool)

(assert (=> b!2596549 m!2932835))

(declare-fun m!2932837 () Bool)

(assert (=> b!2596550 m!2932837))

(assert (=> start!251938 d!735696))

(declare-fun d!735698 () Bool)

(declare-fun lt!914357 () Int)

(assert (=> d!735698 (>= lt!914357 0)))

(declare-fun e!1638668 () Int)

(assert (=> d!735698 (= lt!914357 e!1638668)))

(declare-fun c!418338 () Bool)

(assert (=> d!735698 (= c!418338 (is-Nil!29900 l2!1515))))

(assert (=> d!735698 (= (size!23205 l2!1515) lt!914357)))

(declare-fun b!2596551 () Bool)

(assert (=> b!2596551 (= e!1638668 0)))

(declare-fun b!2596552 () Bool)

(assert (=> b!2596552 (= e!1638668 (+ 1 (size!23205 (t!213013 l2!1515))))))

(assert (= (and d!735698 c!418338) b!2596551))

(assert (= (and d!735698 (not c!418338)) b!2596552))

(declare-fun m!2932839 () Bool)

(assert (=> b!2596552 m!2932839))

(assert (=> b!2596449 d!735698))

(declare-fun d!735700 () Bool)

(declare-fun lt!914358 () Int)

(assert (=> d!735700 (>= lt!914358 0)))

(declare-fun e!1638669 () Int)

(assert (=> d!735700 (= lt!914358 e!1638669)))

(declare-fun c!418339 () Bool)

(assert (=> d!735700 (= c!418339 (is-Nil!29900 l1!1546))))

(assert (=> d!735700 (= (size!23205 l1!1546) lt!914358)))

(declare-fun b!2596553 () Bool)

(assert (=> b!2596553 (= e!1638669 0)))

(declare-fun b!2596554 () Bool)

(assert (=> b!2596554 (= e!1638669 (+ 1 (size!23205 (t!213013 l1!1546))))))

(assert (= (and d!735700 c!418339) b!2596553))

(assert (= (and d!735700 (not c!418339)) b!2596554))

(declare-fun m!2932841 () Bool)

(assert (=> b!2596554 m!2932841))

(assert (=> b!2596449 d!735700))

(declare-fun d!735702 () Bool)

(declare-fun res!1092899 () Bool)

(declare-fun e!1638670 () Bool)

(assert (=> d!735702 (=> res!1092899 e!1638670)))

(assert (=> d!735702 (= res!1092899 (is-Nil!29900 l2!1515))))

(assert (=> d!735702 (= (noDuplicate!448 l2!1515) e!1638670)))

(declare-fun b!2596555 () Bool)

(declare-fun e!1638671 () Bool)

(assert (=> b!2596555 (= e!1638670 e!1638671)))

(declare-fun res!1092900 () Bool)

(assert (=> b!2596555 (=> (not res!1092900) (not e!1638671))))

(assert (=> b!2596555 (= res!1092900 (not (contains!5448 (t!213013 l2!1515) (h!35320 l2!1515))))))

(declare-fun b!2596556 () Bool)

(assert (=> b!2596556 (= e!1638671 (noDuplicate!448 (t!213013 l2!1515)))))

(assert (= (and d!735702 (not res!1092899)) b!2596555))

(assert (= (and b!2596555 res!1092900) b!2596556))

(declare-fun m!2932843 () Bool)

(assert (=> b!2596555 m!2932843))

(declare-fun m!2932845 () Bool)

(assert (=> b!2596556 m!2932845))

(assert (=> b!2596454 d!735702))

(declare-fun d!735704 () Bool)

(declare-fun res!1092901 () Bool)

(declare-fun e!1638672 () Bool)

(assert (=> d!735704 (=> res!1092901 e!1638672)))

(assert (=> d!735704 (= res!1092901 (is-Nil!29900 l2!1515))))

(assert (=> d!735704 (= (forall!6137 l2!1515 lambda!96969) e!1638672)))

(declare-fun b!2596557 () Bool)

(declare-fun e!1638673 () Bool)

(assert (=> b!2596557 (= e!1638672 e!1638673)))

(declare-fun res!1092902 () Bool)

(assert (=> b!2596557 (=> (not res!1092902) (not e!1638673))))

(assert (=> b!2596557 (= res!1092902 (dynLambda!12653 lambda!96969 (h!35320 l2!1515)))))

(declare-fun b!2596558 () Bool)

(assert (=> b!2596558 (= e!1638673 (forall!6137 (t!213013 l2!1515) lambda!96969))))

(assert (= (and d!735704 (not res!1092901)) b!2596557))

(assert (= (and b!2596557 res!1092902) b!2596558))

(declare-fun b_lambda!77585 () Bool)

(assert (=> (not b_lambda!77585) (not b!2596557)))

(declare-fun m!2932847 () Bool)

(assert (=> b!2596557 m!2932847))

(declare-fun m!2932849 () Bool)

(assert (=> b!2596558 m!2932849))

(assert (=> b!2596445 d!735704))

(declare-fun d!735706 () Bool)

(assert (=> d!735706 (= (head!5893 l1!1546) (h!35320 l1!1546))))

(assert (=> b!2596455 d!735706))

(declare-fun d!735708 () Bool)

(assert (=> d!735708 (= (isEmpty!17138 l1!1546) (is-Nil!29900 l1!1546))))

(assert (=> b!2596444 d!735708))

(declare-fun b!2596563 () Bool)

(declare-fun e!1638676 () Bool)

(declare-fun tp!823243 () Bool)

(assert (=> b!2596563 (= e!1638676 (and tp_is_empty!13479 tp!823243))))

(assert (=> b!2596448 (= tp!823233 e!1638676)))

(assert (= (and b!2596448 (is-Cons!29900 (t!213013 l1!1546))) b!2596563))

(declare-fun b!2596564 () Bool)

(declare-fun e!1638677 () Bool)

(declare-fun tp!823244 () Bool)

(assert (=> b!2596564 (= e!1638677 (and tp_is_empty!13479 tp!823244))))

(assert (=> b!2596450 (= tp!823234 e!1638677)))

(assert (= (and b!2596450 (is-Cons!29900 (t!213013 l2!1515))) b!2596564))

(declare-fun b_lambda!77587 () Bool)

(assert (= b_lambda!77585 (or b!2596445 b_lambda!77587)))

(declare-fun bs!472933 () Bool)

(declare-fun d!735710 () Bool)

(assert (= bs!472933 (and d!735710 b!2596445)))

(assert (=> bs!472933 (= (dynLambda!12653 lambda!96969 (h!35320 l2!1515)) (contains!5448 l1!1546 (h!35320 l2!1515)))))

(declare-fun m!2932851 () Bool)

(assert (=> bs!472933 m!2932851))

(assert (=> b!2596557 d!735710))

(declare-fun b_lambda!77589 () Bool)

(assert (= b_lambda!77581 (or b!2596445 b_lambda!77589)))

(declare-fun bs!472934 () Bool)

(declare-fun d!735712 () Bool)

(assert (= bs!472934 (and d!735712 b!2596445)))

(assert (=> bs!472934 (= (dynLambda!12653 lambda!96969 (h!35320 lt!914315)) (contains!5448 l1!1546 (h!35320 lt!914315)))))

(declare-fun m!2932853 () Bool)

(assert (=> bs!472934 m!2932853))

(assert (=> b!2596506 d!735712))

(push 1)

(assert (not bm!167332))

(assert (not b!2596532))

(assert (not d!735694))

(assert tp_is_empty!13479)

(assert (not d!735688))

(assert (not d!735682))

(assert (not b!2596519))

(assert (not b!2596550))

(assert (not b!2596540))

(assert (not d!735676))

(assert (not b!2596548))

(assert (not b_lambda!77587))

(assert (not b!2596552))

(assert (not b!2596501))

(assert (not b!2596555))

(assert (not b!2596563))

(assert (not bs!472934))

(assert (not b!2596564))

(assert (not b!2596531))

(assert (not bs!472933))

(assert (not d!735690))

(assert (not b!2596554))

(assert (not d!735672))

(assert (not b!2596556))

(assert (not b!2596549))

(assert (not b_lambda!77589))

(assert (not b!2596507))

(assert (not b!2596558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

