; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251982 () Bool)

(assert start!251982)

(declare-fun b!2596632 () Bool)

(assert (=> b!2596632 true))

(declare-fun b!2596639 () Bool)

(declare-fun m!2932909 () Bool)

(assert (=> b!2596639 m!2932909))

(declare-fun bs!472942 () Bool)

(assert (= bs!472942 (and b!2596639 b!2596632)))

(declare-datatypes ((B!2203 0))(
  ( (B!2204 (val!9569 Int)) )
))
(declare-datatypes ((List!30002 0))(
  ( (Nil!29902) (Cons!29902 (h!35322 B!2203) (t!213015 List!30002)) )
))
(declare-fun l1!1546 () List!30002)

(declare-fun lambda!96990 () Int)

(declare-fun lambda!96989 () Int)

(declare-fun tail!4154 (List!30002) List!30002)

(assert (=> bs!472942 (= (= (tail!4154 l1!1546) l1!1546) (= lambda!96990 lambda!96989))))

(assert (=> b!2596639 true))

(declare-fun lambda!96991 () Int)

(assert (=> bs!472942 (= (= (t!213015 l1!1546) l1!1546) (= lambda!96991 lambda!96989))))

(assert (=> b!2596639 (= (= (t!213015 l1!1546) (tail!4154 l1!1546)) (= lambda!96991 lambda!96990))))

(assert (=> b!2596639 true))

(declare-fun b!2596630 () Bool)

(declare-fun res!1092939 () Bool)

(declare-fun e!1638739 () Bool)

(assert (=> b!2596630 (=> (not res!1092939) (not e!1638739))))

(declare-fun l2!1515 () List!30002)

(declare-fun noDuplicate!450 (List!30002) Bool)

(assert (=> b!2596630 (= res!1092939 (noDuplicate!450 l2!1515))))

(declare-fun b!2596631 () Bool)

(declare-fun e!1638737 () Bool)

(assert (=> b!2596631 (= e!1638737 (noDuplicate!450 (t!213015 l1!1546)))))

(declare-fun res!1092937 () Bool)

(declare-fun e!1638738 () Bool)

(assert (=> b!2596632 (=> (not res!1092937) (not e!1638738))))

(declare-fun forall!6139 (List!30002 Int) Bool)

(assert (=> b!2596632 (= res!1092937 (forall!6139 l2!1515 lambda!96989))))

(declare-fun b!2596633 () Bool)

(declare-fun e!1638741 () Bool)

(declare-fun tp_is_empty!13483 () Bool)

(declare-fun tp!823254 () Bool)

(assert (=> b!2596633 (= e!1638741 (and tp_is_empty!13483 tp!823254))))

(declare-fun b!2596634 () Bool)

(declare-fun res!1092938 () Bool)

(assert (=> b!2596634 (=> (not res!1092938) (not e!1638738))))

(declare-fun contains!5450 (List!30002 B!2203) Bool)

(assert (=> b!2596634 (= res!1092938 (contains!5450 l2!1515 (h!35322 l1!1546)))))

(declare-fun b!2596635 () Bool)

(assert (=> b!2596635 (= e!1638739 e!1638738)))

(declare-fun res!1092942 () Bool)

(assert (=> b!2596635 (=> (not res!1092942) (not e!1638738))))

(declare-fun lt!914395 () Int)

(declare-fun lt!914398 () Int)

(assert (=> b!2596635 (= res!1092942 (> lt!914395 lt!914398))))

(declare-fun size!23207 (List!30002) Int)

(assert (=> b!2596635 (= lt!914398 (size!23207 l2!1515))))

(assert (=> b!2596635 (= lt!914395 (size!23207 l1!1546))))

(declare-fun b!2596636 () Bool)

(declare-fun e!1638736 () Bool)

(declare-fun tp!823253 () Bool)

(assert (=> b!2596636 (= e!1638736 (and tp_is_empty!13483 tp!823253))))

(declare-fun b!2596637 () Bool)

(declare-fun res!1092943 () Bool)

(assert (=> b!2596637 (=> (not res!1092943) (not e!1638738))))

(assert (=> b!2596637 (= res!1092943 (is-Cons!29902 l1!1546))))

(declare-fun e!1638740 () Bool)

(assert (=> b!2596639 (= e!1638740 e!1638737)))

(declare-fun res!1092936 () Bool)

(assert (=> b!2596639 (=> res!1092936 e!1638737)))

(declare-fun lt!914400 () List!30002)

(assert (=> b!2596639 (= res!1092936 (not (forall!6139 lt!914400 lambda!96991)))))

(assert (=> b!2596639 (forall!6139 lt!914400 lambda!96990)))

(declare-datatypes ((Unit!43961 0))(
  ( (Unit!43962) )
))
(declare-fun lt!914399 () Unit!43961)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!19 (List!30002 List!30002 B!2203) Unit!43961)

(assert (=> b!2596639 (= lt!914399 (lemmaForallContainsThenForTailIfContainsNotHead!19 lt!914400 l1!1546 (h!35322 l1!1546)))))

(declare-fun res!1092940 () Bool)

(assert (=> start!251982 (=> (not res!1092940) (not e!1638739))))

(assert (=> start!251982 (= res!1092940 (noDuplicate!450 l1!1546))))

(assert (=> start!251982 e!1638739))

(assert (=> start!251982 e!1638736))

(assert (=> start!251982 e!1638741))

(declare-fun b!2596638 () Bool)

(assert (=> b!2596638 (= e!1638738 (not e!1638740))))

(declare-fun res!1092941 () Bool)

(assert (=> b!2596638 (=> res!1092941 e!1638740)))

(assert (=> b!2596638 (= res!1092941 (not (forall!6139 lt!914400 lambda!96989)))))

(assert (=> b!2596638 (= (size!23207 lt!914400) (- lt!914398 1))))

(declare-fun lt!914397 () Unit!43961)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!35 (List!30002 B!2203) Unit!43961)

(assert (=> b!2596638 (= lt!914397 (lemmaRemoveElmtNoDuplicateRemoveOne!35 l2!1515 (h!35322 l1!1546)))))

(assert (=> b!2596638 (forall!6139 lt!914400 lambda!96989)))

(declare-fun lt!914394 () Unit!43961)

(declare-fun lemmaRemoveElmtMaintainsForall!37 (List!30002 B!2203 Int) Unit!43961)

(assert (=> b!2596638 (= lt!914394 (lemmaRemoveElmtMaintainsForall!37 l2!1515 (h!35322 l1!1546) lambda!96989))))

(assert (=> b!2596638 (noDuplicate!450 lt!914400)))

(declare-fun -!177 (List!30002 B!2203) List!30002)

(assert (=> b!2596638 (= lt!914400 (-!177 l2!1515 (h!35322 l1!1546)))))

(declare-fun lt!914396 () Unit!43961)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!43 (List!30002 B!2203) Unit!43961)

(assert (=> b!2596638 (= lt!914396 (lemmaRemoveElmtMaintainsNoDuplicate!43 l2!1515 (h!35322 l1!1546)))))

(assert (= (and start!251982 res!1092940) b!2596630))

(assert (= (and b!2596630 res!1092939) b!2596635))

(assert (= (and b!2596635 res!1092942) b!2596632))

(assert (= (and b!2596632 res!1092937) b!2596637))

(assert (= (and b!2596637 res!1092943) b!2596634))

(assert (= (and b!2596634 res!1092938) b!2596638))

(assert (= (and b!2596638 (not res!1092941)) b!2596639))

(assert (= (and b!2596639 (not res!1092936)) b!2596631))

(assert (= (and start!251982 (is-Cons!29902 l1!1546)) b!2596636))

(assert (= (and start!251982 (is-Cons!29902 l2!1515)) b!2596633))

(declare-fun m!2932911 () Bool)

(assert (=> b!2596631 m!2932911))

(declare-fun m!2932913 () Bool)

(assert (=> b!2596639 m!2932913))

(declare-fun m!2932915 () Bool)

(assert (=> b!2596639 m!2932915))

(declare-fun m!2932917 () Bool)

(assert (=> b!2596639 m!2932917))

(declare-fun m!2932919 () Bool)

(assert (=> b!2596635 m!2932919))

(declare-fun m!2932921 () Bool)

(assert (=> b!2596635 m!2932921))

(declare-fun m!2932923 () Bool)

(assert (=> b!2596632 m!2932923))

(declare-fun m!2932925 () Bool)

(assert (=> start!251982 m!2932925))

(declare-fun m!2932927 () Bool)

(assert (=> b!2596634 m!2932927))

(declare-fun m!2932929 () Bool)

(assert (=> b!2596638 m!2932929))

(declare-fun m!2932931 () Bool)

(assert (=> b!2596638 m!2932931))

(declare-fun m!2932933 () Bool)

(assert (=> b!2596638 m!2932933))

(declare-fun m!2932935 () Bool)

(assert (=> b!2596638 m!2932935))

(declare-fun m!2932937 () Bool)

(assert (=> b!2596638 m!2932937))

(declare-fun m!2932939 () Bool)

(assert (=> b!2596638 m!2932939))

(declare-fun m!2932941 () Bool)

(assert (=> b!2596638 m!2932941))

(assert (=> b!2596638 m!2932931))

(declare-fun m!2932943 () Bool)

(assert (=> b!2596630 m!2932943))

(push 1)

(assert (not b!2596638))

(assert (not start!251982))

(assert (not b!2596635))

(assert (not b!2596632))

(assert (not b!2596631))

(assert (not b!2596630))

(assert (not b!2596636))

(assert (not b!2596639))

(assert (not b!2596634))

(assert tp_is_empty!13483)

(assert (not b!2596633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735753 () Bool)

(declare-fun lt!914426 () Int)

(assert (=> d!735753 (>= lt!914426 0)))

(declare-fun e!1638782 () Int)

(assert (=> d!735753 (= lt!914426 e!1638782)))

(declare-fun c!418353 () Bool)

(assert (=> d!735753 (= c!418353 (is-Nil!29902 l2!1515))))

(assert (=> d!735753 (= (size!23207 l2!1515) lt!914426)))

(declare-fun b!2596686 () Bool)

(assert (=> b!2596686 (= e!1638782 0)))

(declare-fun b!2596687 () Bool)

(assert (=> b!2596687 (= e!1638782 (+ 1 (size!23207 (t!213015 l2!1515))))))

(assert (= (and d!735753 c!418353) b!2596686))

(assert (= (and d!735753 (not c!418353)) b!2596687))

(declare-fun m!2932989 () Bool)

(assert (=> b!2596687 m!2932989))

(assert (=> b!2596635 d!735753))

(declare-fun d!735755 () Bool)

(declare-fun lt!914427 () Int)

(assert (=> d!735755 (>= lt!914427 0)))

(declare-fun e!1638783 () Int)

(assert (=> d!735755 (= lt!914427 e!1638783)))

(declare-fun c!418354 () Bool)

(assert (=> d!735755 (= c!418354 (is-Nil!29902 l1!1546))))

(assert (=> d!735755 (= (size!23207 l1!1546) lt!914427)))

(declare-fun b!2596688 () Bool)

(assert (=> b!2596688 (= e!1638783 0)))

(declare-fun b!2596689 () Bool)

(assert (=> b!2596689 (= e!1638783 (+ 1 (size!23207 (t!213015 l1!1546))))))

(assert (= (and d!735755 c!418354) b!2596688))

(assert (= (and d!735755 (not c!418354)) b!2596689))

(declare-fun m!2932991 () Bool)

(assert (=> b!2596689 m!2932991))

(assert (=> b!2596635 d!735755))

(declare-fun d!735757 () Bool)

(declare-fun res!1092980 () Bool)

(declare-fun e!1638788 () Bool)

(assert (=> d!735757 (=> res!1092980 e!1638788)))

(assert (=> d!735757 (= res!1092980 (is-Nil!29902 l2!1515))))

(assert (=> d!735757 (= (noDuplicate!450 l2!1515) e!1638788)))

(declare-fun b!2596694 () Bool)

(declare-fun e!1638789 () Bool)

(assert (=> b!2596694 (= e!1638788 e!1638789)))

(declare-fun res!1092981 () Bool)

(assert (=> b!2596694 (=> (not res!1092981) (not e!1638789))))

(assert (=> b!2596694 (= res!1092981 (not (contains!5450 (t!213015 l2!1515) (h!35322 l2!1515))))))

(declare-fun b!2596695 () Bool)

(assert (=> b!2596695 (= e!1638789 (noDuplicate!450 (t!213015 l2!1515)))))

(assert (= (and d!735757 (not res!1092980)) b!2596694))

(assert (= (and b!2596694 res!1092981) b!2596695))

(declare-fun m!2932993 () Bool)

(assert (=> b!2596694 m!2932993))

(declare-fun m!2932995 () Bool)

(assert (=> b!2596695 m!2932995))

(assert (=> b!2596630 d!735757))

(declare-fun d!735759 () Bool)

(declare-fun res!1092982 () Bool)

(declare-fun e!1638790 () Bool)

(assert (=> d!735759 (=> res!1092982 e!1638790)))

(assert (=> d!735759 (= res!1092982 (is-Nil!29902 l1!1546))))

(assert (=> d!735759 (= (noDuplicate!450 l1!1546) e!1638790)))

(declare-fun b!2596696 () Bool)

(declare-fun e!1638791 () Bool)

(assert (=> b!2596696 (= e!1638790 e!1638791)))

(declare-fun res!1092983 () Bool)

(assert (=> b!2596696 (=> (not res!1092983) (not e!1638791))))

(assert (=> b!2596696 (= res!1092983 (not (contains!5450 (t!213015 l1!1546) (h!35322 l1!1546))))))

(declare-fun b!2596697 () Bool)

(assert (=> b!2596697 (= e!1638791 (noDuplicate!450 (t!213015 l1!1546)))))

(assert (= (and d!735759 (not res!1092982)) b!2596696))

(assert (= (and b!2596696 res!1092983) b!2596697))

(declare-fun m!2932997 () Bool)

(assert (=> b!2596696 m!2932997))

(assert (=> b!2596697 m!2932911))

(assert (=> start!251982 d!735759))

(declare-fun d!735761 () Bool)

(declare-fun res!1092990 () Bool)

(declare-fun e!1638798 () Bool)

(assert (=> d!735761 (=> res!1092990 e!1638798)))

(assert (=> d!735761 (= res!1092990 (is-Nil!29902 l2!1515))))

(assert (=> d!735761 (= (forall!6139 l2!1515 lambda!96989) e!1638798)))

(declare-fun b!2596704 () Bool)

(declare-fun e!1638799 () Bool)

(assert (=> b!2596704 (= e!1638798 e!1638799)))

(declare-fun res!1092991 () Bool)

(assert (=> b!2596704 (=> (not res!1092991) (not e!1638799))))

(declare-fun dynLambda!12655 (Int B!2203) Bool)

(assert (=> b!2596704 (= res!1092991 (dynLambda!12655 lambda!96989 (h!35322 l2!1515)))))

(declare-fun b!2596705 () Bool)

(assert (=> b!2596705 (= e!1638799 (forall!6139 (t!213015 l2!1515) lambda!96989))))

(assert (= (and d!735761 (not res!1092990)) b!2596704))

(assert (= (and b!2596704 res!1092991) b!2596705))

(declare-fun b_lambda!77603 () Bool)

(assert (=> (not b_lambda!77603) (not b!2596704)))

(declare-fun m!2933007 () Bool)

(assert (=> b!2596704 m!2933007))

(declare-fun m!2933011 () Bool)

(assert (=> b!2596705 m!2933011))

(assert (=> b!2596632 d!735761))

(declare-fun d!735765 () Bool)

(declare-fun res!1092992 () Bool)

(declare-fun e!1638800 () Bool)

(assert (=> d!735765 (=> res!1092992 e!1638800)))

(assert (=> d!735765 (= res!1092992 (is-Nil!29902 (t!213015 l1!1546)))))

(assert (=> d!735765 (= (noDuplicate!450 (t!213015 l1!1546)) e!1638800)))

(declare-fun b!2596706 () Bool)

(declare-fun e!1638801 () Bool)

(assert (=> b!2596706 (= e!1638800 e!1638801)))

(declare-fun res!1092993 () Bool)

(assert (=> b!2596706 (=> (not res!1092993) (not e!1638801))))

(assert (=> b!2596706 (= res!1092993 (not (contains!5450 (t!213015 (t!213015 l1!1546)) (h!35322 (t!213015 l1!1546)))))))

(declare-fun b!2596707 () Bool)

(assert (=> b!2596707 (= e!1638801 (noDuplicate!450 (t!213015 (t!213015 l1!1546))))))

(assert (= (and d!735765 (not res!1092992)) b!2596706))

(assert (= (and b!2596706 res!1092993) b!2596707))

(declare-fun m!2933013 () Bool)

(assert (=> b!2596706 m!2933013))

(declare-fun m!2933015 () Bool)

(assert (=> b!2596707 m!2933015))

(assert (=> b!2596631 d!735765))

(declare-fun d!735769 () Bool)

(assert (=> d!735769 (forall!6139 (-!177 l2!1515 (h!35322 l1!1546)) lambda!96989)))

(declare-fun lt!914431 () Unit!43961)

(declare-fun choose!15424 (List!30002 B!2203 Int) Unit!43961)

(assert (=> d!735769 (= lt!914431 (choose!15424 l2!1515 (h!35322 l1!1546) lambda!96989))))

(assert (=> d!735769 (noDuplicate!450 l2!1515)))

(assert (=> d!735769 (= (lemmaRemoveElmtMaintainsForall!37 l2!1515 (h!35322 l1!1546) lambda!96989) lt!914431)))

(declare-fun bs!472947 () Bool)

(assert (= bs!472947 d!735769))

(assert (=> bs!472947 m!2932939))

(assert (=> bs!472947 m!2932939))

(declare-fun m!2933017 () Bool)

(assert (=> bs!472947 m!2933017))

(declare-fun m!2933019 () Bool)

(assert (=> bs!472947 m!2933019))

(assert (=> bs!472947 m!2932943))

(assert (=> b!2596638 d!735769))

(declare-fun d!735771 () Bool)

(assert (=> d!735771 (= (size!23207 (-!177 l2!1515 (h!35322 l1!1546))) (- (size!23207 l2!1515) 1))))

(declare-fun lt!914434 () Unit!43961)

(declare-fun choose!15425 (List!30002 B!2203) Unit!43961)

(assert (=> d!735771 (= lt!914434 (choose!15425 l2!1515 (h!35322 l1!1546)))))

(assert (=> d!735771 (noDuplicate!450 l2!1515)))

(assert (=> d!735771 (= (lemmaRemoveElmtNoDuplicateRemoveOne!35 l2!1515 (h!35322 l1!1546)) lt!914434)))

(declare-fun bs!472948 () Bool)

(assert (= bs!472948 d!735771))

(assert (=> bs!472948 m!2932943))

(declare-fun m!2933025 () Bool)

(assert (=> bs!472948 m!2933025))

(assert (=> bs!472948 m!2932919))

(assert (=> bs!472948 m!2932939))

(assert (=> bs!472948 m!2932939))

(declare-fun m!2933027 () Bool)

(assert (=> bs!472948 m!2933027))

(assert (=> b!2596638 d!735771))

(declare-fun d!735775 () Bool)

(assert (=> d!735775 (noDuplicate!450 (-!177 l2!1515 (h!35322 l1!1546)))))

(declare-fun lt!914437 () Unit!43961)

(declare-fun choose!15426 (List!30002 B!2203) Unit!43961)

(assert (=> d!735775 (= lt!914437 (choose!15426 l2!1515 (h!35322 l1!1546)))))

(assert (=> d!735775 (noDuplicate!450 l2!1515)))

(assert (=> d!735775 (= (lemmaRemoveElmtMaintainsNoDuplicate!43 l2!1515 (h!35322 l1!1546)) lt!914437)))

(declare-fun bs!472949 () Bool)

(assert (= bs!472949 d!735775))

(assert (=> bs!472949 m!2932939))

(assert (=> bs!472949 m!2932939))

(declare-fun m!2933035 () Bool)

(assert (=> bs!472949 m!2933035))

(declare-fun m!2933037 () Bool)

(assert (=> bs!472949 m!2933037))

(assert (=> bs!472949 m!2932943))

(assert (=> b!2596638 d!735775))

(declare-fun d!735781 () Bool)

(declare-fun res!1093004 () Bool)

(declare-fun e!1638815 () Bool)

(assert (=> d!735781 (=> res!1093004 e!1638815)))

(assert (=> d!735781 (= res!1093004 (is-Nil!29902 lt!914400))))

(assert (=> d!735781 (= (forall!6139 lt!914400 lambda!96989) e!1638815)))

(declare-fun b!2596718 () Bool)

(declare-fun e!1638816 () Bool)

(assert (=> b!2596718 (= e!1638815 e!1638816)))

(declare-fun res!1093005 () Bool)

(assert (=> b!2596718 (=> (not res!1093005) (not e!1638816))))

(assert (=> b!2596718 (= res!1093005 (dynLambda!12655 lambda!96989 (h!35322 lt!914400)))))

(declare-fun b!2596719 () Bool)

(assert (=> b!2596719 (= e!1638816 (forall!6139 (t!213015 lt!914400) lambda!96989))))

(assert (= (and d!735781 (not res!1093004)) b!2596718))

(assert (= (and b!2596718 res!1093005) b!2596719))

(declare-fun b_lambda!77605 () Bool)

(assert (=> (not b_lambda!77605) (not b!2596718)))

(declare-fun m!2933039 () Bool)

(assert (=> b!2596718 m!2933039))

(declare-fun m!2933041 () Bool)

(assert (=> b!2596719 m!2933041))

(assert (=> b!2596638 d!735781))

(declare-fun d!735783 () Bool)

(declare-fun lt!914438 () Int)

(assert (=> d!735783 (>= lt!914438 0)))

(declare-fun e!1638817 () Int)

(assert (=> d!735783 (= lt!914438 e!1638817)))

(declare-fun c!418355 () Bool)

(assert (=> d!735783 (= c!418355 (is-Nil!29902 lt!914400))))

(assert (=> d!735783 (= (size!23207 lt!914400) lt!914438)))

(declare-fun b!2596720 () Bool)

(assert (=> b!2596720 (= e!1638817 0)))

(declare-fun b!2596721 () Bool)

(assert (=> b!2596721 (= e!1638817 (+ 1 (size!23207 (t!213015 lt!914400))))))

(assert (= (and d!735783 c!418355) b!2596720))

(assert (= (and d!735783 (not c!418355)) b!2596721))

(declare-fun m!2933043 () Bool)

(assert (=> b!2596721 m!2933043))

(assert (=> b!2596638 d!735783))

(declare-fun d!735785 () Bool)

(declare-fun res!1093006 () Bool)

(declare-fun e!1638818 () Bool)

(assert (=> d!735785 (=> res!1093006 e!1638818)))

(assert (=> d!735785 (= res!1093006 (is-Nil!29902 lt!914400))))

(assert (=> d!735785 (= (noDuplicate!450 lt!914400) e!1638818)))

(declare-fun b!2596722 () Bool)

(declare-fun e!1638819 () Bool)

(assert (=> b!2596722 (= e!1638818 e!1638819)))

(declare-fun res!1093007 () Bool)

(assert (=> b!2596722 (=> (not res!1093007) (not e!1638819))))

(assert (=> b!2596722 (= res!1093007 (not (contains!5450 (t!213015 lt!914400) (h!35322 lt!914400))))))

(declare-fun b!2596723 () Bool)

(assert (=> b!2596723 (= e!1638819 (noDuplicate!450 (t!213015 lt!914400)))))

(assert (= (and d!735785 (not res!1093006)) b!2596722))

(assert (= (and b!2596722 res!1093007) b!2596723))

(declare-fun m!2933045 () Bool)

(assert (=> b!2596722 m!2933045))

(declare-fun m!2933047 () Bool)

(assert (=> b!2596723 m!2933047))

(assert (=> b!2596638 d!735785))

(declare-fun e!1638833 () Bool)

(declare-fun b!2596741 () Bool)

(declare-fun lt!914444 () List!30002)

(declare-fun content!4203 (List!30002) (Set B!2203))

(assert (=> b!2596741 (= e!1638833 (= (content!4203 lt!914444) (set.minus (content!4203 l2!1515) (set.insert (h!35322 l1!1546) (as set.empty (Set B!2203))))))))

(declare-fun b!2596742 () Bool)

(declare-fun e!1638834 () List!30002)

(declare-fun e!1638835 () List!30002)

(assert (=> b!2596742 (= e!1638834 e!1638835)))

(declare-fun c!418361 () Bool)

(assert (=> b!2596742 (= c!418361 (= (h!35322 l1!1546) (h!35322 l2!1515)))))

(declare-fun bm!167338 () Bool)

(declare-fun call!167343 () List!30002)

(assert (=> bm!167338 (= call!167343 (-!177 (t!213015 l2!1515) (h!35322 l1!1546)))))

(declare-fun b!2596740 () Bool)

(assert (=> b!2596740 (= e!1638834 Nil!29902)))

(declare-fun d!735787 () Bool)

(assert (=> d!735787 e!1638833))

(declare-fun res!1093016 () Bool)

(assert (=> d!735787 (=> (not res!1093016) (not e!1638833))))

(assert (=> d!735787 (= res!1093016 (<= (size!23207 lt!914444) (size!23207 l2!1515)))))

(assert (=> d!735787 (= lt!914444 e!1638834)))

(declare-fun c!418360 () Bool)

(assert (=> d!735787 (= c!418360 (is-Cons!29902 l2!1515))))

(assert (=> d!735787 (= (-!177 l2!1515 (h!35322 l1!1546)) lt!914444)))

(declare-fun b!2596743 () Bool)

(assert (=> b!2596743 (= e!1638835 call!167343)))

(declare-fun b!2596744 () Bool)

(assert (=> b!2596744 (= e!1638835 (Cons!29902 (h!35322 l2!1515) call!167343))))

(assert (= (and d!735787 c!418360) b!2596742))

(assert (= (and d!735787 (not c!418360)) b!2596740))

(assert (= (and b!2596742 c!418361) b!2596743))

(assert (= (and b!2596742 (not c!418361)) b!2596744))

(assert (= (or b!2596743 b!2596744) bm!167338))

(assert (= (and d!735787 res!1093016) b!2596741))

(declare-fun m!2933055 () Bool)

(assert (=> b!2596741 m!2933055))

(declare-fun m!2933057 () Bool)

(assert (=> b!2596741 m!2933057))

(declare-fun m!2933059 () Bool)

(assert (=> b!2596741 m!2933059))

(declare-fun m!2933061 () Bool)

(assert (=> bm!167338 m!2933061))

(declare-fun m!2933063 () Bool)

(assert (=> d!735787 m!2933063))

(assert (=> d!735787 m!2932919))

(assert (=> b!2596638 d!735787))

(declare-fun d!735791 () Bool)

(assert (=> d!735791 (= (tail!4154 l1!1546) (t!213015 l1!1546))))

(assert (=> b!2596639 d!735791))

(declare-fun d!735793 () Bool)

(declare-fun res!1093017 () Bool)

(declare-fun e!1638836 () Bool)

(assert (=> d!735793 (=> res!1093017 e!1638836)))

(assert (=> d!735793 (= res!1093017 (is-Nil!29902 lt!914400))))

(assert (=> d!735793 (= (forall!6139 lt!914400 lambda!96991) e!1638836)))

(declare-fun b!2596745 () Bool)

(declare-fun e!1638837 () Bool)

(assert (=> b!2596745 (= e!1638836 e!1638837)))

(declare-fun res!1093018 () Bool)

(assert (=> b!2596745 (=> (not res!1093018) (not e!1638837))))

(assert (=> b!2596745 (= res!1093018 (dynLambda!12655 lambda!96991 (h!35322 lt!914400)))))

(declare-fun b!2596746 () Bool)

(assert (=> b!2596746 (= e!1638837 (forall!6139 (t!213015 lt!914400) lambda!96991))))

(assert (= (and d!735793 (not res!1093017)) b!2596745))

(assert (= (and b!2596745 res!1093018) b!2596746))

(declare-fun b_lambda!77607 () Bool)

(assert (=> (not b_lambda!77607) (not b!2596745)))

(declare-fun m!2933065 () Bool)

(assert (=> b!2596745 m!2933065))

(declare-fun m!2933067 () Bool)

(assert (=> b!2596746 m!2933067))

(assert (=> b!2596639 d!735793))

(declare-fun d!735795 () Bool)

(declare-fun res!1093019 () Bool)

(declare-fun e!1638838 () Bool)

(assert (=> d!735795 (=> res!1093019 e!1638838)))

(assert (=> d!735795 (= res!1093019 (is-Nil!29902 lt!914400))))

(assert (=> d!735795 (= (forall!6139 lt!914400 lambda!96990) e!1638838)))

(declare-fun b!2596747 () Bool)

(declare-fun e!1638839 () Bool)

(assert (=> b!2596747 (= e!1638838 e!1638839)))

(declare-fun res!1093020 () Bool)

(assert (=> b!2596747 (=> (not res!1093020) (not e!1638839))))

(assert (=> b!2596747 (= res!1093020 (dynLambda!12655 lambda!96990 (h!35322 lt!914400)))))

(declare-fun b!2596748 () Bool)

(assert (=> b!2596748 (= e!1638839 (forall!6139 (t!213015 lt!914400) lambda!96990))))

(assert (= (and d!735795 (not res!1093019)) b!2596747))

(assert (= (and b!2596747 res!1093020) b!2596748))

(declare-fun b_lambda!77609 () Bool)

(assert (=> (not b_lambda!77609) (not b!2596747)))

(declare-fun m!2933069 () Bool)

(assert (=> b!2596747 m!2933069))

(declare-fun m!2933071 () Bool)

(assert (=> b!2596748 m!2933071))

(assert (=> b!2596639 d!735795))

(declare-fun bs!472950 () Bool)

(declare-fun d!735797 () Bool)

(assert (= bs!472950 d!735797))

(assert (=> bs!472950 m!2932909))

(declare-fun bs!472951 () Bool)

(assert (= bs!472951 (and d!735797 b!2596632)))

(declare-fun lambda!97010 () Int)

(assert (=> bs!472951 (= (= (tail!4154 l1!1546) l1!1546) (= lambda!97010 lambda!96989))))

(declare-fun bs!472952 () Bool)

(assert (= bs!472952 (and d!735797 b!2596639)))

(assert (=> bs!472952 (= lambda!97010 lambda!96990)))

(assert (=> bs!472952 (= (= (tail!4154 l1!1546) (t!213015 l1!1546)) (= lambda!97010 lambda!96991))))

(assert (=> d!735797 true))

(assert (=> d!735797 (forall!6139 lt!914400 lambda!97010)))

(declare-fun lt!914450 () Unit!43961)

(declare-fun choose!15428 (List!30002 List!30002 B!2203) Unit!43961)

(assert (=> d!735797 (= lt!914450 (choose!15428 lt!914400 l1!1546 (h!35322 l1!1546)))))

(declare-fun isEmpty!17141 (List!30002) Bool)

(assert (=> d!735797 (not (isEmpty!17141 l1!1546))))

(assert (=> d!735797 (= (lemmaForallContainsThenForTailIfContainsNotHead!19 lt!914400 l1!1546 (h!35322 l1!1546)) lt!914450)))

(declare-fun m!2933077 () Bool)

(assert (=> bs!472950 m!2933077))

(declare-fun m!2933079 () Bool)

(assert (=> bs!472950 m!2933079))

(declare-fun m!2933081 () Bool)

(assert (=> bs!472950 m!2933081))

(assert (=> b!2596639 d!735797))

(declare-fun d!735803 () Bool)

(declare-fun lt!914454 () Bool)

(assert (=> d!735803 (= lt!914454 (set.member (h!35322 l1!1546) (content!4203 l2!1515)))))

(declare-fun e!1638852 () Bool)

(assert (=> d!735803 (= lt!914454 e!1638852)))

(declare-fun res!1093027 () Bool)

(assert (=> d!735803 (=> (not res!1093027) (not e!1638852))))

(assert (=> d!735803 (= res!1093027 (is-Cons!29902 l2!1515))))

(assert (=> d!735803 (= (contains!5450 l2!1515 (h!35322 l1!1546)) lt!914454)))

(declare-fun b!2596763 () Bool)

(declare-fun e!1638853 () Bool)

(assert (=> b!2596763 (= e!1638852 e!1638853)))

(declare-fun res!1093028 () Bool)

(assert (=> b!2596763 (=> res!1093028 e!1638853)))

(assert (=> b!2596763 (= res!1093028 (= (h!35322 l2!1515) (h!35322 l1!1546)))))

(declare-fun b!2596764 () Bool)

(assert (=> b!2596764 (= e!1638853 (contains!5450 (t!213015 l2!1515) (h!35322 l1!1546)))))

(assert (= (and d!735803 res!1093027) b!2596763))

(assert (= (and b!2596763 (not res!1093028)) b!2596764))

(assert (=> d!735803 m!2933057))

(declare-fun m!2933087 () Bool)

(assert (=> d!735803 m!2933087))

(declare-fun m!2933089 () Bool)

(assert (=> b!2596764 m!2933089))

(assert (=> b!2596634 d!735803))

(declare-fun b!2596769 () Bool)

(declare-fun e!1638856 () Bool)

(declare-fun tp!823263 () Bool)

(assert (=> b!2596769 (= e!1638856 (and tp_is_empty!13483 tp!823263))))

(assert (=> b!2596636 (= tp!823253 e!1638856)))

(assert (= (and b!2596636 (is-Cons!29902 (t!213015 l1!1546))) b!2596769))

(declare-fun b!2596770 () Bool)

(declare-fun e!1638857 () Bool)

(declare-fun tp!823264 () Bool)

(assert (=> b!2596770 (= e!1638857 (and tp_is_empty!13483 tp!823264))))

(assert (=> b!2596633 (= tp!823254 e!1638857)))

(assert (= (and b!2596633 (is-Cons!29902 (t!213015 l2!1515))) b!2596770))

(declare-fun b_lambda!77611 () Bool)

(assert (= b_lambda!77605 (or b!2596632 b_lambda!77611)))

(declare-fun bs!472953 () Bool)

(declare-fun d!735807 () Bool)

(assert (= bs!472953 (and d!735807 b!2596632)))

(assert (=> bs!472953 (= (dynLambda!12655 lambda!96989 (h!35322 lt!914400)) (contains!5450 l1!1546 (h!35322 lt!914400)))))

(declare-fun m!2933091 () Bool)

(assert (=> bs!472953 m!2933091))

(assert (=> b!2596718 d!735807))

(declare-fun b_lambda!77613 () Bool)

(assert (= b_lambda!77609 (or b!2596639 b_lambda!77613)))

(declare-fun bs!472954 () Bool)

(declare-fun d!735809 () Bool)

(assert (= bs!472954 (and d!735809 b!2596639)))

(assert (=> bs!472954 (= (dynLambda!12655 lambda!96990 (h!35322 lt!914400)) (contains!5450 (tail!4154 l1!1546) (h!35322 lt!914400)))))

(declare-fun m!2933093 () Bool)

(assert (=> bs!472954 m!2933093))

(assert (=> b!2596747 d!735809))

(declare-fun b_lambda!77615 () Bool)

(assert (= b_lambda!77607 (or b!2596639 b_lambda!77615)))

(declare-fun bs!472955 () Bool)

(declare-fun d!735811 () Bool)

(assert (= bs!472955 (and d!735811 b!2596639)))

(assert (=> bs!472955 (= (dynLambda!12655 lambda!96991 (h!35322 lt!914400)) (contains!5450 (t!213015 l1!1546) (h!35322 lt!914400)))))

(declare-fun m!2933095 () Bool)

(assert (=> bs!472955 m!2933095))

(assert (=> b!2596745 d!735811))

(declare-fun b_lambda!77617 () Bool)

(assert (= b_lambda!77603 (or b!2596632 b_lambda!77617)))

(declare-fun bs!472956 () Bool)

(declare-fun d!735813 () Bool)

(assert (= bs!472956 (and d!735813 b!2596632)))

(assert (=> bs!472956 (= (dynLambda!12655 lambda!96989 (h!35322 l2!1515)) (contains!5450 l1!1546 (h!35322 l2!1515)))))

(declare-fun m!2933097 () Bool)

(assert (=> bs!472956 m!2933097))

(assert (=> b!2596704 d!735813))

(push 1)

(assert (not b!2596707))

(assert (not d!735803))

(assert (not b!2596770))

(assert (not b!2596696))

(assert (not b!2596748))

(assert (not b!2596697))

(assert (not d!735797))

(assert (not b!2596687))

(assert (not b!2596689))

(assert (not b_lambda!77613))

(assert (not b!2596746))

(assert (not d!735771))

(assert (not bm!167338))

(assert (not b!2596706))

(assert (not b!2596719))

(assert (not d!735775))

(assert (not bs!472956))

(assert (not b!2596705))

(assert (not b_lambda!77611))

(assert (not bs!472954))

(assert (not bs!472955))

(assert (not b_lambda!77617))

(assert (not b!2596695))

(assert (not b_lambda!77615))

(assert (not b!2596723))

(assert (not b!2596769))

(assert (not b!2596722))

(assert (not d!735769))

(assert (not bs!472953))

(assert (not b!2596694))

(assert (not d!735787))

(assert (not b!2596721))

(assert (not b!2596741))

(assert tp_is_empty!13483)

(assert (not b!2596764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

