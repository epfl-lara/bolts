; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251626 () Bool)

(assert start!251626)

(declare-fun b!2594958 () Bool)

(assert (=> b!2594958 true))

(declare-fun b!2594952 () Bool)

(declare-fun m!2931029 () Bool)

(assert (=> b!2594952 m!2931029))

(declare-fun bs!472663 () Bool)

(assert (= bs!472663 (and b!2594952 b!2594958)))

(declare-datatypes ((B!2163 0))(
  ( (B!2164 (val!9549 Int)) )
))
(declare-datatypes ((List!29982 0))(
  ( (Nil!29882) (Cons!29882 (h!35302 B!2163) (t!212995 List!29982)) )
))
(declare-fun l1!1546 () List!29982)

(declare-fun lambda!96718 () Int)

(declare-fun lambda!96717 () Int)

(declare-fun tail!4148 (List!29982) List!29982)

(assert (=> bs!472663 (= (= (tail!4148 l1!1546) l1!1546) (= lambda!96718 lambda!96717))))

(assert (=> b!2594952 true))

(declare-fun lambda!96719 () Int)

(assert (=> bs!472663 (= (= (t!212995 l1!1546) l1!1546) (= lambda!96719 lambda!96717))))

(assert (=> b!2594952 (= (= (t!212995 l1!1546) (tail!4148 l1!1546)) (= lambda!96719 lambda!96718))))

(assert (=> b!2594952 true))

(declare-fun bs!472664 () Bool)

(declare-fun b!2594960 () Bool)

(assert (= bs!472664 (and b!2594960 b!2594958)))

(declare-fun lambda!96720 () Int)

(assert (=> bs!472664 (not (= lambda!96720 lambda!96717))))

(declare-fun bs!472665 () Bool)

(assert (= bs!472665 (and b!2594960 b!2594952)))

(assert (=> bs!472665 (not (= lambda!96720 lambda!96718))))

(assert (=> bs!472665 (not (= lambda!96720 lambda!96719))))

(assert (=> b!2594960 true))

(declare-fun b!2594950 () Bool)

(declare-fun e!1637376 () Bool)

(declare-fun contains!5430 (List!29982 B!2163) Bool)

(declare-fun getWitness!553 (List!29982 Int) B!2163)

(assert (=> b!2594950 (= e!1637376 (contains!5430 l1!1546 (getWitness!553 (t!212995 l1!1546) lambda!96720)))))

(declare-fun b!2594951 () Bool)

(declare-fun e!1637375 () Bool)

(declare-fun e!1637371 () Bool)

(assert (=> b!2594951 (= e!1637375 e!1637371)))

(declare-fun res!1091932 () Bool)

(assert (=> b!2594951 (=> (not res!1091932) (not e!1637371))))

(declare-fun lt!913706 () Int)

(declare-fun lt!913711 () Int)

(assert (=> b!2594951 (= res!1091932 (> lt!913706 lt!913711))))

(declare-fun l2!1515 () List!29982)

(declare-fun size!23187 (List!29982) Int)

(assert (=> b!2594951 (= lt!913711 (size!23187 l2!1515))))

(assert (=> b!2594951 (= lt!913706 (size!23187 l1!1546))))

(declare-fun e!1637370 () Bool)

(declare-fun e!1637374 () Bool)

(assert (=> b!2594952 (= e!1637370 e!1637374)))

(declare-fun res!1091930 () Bool)

(assert (=> b!2594952 (=> res!1091930 e!1637374)))

(declare-fun lt!913709 () List!29982)

(declare-fun forall!6119 (List!29982 Int) Bool)

(assert (=> b!2594952 (= res!1091930 (not (forall!6119 lt!913709 lambda!96719)))))

(assert (=> b!2594952 (forall!6119 lt!913709 lambda!96718)))

(declare-datatypes ((Unit!43918 0))(
  ( (Unit!43919) )
))
(declare-fun lt!913710 () Unit!43918)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!13 (List!29982 List!29982 B!2163) Unit!43918)

(assert (=> b!2594952 (= lt!913710 (lemmaForallContainsThenForTailIfContainsNotHead!13 lt!913709 l1!1546 (h!35302 l1!1546)))))

(declare-fun b!2594953 () Bool)

(declare-fun e!1637373 () Bool)

(declare-fun tp_is_empty!13443 () Bool)

(declare-fun tp!823073 () Bool)

(assert (=> b!2594953 (= e!1637373 (and tp_is_empty!13443 tp!823073))))

(declare-fun b!2594954 () Bool)

(declare-fun e!1637372 () Bool)

(declare-fun tp!823074 () Bool)

(assert (=> b!2594954 (= e!1637372 (and tp_is_empty!13443 tp!823074))))

(declare-fun b!2594955 () Bool)

(declare-fun res!1091926 () Bool)

(assert (=> b!2594955 (=> (not res!1091926) (not e!1637371))))

(assert (=> b!2594955 (= res!1091926 (is-Cons!29882 l1!1546))))

(declare-fun b!2594956 () Bool)

(declare-fun res!1091929 () Bool)

(assert (=> b!2594956 (=> (not res!1091929) (not e!1637375))))

(declare-fun noDuplicate!430 (List!29982) Bool)

(assert (=> b!2594956 (= res!1091929 (noDuplicate!430 l2!1515))))

(declare-fun b!2594957 () Bool)

(declare-fun res!1091924 () Bool)

(assert (=> b!2594957 (=> (not res!1091924) (not e!1637371))))

(assert (=> b!2594957 (= res!1091924 (contains!5430 l2!1515 (h!35302 l1!1546)))))

(declare-fun b!2594959 () Bool)

(assert (=> b!2594959 (= e!1637371 (not e!1637370))))

(declare-fun res!1091931 () Bool)

(assert (=> b!2594959 (=> res!1091931 e!1637370)))

(assert (=> b!2594959 (= res!1091931 (not (forall!6119 lt!913709 lambda!96717)))))

(assert (=> b!2594959 (= (size!23187 lt!913709) (- lt!913711 1))))

(declare-fun lt!913712 () Unit!43918)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!21 (List!29982 B!2163) Unit!43918)

(assert (=> b!2594959 (= lt!913712 (lemmaRemoveElmtNoDuplicateRemoveOne!21 l2!1515 (h!35302 l1!1546)))))

(assert (=> b!2594959 (forall!6119 lt!913709 lambda!96717)))

(declare-fun lt!913708 () Unit!43918)

(declare-fun lemmaRemoveElmtMaintainsForall!23 (List!29982 B!2163 Int) Unit!43918)

(assert (=> b!2594959 (= lt!913708 (lemmaRemoveElmtMaintainsForall!23 l2!1515 (h!35302 l1!1546) lambda!96717))))

(assert (=> b!2594959 (noDuplicate!430 lt!913709)))

(declare-fun -!159 (List!29982 B!2163) List!29982)

(assert (=> b!2594959 (= lt!913709 (-!159 l2!1515 (h!35302 l1!1546)))))

(declare-fun lt!913707 () Unit!43918)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!25 (List!29982 B!2163) Unit!43918)

(assert (=> b!2594959 (= lt!913707 (lemmaRemoveElmtMaintainsNoDuplicate!25 l2!1515 (h!35302 l1!1546)))))

(assert (=> b!2594960 (= e!1637374 e!1637376)))

(declare-fun res!1091925 () Bool)

(assert (=> b!2594960 (=> res!1091925 e!1637376)))

(declare-fun exists!931 (List!29982 Int) Bool)

(assert (=> b!2594960 (= res!1091925 (not (exists!931 (t!212995 l1!1546) lambda!96720)))))

(assert (=> b!2594960 (exists!931 (t!212995 l1!1546) lambda!96720)))

(declare-fun lt!913713 () Unit!43918)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!47 (List!29982 List!29982) Unit!43918)

(assert (=> b!2594960 (= lt!913713 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!47 (t!212995 l1!1546) lt!913709))))

(declare-fun res!1091928 () Bool)

(assert (=> start!251626 (=> (not res!1091928) (not e!1637375))))

(assert (=> start!251626 (= res!1091928 (noDuplicate!430 l1!1546))))

(assert (=> start!251626 e!1637375))

(assert (=> start!251626 e!1637373))

(assert (=> start!251626 e!1637372))

(declare-fun res!1091927 () Bool)

(assert (=> b!2594958 (=> (not res!1091927) (not e!1637371))))

(assert (=> b!2594958 (= res!1091927 (forall!6119 l2!1515 lambda!96717))))

(assert (= (and start!251626 res!1091928) b!2594956))

(assert (= (and b!2594956 res!1091929) b!2594951))

(assert (= (and b!2594951 res!1091932) b!2594958))

(assert (= (and b!2594958 res!1091927) b!2594955))

(assert (= (and b!2594955 res!1091926) b!2594957))

(assert (= (and b!2594957 res!1091924) b!2594959))

(assert (= (and b!2594959 (not res!1091931)) b!2594952))

(assert (= (and b!2594952 (not res!1091930)) b!2594960))

(assert (= (and b!2594960 (not res!1091925)) b!2594950))

(assert (= (and start!251626 (is-Cons!29882 l1!1546)) b!2594953))

(assert (= (and start!251626 (is-Cons!29882 l2!1515)) b!2594954))

(declare-fun m!2931031 () Bool)

(assert (=> b!2594957 m!2931031))

(declare-fun m!2931033 () Bool)

(assert (=> b!2594956 m!2931033))

(declare-fun m!2931035 () Bool)

(assert (=> b!2594952 m!2931035))

(declare-fun m!2931037 () Bool)

(assert (=> b!2594952 m!2931037))

(declare-fun m!2931039 () Bool)

(assert (=> b!2594952 m!2931039))

(declare-fun m!2931041 () Bool)

(assert (=> b!2594960 m!2931041))

(assert (=> b!2594960 m!2931041))

(declare-fun m!2931043 () Bool)

(assert (=> b!2594960 m!2931043))

(declare-fun m!2931045 () Bool)

(assert (=> b!2594951 m!2931045))

(declare-fun m!2931047 () Bool)

(assert (=> b!2594951 m!2931047))

(declare-fun m!2931049 () Bool)

(assert (=> b!2594958 m!2931049))

(declare-fun m!2931051 () Bool)

(assert (=> b!2594959 m!2931051))

(assert (=> b!2594959 m!2931051))

(declare-fun m!2931053 () Bool)

(assert (=> b!2594959 m!2931053))

(declare-fun m!2931055 () Bool)

(assert (=> b!2594959 m!2931055))

(declare-fun m!2931057 () Bool)

(assert (=> b!2594959 m!2931057))

(declare-fun m!2931059 () Bool)

(assert (=> b!2594959 m!2931059))

(declare-fun m!2931061 () Bool)

(assert (=> b!2594959 m!2931061))

(declare-fun m!2931063 () Bool)

(assert (=> b!2594959 m!2931063))

(declare-fun m!2931065 () Bool)

(assert (=> start!251626 m!2931065))

(declare-fun m!2931067 () Bool)

(assert (=> b!2594950 m!2931067))

(assert (=> b!2594950 m!2931067))

(declare-fun m!2931069 () Bool)

(assert (=> b!2594950 m!2931069))

(push 1)

(assert (not b!2594956))

(assert (not b!2594951))

(assert (not b!2594950))

(assert (not b!2594958))

(assert (not b!2594957))

(assert tp_is_empty!13443)

(assert (not start!251626))

(assert (not b!2594960))

(assert (not b!2594959))

(assert (not b!2594952))

(assert (not b!2594953))

(assert (not b!2594954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734991 () Bool)

(declare-fun res!1091970 () Bool)

(declare-fun e!1637424 () Bool)

(assert (=> d!734991 (=> res!1091970 e!1637424)))

(assert (=> d!734991 (= res!1091970 (is-Nil!29882 l2!1515))))

(assert (=> d!734991 (= (noDuplicate!430 l2!1515) e!1637424)))

(declare-fun b!2595008 () Bool)

(declare-fun e!1637425 () Bool)

(assert (=> b!2595008 (= e!1637424 e!1637425)))

(declare-fun res!1091971 () Bool)

(assert (=> b!2595008 (=> (not res!1091971) (not e!1637425))))

(assert (=> b!2595008 (= res!1091971 (not (contains!5430 (t!212995 l2!1515) (h!35302 l2!1515))))))

(declare-fun b!2595009 () Bool)

(assert (=> b!2595009 (= e!1637425 (noDuplicate!430 (t!212995 l2!1515)))))

(assert (= (and d!734991 (not res!1091970)) b!2595008))

(assert (= (and b!2595008 res!1091971) b!2595009))

(declare-fun m!2931119 () Bool)

(assert (=> b!2595008 m!2931119))

(declare-fun m!2931121 () Bool)

(assert (=> b!2595009 m!2931121))

(assert (=> b!2594956 d!734991))

(declare-fun d!734995 () Bool)

(declare-fun lt!913743 () Int)

(assert (=> d!734995 (>= lt!913743 0)))

(declare-fun e!1637432 () Int)

(assert (=> d!734995 (= lt!913743 e!1637432)))

(declare-fun c!418149 () Bool)

(assert (=> d!734995 (= c!418149 (is-Nil!29882 l2!1515))))

(assert (=> d!734995 (= (size!23187 l2!1515) lt!913743)))

(declare-fun b!2595018 () Bool)

(assert (=> b!2595018 (= e!1637432 0)))

(declare-fun b!2595019 () Bool)

(assert (=> b!2595019 (= e!1637432 (+ 1 (size!23187 (t!212995 l2!1515))))))

(assert (= (and d!734995 c!418149) b!2595018))

(assert (= (and d!734995 (not c!418149)) b!2595019))

(declare-fun m!2931123 () Bool)

(assert (=> b!2595019 m!2931123))

(assert (=> b!2594951 d!734995))

(declare-fun d!734997 () Bool)

(declare-fun lt!913744 () Int)

(assert (=> d!734997 (>= lt!913744 0)))

(declare-fun e!1637433 () Int)

(assert (=> d!734997 (= lt!913744 e!1637433)))

(declare-fun c!418150 () Bool)

(assert (=> d!734997 (= c!418150 (is-Nil!29882 l1!1546))))

(assert (=> d!734997 (= (size!23187 l1!1546) lt!913744)))

(declare-fun b!2595020 () Bool)

(assert (=> b!2595020 (= e!1637433 0)))

(declare-fun b!2595021 () Bool)

(assert (=> b!2595021 (= e!1637433 (+ 1 (size!23187 (t!212995 l1!1546))))))

(assert (= (and d!734997 c!418150) b!2595020))

(assert (= (and d!734997 (not c!418150)) b!2595021))

(declare-fun m!2931125 () Bool)

(assert (=> b!2595021 m!2931125))

(assert (=> b!2594951 d!734997))

(declare-fun d!734999 () Bool)

(declare-fun lt!913747 () Bool)

(declare-fun content!4191 (List!29982) (Set B!2163))

(assert (=> d!734999 (= lt!913747 (set.member (h!35302 l1!1546) (content!4191 l2!1515)))))

(declare-fun e!1637441 () Bool)

(assert (=> d!734999 (= lt!913747 e!1637441)))

(declare-fun res!1091982 () Bool)

(assert (=> d!734999 (=> (not res!1091982) (not e!1637441))))

(assert (=> d!734999 (= res!1091982 (is-Cons!29882 l2!1515))))

(assert (=> d!734999 (= (contains!5430 l2!1515 (h!35302 l1!1546)) lt!913747)))

(declare-fun b!2595028 () Bool)

(declare-fun e!1637440 () Bool)

(assert (=> b!2595028 (= e!1637441 e!1637440)))

(declare-fun res!1091983 () Bool)

(assert (=> b!2595028 (=> res!1091983 e!1637440)))

(assert (=> b!2595028 (= res!1091983 (= (h!35302 l2!1515) (h!35302 l1!1546)))))

(declare-fun b!2595029 () Bool)

(assert (=> b!2595029 (= e!1637440 (contains!5430 (t!212995 l2!1515) (h!35302 l1!1546)))))

(assert (= (and d!734999 res!1091982) b!2595028))

(assert (= (and b!2595028 (not res!1091983)) b!2595029))

(declare-fun m!2931131 () Bool)

(assert (=> d!734999 m!2931131))

(declare-fun m!2931133 () Bool)

(assert (=> d!734999 m!2931133))

(declare-fun m!2931135 () Bool)

(assert (=> b!2595029 m!2931135))

(assert (=> b!2594957 d!734999))

(declare-fun bs!472669 () Bool)

(declare-fun d!735003 () Bool)

(assert (= bs!472669 (and d!735003 b!2594958)))

(declare-fun lambda!96743 () Int)

(assert (=> bs!472669 (not (= lambda!96743 lambda!96717))))

(declare-fun bs!472670 () Bool)

(assert (= bs!472670 (and d!735003 b!2594952)))

(assert (=> bs!472670 (not (= lambda!96743 lambda!96718))))

(assert (=> bs!472670 (not (= lambda!96743 lambda!96719))))

(declare-fun bs!472671 () Bool)

(assert (= bs!472671 (and d!735003 b!2594960)))

(assert (=> bs!472671 (not (= lambda!96743 lambda!96720))))

(assert (=> d!735003 true))

(declare-fun order!15893 () Int)

(declare-fun dynLambda!12635 (Int Int) Int)

(assert (=> d!735003 (< (dynLambda!12635 order!15893 lambda!96720) (dynLambda!12635 order!15893 lambda!96743))))

(assert (=> d!735003 (= (exists!931 (t!212995 l1!1546) lambda!96720) (not (forall!6119 (t!212995 l1!1546) lambda!96743)))))

(declare-fun bs!472672 () Bool)

(assert (= bs!472672 d!735003))

(declare-fun m!2931137 () Bool)

(assert (=> bs!472672 m!2931137))

(assert (=> b!2594960 d!735003))

(declare-fun bs!472673 () Bool)

(declare-fun d!735005 () Bool)

(assert (= bs!472673 (and d!735005 b!2594952)))

(declare-fun lambda!96746 () Int)

(assert (=> bs!472673 (not (= lambda!96746 lambda!96719))))

(assert (=> bs!472673 (not (= lambda!96746 lambda!96718))))

(declare-fun bs!472674 () Bool)

(assert (= bs!472674 (and d!735005 d!735003)))

(assert (=> bs!472674 (not (= lambda!96746 lambda!96743))))

(declare-fun bs!472675 () Bool)

(assert (= bs!472675 (and d!735005 b!2594960)))

(assert (=> bs!472675 (= lambda!96746 lambda!96720)))

(declare-fun bs!472676 () Bool)

(assert (= bs!472676 (and d!735005 b!2594958)))

(assert (=> bs!472676 (not (= lambda!96746 lambda!96717))))

(assert (=> d!735005 true))

(assert (=> d!735005 (exists!931 (t!212995 l1!1546) lambda!96746)))

(declare-fun lt!913752 () Unit!43918)

(declare-fun choose!15379 (List!29982 List!29982) Unit!43918)

(assert (=> d!735005 (= lt!913752 (choose!15379 (t!212995 l1!1546) lt!913709))))

(assert (=> d!735005 (noDuplicate!430 (t!212995 l1!1546))))

(assert (=> d!735005 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!47 (t!212995 l1!1546) lt!913709) lt!913752)))

(declare-fun bs!472677 () Bool)

(assert (= bs!472677 d!735005))

(declare-fun m!2931139 () Bool)

(assert (=> bs!472677 m!2931139))

(declare-fun m!2931141 () Bool)

(assert (=> bs!472677 m!2931141))

(declare-fun m!2931143 () Bool)

(assert (=> bs!472677 m!2931143))

(assert (=> b!2594960 d!735005))

(declare-fun d!735007 () Bool)

(declare-fun lt!913753 () Bool)

(assert (=> d!735007 (= lt!913753 (set.member (getWitness!553 (t!212995 l1!1546) lambda!96720) (content!4191 l1!1546)))))

(declare-fun e!1637452 () Bool)

(assert (=> d!735007 (= lt!913753 e!1637452)))

(declare-fun res!1091986 () Bool)

(assert (=> d!735007 (=> (not res!1091986) (not e!1637452))))

(assert (=> d!735007 (= res!1091986 (is-Cons!29882 l1!1546))))

(assert (=> d!735007 (= (contains!5430 l1!1546 (getWitness!553 (t!212995 l1!1546) lambda!96720)) lt!913753)))

(declare-fun b!2595042 () Bool)

(declare-fun e!1637451 () Bool)

(assert (=> b!2595042 (= e!1637452 e!1637451)))

(declare-fun res!1091987 () Bool)

(assert (=> b!2595042 (=> res!1091987 e!1637451)))

(assert (=> b!2595042 (= res!1091987 (= (h!35302 l1!1546) (getWitness!553 (t!212995 l1!1546) lambda!96720)))))

(declare-fun b!2595043 () Bool)

(assert (=> b!2595043 (= e!1637451 (contains!5430 (t!212995 l1!1546) (getWitness!553 (t!212995 l1!1546) lambda!96720)))))

(assert (= (and d!735007 res!1091986) b!2595042))

(assert (= (and b!2595042 (not res!1091987)) b!2595043))

(declare-fun m!2931145 () Bool)

(assert (=> d!735007 m!2931145))

(assert (=> d!735007 m!2931067))

(declare-fun m!2931147 () Bool)

(assert (=> d!735007 m!2931147))

(assert (=> b!2595043 m!2931067))

(declare-fun m!2931149 () Bool)

(assert (=> b!2595043 m!2931149))

(assert (=> b!2594950 d!735007))

(declare-fun b!2595061 () Bool)

(declare-fun e!1637466 () B!2163)

(assert (=> b!2595061 (= e!1637466 (getWitness!553 (t!212995 (t!212995 l1!1546)) lambda!96720))))

(declare-fun b!2595062 () Bool)

(declare-fun e!1637467 () B!2163)

(assert (=> b!2595062 (= e!1637467 e!1637466)))

(declare-fun c!418161 () Bool)

(assert (=> b!2595062 (= c!418161 (is-Cons!29882 (t!212995 l1!1546)))))

(declare-fun b!2595063 () Bool)

(declare-fun e!1637465 () Bool)

(declare-fun dynLambda!12636 (Int B!2163) Bool)

(assert (=> b!2595063 (= e!1637465 (dynLambda!12636 lambda!96720 (h!35302 (t!212995 l1!1546))))))

(declare-fun b!2595064 () Bool)

(assert (=> b!2595064 (= e!1637467 (h!35302 (t!212995 l1!1546)))))

(declare-fun b!2595065 () Bool)

(declare-fun lt!913760 () Unit!43918)

(declare-fun Unit!43922 () Unit!43918)

(assert (=> b!2595065 (= lt!913760 Unit!43922)))

(assert (=> b!2595065 false))

(declare-fun head!5885 (List!29982) B!2163)

(assert (=> b!2595065 (= e!1637466 (head!5885 (t!212995 l1!1546)))))

(declare-fun d!735009 () Bool)

(declare-fun e!1637464 () Bool)

(assert (=> d!735009 e!1637464))

(declare-fun res!1091994 () Bool)

(assert (=> d!735009 (=> (not res!1091994) (not e!1637464))))

(declare-fun lt!913759 () B!2163)

(assert (=> d!735009 (= res!1091994 (dynLambda!12636 lambda!96720 lt!913759))))

(assert (=> d!735009 (= lt!913759 e!1637467)))

(declare-fun c!418162 () Bool)

(assert (=> d!735009 (= c!418162 e!1637465)))

(declare-fun res!1091993 () Bool)

(assert (=> d!735009 (=> (not res!1091993) (not e!1637465))))

(assert (=> d!735009 (= res!1091993 (is-Cons!29882 (t!212995 l1!1546)))))

(assert (=> d!735009 (exists!931 (t!212995 l1!1546) lambda!96720)))

(assert (=> d!735009 (= (getWitness!553 (t!212995 l1!1546) lambda!96720) lt!913759)))

(declare-fun b!2595066 () Bool)

(assert (=> b!2595066 (= e!1637464 (contains!5430 (t!212995 l1!1546) lt!913759))))

(assert (= (and d!735009 res!1091993) b!2595063))

(assert (= (and d!735009 c!418162) b!2595064))

(assert (= (and d!735009 (not c!418162)) b!2595062))

(assert (= (and b!2595062 c!418161) b!2595061))

(assert (= (and b!2595062 (not c!418161)) b!2595065))

(assert (= (and d!735009 res!1091994) b!2595066))

(declare-fun b_lambda!77325 () Bool)

(assert (=> (not b_lambda!77325) (not b!2595063)))

(declare-fun b_lambda!77327 () Bool)

(assert (=> (not b_lambda!77327) (not d!735009)))

(declare-fun m!2931159 () Bool)

(assert (=> b!2595061 m!2931159))

(declare-fun m!2931161 () Bool)

(assert (=> b!2595065 m!2931161))

(declare-fun m!2931163 () Bool)

(assert (=> d!735009 m!2931163))

(assert (=> d!735009 m!2931041))

(declare-fun m!2931165 () Bool)

(assert (=> b!2595063 m!2931165))

(declare-fun m!2931167 () Bool)

(assert (=> b!2595066 m!2931167))

(assert (=> b!2594950 d!735009))

(declare-fun b!2595077 () Bool)

(declare-fun e!1637478 () List!29982)

(declare-fun e!1637476 () List!29982)

(assert (=> b!2595077 (= e!1637478 e!1637476)))

(declare-fun c!418167 () Bool)

(assert (=> b!2595077 (= c!418167 (= (h!35302 l1!1546) (h!35302 l2!1515)))))

(declare-fun bm!167303 () Bool)

(declare-fun call!167308 () List!29982)

(assert (=> bm!167303 (= call!167308 (-!159 (t!212995 l2!1515) (h!35302 l1!1546)))))

(declare-fun b!2595078 () Bool)

(assert (=> b!2595078 (= e!1637476 (Cons!29882 (h!35302 l2!1515) call!167308))))

(declare-fun d!735013 () Bool)

(declare-fun e!1637477 () Bool)

(assert (=> d!735013 e!1637477))

(declare-fun res!1091997 () Bool)

(assert (=> d!735013 (=> (not res!1091997) (not e!1637477))))

(declare-fun lt!913766 () List!29982)

(assert (=> d!735013 (= res!1091997 (<= (size!23187 lt!913766) (size!23187 l2!1515)))))

(assert (=> d!735013 (= lt!913766 e!1637478)))

(declare-fun c!418168 () Bool)

(assert (=> d!735013 (= c!418168 (is-Cons!29882 l2!1515))))

(assert (=> d!735013 (= (-!159 l2!1515 (h!35302 l1!1546)) lt!913766)))

(declare-fun b!2595079 () Bool)

(assert (=> b!2595079 (= e!1637478 Nil!29882)))

(declare-fun b!2595080 () Bool)

(assert (=> b!2595080 (= e!1637477 (= (content!4191 lt!913766) (set.minus (content!4191 l2!1515) (set.insert (h!35302 l1!1546) (as set.empty (Set B!2163))))))))

(declare-fun b!2595081 () Bool)

(assert (=> b!2595081 (= e!1637476 call!167308)))

(assert (= (and d!735013 c!418168) b!2595077))

(assert (= (and d!735013 (not c!418168)) b!2595079))

(assert (= (and b!2595077 c!418167) b!2595081))

(assert (= (and b!2595077 (not c!418167)) b!2595078))

(assert (= (or b!2595081 b!2595078) bm!167303))

(assert (= (and d!735013 res!1091997) b!2595080))

(declare-fun m!2931173 () Bool)

(assert (=> bm!167303 m!2931173))

(declare-fun m!2931175 () Bool)

(assert (=> d!735013 m!2931175))

(assert (=> d!735013 m!2931045))

(declare-fun m!2931177 () Bool)

(assert (=> b!2595080 m!2931177))

(assert (=> b!2595080 m!2931131))

(declare-fun m!2931179 () Bool)

(assert (=> b!2595080 m!2931179))

(assert (=> b!2594959 d!735013))

(declare-fun d!735017 () Bool)

(declare-fun res!1091998 () Bool)

(declare-fun e!1637479 () Bool)

(assert (=> d!735017 (=> res!1091998 e!1637479)))

(assert (=> d!735017 (= res!1091998 (is-Nil!29882 lt!913709))))

(assert (=> d!735017 (= (noDuplicate!430 lt!913709) e!1637479)))

(declare-fun b!2595082 () Bool)

(declare-fun e!1637480 () Bool)

(assert (=> b!2595082 (= e!1637479 e!1637480)))

(declare-fun res!1091999 () Bool)

(assert (=> b!2595082 (=> (not res!1091999) (not e!1637480))))

(assert (=> b!2595082 (= res!1091999 (not (contains!5430 (t!212995 lt!913709) (h!35302 lt!913709))))))

(declare-fun b!2595083 () Bool)

(assert (=> b!2595083 (= e!1637480 (noDuplicate!430 (t!212995 lt!913709)))))

(assert (= (and d!735017 (not res!1091998)) b!2595082))

(assert (= (and b!2595082 res!1091999) b!2595083))

(declare-fun m!2931181 () Bool)

(assert (=> b!2595082 m!2931181))

(declare-fun m!2931183 () Bool)

(assert (=> b!2595083 m!2931183))

(assert (=> b!2594959 d!735017))

(declare-fun d!735019 () Bool)

(declare-fun res!1092004 () Bool)

(declare-fun e!1637486 () Bool)

(assert (=> d!735019 (=> res!1092004 e!1637486)))

(assert (=> d!735019 (= res!1092004 (is-Nil!29882 lt!913709))))

(assert (=> d!735019 (= (forall!6119 lt!913709 lambda!96717) e!1637486)))

(declare-fun b!2595088 () Bool)

(declare-fun e!1637487 () Bool)

(assert (=> b!2595088 (= e!1637486 e!1637487)))

(declare-fun res!1092005 () Bool)

(assert (=> b!2595088 (=> (not res!1092005) (not e!1637487))))

(assert (=> b!2595088 (= res!1092005 (dynLambda!12636 lambda!96717 (h!35302 lt!913709)))))

(declare-fun b!2595089 () Bool)

(assert (=> b!2595089 (= e!1637487 (forall!6119 (t!212995 lt!913709) lambda!96717))))

(assert (= (and d!735019 (not res!1092004)) b!2595088))

(assert (= (and b!2595088 res!1092005) b!2595089))

(declare-fun b_lambda!77329 () Bool)

(assert (=> (not b_lambda!77329) (not b!2595088)))

(declare-fun m!2931185 () Bool)

(assert (=> b!2595088 m!2931185))

(declare-fun m!2931187 () Bool)

(assert (=> b!2595089 m!2931187))

(assert (=> b!2594959 d!735019))

(declare-fun d!735021 () Bool)

(assert (=> d!735021 (= (size!23187 (-!159 l2!1515 (h!35302 l1!1546))) (- (size!23187 l2!1515) 1))))

(declare-fun lt!913772 () Unit!43918)

(declare-fun choose!15380 (List!29982 B!2163) Unit!43918)

(assert (=> d!735021 (= lt!913772 (choose!15380 l2!1515 (h!35302 l1!1546)))))

(assert (=> d!735021 (noDuplicate!430 l2!1515)))

(assert (=> d!735021 (= (lemmaRemoveElmtNoDuplicateRemoveOne!21 l2!1515 (h!35302 l1!1546)) lt!913772)))

(declare-fun bs!472680 () Bool)

(assert (= bs!472680 d!735021))

(assert (=> bs!472680 m!2931063))

(assert (=> bs!472680 m!2931045))

(declare-fun m!2931193 () Bool)

(assert (=> bs!472680 m!2931193))

(assert (=> bs!472680 m!2931063))

(declare-fun m!2931195 () Bool)

(assert (=> bs!472680 m!2931195))

(assert (=> bs!472680 m!2931033))

(assert (=> b!2594959 d!735021))

(declare-fun d!735025 () Bool)

(assert (=> d!735025 (noDuplicate!430 (-!159 l2!1515 (h!35302 l1!1546)))))

(declare-fun lt!913777 () Unit!43918)

(declare-fun choose!15381 (List!29982 B!2163) Unit!43918)

(assert (=> d!735025 (= lt!913777 (choose!15381 l2!1515 (h!35302 l1!1546)))))

(assert (=> d!735025 (noDuplicate!430 l2!1515)))

(assert (=> d!735025 (= (lemmaRemoveElmtMaintainsNoDuplicate!25 l2!1515 (h!35302 l1!1546)) lt!913777)))

(declare-fun bs!472681 () Bool)

(assert (= bs!472681 d!735025))

(assert (=> bs!472681 m!2931063))

(assert (=> bs!472681 m!2931063))

(declare-fun m!2931197 () Bool)

(assert (=> bs!472681 m!2931197))

(declare-fun m!2931199 () Bool)

(assert (=> bs!472681 m!2931199))

(assert (=> bs!472681 m!2931033))

(assert (=> b!2594959 d!735025))

(declare-fun d!735027 () Bool)

(assert (=> d!735027 (forall!6119 (-!159 l2!1515 (h!35302 l1!1546)) lambda!96717)))

(declare-fun lt!913781 () Unit!43918)

(declare-fun choose!15382 (List!29982 B!2163 Int) Unit!43918)

(assert (=> d!735027 (= lt!913781 (choose!15382 l2!1515 (h!35302 l1!1546) lambda!96717))))

(assert (=> d!735027 (noDuplicate!430 l2!1515)))

(assert (=> d!735027 (= (lemmaRemoveElmtMaintainsForall!23 l2!1515 (h!35302 l1!1546) lambda!96717) lt!913781)))

(declare-fun bs!472682 () Bool)

(assert (= bs!472682 d!735027))

(assert (=> bs!472682 m!2931063))

(assert (=> bs!472682 m!2931063))

(declare-fun m!2931207 () Bool)

(assert (=> bs!472682 m!2931207))

(declare-fun m!2931209 () Bool)

(assert (=> bs!472682 m!2931209))

(assert (=> bs!472682 m!2931033))

(assert (=> b!2594959 d!735027))

(declare-fun d!735033 () Bool)

(declare-fun lt!913782 () Int)

(assert (=> d!735033 (>= lt!913782 0)))

(declare-fun e!1637496 () Int)

(assert (=> d!735033 (= lt!913782 e!1637496)))

(declare-fun c!418172 () Bool)

(assert (=> d!735033 (= c!418172 (is-Nil!29882 lt!913709))))

(assert (=> d!735033 (= (size!23187 lt!913709) lt!913782)))

(declare-fun b!2595098 () Bool)

(assert (=> b!2595098 (= e!1637496 0)))

(declare-fun b!2595099 () Bool)

(assert (=> b!2595099 (= e!1637496 (+ 1 (size!23187 (t!212995 lt!913709))))))

(assert (= (and d!735033 c!418172) b!2595098))

(assert (= (and d!735033 (not c!418172)) b!2595099))

(declare-fun m!2931211 () Bool)

(assert (=> b!2595099 m!2931211))

(assert (=> b!2594959 d!735033))

(declare-fun d!735035 () Bool)

(assert (=> d!735035 (= (tail!4148 l1!1546) (t!212995 l1!1546))))

(assert (=> b!2594952 d!735035))

(declare-fun d!735037 () Bool)

(declare-fun res!1092008 () Bool)

(declare-fun e!1637497 () Bool)

(assert (=> d!735037 (=> res!1092008 e!1637497)))

(assert (=> d!735037 (= res!1092008 (is-Nil!29882 lt!913709))))

(assert (=> d!735037 (= (forall!6119 lt!913709 lambda!96719) e!1637497)))

(declare-fun b!2595100 () Bool)

(declare-fun e!1637498 () Bool)

(assert (=> b!2595100 (= e!1637497 e!1637498)))

(declare-fun res!1092009 () Bool)

(assert (=> b!2595100 (=> (not res!1092009) (not e!1637498))))

(assert (=> b!2595100 (= res!1092009 (dynLambda!12636 lambda!96719 (h!35302 lt!913709)))))

(declare-fun b!2595101 () Bool)

(assert (=> b!2595101 (= e!1637498 (forall!6119 (t!212995 lt!913709) lambda!96719))))

(assert (= (and d!735037 (not res!1092008)) b!2595100))

(assert (= (and b!2595100 res!1092009) b!2595101))

(declare-fun b_lambda!77333 () Bool)

(assert (=> (not b_lambda!77333) (not b!2595100)))

(declare-fun m!2931213 () Bool)

(assert (=> b!2595100 m!2931213))

(declare-fun m!2931215 () Bool)

(assert (=> b!2595101 m!2931215))

(assert (=> b!2594952 d!735037))

(declare-fun d!735039 () Bool)

(declare-fun res!1092014 () Bool)

(declare-fun e!1637503 () Bool)

(assert (=> d!735039 (=> res!1092014 e!1637503)))

(assert (=> d!735039 (= res!1092014 (is-Nil!29882 lt!913709))))

(assert (=> d!735039 (= (forall!6119 lt!913709 lambda!96718) e!1637503)))

(declare-fun b!2595104 () Bool)

(declare-fun e!1637504 () Bool)

(assert (=> b!2595104 (= e!1637503 e!1637504)))

(declare-fun res!1092015 () Bool)

(assert (=> b!2595104 (=> (not res!1092015) (not e!1637504))))

(assert (=> b!2595104 (= res!1092015 (dynLambda!12636 lambda!96718 (h!35302 lt!913709)))))

(declare-fun b!2595105 () Bool)

(assert (=> b!2595105 (= e!1637504 (forall!6119 (t!212995 lt!913709) lambda!96718))))

(assert (= (and d!735039 (not res!1092014)) b!2595104))

(assert (= (and b!2595104 res!1092015) b!2595105))

(declare-fun b_lambda!77335 () Bool)

(assert (=> (not b_lambda!77335) (not b!2595104)))

(declare-fun m!2931217 () Bool)

(assert (=> b!2595104 m!2931217))

(declare-fun m!2931219 () Bool)

(assert (=> b!2595105 m!2931219))

(assert (=> b!2594952 d!735039))

(declare-fun bs!472683 () Bool)

(declare-fun d!735041 () Bool)

(assert (= bs!472683 d!735041))

(assert (=> bs!472683 m!2931029))

(declare-fun bs!472684 () Bool)

(assert (= bs!472684 (and d!735041 b!2594952)))

(declare-fun lambda!96749 () Int)

(assert (=> bs!472684 (= (= (tail!4148 l1!1546) (t!212995 l1!1546)) (= lambda!96749 lambda!96719))))

(assert (=> bs!472684 (= lambda!96749 lambda!96718)))

(declare-fun bs!472685 () Bool)

(assert (= bs!472685 (and d!735041 d!735003)))

(assert (=> bs!472685 (not (= lambda!96749 lambda!96743))))

(declare-fun bs!472686 () Bool)

(assert (= bs!472686 (and d!735041 b!2594960)))

(assert (=> bs!472686 (not (= lambda!96749 lambda!96720))))

(declare-fun bs!472687 () Bool)

(assert (= bs!472687 (and d!735041 d!735005)))

(assert (=> bs!472687 (not (= lambda!96749 lambda!96746))))

(declare-fun bs!472688 () Bool)

(assert (= bs!472688 (and d!735041 b!2594958)))

(assert (=> bs!472688 (= (= (tail!4148 l1!1546) l1!1546) (= lambda!96749 lambda!96717))))

(assert (=> d!735041 true))

(assert (=> d!735041 (forall!6119 lt!913709 lambda!96749)))

(declare-fun lt!913785 () Unit!43918)

(declare-fun choose!15383 (List!29982 List!29982 B!2163) Unit!43918)

(assert (=> d!735041 (= lt!913785 (choose!15383 lt!913709 l1!1546 (h!35302 l1!1546)))))

(declare-fun isEmpty!17126 (List!29982) Bool)

(assert (=> d!735041 (not (isEmpty!17126 l1!1546))))

(assert (=> d!735041 (= (lemmaForallContainsThenForTailIfContainsNotHead!13 lt!913709 l1!1546 (h!35302 l1!1546)) lt!913785)))

(declare-fun m!2931225 () Bool)

(assert (=> bs!472683 m!2931225))

(declare-fun m!2931227 () Bool)

(assert (=> bs!472683 m!2931227))

(declare-fun m!2931229 () Bool)

(assert (=> bs!472683 m!2931229))

(assert (=> b!2594952 d!735041))

(declare-fun d!735045 () Bool)

(declare-fun res!1092018 () Bool)

(declare-fun e!1637509 () Bool)

(assert (=> d!735045 (=> res!1092018 e!1637509)))

(assert (=> d!735045 (= res!1092018 (is-Nil!29882 l1!1546))))

(assert (=> d!735045 (= (noDuplicate!430 l1!1546) e!1637509)))

(declare-fun b!2595110 () Bool)

(declare-fun e!1637510 () Bool)

(assert (=> b!2595110 (= e!1637509 e!1637510)))

(declare-fun res!1092019 () Bool)

(assert (=> b!2595110 (=> (not res!1092019) (not e!1637510))))

(assert (=> b!2595110 (= res!1092019 (not (contains!5430 (t!212995 l1!1546) (h!35302 l1!1546))))))

(declare-fun b!2595111 () Bool)

(assert (=> b!2595111 (= e!1637510 (noDuplicate!430 (t!212995 l1!1546)))))

(assert (= (and d!735045 (not res!1092018)) b!2595110))

(assert (= (and b!2595110 res!1092019) b!2595111))

(declare-fun m!2931231 () Bool)

(assert (=> b!2595110 m!2931231))

(assert (=> b!2595111 m!2931143))

(assert (=> start!251626 d!735045))

(declare-fun d!735047 () Bool)

(declare-fun res!1092020 () Bool)

(declare-fun e!1637511 () Bool)

(assert (=> d!735047 (=> res!1092020 e!1637511)))

(assert (=> d!735047 (= res!1092020 (is-Nil!29882 l2!1515))))

(assert (=> d!735047 (= (forall!6119 l2!1515 lambda!96717) e!1637511)))

(declare-fun b!2595112 () Bool)

(declare-fun e!1637512 () Bool)

(assert (=> b!2595112 (= e!1637511 e!1637512)))

(declare-fun res!1092021 () Bool)

(assert (=> b!2595112 (=> (not res!1092021) (not e!1637512))))

(assert (=> b!2595112 (= res!1092021 (dynLambda!12636 lambda!96717 (h!35302 l2!1515)))))

(declare-fun b!2595113 () Bool)

(assert (=> b!2595113 (= e!1637512 (forall!6119 (t!212995 l2!1515) lambda!96717))))

(assert (= (and d!735047 (not res!1092020)) b!2595112))

(assert (= (and b!2595112 res!1092021) b!2595113))

(declare-fun b_lambda!77337 () Bool)

(assert (=> (not b_lambda!77337) (not b!2595112)))

(declare-fun m!2931233 () Bool)

(assert (=> b!2595112 m!2931233))

(declare-fun m!2931235 () Bool)

(assert (=> b!2595113 m!2931235))

(assert (=> b!2594958 d!735047))

(declare-fun b!2595118 () Bool)

(declare-fun e!1637515 () Bool)

(declare-fun tp!823083 () Bool)

(assert (=> b!2595118 (= e!1637515 (and tp_is_empty!13443 tp!823083))))

(assert (=> b!2594954 (= tp!823074 e!1637515)))

(assert (= (and b!2594954 (is-Cons!29882 (t!212995 l2!1515))) b!2595118))

(declare-fun b!2595119 () Bool)

(declare-fun e!1637516 () Bool)

(declare-fun tp!823084 () Bool)

(assert (=> b!2595119 (= e!1637516 (and tp_is_empty!13443 tp!823084))))

(assert (=> b!2594953 (= tp!823073 e!1637516)))

(assert (= (and b!2594953 (is-Cons!29882 (t!212995 l1!1546))) b!2595119))

(declare-fun b_lambda!77339 () Bool)

(assert (= b_lambda!77325 (or b!2594960 b_lambda!77339)))

(declare-fun bs!472689 () Bool)

(declare-fun d!735049 () Bool)

(assert (= bs!472689 (and d!735049 b!2594960)))

(assert (=> bs!472689 (= (dynLambda!12636 lambda!96720 (h!35302 (t!212995 l1!1546))) (not (contains!5430 lt!913709 (h!35302 (t!212995 l1!1546)))))))

(declare-fun m!2931237 () Bool)

(assert (=> bs!472689 m!2931237))

(assert (=> b!2595063 d!735049))

(declare-fun b_lambda!77341 () Bool)

(assert (= b_lambda!77329 (or b!2594958 b_lambda!77341)))

(declare-fun bs!472690 () Bool)

(declare-fun d!735051 () Bool)

(assert (= bs!472690 (and d!735051 b!2594958)))

(assert (=> bs!472690 (= (dynLambda!12636 lambda!96717 (h!35302 lt!913709)) (contains!5430 l1!1546 (h!35302 lt!913709)))))

(declare-fun m!2931239 () Bool)

(assert (=> bs!472690 m!2931239))

(assert (=> b!2595088 d!735051))

(declare-fun b_lambda!77343 () Bool)

(assert (= b_lambda!77335 (or b!2594952 b_lambda!77343)))

(declare-fun bs!472691 () Bool)

(declare-fun d!735053 () Bool)

(assert (= bs!472691 (and d!735053 b!2594952)))

(assert (=> bs!472691 (= (dynLambda!12636 lambda!96718 (h!35302 lt!913709)) (contains!5430 (tail!4148 l1!1546) (h!35302 lt!913709)))))

(declare-fun m!2931241 () Bool)

(assert (=> bs!472691 m!2931241))

(assert (=> b!2595104 d!735053))

(declare-fun b_lambda!77345 () Bool)

(assert (= b_lambda!77327 (or b!2594960 b_lambda!77345)))

(declare-fun bs!472692 () Bool)

(declare-fun d!735055 () Bool)

(assert (= bs!472692 (and d!735055 b!2594960)))

(assert (=> bs!472692 (= (dynLambda!12636 lambda!96720 lt!913759) (not (contains!5430 lt!913709 lt!913759)))))

(declare-fun m!2931243 () Bool)

(assert (=> bs!472692 m!2931243))

(assert (=> d!735009 d!735055))

(declare-fun b_lambda!77347 () Bool)

(assert (= b_lambda!77333 (or b!2594952 b_lambda!77347)))

(declare-fun bs!472693 () Bool)

(declare-fun d!735057 () Bool)

(assert (= bs!472693 (and d!735057 b!2594952)))

(assert (=> bs!472693 (= (dynLambda!12636 lambda!96719 (h!35302 lt!913709)) (contains!5430 (t!212995 l1!1546) (h!35302 lt!913709)))))

(declare-fun m!2931245 () Bool)

(assert (=> bs!472693 m!2931245))

(assert (=> b!2595100 d!735057))

(declare-fun b_lambda!77349 () Bool)

(assert (= b_lambda!77337 (or b!2594958 b_lambda!77349)))

(declare-fun bs!472694 () Bool)

(declare-fun d!735059 () Bool)

(assert (= bs!472694 (and d!735059 b!2594958)))

(assert (=> bs!472694 (= (dynLambda!12636 lambda!96717 (h!35302 l2!1515)) (contains!5430 l1!1546 (h!35302 l2!1515)))))

(declare-fun m!2931247 () Bool)

(assert (=> bs!472694 m!2931247))

(assert (=> b!2595112 d!735059))

(push 1)

(assert (not b!2595110))

(assert (not d!735021))

(assert (not b_lambda!77343))

(assert (not bm!167303))

(assert (not b!2595080))

(assert (not bs!472693))

(assert (not b!2595008))

(assert (not d!735013))

(assert (not b!2595061))

(assert (not d!734999))

(assert (not b!2595082))

(assert (not b!2595043))

(assert (not d!735025))

(assert (not d!735027))

(assert (not b!2595111))

(assert (not b!2595119))

(assert (not b_lambda!77347))

(assert (not b!2595083))

(assert (not bs!472692))

(assert (not bs!472689))

(assert (not d!735007))

(assert (not b!2595113))

(assert (not b!2595065))

(assert (not b_lambda!77349))

(assert (not b!2595089))

(assert (not b_lambda!77339))

(assert (not d!735005))

(assert tp_is_empty!13443)

(assert (not bs!472691))

(assert (not bs!472690))

(assert (not b_lambda!77341))

(assert (not d!735041))

(assert (not bs!472694))

(assert (not b!2595021))

(assert (not b_lambda!77345))

(assert (not b!2595101))

(assert (not b!2595019))

(assert (not b!2595066))

(assert (not d!735003))

(assert (not b!2595118))

(assert (not d!735009))

(assert (not b!2595029))

(assert (not b!2595099))

(assert (not b!2595105))

(assert (not b!2595009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

