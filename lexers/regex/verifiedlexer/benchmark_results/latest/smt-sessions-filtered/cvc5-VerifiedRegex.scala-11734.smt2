; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663430 () Bool)

(assert start!663430)

(declare-fun b!6874910 () Bool)

(assert (=> b!6874910 true))

(declare-fun res!2803566 () Bool)

(declare-fun e!4143730 () Bool)

(assert (=> start!663430 (=> (not res!2803566) (not e!4143730))))

(declare-datatypes ((C!33698 0))(
  ( (C!33699 (val!26551 Int)) )
))
(declare-datatypes ((Regex!16714 0))(
  ( (ElementMatch!16714 (c!1279344 C!33698)) (Concat!25559 (regOne!33940 Regex!16714) (regTwo!33940 Regex!16714)) (EmptyExpr!16714) (Star!16714 (reg!17043 Regex!16714)) (EmptyLang!16714) (Union!16714 (regOne!33941 Regex!16714) (regTwo!33941 Regex!16714)) )
))
(declare-datatypes ((List!66439 0))(
  ( (Nil!66315) (Cons!66315 (h!72763 Regex!16714) (t!380182 List!66439)) )
))
(declare-datatypes ((Context!12196 0))(
  ( (Context!12197 (exprs!6598 List!66439)) )
))
(declare-datatypes ((List!66440 0))(
  ( (Nil!66316) (Cons!66316 (h!72764 Context!12196) (t!380183 List!66440)) )
))
(declare-fun zl!1520 () List!66440)

(declare-fun r!11177 () Regex!16714)

(declare-fun contains!20370 (List!66439 Regex!16714) Bool)

(declare-fun unfocusZipperList!2131 (List!66440) List!66439)

(assert (=> start!663430 (= res!2803566 (contains!20370 (unfocusZipperList!2131 zl!1520) r!11177))))

(assert (=> start!663430 e!4143730))

(declare-fun e!4143728 () Bool)

(assert (=> start!663430 e!4143728))

(declare-fun e!4143729 () Bool)

(assert (=> start!663430 e!4143729))

(declare-fun c!130 () Context!12196)

(declare-fun e!4143731 () Bool)

(declare-fun inv!85033 (Context!12196) Bool)

(assert (=> start!663430 (and (inv!85033 c!130) e!4143731)))

(declare-fun b!6874902 () Bool)

(declare-fun tp!1888423 () Bool)

(assert (=> b!6874902 (= e!4143731 tp!1888423)))

(declare-fun b!6874903 () Bool)

(declare-fun e!4143727 () Bool)

(declare-fun tp!1888425 () Bool)

(assert (=> b!6874903 (= e!4143727 tp!1888425)))

(declare-fun b!6874904 () Bool)

(declare-fun tp!1888427 () Bool)

(declare-fun tp!1888426 () Bool)

(assert (=> b!6874904 (= e!4143729 (and tp!1888427 tp!1888426))))

(declare-fun b!6874905 () Bool)

(declare-fun res!2803567 () Bool)

(assert (=> b!6874905 (=> (not res!2803567) (not e!4143730))))

(assert (=> b!6874905 (= res!2803567 (contains!20370 (unfocusZipperList!2131 (t!380183 zl!1520)) r!11177))))

(declare-fun b!6874906 () Bool)

(declare-fun res!2803565 () Bool)

(assert (=> b!6874906 (=> (not res!2803565) (not e!4143730))))

(assert (=> b!6874906 (= res!2803565 (is-Cons!66316 zl!1520))))

(declare-fun b!6874907 () Bool)

(declare-fun tp!1888424 () Bool)

(declare-fun tp!1888422 () Bool)

(assert (=> b!6874907 (= e!4143729 (and tp!1888424 tp!1888422))))

(declare-fun b!6874908 () Bool)

(declare-fun tp!1888428 () Bool)

(assert (=> b!6874908 (= e!4143729 tp!1888428)))

(declare-fun b!6874909 () Bool)

(declare-fun tp_is_empty!42681 () Bool)

(assert (=> b!6874909 (= e!4143729 tp_is_empty!42681)))

(declare-fun lambda!389141 () Int)

(declare-fun forall!15911 (List!66439 Int) Bool)

(assert (=> b!6874910 (= e!4143730 (not (forall!15911 (exprs!6598 c!130) lambda!389141)))))

(declare-fun lambda!389140 () Int)

(declare-fun exists!2852 (List!66440 Int) Bool)

(assert (=> b!6874910 (exists!2852 (t!380183 zl!1520) lambda!389140)))

(declare-datatypes ((Unit!160208 0))(
  ( (Unit!160209) )
))
(declare-fun lt!2459019 () Unit!160208)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!41 (List!66440 Regex!16714) Unit!160208)

(assert (=> b!6874910 (= lt!2459019 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!41 (t!380183 zl!1520) r!11177))))

(declare-fun b!6874911 () Bool)

(declare-fun tp!1888429 () Bool)

(assert (=> b!6874911 (= e!4143728 (and (inv!85033 (h!72764 zl!1520)) e!4143727 tp!1888429))))

(assert (= (and start!663430 res!2803566) b!6874906))

(assert (= (and b!6874906 res!2803565) b!6874905))

(assert (= (and b!6874905 res!2803567) b!6874910))

(assert (= b!6874911 b!6874903))

(assert (= (and start!663430 (is-Cons!66316 zl!1520)) b!6874911))

(assert (= (and start!663430 (is-ElementMatch!16714 r!11177)) b!6874909))

(assert (= (and start!663430 (is-Concat!25559 r!11177)) b!6874907))

(assert (= (and start!663430 (is-Star!16714 r!11177)) b!6874908))

(assert (= (and start!663430 (is-Union!16714 r!11177)) b!6874904))

(assert (= start!663430 b!6874902))

(declare-fun m!7603684 () Bool)

(assert (=> start!663430 m!7603684))

(assert (=> start!663430 m!7603684))

(declare-fun m!7603686 () Bool)

(assert (=> start!663430 m!7603686))

(declare-fun m!7603688 () Bool)

(assert (=> start!663430 m!7603688))

(declare-fun m!7603690 () Bool)

(assert (=> b!6874905 m!7603690))

(assert (=> b!6874905 m!7603690))

(declare-fun m!7603692 () Bool)

(assert (=> b!6874905 m!7603692))

(declare-fun m!7603694 () Bool)

(assert (=> b!6874910 m!7603694))

(declare-fun m!7603696 () Bool)

(assert (=> b!6874910 m!7603696))

(declare-fun m!7603698 () Bool)

(assert (=> b!6874910 m!7603698))

(declare-fun m!7603700 () Bool)

(assert (=> b!6874911 m!7603700))

(push 1)

(assert (not b!6874910))

(assert (not b!6874911))

(assert (not start!663430))

(assert (not b!6874907))

(assert (not b!6874905))

(assert (not b!6874902))

(assert (not b!6874908))

(assert tp_is_empty!42681)

(assert (not b!6874903))

(assert (not b!6874904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2159115 () Bool)

(declare-fun lt!2459025 () Bool)

(declare-fun content!13021 (List!66439) (Set Regex!16714))

(assert (=> d!2159115 (= lt!2459025 (set.member r!11177 (content!13021 (unfocusZipperList!2131 zl!1520))))))

(declare-fun e!4143751 () Bool)

(assert (=> d!2159115 (= lt!2459025 e!4143751)))

(declare-fun res!2803582 () Bool)

(assert (=> d!2159115 (=> (not res!2803582) (not e!4143751))))

(assert (=> d!2159115 (= res!2803582 (is-Cons!66315 (unfocusZipperList!2131 zl!1520)))))

(assert (=> d!2159115 (= (contains!20370 (unfocusZipperList!2131 zl!1520) r!11177) lt!2459025)))

(declare-fun b!6874950 () Bool)

(declare-fun e!4143752 () Bool)

(assert (=> b!6874950 (= e!4143751 e!4143752)))

(declare-fun res!2803581 () Bool)

(assert (=> b!6874950 (=> res!2803581 e!4143752)))

(assert (=> b!6874950 (= res!2803581 (= (h!72763 (unfocusZipperList!2131 zl!1520)) r!11177))))

(declare-fun b!6874951 () Bool)

(assert (=> b!6874951 (= e!4143752 (contains!20370 (t!380182 (unfocusZipperList!2131 zl!1520)) r!11177))))

(assert (= (and d!2159115 res!2803582) b!6874950))

(assert (= (and b!6874950 (not res!2803581)) b!6874951))

(assert (=> d!2159115 m!7603684))

(declare-fun m!7603720 () Bool)

(assert (=> d!2159115 m!7603720))

(declare-fun m!7603722 () Bool)

(assert (=> d!2159115 m!7603722))

(declare-fun m!7603724 () Bool)

(assert (=> b!6874951 m!7603724))

(assert (=> start!663430 d!2159115))

(declare-fun bs!1837628 () Bool)

(declare-fun d!2159117 () Bool)

(assert (= bs!1837628 (and d!2159117 b!6874910)))

(declare-fun lambda!389150 () Int)

(assert (=> bs!1837628 (= lambda!389150 lambda!389141)))

(declare-fun lt!2459028 () List!66439)

(assert (=> d!2159117 (forall!15911 lt!2459028 lambda!389150)))

(declare-fun e!4143755 () List!66439)

(assert (=> d!2159117 (= lt!2459028 e!4143755)))

(declare-fun c!1279350 () Bool)

(assert (=> d!2159117 (= c!1279350 (is-Cons!66316 zl!1520))))

(assert (=> d!2159117 (= (unfocusZipperList!2131 zl!1520) lt!2459028)))

(declare-fun b!6874956 () Bool)

(declare-fun generalisedConcat!2298 (List!66439) Regex!16714)

(assert (=> b!6874956 (= e!4143755 (Cons!66315 (generalisedConcat!2298 (exprs!6598 (h!72764 zl!1520))) (unfocusZipperList!2131 (t!380183 zl!1520))))))

(declare-fun b!6874957 () Bool)

(assert (=> b!6874957 (= e!4143755 Nil!66315)))

(assert (= (and d!2159117 c!1279350) b!6874956))

(assert (= (and d!2159117 (not c!1279350)) b!6874957))

(declare-fun m!7603726 () Bool)

(assert (=> d!2159117 m!7603726))

(declare-fun m!7603728 () Bool)

(assert (=> b!6874956 m!7603728))

(assert (=> b!6874956 m!7603690))

(assert (=> start!663430 d!2159117))

(declare-fun bs!1837629 () Bool)

(declare-fun d!2159121 () Bool)

(assert (= bs!1837629 (and d!2159121 b!6874910)))

(declare-fun lambda!389153 () Int)

(assert (=> bs!1837629 (= lambda!389153 lambda!389141)))

(declare-fun bs!1837630 () Bool)

(assert (= bs!1837630 (and d!2159121 d!2159117)))

(assert (=> bs!1837630 (= lambda!389153 lambda!389150)))

(assert (=> d!2159121 (= (inv!85033 c!130) (forall!15911 (exprs!6598 c!130) lambda!389153))))

(declare-fun bs!1837631 () Bool)

(assert (= bs!1837631 d!2159121))

(declare-fun m!7603730 () Bool)

(assert (=> bs!1837631 m!7603730))

(assert (=> start!663430 d!2159121))

(declare-fun d!2159123 () Bool)

(declare-fun lt!2459029 () Bool)

(assert (=> d!2159123 (= lt!2459029 (set.member r!11177 (content!13021 (unfocusZipperList!2131 (t!380183 zl!1520)))))))

(declare-fun e!4143756 () Bool)

(assert (=> d!2159123 (= lt!2459029 e!4143756)))

(declare-fun res!2803584 () Bool)

(assert (=> d!2159123 (=> (not res!2803584) (not e!4143756))))

(assert (=> d!2159123 (= res!2803584 (is-Cons!66315 (unfocusZipperList!2131 (t!380183 zl!1520))))))

(assert (=> d!2159123 (= (contains!20370 (unfocusZipperList!2131 (t!380183 zl!1520)) r!11177) lt!2459029)))

(declare-fun b!6874958 () Bool)

(declare-fun e!4143757 () Bool)

(assert (=> b!6874958 (= e!4143756 e!4143757)))

(declare-fun res!2803583 () Bool)

(assert (=> b!6874958 (=> res!2803583 e!4143757)))

(assert (=> b!6874958 (= res!2803583 (= (h!72763 (unfocusZipperList!2131 (t!380183 zl!1520))) r!11177))))

(declare-fun b!6874959 () Bool)

(assert (=> b!6874959 (= e!4143757 (contains!20370 (t!380182 (unfocusZipperList!2131 (t!380183 zl!1520))) r!11177))))

(assert (= (and d!2159123 res!2803584) b!6874958))

(assert (= (and b!6874958 (not res!2803583)) b!6874959))

(assert (=> d!2159123 m!7603690))

(declare-fun m!7603732 () Bool)

(assert (=> d!2159123 m!7603732))

(declare-fun m!7603734 () Bool)

(assert (=> d!2159123 m!7603734))

(declare-fun m!7603736 () Bool)

(assert (=> b!6874959 m!7603736))

(assert (=> b!6874905 d!2159123))

(declare-fun bs!1837632 () Bool)

(declare-fun d!2159125 () Bool)

(assert (= bs!1837632 (and d!2159125 b!6874910)))

(declare-fun lambda!389154 () Int)

(assert (=> bs!1837632 (= lambda!389154 lambda!389141)))

(declare-fun bs!1837633 () Bool)

(assert (= bs!1837633 (and d!2159125 d!2159117)))

(assert (=> bs!1837633 (= lambda!389154 lambda!389150)))

(declare-fun bs!1837634 () Bool)

(assert (= bs!1837634 (and d!2159125 d!2159121)))

(assert (=> bs!1837634 (= lambda!389154 lambda!389153)))

(declare-fun lt!2459030 () List!66439)

(assert (=> d!2159125 (forall!15911 lt!2459030 lambda!389154)))

(declare-fun e!4143758 () List!66439)

(assert (=> d!2159125 (= lt!2459030 e!4143758)))

(declare-fun c!1279351 () Bool)

(assert (=> d!2159125 (= c!1279351 (is-Cons!66316 (t!380183 zl!1520)))))

(assert (=> d!2159125 (= (unfocusZipperList!2131 (t!380183 zl!1520)) lt!2459030)))

(declare-fun b!6874960 () Bool)

(assert (=> b!6874960 (= e!4143758 (Cons!66315 (generalisedConcat!2298 (exprs!6598 (h!72764 (t!380183 zl!1520)))) (unfocusZipperList!2131 (t!380183 (t!380183 zl!1520)))))))

(declare-fun b!6874961 () Bool)

(assert (=> b!6874961 (= e!4143758 Nil!66315)))

(assert (= (and d!2159125 c!1279351) b!6874960))

(assert (= (and d!2159125 (not c!1279351)) b!6874961))

(declare-fun m!7603738 () Bool)

(assert (=> d!2159125 m!7603738))

(declare-fun m!7603740 () Bool)

(assert (=> b!6874960 m!7603740))

(declare-fun m!7603742 () Bool)

(assert (=> b!6874960 m!7603742))

(assert (=> b!6874905 d!2159125))

(declare-fun d!2159127 () Bool)

(declare-fun res!2803593 () Bool)

(declare-fun e!4143767 () Bool)

(assert (=> d!2159127 (=> res!2803593 e!4143767)))

(assert (=> d!2159127 (= res!2803593 (is-Nil!66315 (exprs!6598 c!130)))))

(assert (=> d!2159127 (= (forall!15911 (exprs!6598 c!130) lambda!389141) e!4143767)))

(declare-fun b!6874970 () Bool)

(declare-fun e!4143768 () Bool)

(assert (=> b!6874970 (= e!4143767 e!4143768)))

(declare-fun res!2803594 () Bool)

(assert (=> b!6874970 (=> (not res!2803594) (not e!4143768))))

(declare-fun dynLambda!26549 (Int Regex!16714) Bool)

(assert (=> b!6874970 (= res!2803594 (dynLambda!26549 lambda!389141 (h!72763 (exprs!6598 c!130))))))

(declare-fun b!6874971 () Bool)

(assert (=> b!6874971 (= e!4143768 (forall!15911 (t!380182 (exprs!6598 c!130)) lambda!389141))))

(assert (= (and d!2159127 (not res!2803593)) b!6874970))

(assert (= (and b!6874970 res!2803594) b!6874971))

(declare-fun b_lambda!260155 () Bool)

(assert (=> (not b_lambda!260155) (not b!6874970)))

(declare-fun m!7603744 () Bool)

(assert (=> b!6874970 m!7603744))

(declare-fun m!7603746 () Bool)

(assert (=> b!6874971 m!7603746))

(assert (=> b!6874910 d!2159127))

(declare-fun bs!1837635 () Bool)

(declare-fun d!2159129 () Bool)

(assert (= bs!1837635 (and d!2159129 b!6874910)))

(declare-fun lambda!389157 () Int)

(assert (=> bs!1837635 (not (= lambda!389157 lambda!389140))))

(assert (=> d!2159129 true))

(declare-fun order!27749 () Int)

(declare-fun dynLambda!26550 (Int Int) Int)

(assert (=> d!2159129 (< (dynLambda!26550 order!27749 lambda!389140) (dynLambda!26550 order!27749 lambda!389157))))

(declare-fun forall!15913 (List!66440 Int) Bool)

(assert (=> d!2159129 (= (exists!2852 (t!380183 zl!1520) lambda!389140) (not (forall!15913 (t!380183 zl!1520) lambda!389157)))))

(declare-fun bs!1837636 () Bool)

(assert (= bs!1837636 d!2159129))

(declare-fun m!7603754 () Bool)

(assert (=> bs!1837636 m!7603754))

(assert (=> b!6874910 d!2159129))

(declare-fun bs!1837637 () Bool)

(declare-fun d!2159133 () Bool)

(assert (= bs!1837637 (and d!2159133 b!6874910)))

(declare-fun lambda!389160 () Int)

(assert (=> bs!1837637 (= lambda!389160 lambda!389140)))

(declare-fun bs!1837638 () Bool)

(assert (= bs!1837638 (and d!2159133 d!2159129)))

(assert (=> bs!1837638 (not (= lambda!389160 lambda!389157))))

(assert (=> d!2159133 true))

(assert (=> d!2159133 (exists!2852 (t!380183 zl!1520) lambda!389160)))

(declare-fun lt!2459036 () Unit!160208)

(declare-fun choose!51230 (List!66440 Regex!16714) Unit!160208)

(assert (=> d!2159133 (= lt!2459036 (choose!51230 (t!380183 zl!1520) r!11177))))

(assert (=> d!2159133 (contains!20370 (unfocusZipperList!2131 (t!380183 zl!1520)) r!11177)))

(assert (=> d!2159133 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!41 (t!380183 zl!1520) r!11177) lt!2459036)))

(declare-fun bs!1837639 () Bool)

(assert (= bs!1837639 d!2159133))

(declare-fun m!7603756 () Bool)

(assert (=> bs!1837639 m!7603756))

(declare-fun m!7603758 () Bool)

(assert (=> bs!1837639 m!7603758))

(assert (=> bs!1837639 m!7603690))

(assert (=> bs!1837639 m!7603690))

(assert (=> bs!1837639 m!7603692))

(assert (=> b!6874910 d!2159133))

(declare-fun bs!1837640 () Bool)

(declare-fun d!2159135 () Bool)

(assert (= bs!1837640 (and d!2159135 b!6874910)))

(declare-fun lambda!389161 () Int)

(assert (=> bs!1837640 (= lambda!389161 lambda!389141)))

(declare-fun bs!1837641 () Bool)

(assert (= bs!1837641 (and d!2159135 d!2159117)))

(assert (=> bs!1837641 (= lambda!389161 lambda!389150)))

(declare-fun bs!1837642 () Bool)

(assert (= bs!1837642 (and d!2159135 d!2159121)))

(assert (=> bs!1837642 (= lambda!389161 lambda!389153)))

(declare-fun bs!1837643 () Bool)

(assert (= bs!1837643 (and d!2159135 d!2159125)))

(assert (=> bs!1837643 (= lambda!389161 lambda!389154)))

(assert (=> d!2159135 (= (inv!85033 (h!72764 zl!1520)) (forall!15911 (exprs!6598 (h!72764 zl!1520)) lambda!389161))))

(declare-fun bs!1837644 () Bool)

(assert (= bs!1837644 d!2159135))

(declare-fun m!7603760 () Bool)

(assert (=> bs!1837644 m!7603760))

(assert (=> b!6874911 d!2159135))

(declare-fun b!6874992 () Bool)

(declare-fun e!4143775 () Bool)

(declare-fun tp!1888464 () Bool)

(assert (=> b!6874992 (= e!4143775 tp!1888464)))

(assert (=> b!6874907 (= tp!1888424 e!4143775)))

(declare-fun b!6874990 () Bool)

(assert (=> b!6874990 (= e!4143775 tp_is_empty!42681)))

(declare-fun b!6874993 () Bool)

(declare-fun tp!1888468 () Bool)

(declare-fun tp!1888465 () Bool)

(assert (=> b!6874993 (= e!4143775 (and tp!1888468 tp!1888465))))

(declare-fun b!6874991 () Bool)

(declare-fun tp!1888467 () Bool)

(declare-fun tp!1888466 () Bool)

(assert (=> b!6874991 (= e!4143775 (and tp!1888467 tp!1888466))))

(assert (= (and b!6874907 (is-ElementMatch!16714 (regOne!33940 r!11177))) b!6874990))

(assert (= (and b!6874907 (is-Concat!25559 (regOne!33940 r!11177))) b!6874991))

(assert (= (and b!6874907 (is-Star!16714 (regOne!33940 r!11177))) b!6874992))

(assert (= (and b!6874907 (is-Union!16714 (regOne!33940 r!11177))) b!6874993))

(declare-fun b!6874996 () Bool)

(declare-fun e!4143776 () Bool)

(declare-fun tp!1888469 () Bool)

(assert (=> b!6874996 (= e!4143776 tp!1888469)))

(assert (=> b!6874907 (= tp!1888422 e!4143776)))

(declare-fun b!6874994 () Bool)

(assert (=> b!6874994 (= e!4143776 tp_is_empty!42681)))

(declare-fun b!6874997 () Bool)

(declare-fun tp!1888473 () Bool)

(declare-fun tp!1888470 () Bool)

(assert (=> b!6874997 (= e!4143776 (and tp!1888473 tp!1888470))))

(declare-fun b!6874995 () Bool)

(declare-fun tp!1888472 () Bool)

(declare-fun tp!1888471 () Bool)

(assert (=> b!6874995 (= e!4143776 (and tp!1888472 tp!1888471))))

(assert (= (and b!6874907 (is-ElementMatch!16714 (regTwo!33940 r!11177))) b!6874994))

(assert (= (and b!6874907 (is-Concat!25559 (regTwo!33940 r!11177))) b!6874995))

(assert (= (and b!6874907 (is-Star!16714 (regTwo!33940 r!11177))) b!6874996))

(assert (= (and b!6874907 (is-Union!16714 (regTwo!33940 r!11177))) b!6874997))

(declare-fun b!6875002 () Bool)

(declare-fun e!4143779 () Bool)

(declare-fun tp!1888478 () Bool)

(declare-fun tp!1888479 () Bool)

(assert (=> b!6875002 (= e!4143779 (and tp!1888478 tp!1888479))))

(assert (=> b!6874902 (= tp!1888423 e!4143779)))

(assert (= (and b!6874902 (is-Cons!66315 (exprs!6598 c!130))) b!6875002))

(declare-fun b!6875003 () Bool)

(declare-fun e!4143780 () Bool)

(declare-fun tp!1888480 () Bool)

(declare-fun tp!1888481 () Bool)

(assert (=> b!6875003 (= e!4143780 (and tp!1888480 tp!1888481))))

(assert (=> b!6874903 (= tp!1888425 e!4143780)))

(assert (= (and b!6874903 (is-Cons!66315 (exprs!6598 (h!72764 zl!1520)))) b!6875003))

(declare-fun b!6875006 () Bool)

(declare-fun e!4143781 () Bool)

(declare-fun tp!1888482 () Bool)

(assert (=> b!6875006 (= e!4143781 tp!1888482)))

(assert (=> b!6874908 (= tp!1888428 e!4143781)))

(declare-fun b!6875004 () Bool)

(assert (=> b!6875004 (= e!4143781 tp_is_empty!42681)))

(declare-fun b!6875007 () Bool)

(declare-fun tp!1888486 () Bool)

(declare-fun tp!1888483 () Bool)

(assert (=> b!6875007 (= e!4143781 (and tp!1888486 tp!1888483))))

(declare-fun b!6875005 () Bool)

(declare-fun tp!1888485 () Bool)

(declare-fun tp!1888484 () Bool)

(assert (=> b!6875005 (= e!4143781 (and tp!1888485 tp!1888484))))

(assert (= (and b!6874908 (is-ElementMatch!16714 (reg!17043 r!11177))) b!6875004))

(assert (= (and b!6874908 (is-Concat!25559 (reg!17043 r!11177))) b!6875005))

(assert (= (and b!6874908 (is-Star!16714 (reg!17043 r!11177))) b!6875006))

(assert (= (and b!6874908 (is-Union!16714 (reg!17043 r!11177))) b!6875007))

(declare-fun b!6875010 () Bool)

(declare-fun e!4143782 () Bool)

(declare-fun tp!1888487 () Bool)

(assert (=> b!6875010 (= e!4143782 tp!1888487)))

(assert (=> b!6874904 (= tp!1888427 e!4143782)))

(declare-fun b!6875008 () Bool)

(assert (=> b!6875008 (= e!4143782 tp_is_empty!42681)))

(declare-fun b!6875011 () Bool)

(declare-fun tp!1888491 () Bool)

(declare-fun tp!1888488 () Bool)

(assert (=> b!6875011 (= e!4143782 (and tp!1888491 tp!1888488))))

(declare-fun b!6875009 () Bool)

(declare-fun tp!1888490 () Bool)

(declare-fun tp!1888489 () Bool)

(assert (=> b!6875009 (= e!4143782 (and tp!1888490 tp!1888489))))

(assert (= (and b!6874904 (is-ElementMatch!16714 (regOne!33941 r!11177))) b!6875008))

(assert (= (and b!6874904 (is-Concat!25559 (regOne!33941 r!11177))) b!6875009))

(assert (= (and b!6874904 (is-Star!16714 (regOne!33941 r!11177))) b!6875010))

(assert (= (and b!6874904 (is-Union!16714 (regOne!33941 r!11177))) b!6875011))

(declare-fun b!6875014 () Bool)

(declare-fun e!4143783 () Bool)

(declare-fun tp!1888492 () Bool)

(assert (=> b!6875014 (= e!4143783 tp!1888492)))

(assert (=> b!6874904 (= tp!1888426 e!4143783)))

(declare-fun b!6875012 () Bool)

(assert (=> b!6875012 (= e!4143783 tp_is_empty!42681)))

(declare-fun b!6875015 () Bool)

(declare-fun tp!1888496 () Bool)

(declare-fun tp!1888493 () Bool)

(assert (=> b!6875015 (= e!4143783 (and tp!1888496 tp!1888493))))

(declare-fun b!6875013 () Bool)

(declare-fun tp!1888495 () Bool)

(declare-fun tp!1888494 () Bool)

(assert (=> b!6875013 (= e!4143783 (and tp!1888495 tp!1888494))))

(assert (= (and b!6874904 (is-ElementMatch!16714 (regTwo!33941 r!11177))) b!6875012))

(assert (= (and b!6874904 (is-Concat!25559 (regTwo!33941 r!11177))) b!6875013))

(assert (= (and b!6874904 (is-Star!16714 (regTwo!33941 r!11177))) b!6875014))

(assert (= (and b!6874904 (is-Union!16714 (regTwo!33941 r!11177))) b!6875015))

(declare-fun b!6875023 () Bool)

(declare-fun e!4143789 () Bool)

(declare-fun tp!1888501 () Bool)

(assert (=> b!6875023 (= e!4143789 tp!1888501)))

(declare-fun e!4143788 () Bool)

(declare-fun tp!1888502 () Bool)

(declare-fun b!6875022 () Bool)

(assert (=> b!6875022 (= e!4143788 (and (inv!85033 (h!72764 (t!380183 zl!1520))) e!4143789 tp!1888502))))

(assert (=> b!6874911 (= tp!1888429 e!4143788)))

(assert (= b!6875022 b!6875023))

(assert (= (and b!6874911 (is-Cons!66316 (t!380183 zl!1520))) b!6875022))

(declare-fun m!7603762 () Bool)

(assert (=> b!6875022 m!7603762))

(declare-fun b_lambda!260157 () Bool)

(assert (= b_lambda!260155 (or b!6874910 b_lambda!260157)))

(declare-fun bs!1837645 () Bool)

(declare-fun d!2159137 () Bool)

(assert (= bs!1837645 (and d!2159137 b!6874910)))

(declare-fun validRegex!8448 (Regex!16714) Bool)

(assert (=> bs!1837645 (= (dynLambda!26549 lambda!389141 (h!72763 (exprs!6598 c!130))) (validRegex!8448 (h!72763 (exprs!6598 c!130))))))

(declare-fun m!7603764 () Bool)

(assert (=> bs!1837645 m!7603764))

(assert (=> b!6874970 d!2159137))

(push 1)

(assert (not b!6875022))

(assert (not b!6875014))

(assert (not b!6874971))

(assert (not b!6875003))

(assert (not b!6875023))

(assert (not d!2159129))

(assert (not b!6875007))

(assert (not b!6875011))

(assert (not b!6874960))

(assert (not b!6875015))

(assert (not b!6874992))

(assert (not b!6875013))

(assert (not b!6875009))

(assert (not d!2159117))

(assert (not b_lambda!260157))

(assert (not b!6874951))

(assert (not d!2159125))

(assert (not d!2159135))

(assert (not b!6875002))

(assert (not d!2159123))

(assert (not d!2159133))

(assert (not b!6874991))

(assert (not b!6874995))

(assert (not d!2159121))

(assert (not d!2159115))

(assert (not b!6875010))

(assert (not b!6874996))

(assert (not b!6875005))

(assert (not b!6874956))

(assert tp_is_empty!42681)

(assert (not b!6874993))

(assert (not b!6874997))

(assert (not b!6874959))

(assert (not bs!1837645))

(assert (not b!6875006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

