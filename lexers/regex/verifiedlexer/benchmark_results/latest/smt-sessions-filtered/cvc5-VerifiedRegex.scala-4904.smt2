; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251110 () Bool)

(assert start!251110)

(declare-fun b!2591637 () Bool)

(assert (=> b!2591637 true))

(declare-fun bs!472201 () Bool)

(declare-fun b!2591628 () Bool)

(assert (= bs!472201 (and b!2591628 b!2591637)))

(declare-datatypes ((B!2035 0))(
  ( (B!2036 (val!9485 Int)) )
))
(declare-datatypes ((List!29918 0))(
  ( (Nil!29818) (Cons!29818 (h!35238 B!2035) (t!212931 List!29918)) )
))
(declare-fun lt!911645 () List!29918)

(declare-fun l!3230 () List!29918)

(declare-fun lambda!96090 () Int)

(declare-fun lambda!96089 () Int)

(assert (=> bs!472201 (= (= l!3230 lt!911645) (= lambda!96090 lambda!96089))))

(assert (=> b!2591628 true))

(declare-fun e!1634923 () Bool)

(declare-fun b!2591626 () Bool)

(declare-fun contains!5368 (List!29918 B!2035) Bool)

(declare-fun getWitness!531 (List!29918 Int) B!2035)

(assert (=> b!2591626 (= e!1634923 (not (contains!5368 l!3230 (getWitness!531 lt!911645 lambda!96090))))))

(declare-fun b!2591627 () Bool)

(declare-fun e!1634920 () Bool)

(declare-fun e!1634922 () Bool)

(assert (=> b!2591627 (= e!1634920 (not e!1634922))))

(declare-fun res!1089870 () Bool)

(assert (=> b!2591627 (=> res!1089870 e!1634922)))

(declare-fun lt!911638 () Int)

(declare-fun size!23131 (List!29918) Int)

(assert (=> b!2591627 (= res!1089870 (>= lt!911638 (size!23131 l!3230)))))

(declare-fun lt!911639 () Int)

(assert (=> b!2591627 (= lt!911638 lt!911639)))

(assert (=> b!2591627 (= lt!911639 (size!23131 (t!212931 l!3230)))))

(declare-fun lt!911644 () (Set B!2035))

(declare-fun toList!1769 ((Set B!2035)) List!29918)

(assert (=> b!2591627 (= lt!911638 (size!23131 (toList!1769 lt!911644)))))

(declare-fun content!4159 (List!29918) (Set B!2035))

(assert (=> b!2591627 (= lt!911644 (content!4159 (t!212931 l!3230)))))

(declare-datatypes ((Unit!43753 0))(
  ( (Unit!43754) )
))
(declare-fun lt!911643 () Unit!43753)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!59 (List!29918) Unit!43753)

(assert (=> b!2591627 (= lt!911643 (lemmaNoDuplicateThenContentToListSameSize!59 (t!212931 l!3230)))))

(declare-fun e!1634918 () Bool)

(assert (=> b!2591628 (= e!1634918 e!1634923)))

(declare-fun res!1089867 () Bool)

(assert (=> b!2591628 (=> res!1089867 e!1634923)))

(declare-fun exists!905 (List!29918 Int) Bool)

(assert (=> b!2591628 (= res!1089867 (not (exists!905 lt!911645 lambda!96090)))))

(assert (=> b!2591628 (exists!905 lt!911645 lambda!96090)))

(declare-fun lt!911637 () Unit!43753)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!21 (List!29918 List!29918) Unit!43753)

(assert (=> b!2591628 (= lt!911637 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!21 lt!911645 l!3230))))

(declare-fun lt!911632 () Unit!43753)

(declare-fun subsetContains!47 (List!29918 List!29918) Unit!43753)

(assert (=> b!2591628 (= lt!911632 (subsetContains!47 l!3230 lt!911645))))

(declare-fun b!2591629 () Bool)

(declare-fun res!1089862 () Bool)

(assert (=> b!2591629 (=> res!1089862 e!1634918)))

(declare-fun lt!911641 () (Set B!2035))

(assert (=> b!2591629 (= res!1089862 (not (= lt!911641 (content!4159 l!3230))))))

(declare-fun b!2591630 () Bool)

(declare-fun res!1089865 () Bool)

(assert (=> b!2591630 (=> (not res!1089865) (not e!1634920))))

(assert (=> b!2591630 (= res!1089865 (is-Cons!29818 l!3230))))

(declare-fun b!2591631 () Bool)

(declare-fun res!1089868 () Bool)

(assert (=> b!2591631 (=> res!1089868 e!1634922)))

(assert (=> b!2591631 (= res!1089868 (contains!5368 (t!212931 l!3230) (h!35238 l!3230)))))

(declare-fun b!2591632 () Bool)

(declare-fun e!1634921 () Bool)

(declare-fun tp_is_empty!13315 () Bool)

(declare-fun tp!822713 () Bool)

(assert (=> b!2591632 (= e!1634921 (and tp_is_empty!13315 tp!822713))))

(declare-fun b!2591633 () Bool)

(declare-fun e!1634925 () Bool)

(assert (=> b!2591633 (= e!1634925 e!1634918)))

(declare-fun res!1089863 () Bool)

(assert (=> b!2591633 (=> res!1089863 e!1634918)))

(declare-fun lt!911633 () Int)

(declare-fun lt!911635 () Int)

(assert (=> b!2591633 (= res!1089863 (<= lt!911633 lt!911635))))

(declare-fun lt!911642 () Unit!43753)

(declare-fun e!1634924 () Unit!43753)

(assert (=> b!2591633 (= lt!911642 e!1634924)))

(declare-fun c!417781 () Bool)

(assert (=> b!2591633 (= c!417781 (< lt!911633 lt!911635))))

(assert (=> b!2591633 (= lt!911633 (size!23131 lt!911645))))

(assert (=> b!2591633 (= lt!911645 (toList!1769 lt!911641))))

(declare-fun b!2591635 () Bool)

(declare-fun e!1634919 () Bool)

(assert (=> b!2591635 (= e!1634919 e!1634925)))

(declare-fun res!1089864 () Bool)

(assert (=> b!2591635 (=> res!1089864 e!1634925)))

(assert (=> b!2591635 (= res!1089864 (not (= (content!4159 l!3230) lt!911641)))))

(assert (=> b!2591635 (= lt!911641 (set.union lt!911644 (set.insert (h!35238 l!3230) (as set.empty (Set B!2035)))))))

(declare-fun b!2591636 () Bool)

(declare-fun res!1089871 () Bool)

(assert (=> b!2591636 (=> res!1089871 e!1634922)))

(assert (=> b!2591636 (= res!1089871 (set.member (h!35238 l!3230) lt!911644))))

(declare-fun Unit!43755 () Unit!43753)

(assert (=> b!2591637 (= e!1634924 Unit!43755)))

(declare-fun lt!911636 () Unit!43753)

(assert (=> b!2591637 (= lt!911636 (subsetContains!47 lt!911645 l!3230))))

(declare-fun lt!911640 () Unit!43753)

(assert (=> b!2591637 (= lt!911640 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!21 l!3230 lt!911645))))

(assert (=> b!2591637 (exists!905 l!3230 lambda!96089)))

(declare-fun lt!911634 () B!2035)

(assert (=> b!2591637 (= lt!911634 (getWitness!531 l!3230 lambda!96089))))

(assert (=> b!2591637 false))

(declare-fun b!2591638 () Bool)

(assert (=> b!2591638 (= e!1634922 e!1634919)))

(declare-fun res!1089866 () Bool)

(assert (=> b!2591638 (=> res!1089866 e!1634919)))

(assert (=> b!2591638 (= res!1089866 (not (= (size!23131 l!3230) lt!911635)))))

(assert (=> b!2591638 (= lt!911635 (+ 1 lt!911639))))

(declare-fun res!1089869 () Bool)

(assert (=> start!251110 (=> (not res!1089869) (not e!1634920))))

(declare-fun noDuplicate!366 (List!29918) Bool)

(assert (=> start!251110 (= res!1089869 (noDuplicate!366 l!3230))))

(assert (=> start!251110 e!1634920))

(assert (=> start!251110 e!1634921))

(declare-fun b!2591634 () Bool)

(declare-fun Unit!43756 () Unit!43753)

(assert (=> b!2591634 (= e!1634924 Unit!43756)))

(assert (= (and start!251110 res!1089869) b!2591630))

(assert (= (and b!2591630 res!1089865) b!2591627))

(assert (= (and b!2591627 (not res!1089870)) b!2591636))

(assert (= (and b!2591636 (not res!1089871)) b!2591631))

(assert (= (and b!2591631 (not res!1089868)) b!2591638))

(assert (= (and b!2591638 (not res!1089866)) b!2591635))

(assert (= (and b!2591635 (not res!1089864)) b!2591633))

(assert (= (and b!2591633 c!417781) b!2591637))

(assert (= (and b!2591633 (not c!417781)) b!2591634))

(assert (= (and b!2591633 (not res!1089863)) b!2591629))

(assert (= (and b!2591629 (not res!1089862)) b!2591628))

(assert (= (and b!2591628 (not res!1089867)) b!2591626))

(assert (= (and start!251110 (is-Cons!29818 l!3230)) b!2591632))

(declare-fun m!2927653 () Bool)

(assert (=> b!2591633 m!2927653))

(declare-fun m!2927655 () Bool)

(assert (=> b!2591633 m!2927655))

(declare-fun m!2927657 () Bool)

(assert (=> b!2591635 m!2927657))

(declare-fun m!2927659 () Bool)

(assert (=> b!2591635 m!2927659))

(declare-fun m!2927661 () Bool)

(assert (=> b!2591627 m!2927661))

(declare-fun m!2927663 () Bool)

(assert (=> b!2591627 m!2927663))

(assert (=> b!2591627 m!2927661))

(declare-fun m!2927665 () Bool)

(assert (=> b!2591627 m!2927665))

(declare-fun m!2927667 () Bool)

(assert (=> b!2591627 m!2927667))

(declare-fun m!2927669 () Bool)

(assert (=> b!2591627 m!2927669))

(declare-fun m!2927671 () Bool)

(assert (=> b!2591627 m!2927671))

(declare-fun m!2927673 () Bool)

(assert (=> b!2591637 m!2927673))

(declare-fun m!2927675 () Bool)

(assert (=> b!2591637 m!2927675))

(declare-fun m!2927677 () Bool)

(assert (=> b!2591637 m!2927677))

(declare-fun m!2927679 () Bool)

(assert (=> b!2591637 m!2927679))

(declare-fun m!2927681 () Bool)

(assert (=> start!251110 m!2927681))

(declare-fun m!2927683 () Bool)

(assert (=> b!2591636 m!2927683))

(declare-fun m!2927685 () Bool)

(assert (=> b!2591628 m!2927685))

(assert (=> b!2591628 m!2927685))

(declare-fun m!2927687 () Bool)

(assert (=> b!2591628 m!2927687))

(declare-fun m!2927689 () Bool)

(assert (=> b!2591628 m!2927689))

(declare-fun m!2927691 () Bool)

(assert (=> b!2591626 m!2927691))

(assert (=> b!2591626 m!2927691))

(declare-fun m!2927693 () Bool)

(assert (=> b!2591626 m!2927693))

(declare-fun m!2927695 () Bool)

(assert (=> b!2591631 m!2927695))

(assert (=> b!2591629 m!2927657))

(assert (=> b!2591638 m!2927663))

(push 1)

(assert (not b!2591627))

(assert (not b!2591631))

(assert (not start!251110))

(assert (not b!2591626))

(assert (not b!2591632))

(assert (not b!2591638))

(assert tp_is_empty!13315)

(assert (not b!2591628))

(assert (not b!2591637))

(assert (not b!2591633))

(assert (not b!2591629))

(assert (not b!2591635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734149 () Bool)

(declare-fun c!417787 () Bool)

(assert (=> d!734149 (= c!417787 (is-Nil!29818 l!3230))))

(declare-fun e!1634964 () (Set B!2035))

(assert (=> d!734149 (= (content!4159 l!3230) e!1634964)))

(declare-fun b!2591686 () Bool)

(assert (=> b!2591686 (= e!1634964 (as set.empty (Set B!2035)))))

(declare-fun b!2591687 () Bool)

(assert (=> b!2591687 (= e!1634964 (set.union (set.insert (h!35238 l!3230) (as set.empty (Set B!2035))) (content!4159 (t!212931 l!3230))))))

(assert (= (and d!734149 c!417787) b!2591686))

(assert (= (and d!734149 (not c!417787)) b!2591687))

(assert (=> b!2591687 m!2927659))

(assert (=> b!2591687 m!2927669))

(assert (=> b!2591635 d!734149))

(declare-fun d!734151 () Bool)

(declare-fun res!1089906 () Bool)

(declare-fun e!1634969 () Bool)

(assert (=> d!734151 (=> res!1089906 e!1634969)))

(assert (=> d!734151 (= res!1089906 (is-Nil!29818 l!3230))))

(assert (=> d!734151 (= (noDuplicate!366 l!3230) e!1634969)))

(declare-fun b!2591692 () Bool)

(declare-fun e!1634970 () Bool)

(assert (=> b!2591692 (= e!1634969 e!1634970)))

(declare-fun res!1089907 () Bool)

(assert (=> b!2591692 (=> (not res!1089907) (not e!1634970))))

(assert (=> b!2591692 (= res!1089907 (not (contains!5368 (t!212931 l!3230) (h!35238 l!3230))))))

(declare-fun b!2591693 () Bool)

(assert (=> b!2591693 (= e!1634970 (noDuplicate!366 (t!212931 l!3230)))))

(assert (= (and d!734151 (not res!1089906)) b!2591692))

(assert (= (and b!2591692 res!1089907) b!2591693))

(assert (=> b!2591692 m!2927695))

(declare-fun m!2927751 () Bool)

(assert (=> b!2591693 m!2927751))

(assert (=> start!251110 d!734151))

(declare-fun d!734155 () Bool)

(declare-fun lt!911696 () Bool)

(assert (=> d!734155 (= lt!911696 (set.member (getWitness!531 lt!911645 lambda!96090) (content!4159 l!3230)))))

(declare-fun e!1634976 () Bool)

(assert (=> d!734155 (= lt!911696 e!1634976)))

(declare-fun res!1089912 () Bool)

(assert (=> d!734155 (=> (not res!1089912) (not e!1634976))))

(assert (=> d!734155 (= res!1089912 (is-Cons!29818 l!3230))))

(assert (=> d!734155 (= (contains!5368 l!3230 (getWitness!531 lt!911645 lambda!96090)) lt!911696)))

(declare-fun b!2591700 () Bool)

(declare-fun e!1634975 () Bool)

(assert (=> b!2591700 (= e!1634976 e!1634975)))

(declare-fun res!1089913 () Bool)

(assert (=> b!2591700 (=> res!1089913 e!1634975)))

(assert (=> b!2591700 (= res!1089913 (= (h!35238 l!3230) (getWitness!531 lt!911645 lambda!96090)))))

(declare-fun b!2591701 () Bool)

(assert (=> b!2591701 (= e!1634975 (contains!5368 (t!212931 l!3230) (getWitness!531 lt!911645 lambda!96090)))))

(assert (= (and d!734155 res!1089912) b!2591700))

(assert (= (and b!2591700 (not res!1089913)) b!2591701))

(assert (=> d!734155 m!2927657))

(assert (=> d!734155 m!2927691))

(declare-fun m!2927753 () Bool)

(assert (=> d!734155 m!2927753))

(assert (=> b!2591701 m!2927691))

(declare-fun m!2927755 () Bool)

(assert (=> b!2591701 m!2927755))

(assert (=> b!2591626 d!734155))

(declare-fun b!2591714 () Bool)

(declare-fun e!1634986 () B!2035)

(assert (=> b!2591714 (= e!1634986 (getWitness!531 (t!212931 lt!911645) lambda!96090))))

(declare-fun b!2591715 () Bool)

(declare-fun lt!911701 () Unit!43753)

(declare-fun Unit!43761 () Unit!43753)

(assert (=> b!2591715 (= lt!911701 Unit!43761)))

(assert (=> b!2591715 false))

(declare-fun head!5868 (List!29918) B!2035)

(assert (=> b!2591715 (= e!1634986 (head!5868 lt!911645))))

(declare-fun d!734157 () Bool)

(declare-fun e!1634987 () Bool)

(assert (=> d!734157 e!1634987))

(declare-fun res!1089919 () Bool)

(assert (=> d!734157 (=> (not res!1089919) (not e!1634987))))

(declare-fun lt!911702 () B!2035)

(declare-fun dynLambda!12610 (Int B!2035) Bool)

(assert (=> d!734157 (= res!1089919 (dynLambda!12610 lambda!96090 lt!911702))))

(declare-fun e!1634985 () B!2035)

(assert (=> d!734157 (= lt!911702 e!1634985)))

(declare-fun c!417793 () Bool)

(declare-fun e!1634988 () Bool)

(assert (=> d!734157 (= c!417793 e!1634988)))

(declare-fun res!1089918 () Bool)

(assert (=> d!734157 (=> (not res!1089918) (not e!1634988))))

(assert (=> d!734157 (= res!1089918 (is-Cons!29818 lt!911645))))

(assert (=> d!734157 (exists!905 lt!911645 lambda!96090)))

(assert (=> d!734157 (= (getWitness!531 lt!911645 lambda!96090) lt!911702)))

(declare-fun b!2591716 () Bool)

(assert (=> b!2591716 (= e!1634985 (h!35238 lt!911645))))

(declare-fun b!2591717 () Bool)

(assert (=> b!2591717 (= e!1634988 (dynLambda!12610 lambda!96090 (h!35238 lt!911645)))))

(declare-fun b!2591718 () Bool)

(assert (=> b!2591718 (= e!1634987 (contains!5368 lt!911645 lt!911702))))

(declare-fun b!2591719 () Bool)

(assert (=> b!2591719 (= e!1634985 e!1634986)))

(declare-fun c!417792 () Bool)

(assert (=> b!2591719 (= c!417792 (is-Cons!29818 lt!911645))))

(assert (= (and d!734157 res!1089918) b!2591717))

(assert (= (and d!734157 c!417793) b!2591716))

(assert (= (and d!734157 (not c!417793)) b!2591719))

(assert (= (and b!2591719 c!417792) b!2591714))

(assert (= (and b!2591719 (not c!417792)) b!2591715))

(assert (= (and d!734157 res!1089919) b!2591718))

(declare-fun b_lambda!77131 () Bool)

(assert (=> (not b_lambda!77131) (not d!734157)))

(declare-fun b_lambda!77133 () Bool)

(assert (=> (not b_lambda!77133) (not b!2591717)))

(declare-fun m!2927759 () Bool)

(assert (=> b!2591715 m!2927759))

(declare-fun m!2927761 () Bool)

(assert (=> b!2591717 m!2927761))

(declare-fun m!2927763 () Bool)

(assert (=> d!734157 m!2927763))

(assert (=> d!734157 m!2927685))

(declare-fun m!2927765 () Bool)

(assert (=> b!2591714 m!2927765))

(declare-fun m!2927767 () Bool)

(assert (=> b!2591718 m!2927767))

(assert (=> b!2591626 d!734157))

(declare-fun d!734161 () Bool)

(declare-fun lt!911703 () Bool)

(assert (=> d!734161 (= lt!911703 (set.member (h!35238 l!3230) (content!4159 (t!212931 l!3230))))))

(declare-fun e!1634990 () Bool)

(assert (=> d!734161 (= lt!911703 e!1634990)))

(declare-fun res!1089920 () Bool)

(assert (=> d!734161 (=> (not res!1089920) (not e!1634990))))

(assert (=> d!734161 (= res!1089920 (is-Cons!29818 (t!212931 l!3230)))))

(assert (=> d!734161 (= (contains!5368 (t!212931 l!3230) (h!35238 l!3230)) lt!911703)))

(declare-fun b!2591720 () Bool)

(declare-fun e!1634989 () Bool)

(assert (=> b!2591720 (= e!1634990 e!1634989)))

(declare-fun res!1089921 () Bool)

(assert (=> b!2591720 (=> res!1089921 e!1634989)))

(assert (=> b!2591720 (= res!1089921 (= (h!35238 (t!212931 l!3230)) (h!35238 l!3230)))))

(declare-fun b!2591721 () Bool)

(assert (=> b!2591721 (= e!1634989 (contains!5368 (t!212931 (t!212931 l!3230)) (h!35238 l!3230)))))

(assert (= (and d!734161 res!1089920) b!2591720))

(assert (= (and b!2591720 (not res!1089921)) b!2591721))

(assert (=> d!734161 m!2927669))

(declare-fun m!2927769 () Bool)

(assert (=> d!734161 m!2927769))

(declare-fun m!2927771 () Bool)

(assert (=> b!2591721 m!2927771))

(assert (=> b!2591631 d!734161))

(declare-fun bs!472215 () Bool)

(declare-fun d!734163 () Bool)

(assert (= bs!472215 (and d!734163 b!2591637)))

(declare-fun lambda!96114 () Int)

(assert (=> bs!472215 (not (= lambda!96114 lambda!96089))))

(declare-fun bs!472216 () Bool)

(assert (= bs!472216 (and d!734163 b!2591628)))

(assert (=> bs!472216 (not (= lambda!96114 lambda!96090))))

(assert (=> d!734163 true))

(declare-fun forall!6077 (List!29918 Int) Bool)

(assert (=> d!734163 (forall!6077 lt!911645 lambda!96114)))

(declare-fun lt!911710 () Unit!43753)

(declare-fun choose!15314 (List!29918 List!29918) Unit!43753)

(assert (=> d!734163 (= lt!911710 (choose!15314 lt!911645 l!3230))))

(assert (=> d!734163 (set.subset (content!4159 lt!911645) (content!4159 l!3230))))

(assert (=> d!734163 (= (subsetContains!47 lt!911645 l!3230) lt!911710)))

(declare-fun bs!472217 () Bool)

(assert (= bs!472217 d!734163))

(declare-fun m!2927773 () Bool)

(assert (=> bs!472217 m!2927773))

(declare-fun m!2927775 () Bool)

(assert (=> bs!472217 m!2927775))

(declare-fun m!2927777 () Bool)

(assert (=> bs!472217 m!2927777))

(assert (=> bs!472217 m!2927657))

(assert (=> b!2591637 d!734163))

(declare-fun bs!472218 () Bool)

(declare-fun d!734165 () Bool)

(assert (= bs!472218 (and d!734165 b!2591637)))

(declare-fun lambda!96117 () Int)

(assert (=> bs!472218 (= lambda!96117 lambda!96089)))

(declare-fun bs!472219 () Bool)

(assert (= bs!472219 (and d!734165 b!2591628)))

(assert (=> bs!472219 (= (= lt!911645 l!3230) (= lambda!96117 lambda!96090))))

(declare-fun bs!472220 () Bool)

(assert (= bs!472220 (and d!734165 d!734163)))

(assert (=> bs!472220 (not (= lambda!96117 lambda!96114))))

(assert (=> d!734165 true))

(assert (=> d!734165 (exists!905 l!3230 lambda!96117)))

(declare-fun lt!911713 () Unit!43753)

(declare-fun choose!15315 (List!29918 List!29918) Unit!43753)

(assert (=> d!734165 (= lt!911713 (choose!15315 l!3230 lt!911645))))

(assert (=> d!734165 (noDuplicate!366 l!3230)))

(assert (=> d!734165 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!21 l!3230 lt!911645) lt!911713)))

(declare-fun bs!472221 () Bool)

(assert (= bs!472221 d!734165))

(declare-fun m!2927779 () Bool)

(assert (=> bs!472221 m!2927779))

(declare-fun m!2927781 () Bool)

(assert (=> bs!472221 m!2927781))

(assert (=> bs!472221 m!2927681))

(assert (=> b!2591637 d!734165))

(declare-fun bs!472222 () Bool)

(declare-fun d!734167 () Bool)

(assert (= bs!472222 (and d!734167 b!2591637)))

(declare-fun lambda!96120 () Int)

(assert (=> bs!472222 (not (= lambda!96120 lambda!96089))))

(declare-fun bs!472223 () Bool)

(assert (= bs!472223 (and d!734167 b!2591628)))

(assert (=> bs!472223 (not (= lambda!96120 lambda!96090))))

(declare-fun bs!472224 () Bool)

(assert (= bs!472224 (and d!734167 d!734163)))

(assert (=> bs!472224 (not (= lambda!96120 lambda!96114))))

(declare-fun bs!472225 () Bool)

(assert (= bs!472225 (and d!734167 d!734165)))

(assert (=> bs!472225 (not (= lambda!96120 lambda!96117))))

(assert (=> d!734167 true))

(declare-fun order!15871 () Int)

(declare-fun dynLambda!12611 (Int Int) Int)

(assert (=> d!734167 (< (dynLambda!12611 order!15871 lambda!96089) (dynLambda!12611 order!15871 lambda!96120))))

(assert (=> d!734167 (= (exists!905 l!3230 lambda!96089) (not (forall!6077 l!3230 lambda!96120)))))

(declare-fun bs!472226 () Bool)

(assert (= bs!472226 d!734167))

(declare-fun m!2927783 () Bool)

(assert (=> bs!472226 m!2927783))

(assert (=> b!2591637 d!734167))

(declare-fun b!2591742 () Bool)

(declare-fun e!1635006 () B!2035)

(assert (=> b!2591742 (= e!1635006 (getWitness!531 (t!212931 l!3230) lambda!96089))))

(declare-fun b!2591743 () Bool)

(declare-fun lt!911716 () Unit!43753)

(declare-fun Unit!43762 () Unit!43753)

(assert (=> b!2591743 (= lt!911716 Unit!43762)))

(assert (=> b!2591743 false))

(assert (=> b!2591743 (= e!1635006 (head!5868 l!3230))))

(declare-fun d!734169 () Bool)

(declare-fun e!1635007 () Bool)

(assert (=> d!734169 e!1635007))

(declare-fun res!1089929 () Bool)

(assert (=> d!734169 (=> (not res!1089929) (not e!1635007))))

(declare-fun lt!911717 () B!2035)

(assert (=> d!734169 (= res!1089929 (dynLambda!12610 lambda!96089 lt!911717))))

(declare-fun e!1635005 () B!2035)

(assert (=> d!734169 (= lt!911717 e!1635005)))

(declare-fun c!417801 () Bool)

(declare-fun e!1635008 () Bool)

(assert (=> d!734169 (= c!417801 e!1635008)))

(declare-fun res!1089928 () Bool)

(assert (=> d!734169 (=> (not res!1089928) (not e!1635008))))

(assert (=> d!734169 (= res!1089928 (is-Cons!29818 l!3230))))

(assert (=> d!734169 (exists!905 l!3230 lambda!96089)))

(assert (=> d!734169 (= (getWitness!531 l!3230 lambda!96089) lt!911717)))

(declare-fun b!2591744 () Bool)

(assert (=> b!2591744 (= e!1635005 (h!35238 l!3230))))

(declare-fun b!2591745 () Bool)

(assert (=> b!2591745 (= e!1635008 (dynLambda!12610 lambda!96089 (h!35238 l!3230)))))

(declare-fun b!2591746 () Bool)

(assert (=> b!2591746 (= e!1635007 (contains!5368 l!3230 lt!911717))))

(declare-fun b!2591747 () Bool)

(assert (=> b!2591747 (= e!1635005 e!1635006)))

(declare-fun c!417800 () Bool)

(assert (=> b!2591747 (= c!417800 (is-Cons!29818 l!3230))))

(assert (= (and d!734169 res!1089928) b!2591745))

(assert (= (and d!734169 c!417801) b!2591744))

(assert (= (and d!734169 (not c!417801)) b!2591747))

(assert (= (and b!2591747 c!417800) b!2591742))

(assert (= (and b!2591747 (not c!417800)) b!2591743))

(assert (= (and d!734169 res!1089929) b!2591746))

(declare-fun b_lambda!77137 () Bool)

(assert (=> (not b_lambda!77137) (not d!734169)))

(declare-fun b_lambda!77141 () Bool)

(assert (=> (not b_lambda!77141) (not b!2591745)))

(declare-fun m!2927785 () Bool)

(assert (=> b!2591743 m!2927785))

(declare-fun m!2927787 () Bool)

(assert (=> b!2591745 m!2927787))

(declare-fun m!2927789 () Bool)

(assert (=> d!734169 m!2927789))

(assert (=> d!734169 m!2927677))

(declare-fun m!2927793 () Bool)

(assert (=> b!2591742 m!2927793))

(declare-fun m!2927795 () Bool)

(assert (=> b!2591746 m!2927795))

(assert (=> b!2591637 d!734169))

(declare-fun d!734171 () Bool)

(declare-fun lt!911720 () Int)

(assert (=> d!734171 (>= lt!911720 0)))

(declare-fun e!1635011 () Int)

(assert (=> d!734171 (= lt!911720 e!1635011)))

(declare-fun c!417804 () Bool)

(assert (=> d!734171 (= c!417804 (is-Nil!29818 l!3230))))

(assert (=> d!734171 (= (size!23131 l!3230) lt!911720)))

(declare-fun b!2591754 () Bool)

(assert (=> b!2591754 (= e!1635011 0)))

(declare-fun b!2591755 () Bool)

(assert (=> b!2591755 (= e!1635011 (+ 1 (size!23131 (t!212931 l!3230))))))

(assert (= (and d!734171 c!417804) b!2591754))

(assert (= (and d!734171 (not c!417804)) b!2591755))

(assert (=> b!2591755 m!2927667))

(assert (=> b!2591638 d!734171))

(declare-fun d!734175 () Bool)

(declare-fun e!1635016 () Bool)

(assert (=> d!734175 e!1635016))

(declare-fun res!1089932 () Bool)

(assert (=> d!734175 (=> (not res!1089932) (not e!1635016))))

(declare-fun lt!911723 () List!29918)

(assert (=> d!734175 (= res!1089932 (noDuplicate!366 lt!911723))))

(declare-fun choose!15318 ((Set B!2035)) List!29918)

(assert (=> d!734175 (= lt!911723 (choose!15318 lt!911644))))

(assert (=> d!734175 (= (toList!1769 lt!911644) lt!911723)))

(declare-fun b!2591760 () Bool)

(assert (=> b!2591760 (= e!1635016 (= (content!4159 lt!911723) lt!911644))))

(assert (= (and d!734175 res!1089932) b!2591760))

(declare-fun m!2927805 () Bool)

(assert (=> d!734175 m!2927805))

(declare-fun m!2927807 () Bool)

(assert (=> d!734175 m!2927807))

(declare-fun m!2927809 () Bool)

(assert (=> b!2591760 m!2927809))

(assert (=> b!2591627 d!734175))

(assert (=> b!2591627 d!734171))

(declare-fun d!734177 () Bool)

(declare-fun lt!911724 () Int)

(assert (=> d!734177 (>= lt!911724 0)))

(declare-fun e!1635018 () Int)

(assert (=> d!734177 (= lt!911724 e!1635018)))

(declare-fun c!417808 () Bool)

(assert (=> d!734177 (= c!417808 (is-Nil!29818 (t!212931 l!3230)))))

(assert (=> d!734177 (= (size!23131 (t!212931 l!3230)) lt!911724)))

(declare-fun b!2591763 () Bool)

(assert (=> b!2591763 (= e!1635018 0)))

(declare-fun b!2591764 () Bool)

(assert (=> b!2591764 (= e!1635018 (+ 1 (size!23131 (t!212931 (t!212931 l!3230)))))))

(assert (= (and d!734177 c!417808) b!2591763))

(assert (= (and d!734177 (not c!417808)) b!2591764))

(declare-fun m!2927811 () Bool)

(assert (=> b!2591764 m!2927811))

(assert (=> b!2591627 d!734177))

(declare-fun d!734179 () Bool)

(declare-fun c!417809 () Bool)

(assert (=> d!734179 (= c!417809 (is-Nil!29818 (t!212931 l!3230)))))

(declare-fun e!1635019 () (Set B!2035))

(assert (=> d!734179 (= (content!4159 (t!212931 l!3230)) e!1635019)))

(declare-fun b!2591765 () Bool)

(assert (=> b!2591765 (= e!1635019 (as set.empty (Set B!2035)))))

(declare-fun b!2591766 () Bool)

(assert (=> b!2591766 (= e!1635019 (set.union (set.insert (h!35238 (t!212931 l!3230)) (as set.empty (Set B!2035))) (content!4159 (t!212931 (t!212931 l!3230)))))))

(assert (= (and d!734179 c!417809) b!2591765))

(assert (= (and d!734179 (not c!417809)) b!2591766))

(declare-fun m!2927813 () Bool)

(assert (=> b!2591766 m!2927813))

(declare-fun m!2927815 () Bool)

(assert (=> b!2591766 m!2927815))

(assert (=> b!2591627 d!734179))

(declare-fun d!734183 () Bool)

(declare-fun lt!911725 () Int)

(assert (=> d!734183 (>= lt!911725 0)))

(declare-fun e!1635020 () Int)

(assert (=> d!734183 (= lt!911725 e!1635020)))

(declare-fun c!417810 () Bool)

(assert (=> d!734183 (= c!417810 (is-Nil!29818 (toList!1769 lt!911644)))))

(assert (=> d!734183 (= (size!23131 (toList!1769 lt!911644)) lt!911725)))

(declare-fun b!2591767 () Bool)

(assert (=> b!2591767 (= e!1635020 0)))

(declare-fun b!2591768 () Bool)

(assert (=> b!2591768 (= e!1635020 (+ 1 (size!23131 (t!212931 (toList!1769 lt!911644)))))))

(assert (= (and d!734183 c!417810) b!2591767))

(assert (= (and d!734183 (not c!417810)) b!2591768))

(declare-fun m!2927817 () Bool)

(assert (=> b!2591768 m!2927817))

(assert (=> b!2591627 d!734183))

(declare-fun d!734185 () Bool)

(assert (=> d!734185 (= (size!23131 (toList!1769 (content!4159 (t!212931 l!3230)))) (size!23131 (t!212931 l!3230)))))

(declare-fun lt!911730 () Unit!43753)

(declare-fun choose!15319 (List!29918) Unit!43753)

(assert (=> d!734185 (= lt!911730 (choose!15319 (t!212931 l!3230)))))

(assert (=> d!734185 (noDuplicate!366 (t!212931 l!3230))))

(assert (=> d!734185 (= (lemmaNoDuplicateThenContentToListSameSize!59 (t!212931 l!3230)) lt!911730)))

(declare-fun bs!472227 () Bool)

(assert (= bs!472227 d!734185))

(assert (=> bs!472227 m!2927669))

(declare-fun m!2927819 () Bool)

(assert (=> bs!472227 m!2927819))

(declare-fun m!2927821 () Bool)

(assert (=> bs!472227 m!2927821))

(assert (=> bs!472227 m!2927667))

(assert (=> bs!472227 m!2927751))

(declare-fun m!2927823 () Bool)

(assert (=> bs!472227 m!2927823))

(assert (=> bs!472227 m!2927669))

(assert (=> bs!472227 m!2927819))

(assert (=> b!2591627 d!734185))

(declare-fun bs!472228 () Bool)

(declare-fun d!734187 () Bool)

(assert (= bs!472228 (and d!734187 b!2591637)))

(declare-fun lambda!96121 () Int)

(assert (=> bs!472228 (not (= lambda!96121 lambda!96089))))

(declare-fun bs!472229 () Bool)

(assert (= bs!472229 (and d!734187 d!734167)))

(assert (=> bs!472229 (= (= lambda!96090 lambda!96089) (= lambda!96121 lambda!96120))))

(declare-fun bs!472230 () Bool)

(assert (= bs!472230 (and d!734187 b!2591628)))

(assert (=> bs!472230 (not (= lambda!96121 lambda!96090))))

(declare-fun bs!472231 () Bool)

(assert (= bs!472231 (and d!734187 d!734165)))

(assert (=> bs!472231 (not (= lambda!96121 lambda!96117))))

(declare-fun bs!472232 () Bool)

(assert (= bs!472232 (and d!734187 d!734163)))

(assert (=> bs!472232 (not (= lambda!96121 lambda!96114))))

(assert (=> d!734187 true))

(assert (=> d!734187 (< (dynLambda!12611 order!15871 lambda!96090) (dynLambda!12611 order!15871 lambda!96121))))

(assert (=> d!734187 (= (exists!905 lt!911645 lambda!96090) (not (forall!6077 lt!911645 lambda!96121)))))

(declare-fun bs!472233 () Bool)

(assert (= bs!472233 d!734187))

(declare-fun m!2927825 () Bool)

(assert (=> bs!472233 m!2927825))

(assert (=> b!2591628 d!734187))

(declare-fun bs!472234 () Bool)

(declare-fun d!734189 () Bool)

(assert (= bs!472234 (and d!734189 b!2591637)))

(declare-fun lambda!96122 () Int)

(assert (=> bs!472234 (= (= l!3230 lt!911645) (= lambda!96122 lambda!96089))))

(declare-fun bs!472235 () Bool)

(assert (= bs!472235 (and d!734189 d!734167)))

(assert (=> bs!472235 (not (= lambda!96122 lambda!96120))))

(declare-fun bs!472236 () Bool)

(assert (= bs!472236 (and d!734189 d!734187)))

(assert (=> bs!472236 (not (= lambda!96122 lambda!96121))))

(declare-fun bs!472237 () Bool)

(assert (= bs!472237 (and d!734189 b!2591628)))

(assert (=> bs!472237 (= lambda!96122 lambda!96090)))

(declare-fun bs!472238 () Bool)

(assert (= bs!472238 (and d!734189 d!734165)))

(assert (=> bs!472238 (= (= l!3230 lt!911645) (= lambda!96122 lambda!96117))))

(declare-fun bs!472239 () Bool)

(assert (= bs!472239 (and d!734189 d!734163)))

(assert (=> bs!472239 (not (= lambda!96122 lambda!96114))))

(assert (=> d!734189 true))

(assert (=> d!734189 (exists!905 lt!911645 lambda!96122)))

(declare-fun lt!911731 () Unit!43753)

(assert (=> d!734189 (= lt!911731 (choose!15315 lt!911645 l!3230))))

(assert (=> d!734189 (noDuplicate!366 lt!911645)))

(assert (=> d!734189 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!21 lt!911645 l!3230) lt!911731)))

(declare-fun bs!472240 () Bool)

(assert (= bs!472240 d!734189))

(declare-fun m!2927827 () Bool)

(assert (=> bs!472240 m!2927827))

(declare-fun m!2927829 () Bool)

(assert (=> bs!472240 m!2927829))

(declare-fun m!2927831 () Bool)

(assert (=> bs!472240 m!2927831))

(assert (=> b!2591628 d!734189))

(declare-fun bs!472241 () Bool)

(declare-fun d!734191 () Bool)

(assert (= bs!472241 (and d!734191 b!2591637)))

(declare-fun lambda!96123 () Int)

(assert (=> bs!472241 (not (= lambda!96123 lambda!96089))))

(declare-fun bs!472242 () Bool)

(assert (= bs!472242 (and d!734191 d!734189)))

(assert (=> bs!472242 (not (= lambda!96123 lambda!96122))))

(declare-fun bs!472243 () Bool)

(assert (= bs!472243 (and d!734191 d!734167)))

(assert (=> bs!472243 (not (= lambda!96123 lambda!96120))))

(declare-fun bs!472244 () Bool)

(assert (= bs!472244 (and d!734191 d!734187)))

(assert (=> bs!472244 (not (= lambda!96123 lambda!96121))))

(declare-fun bs!472245 () Bool)

(assert (= bs!472245 (and d!734191 b!2591628)))

(assert (=> bs!472245 (not (= lambda!96123 lambda!96090))))

(declare-fun bs!472246 () Bool)

(assert (= bs!472246 (and d!734191 d!734165)))

(assert (=> bs!472246 (not (= lambda!96123 lambda!96117))))

(declare-fun bs!472247 () Bool)

(assert (= bs!472247 (and d!734191 d!734163)))

(assert (=> bs!472247 (= (= lt!911645 l!3230) (= lambda!96123 lambda!96114))))

(assert (=> d!734191 true))

(assert (=> d!734191 (forall!6077 l!3230 lambda!96123)))

(declare-fun lt!911733 () Unit!43753)

(assert (=> d!734191 (= lt!911733 (choose!15314 l!3230 lt!911645))))

(assert (=> d!734191 (set.subset (content!4159 l!3230) (content!4159 lt!911645))))

(assert (=> d!734191 (= (subsetContains!47 l!3230 lt!911645) lt!911733)))

(declare-fun bs!472248 () Bool)

(assert (= bs!472248 d!734191))

(declare-fun m!2927833 () Bool)

(assert (=> bs!472248 m!2927833))

(declare-fun m!2927835 () Bool)

(assert (=> bs!472248 m!2927835))

(assert (=> bs!472248 m!2927657))

(assert (=> bs!472248 m!2927777))

(assert (=> b!2591628 d!734191))

(declare-fun d!734195 () Bool)

(declare-fun lt!911734 () Int)

(assert (=> d!734195 (>= lt!911734 0)))

(declare-fun e!1635024 () Int)

(assert (=> d!734195 (= lt!911734 e!1635024)))

(declare-fun c!417814 () Bool)

(assert (=> d!734195 (= c!417814 (is-Nil!29818 lt!911645))))

(assert (=> d!734195 (= (size!23131 lt!911645) lt!911734)))

(declare-fun b!2591775 () Bool)

(assert (=> b!2591775 (= e!1635024 0)))

(declare-fun b!2591776 () Bool)

(assert (=> b!2591776 (= e!1635024 (+ 1 (size!23131 (t!212931 lt!911645))))))

(assert (= (and d!734195 c!417814) b!2591775))

(assert (= (and d!734195 (not c!417814)) b!2591776))

(declare-fun m!2927837 () Bool)

(assert (=> b!2591776 m!2927837))

(assert (=> b!2591633 d!734195))

(declare-fun d!734197 () Bool)

(declare-fun e!1635025 () Bool)

(assert (=> d!734197 e!1635025))

(declare-fun res!1089933 () Bool)

(assert (=> d!734197 (=> (not res!1089933) (not e!1635025))))

(declare-fun lt!911735 () List!29918)

(assert (=> d!734197 (= res!1089933 (noDuplicate!366 lt!911735))))

(assert (=> d!734197 (= lt!911735 (choose!15318 lt!911641))))

(assert (=> d!734197 (= (toList!1769 lt!911641) lt!911735)))

(declare-fun b!2591777 () Bool)

(assert (=> b!2591777 (= e!1635025 (= (content!4159 lt!911735) lt!911641))))

(assert (= (and d!734197 res!1089933) b!2591777))

(declare-fun m!2927839 () Bool)

(assert (=> d!734197 m!2927839))

(declare-fun m!2927841 () Bool)

(assert (=> d!734197 m!2927841))

(declare-fun m!2927843 () Bool)

(assert (=> b!2591777 m!2927843))

(assert (=> b!2591633 d!734197))

(assert (=> b!2591629 d!734149))

(declare-fun b!2591782 () Bool)

(declare-fun e!1635028 () Bool)

(declare-fun tp!822719 () Bool)

(assert (=> b!2591782 (= e!1635028 (and tp_is_empty!13315 tp!822719))))

(assert (=> b!2591632 (= tp!822713 e!1635028)))

(assert (= (and b!2591632 (is-Cons!29818 (t!212931 l!3230))) b!2591782))

(declare-fun b_lambda!77143 () Bool)

(assert (= b_lambda!77141 (or b!2591637 b_lambda!77143)))

(declare-fun bs!472249 () Bool)

(declare-fun d!734199 () Bool)

(assert (= bs!472249 (and d!734199 b!2591637)))

(assert (=> bs!472249 (= (dynLambda!12610 lambda!96089 (h!35238 l!3230)) (not (contains!5368 lt!911645 (h!35238 l!3230))))))

(declare-fun m!2927845 () Bool)

(assert (=> bs!472249 m!2927845))

(assert (=> b!2591745 d!734199))

(declare-fun b_lambda!77145 () Bool)

(assert (= b_lambda!77131 (or b!2591628 b_lambda!77145)))

(declare-fun bs!472250 () Bool)

(declare-fun d!734201 () Bool)

(assert (= bs!472250 (and d!734201 b!2591628)))

(assert (=> bs!472250 (= (dynLambda!12610 lambda!96090 lt!911702) (not (contains!5368 l!3230 lt!911702)))))

(declare-fun m!2927847 () Bool)

(assert (=> bs!472250 m!2927847))

(assert (=> d!734157 d!734201))

(declare-fun b_lambda!77147 () Bool)

(assert (= b_lambda!77133 (or b!2591628 b_lambda!77147)))

(declare-fun bs!472251 () Bool)

(declare-fun d!734203 () Bool)

(assert (= bs!472251 (and d!734203 b!2591628)))

(assert (=> bs!472251 (= (dynLambda!12610 lambda!96090 (h!35238 lt!911645)) (not (contains!5368 l!3230 (h!35238 lt!911645))))))

(declare-fun m!2927849 () Bool)

(assert (=> bs!472251 m!2927849))

(assert (=> b!2591717 d!734203))

(declare-fun b_lambda!77149 () Bool)

(assert (= b_lambda!77137 (or b!2591637 b_lambda!77149)))

(declare-fun bs!472252 () Bool)

(declare-fun d!734205 () Bool)

(assert (= bs!472252 (and d!734205 b!2591637)))

(assert (=> bs!472252 (= (dynLambda!12610 lambda!96089 lt!911717) (not (contains!5368 lt!911645 lt!911717)))))

(declare-fun m!2927851 () Bool)

(assert (=> bs!472252 m!2927851))

(assert (=> d!734169 d!734205))

(push 1)

(assert (not b!2591692))

(assert (not b_lambda!77145))

(assert (not d!734169))

(assert (not b!2591701))

(assert (not d!734185))

(assert (not b!2591714))

(assert (not bs!472249))

(assert (not d!734191))

(assert (not b!2591721))

(assert (not d!734175))

(assert (not d!734161))

(assert (not d!734165))

(assert (not b_lambda!77149))

(assert (not b!2591742))

(assert (not b_lambda!77147))

(assert (not d!734189))

(assert (not b!2591687))

(assert (not b!2591764))

(assert (not d!734155))

(assert (not b!2591768))

(assert (not d!734197))

(assert (not b!2591782))

(assert (not bs!472250))

(assert (not b!2591776))

(assert (not d!734187))

(assert (not b_lambda!77143))

(assert (not d!734163))

(assert (not b!2591760))

(assert (not d!734157))

(assert (not b!2591743))

(assert (not b!2591746))

(assert (not b!2591766))

(assert (not b!2591715))

(assert (not b!2591718))

(assert (not b!2591777))

(assert (not b!2591693))

(assert tp_is_empty!13315)

(assert (not bs!472252))

(assert (not b!2591755))

(assert (not d!734167))

(assert (not bs!472251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

