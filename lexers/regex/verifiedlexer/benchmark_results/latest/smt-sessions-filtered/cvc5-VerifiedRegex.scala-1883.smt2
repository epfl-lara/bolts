; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92824 () Bool)

(assert start!92824)

(declare-fun b!1087653 () Bool)

(assert (=> b!1087653 true))

(declare-fun bs!257621 () Bool)

(declare-fun b!1087665 () Bool)

(assert (= bs!257621 (and b!1087665 b!1087653)))

(declare-fun lambda!40552 () Int)

(declare-fun lambda!40551 () Int)

(assert (=> bs!257621 (not (= lambda!40552 lambda!40551))))

(declare-fun e!688003 () Bool)

(declare-fun e!687996 () Bool)

(assert (=> b!1087653 (= e!688003 (not e!687996))))

(declare-fun res!483574 () Bool)

(assert (=> b!1087653 (=> res!483574 e!687996)))

(declare-datatypes ((C!6618 0))(
  ( (C!6619 (val!3557 Int)) )
))
(declare-datatypes ((Regex!3024 0))(
  ( (ElementMatch!3024 (c!184111 C!6618)) (Concat!4857 (regOne!6560 Regex!3024) (regTwo!6560 Regex!3024)) (EmptyExpr!3024) (Star!3024 (reg!3353 Regex!3024)) (EmptyLang!3024) (Union!3024 (regOne!6561 Regex!3024) (regTwo!6561 Regex!3024)) )
))
(declare-datatypes ((List!10375 0))(
  ( (Nil!10359) (Cons!10359 (h!15760 Regex!3024) (t!101421 List!10375)) )
))
(declare-datatypes ((Context!1008 0))(
  ( (Context!1009 (exprs!1004 List!10375)) )
))
(declare-fun z!1122 () (Set Context!1008))

(declare-fun exists!189 ((Set Context!1008) Int) Bool)

(assert (=> b!1087653 (= res!483574 (not (exists!189 z!1122 lambda!40551)))))

(declare-datatypes ((List!10376 0))(
  ( (Nil!10360) (Cons!10360 (h!15761 Context!1008) (t!101422 List!10376)) )
))
(declare-fun zl!316 () List!10376)

(declare-fun exists!190 (List!10376 Int) Bool)

(assert (=> b!1087653 (exists!190 zl!316 lambda!40551)))

(declare-datatypes ((Unit!15751 0))(
  ( (Unit!15752) )
))
(declare-fun lt!363844 () Unit!15751)

(declare-datatypes ((List!10377 0))(
  ( (Nil!10361) (Cons!10361 (h!15762 C!6618) (t!101423 List!10377)) )
))
(declare-fun s!2287 () List!10377)

(declare-fun lemmaZipperMatchesExistsMatchingContext!49 (List!10376 List!10377) Unit!15751)

(assert (=> b!1087653 (= lt!363844 (lemmaZipperMatchesExistsMatchingContext!49 zl!316 s!2287))))

(declare-fun b!1087654 () Bool)

(declare-fun e!687993 () Bool)

(declare-fun e!688004 () Bool)

(assert (=> b!1087654 (= e!687993 e!688004)))

(declare-fun res!483578 () Bool)

(assert (=> b!1087654 (=> res!483578 e!688004)))

(declare-fun lt!363843 () Bool)

(assert (=> b!1087654 (= res!483578 lt!363843)))

(declare-fun lt!363838 () Unit!15751)

(declare-fun e!687995 () Unit!15751)

(assert (=> b!1087654 (= lt!363838 e!687995)))

(declare-fun c!184110 () Bool)

(assert (=> b!1087654 (= c!184110 lt!363843)))

(declare-fun lt!363845 () Context!1008)

(declare-fun lostCause!234 (Context!1008) Bool)

(assert (=> b!1087654 (= lt!363843 (lostCause!234 lt!363845))))

(declare-fun b!1087655 () Bool)

(declare-fun e!687997 () Bool)

(declare-fun tp_is_empty!5679 () Bool)

(declare-fun tp!325961 () Bool)

(assert (=> b!1087655 (= e!687997 (and tp_is_empty!5679 tp!325961))))

(declare-fun e!688001 () Bool)

(declare-fun tp!325959 () Bool)

(declare-fun b!1087656 () Bool)

(declare-fun e!687999 () Bool)

(declare-fun inv!13274 (Context!1008) Bool)

(assert (=> b!1087656 (= e!687999 (and (inv!13274 (h!15761 zl!316)) e!688001 tp!325959))))

(declare-fun b!1087657 () Bool)

(declare-fun res!483579 () Bool)

(assert (=> b!1087657 (=> (not res!483579) (not e!688003))))

(declare-fun matchZipper!72 ((Set Context!1008) List!10377) Bool)

(assert (=> b!1087657 (= res!483579 (matchZipper!72 z!1122 s!2287))))

(declare-fun b!1087658 () Bool)

(declare-fun e!688000 () Bool)

(declare-fun e!688002 () Bool)

(assert (=> b!1087658 (= e!688000 e!688002)))

(declare-fun res!483577 () Bool)

(assert (=> b!1087658 (=> res!483577 e!688002)))

(declare-fun filter!180 ((Set Context!1008) Int) (Set Context!1008))

(assert (=> b!1087658 (= res!483577 (not (exists!189 (filter!180 z!1122 lambda!40552) lambda!40551)))))

(declare-fun lt!363840 () (Set Context!1008))

(assert (=> b!1087658 (exists!189 lt!363840 lambda!40551)))

(declare-fun lt!363846 () Unit!15751)

(declare-fun lemmaContainsThenExists!30 ((Set Context!1008) Context!1008 Int) Unit!15751)

(assert (=> b!1087658 (= lt!363846 (lemmaContainsThenExists!30 lt!363840 lt!363845 lambda!40551))))

(assert (=> b!1087658 (= lt!363840 (filter!180 z!1122 lambda!40552))))

(declare-fun b!1087659 () Bool)

(declare-fun Unit!15753 () Unit!15751)

(assert (=> b!1087659 (= e!687995 Unit!15753)))

(declare-fun b!1087660 () Bool)

(declare-fun Unit!15754 () Unit!15751)

(assert (=> b!1087660 (= e!687995 Unit!15754)))

(declare-fun lt!363839 () Unit!15751)

(declare-fun lt!363841 () (Set Context!1008))

(declare-fun lemmaLostCauseCannotMatch!18 ((Set Context!1008) List!10377) Unit!15751)

(assert (=> b!1087660 (= lt!363839 (lemmaLostCauseCannotMatch!18 lt!363841 s!2287))))

(assert (=> b!1087660 false))

(declare-fun b!1087652 () Bool)

(declare-fun e!687994 () Bool)

(assert (=> b!1087652 (= e!687994 e!687993)))

(declare-fun res!483575 () Bool)

(assert (=> b!1087652 (=> res!483575 e!687993)))

(assert (=> b!1087652 (= res!483575 (not (matchZipper!72 lt!363841 s!2287)))))

(assert (=> b!1087652 (= lt!363841 (set.insert lt!363845 (as set.empty (Set Context!1008))))))

(declare-fun res!483580 () Bool)

(assert (=> start!92824 (=> (not res!483580) (not e!688003))))

(declare-fun toList!642 ((Set Context!1008)) List!10376)

(assert (=> start!92824 (= res!483580 (= (toList!642 z!1122) zl!316))))

(assert (=> start!92824 e!688003))

(declare-fun condSetEmpty!7663 () Bool)

(assert (=> start!92824 (= condSetEmpty!7663 (= z!1122 (as set.empty (Set Context!1008))))))

(declare-fun setRes!7663 () Bool)

(assert (=> start!92824 setRes!7663))

(assert (=> start!92824 e!687999))

(assert (=> start!92824 e!687997))

(declare-fun b!1087661 () Bool)

(assert (=> b!1087661 (= e!688002 (exists!190 (toList!642 (filter!180 z!1122 lambda!40552)) lambda!40551))))

(declare-fun b!1087662 () Bool)

(assert (=> b!1087662 (= e!687996 e!687994)))

(declare-fun res!483581 () Bool)

(assert (=> b!1087662 (=> res!483581 e!687994)))

(assert (=> b!1087662 (= res!483581 (not (set.member lt!363845 z!1122)))))

(declare-fun getWitness!97 ((Set Context!1008) Int) Context!1008)

(assert (=> b!1087662 (= lt!363845 (getWitness!97 z!1122 lambda!40551))))

(declare-fun b!1087663 () Bool)

(declare-fun e!687998 () Bool)

(declare-fun tp!325958 () Bool)

(assert (=> b!1087663 (= e!687998 tp!325958)))

(declare-fun setIsEmpty!7663 () Bool)

(assert (=> setIsEmpty!7663 setRes!7663))

(declare-fun tp!325960 () Bool)

(declare-fun setNonEmpty!7663 () Bool)

(declare-fun setElem!7663 () Context!1008)

(assert (=> setNonEmpty!7663 (= setRes!7663 (and tp!325960 (inv!13274 setElem!7663) e!687998))))

(declare-fun setRest!7663 () (Set Context!1008))

(assert (=> setNonEmpty!7663 (= z!1122 (set.union (set.insert setElem!7663 (as set.empty (Set Context!1008))) setRest!7663))))

(declare-fun b!1087664 () Bool)

(declare-fun tp!325957 () Bool)

(assert (=> b!1087664 (= e!688001 tp!325957)))

(assert (=> b!1087665 (= e!688004 e!688000)))

(declare-fun res!483576 () Bool)

(assert (=> b!1087665 (=> res!483576 e!688000)))

(assert (=> b!1087665 (= res!483576 (not (set.member lt!363845 (filter!180 z!1122 lambda!40552))))))

(declare-fun lt!363842 () Unit!15751)

(declare-fun filterPost!25 ((Set Context!1008) Int Context!1008) Unit!15751)

(assert (=> b!1087665 (= lt!363842 (filterPost!25 z!1122 lambda!40552 lt!363845))))

(assert (= (and start!92824 res!483580) b!1087657))

(assert (= (and b!1087657 res!483579) b!1087653))

(assert (= (and b!1087653 (not res!483574)) b!1087662))

(assert (= (and b!1087662 (not res!483581)) b!1087652))

(assert (= (and b!1087652 (not res!483575)) b!1087654))

(assert (= (and b!1087654 c!184110) b!1087660))

(assert (= (and b!1087654 (not c!184110)) b!1087659))

(assert (= (and b!1087654 (not res!483578)) b!1087665))

(assert (= (and b!1087665 (not res!483576)) b!1087658))

(assert (= (and b!1087658 (not res!483577)) b!1087661))

(assert (= (and start!92824 condSetEmpty!7663) setIsEmpty!7663))

(assert (= (and start!92824 (not condSetEmpty!7663)) setNonEmpty!7663))

(assert (= setNonEmpty!7663 b!1087663))

(assert (= b!1087656 b!1087664))

(assert (= (and start!92824 (is-Cons!10360 zl!316)) b!1087656))

(assert (= (and start!92824 (is-Cons!10361 s!2287)) b!1087655))

(declare-fun m!1237895 () Bool)

(assert (=> b!1087652 m!1237895))

(declare-fun m!1237897 () Bool)

(assert (=> b!1087652 m!1237897))

(declare-fun m!1237899 () Bool)

(assert (=> start!92824 m!1237899))

(declare-fun m!1237901 () Bool)

(assert (=> b!1087656 m!1237901))

(declare-fun m!1237903 () Bool)

(assert (=> b!1087665 m!1237903))

(declare-fun m!1237905 () Bool)

(assert (=> b!1087665 m!1237905))

(declare-fun m!1237907 () Bool)

(assert (=> b!1087665 m!1237907))

(declare-fun m!1237909 () Bool)

(assert (=> b!1087653 m!1237909))

(declare-fun m!1237911 () Bool)

(assert (=> b!1087653 m!1237911))

(declare-fun m!1237913 () Bool)

(assert (=> b!1087653 m!1237913))

(declare-fun m!1237915 () Bool)

(assert (=> b!1087660 m!1237915))

(assert (=> b!1087661 m!1237903))

(assert (=> b!1087661 m!1237903))

(declare-fun m!1237917 () Bool)

(assert (=> b!1087661 m!1237917))

(assert (=> b!1087661 m!1237917))

(declare-fun m!1237919 () Bool)

(assert (=> b!1087661 m!1237919))

(declare-fun m!1237921 () Bool)

(assert (=> b!1087662 m!1237921))

(declare-fun m!1237923 () Bool)

(assert (=> b!1087662 m!1237923))

(declare-fun m!1237925 () Bool)

(assert (=> setNonEmpty!7663 m!1237925))

(declare-fun m!1237927 () Bool)

(assert (=> b!1087657 m!1237927))

(declare-fun m!1237929 () Bool)

(assert (=> b!1087654 m!1237929))

(declare-fun m!1237931 () Bool)

(assert (=> b!1087658 m!1237931))

(assert (=> b!1087658 m!1237903))

(assert (=> b!1087658 m!1237903))

(declare-fun m!1237933 () Bool)

(assert (=> b!1087658 m!1237933))

(assert (=> b!1087658 m!1237903))

(declare-fun m!1237935 () Bool)

(assert (=> b!1087658 m!1237935))

(push 1)

(assert (not b!1087653))

(assert (not setNonEmpty!7663))

(assert (not b!1087665))

(assert (not b!1087664))

(assert (not b!1087652))

(assert (not b!1087662))

(assert (not start!92824))

(assert (not b!1087656))

(assert (not b!1087663))

(assert (not b!1087657))

(assert (not b!1087655))

(assert (not b!1087660))

(assert tp_is_empty!5679)

(assert (not b!1087654))

(assert (not b!1087661))

(assert (not b!1087658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305850 () Bool)

(declare-fun e!688043 () Bool)

(assert (=> d!305850 e!688043))

(declare-fun res!483608 () Bool)

(assert (=> d!305850 (=> (not res!483608) (not e!688043))))

(declare-fun lt!363876 () Context!1008)

(declare-fun dynLambda!4535 (Int Context!1008) Bool)

(assert (=> d!305850 (= res!483608 (dynLambda!4535 lambda!40551 lt!363876))))

(declare-fun getWitness!99 (List!10376 Int) Context!1008)

(assert (=> d!305850 (= lt!363876 (getWitness!99 (toList!642 z!1122) lambda!40551))))

(assert (=> d!305850 (exists!189 z!1122 lambda!40551)))

(assert (=> d!305850 (= (getWitness!97 z!1122 lambda!40551) lt!363876)))

(declare-fun b!1087714 () Bool)

(assert (=> b!1087714 (= e!688043 (set.member lt!363876 z!1122))))

(assert (= (and d!305850 res!483608) b!1087714))

(declare-fun b_lambda!30275 () Bool)

(assert (=> (not b_lambda!30275) (not d!305850)))

(declare-fun m!1237979 () Bool)

(assert (=> d!305850 m!1237979))

(assert (=> d!305850 m!1237899))

(assert (=> d!305850 m!1237899))

(declare-fun m!1237981 () Bool)

(assert (=> d!305850 m!1237981))

(assert (=> d!305850 m!1237909))

(declare-fun m!1237983 () Bool)

(assert (=> b!1087714 m!1237983))

(assert (=> b!1087662 d!305850))

(declare-fun d!305852 () Bool)

(declare-fun lt!363879 () Bool)

(assert (=> d!305852 (= lt!363879 (exists!190 (toList!642 z!1122) lambda!40551))))

(declare-fun choose!6967 ((Set Context!1008) Int) Bool)

(assert (=> d!305852 (= lt!363879 (choose!6967 z!1122 lambda!40551))))

(assert (=> d!305852 (= (exists!189 z!1122 lambda!40551) lt!363879)))

(declare-fun bs!257623 () Bool)

(assert (= bs!257623 d!305852))

(assert (=> bs!257623 m!1237899))

(assert (=> bs!257623 m!1237899))

(declare-fun m!1237985 () Bool)

(assert (=> bs!257623 m!1237985))

(declare-fun m!1237987 () Bool)

(assert (=> bs!257623 m!1237987))

(assert (=> b!1087653 d!305852))

(declare-fun bs!257624 () Bool)

(declare-fun d!305854 () Bool)

(assert (= bs!257624 (and d!305854 b!1087653)))

(declare-fun lambda!40579 () Int)

(assert (=> bs!257624 (not (= lambda!40579 lambda!40551))))

(declare-fun bs!257625 () Bool)

(assert (= bs!257625 (and d!305854 b!1087665)))

(assert (=> bs!257625 (not (= lambda!40579 lambda!40552))))

(assert (=> d!305854 true))

(declare-fun order!6229 () Int)

(declare-fun dynLambda!4536 (Int Int) Int)

(assert (=> d!305854 (< (dynLambda!4536 order!6229 lambda!40551) (dynLambda!4536 order!6229 lambda!40579))))

(declare-fun forall!2281 (List!10376 Int) Bool)

(assert (=> d!305854 (= (exists!190 zl!316 lambda!40551) (not (forall!2281 zl!316 lambda!40579)))))

(declare-fun bs!257626 () Bool)

(assert (= bs!257626 d!305854))

(declare-fun m!1237989 () Bool)

(assert (=> bs!257626 m!1237989))

(assert (=> b!1087653 d!305854))

(declare-fun bs!257627 () Bool)

(declare-fun d!305856 () Bool)

(assert (= bs!257627 (and d!305856 b!1087653)))

(declare-fun lambda!40582 () Int)

(assert (=> bs!257627 (= lambda!40582 lambda!40551)))

(declare-fun bs!257628 () Bool)

(assert (= bs!257628 (and d!305856 b!1087665)))

(assert (=> bs!257628 (not (= lambda!40582 lambda!40552))))

(declare-fun bs!257629 () Bool)

(assert (= bs!257629 (and d!305856 d!305854)))

(assert (=> bs!257629 (not (= lambda!40582 lambda!40579))))

(assert (=> d!305856 true))

(assert (=> d!305856 (exists!190 zl!316 lambda!40582)))

(declare-fun lt!363882 () Unit!15751)

(declare-fun choose!6968 (List!10376 List!10377) Unit!15751)

(assert (=> d!305856 (= lt!363882 (choose!6968 zl!316 s!2287))))

(declare-fun content!1489 (List!10376) (Set Context!1008))

(assert (=> d!305856 (matchZipper!72 (content!1489 zl!316) s!2287)))

(assert (=> d!305856 (= (lemmaZipperMatchesExistsMatchingContext!49 zl!316 s!2287) lt!363882)))

(declare-fun bs!257630 () Bool)

(assert (= bs!257630 d!305856))

(declare-fun m!1237991 () Bool)

(assert (=> bs!257630 m!1237991))

(declare-fun m!1237993 () Bool)

(assert (=> bs!257630 m!1237993))

(declare-fun m!1237995 () Bool)

(assert (=> bs!257630 m!1237995))

(assert (=> bs!257630 m!1237995))

(declare-fun m!1237997 () Bool)

(assert (=> bs!257630 m!1237997))

(assert (=> b!1087653 d!305856))

(declare-fun d!305860 () Bool)

(declare-fun c!184144 () Bool)

(declare-fun isEmpty!6636 (List!10377) Bool)

(assert (=> d!305860 (= c!184144 (isEmpty!6636 s!2287))))

(declare-fun e!688048 () Bool)

(assert (=> d!305860 (= (matchZipper!72 lt!363841 s!2287) e!688048)))

(declare-fun b!1087725 () Bool)

(declare-fun nullableZipper!33 ((Set Context!1008)) Bool)

(assert (=> b!1087725 (= e!688048 (nullableZipper!33 lt!363841))))

(declare-fun b!1087726 () Bool)

(declare-fun derivationStepZipper!31 ((Set Context!1008) C!6618) (Set Context!1008))

(declare-fun head!2021 (List!10377) C!6618)

(declare-fun tail!1581 (List!10377) List!10377)

(assert (=> b!1087726 (= e!688048 (matchZipper!72 (derivationStepZipper!31 lt!363841 (head!2021 s!2287)) (tail!1581 s!2287)))))

(assert (= (and d!305860 c!184144) b!1087725))

(assert (= (and d!305860 (not c!184144)) b!1087726))

(declare-fun m!1237999 () Bool)

(assert (=> d!305860 m!1237999))

(declare-fun m!1238001 () Bool)

(assert (=> b!1087725 m!1238001))

(declare-fun m!1238003 () Bool)

(assert (=> b!1087726 m!1238003))

(assert (=> b!1087726 m!1238003))

(declare-fun m!1238005 () Bool)

(assert (=> b!1087726 m!1238005))

(declare-fun m!1238007 () Bool)

(assert (=> b!1087726 m!1238007))

(assert (=> b!1087726 m!1238005))

(assert (=> b!1087726 m!1238007))

(declare-fun m!1238009 () Bool)

(assert (=> b!1087726 m!1238009))

(assert (=> b!1087652 d!305860))

(declare-fun bs!257631 () Bool)

(declare-fun d!305862 () Bool)

(assert (= bs!257631 (and d!305862 b!1087653)))

(declare-fun lambda!40583 () Int)

(assert (=> bs!257631 (not (= lambda!40583 lambda!40551))))

(declare-fun bs!257632 () Bool)

(assert (= bs!257632 (and d!305862 b!1087665)))

(assert (=> bs!257632 (not (= lambda!40583 lambda!40552))))

(declare-fun bs!257633 () Bool)

(assert (= bs!257633 (and d!305862 d!305854)))

(assert (=> bs!257633 (= lambda!40583 lambda!40579)))

(declare-fun bs!257634 () Bool)

(assert (= bs!257634 (and d!305862 d!305856)))

(assert (=> bs!257634 (not (= lambda!40583 lambda!40582))))

(assert (=> d!305862 true))

(assert (=> d!305862 (< (dynLambda!4536 order!6229 lambda!40551) (dynLambda!4536 order!6229 lambda!40583))))

(assert (=> d!305862 (= (exists!190 (toList!642 (filter!180 z!1122 lambda!40552)) lambda!40551) (not (forall!2281 (toList!642 (filter!180 z!1122 lambda!40552)) lambda!40583)))))

(declare-fun bs!257635 () Bool)

(assert (= bs!257635 d!305862))

(assert (=> bs!257635 m!1237917))

(declare-fun m!1238011 () Bool)

(assert (=> bs!257635 m!1238011))

(assert (=> b!1087661 d!305862))

(declare-fun d!305864 () Bool)

(declare-fun e!688052 () Bool)

(assert (=> d!305864 e!688052))

(declare-fun res!483611 () Bool)

(assert (=> d!305864 (=> (not res!483611) (not e!688052))))

(declare-fun lt!363885 () List!10376)

(declare-fun noDuplicate!194 (List!10376) Bool)

(assert (=> d!305864 (= res!483611 (noDuplicate!194 lt!363885))))

(declare-fun choose!6969 ((Set Context!1008)) List!10376)

(assert (=> d!305864 (= lt!363885 (choose!6969 (filter!180 z!1122 lambda!40552)))))

(assert (=> d!305864 (= (toList!642 (filter!180 z!1122 lambda!40552)) lt!363885)))

(declare-fun b!1087731 () Bool)

(assert (=> b!1087731 (= e!688052 (= (content!1489 lt!363885) (filter!180 z!1122 lambda!40552)))))

(assert (= (and d!305864 res!483611) b!1087731))

(declare-fun m!1238023 () Bool)

(assert (=> d!305864 m!1238023))

(assert (=> d!305864 m!1237903))

(declare-fun m!1238025 () Bool)

(assert (=> d!305864 m!1238025))

(declare-fun m!1238027 () Bool)

(assert (=> b!1087731 m!1238027))

(assert (=> b!1087661 d!305864))

(declare-fun d!305866 () Bool)

(declare-fun choose!6970 ((Set Context!1008) Int) (Set Context!1008))

(assert (=> d!305866 (= (filter!180 z!1122 lambda!40552) (choose!6970 z!1122 lambda!40552))))

(declare-fun bs!257636 () Bool)

(assert (= bs!257636 d!305866))

(declare-fun m!1238031 () Bool)

(assert (=> bs!257636 m!1238031))

(assert (=> b!1087661 d!305866))

(declare-fun d!305870 () Bool)

(assert (=> d!305870 (not (matchZipper!72 lt!363841 s!2287))))

(declare-fun lt!363891 () Unit!15751)

(declare-fun choose!6971 ((Set Context!1008) List!10377) Unit!15751)

(assert (=> d!305870 (= lt!363891 (choose!6971 lt!363841 s!2287))))

(declare-fun lostCauseZipper!11 ((Set Context!1008)) Bool)

(assert (=> d!305870 (lostCauseZipper!11 lt!363841)))

(assert (=> d!305870 (= (lemmaLostCauseCannotMatch!18 lt!363841 s!2287) lt!363891)))

(declare-fun bs!257638 () Bool)

(assert (= bs!257638 d!305870))

(assert (=> bs!257638 m!1237895))

(declare-fun m!1238037 () Bool)

(assert (=> bs!257638 m!1238037))

(declare-fun m!1238039 () Bool)

(assert (=> bs!257638 m!1238039))

(assert (=> b!1087660 d!305870))

(declare-fun d!305874 () Bool)

(declare-fun c!184146 () Bool)

(assert (=> d!305874 (= c!184146 (isEmpty!6636 s!2287))))

(declare-fun e!688053 () Bool)

(assert (=> d!305874 (= (matchZipper!72 z!1122 s!2287) e!688053)))

(declare-fun b!1087732 () Bool)

(assert (=> b!1087732 (= e!688053 (nullableZipper!33 z!1122))))

(declare-fun b!1087733 () Bool)

(assert (=> b!1087733 (= e!688053 (matchZipper!72 (derivationStepZipper!31 z!1122 (head!2021 s!2287)) (tail!1581 s!2287)))))

(assert (= (and d!305874 c!184146) b!1087732))

(assert (= (and d!305874 (not c!184146)) b!1087733))

(assert (=> d!305874 m!1237999))

(declare-fun m!1238041 () Bool)

(assert (=> b!1087732 m!1238041))

(assert (=> b!1087733 m!1238003))

(assert (=> b!1087733 m!1238003))

(declare-fun m!1238043 () Bool)

(assert (=> b!1087733 m!1238043))

(assert (=> b!1087733 m!1238007))

(assert (=> b!1087733 m!1238043))

(assert (=> b!1087733 m!1238007))

(declare-fun m!1238045 () Bool)

(assert (=> b!1087733 m!1238045))

(assert (=> b!1087657 d!305874))

(assert (=> b!1087665 d!305866))

(declare-fun e!688056 () Bool)

(declare-fun d!305876 () Bool)

(assert (=> d!305876 (= (set.member lt!363845 (filter!180 z!1122 lambda!40552)) e!688056)))

(declare-fun res!483614 () Bool)

(assert (=> d!305876 (=> (not res!483614) (not e!688056))))

(assert (=> d!305876 (= res!483614 (dynLambda!4535 lambda!40552 lt!363845))))

(declare-fun lt!363894 () Unit!15751)

(declare-fun choose!6972 ((Set Context!1008) Int Context!1008) Unit!15751)

(assert (=> d!305876 (= lt!363894 (choose!6972 z!1122 lambda!40552 lt!363845))))

(assert (=> d!305876 (= (filterPost!25 z!1122 lambda!40552 lt!363845) lt!363894)))

(declare-fun b!1087738 () Bool)

(assert (=> b!1087738 (= e!688056 (set.member lt!363845 z!1122))))

(assert (= (and d!305876 res!483614) b!1087738))

(declare-fun b_lambda!30277 () Bool)

(assert (=> (not b_lambda!30277) (not d!305876)))

(assert (=> d!305876 m!1237903))

(assert (=> d!305876 m!1237905))

(declare-fun m!1238047 () Bool)

(assert (=> d!305876 m!1238047))

(declare-fun m!1238049 () Bool)

(assert (=> d!305876 m!1238049))

(assert (=> b!1087738 m!1237921))

(assert (=> b!1087665 d!305876))

(declare-fun d!305878 () Bool)

(declare-fun lambda!40589 () Int)

(declare-fun forall!2282 (List!10375 Int) Bool)

(assert (=> d!305878 (= (inv!13274 (h!15761 zl!316)) (forall!2282 (exprs!1004 (h!15761 zl!316)) lambda!40589))))

(declare-fun bs!257642 () Bool)

(assert (= bs!257642 d!305878))

(declare-fun m!1238053 () Bool)

(assert (=> bs!257642 m!1238053))

(assert (=> b!1087656 d!305878))

(declare-fun lt!363895 () Bool)

(declare-fun d!305882 () Bool)

(assert (=> d!305882 (= lt!363895 (exists!190 (toList!642 (filter!180 z!1122 lambda!40552)) lambda!40551))))

(assert (=> d!305882 (= lt!363895 (choose!6967 (filter!180 z!1122 lambda!40552) lambda!40551))))

(assert (=> d!305882 (= (exists!189 (filter!180 z!1122 lambda!40552) lambda!40551) lt!363895)))

(declare-fun bs!257643 () Bool)

(assert (= bs!257643 d!305882))

(assert (=> bs!257643 m!1237903))

(assert (=> bs!257643 m!1237917))

(assert (=> bs!257643 m!1237917))

(assert (=> bs!257643 m!1237919))

(assert (=> bs!257643 m!1237903))

(declare-fun m!1238055 () Bool)

(assert (=> bs!257643 m!1238055))

(assert (=> b!1087658 d!305882))

(declare-fun d!305884 () Bool)

(assert (=> d!305884 (exists!189 lt!363840 lambda!40551)))

(declare-fun lt!363898 () Unit!15751)

(declare-fun choose!6973 ((Set Context!1008) Context!1008 Int) Unit!15751)

(assert (=> d!305884 (= lt!363898 (choose!6973 lt!363840 lt!363845 lambda!40551))))

(assert (=> d!305884 (set.member lt!363845 lt!363840)))

(assert (=> d!305884 (= (lemmaContainsThenExists!30 lt!363840 lt!363845 lambda!40551) lt!363898)))

(declare-fun bs!257644 () Bool)

(assert (= bs!257644 d!305884))

(assert (=> bs!257644 m!1237933))

(declare-fun m!1238057 () Bool)

(assert (=> bs!257644 m!1238057))

(declare-fun m!1238059 () Bool)

(assert (=> bs!257644 m!1238059))

(assert (=> b!1087658 d!305884))

(assert (=> b!1087658 d!305866))

(declare-fun d!305886 () Bool)

(declare-fun lt!363899 () Bool)

(assert (=> d!305886 (= lt!363899 (exists!190 (toList!642 lt!363840) lambda!40551))))

(assert (=> d!305886 (= lt!363899 (choose!6967 lt!363840 lambda!40551))))

(assert (=> d!305886 (= (exists!189 lt!363840 lambda!40551) lt!363899)))

(declare-fun bs!257645 () Bool)

(assert (= bs!257645 d!305886))

(declare-fun m!1238061 () Bool)

(assert (=> bs!257645 m!1238061))

(assert (=> bs!257645 m!1238061))

(declare-fun m!1238063 () Bool)

(assert (=> bs!257645 m!1238063))

(declare-fun m!1238065 () Bool)

(assert (=> bs!257645 m!1238065))

(assert (=> b!1087658 d!305886))

(declare-fun bs!257646 () Bool)

(declare-fun d!305888 () Bool)

(assert (= bs!257646 (and d!305888 d!305878)))

(declare-fun lambda!40590 () Int)

(assert (=> bs!257646 (= lambda!40590 lambda!40589)))

(assert (=> d!305888 (= (inv!13274 setElem!7663) (forall!2282 (exprs!1004 setElem!7663) lambda!40590))))

(declare-fun bs!257647 () Bool)

(assert (= bs!257647 d!305888))

(declare-fun m!1238067 () Bool)

(assert (=> bs!257647 m!1238067))

(assert (=> setNonEmpty!7663 d!305888))

(declare-fun bs!257651 () Bool)

(declare-fun d!305890 () Bool)

(assert (= bs!257651 (and d!305890 d!305878)))

(declare-fun lambda!40596 () Int)

(assert (=> bs!257651 (not (= lambda!40596 lambda!40589))))

(declare-fun bs!257652 () Bool)

(assert (= bs!257652 (and d!305890 d!305888)))

(assert (=> bs!257652 (not (= lambda!40596 lambda!40590))))

(declare-fun exists!193 (List!10375 Int) Bool)

(assert (=> d!305890 (= (lostCause!234 lt!363845) (exists!193 (exprs!1004 lt!363845) lambda!40596))))

(declare-fun bs!257653 () Bool)

(assert (= bs!257653 d!305890))

(declare-fun m!1238069 () Bool)

(assert (=> bs!257653 m!1238069))

(assert (=> b!1087654 d!305890))

(declare-fun d!305892 () Bool)

(declare-fun e!688058 () Bool)

(assert (=> d!305892 e!688058))

(declare-fun res!483615 () Bool)

(assert (=> d!305892 (=> (not res!483615) (not e!688058))))

(declare-fun lt!363903 () List!10376)

(assert (=> d!305892 (= res!483615 (noDuplicate!194 lt!363903))))

(assert (=> d!305892 (= lt!363903 (choose!6969 z!1122))))

(assert (=> d!305892 (= (toList!642 z!1122) lt!363903)))

(declare-fun b!1087739 () Bool)

(assert (=> b!1087739 (= e!688058 (= (content!1489 lt!363903) z!1122))))

(assert (= (and d!305892 res!483615) b!1087739))

(declare-fun m!1238077 () Bool)

(assert (=> d!305892 m!1238077))

(declare-fun m!1238079 () Bool)

(assert (=> d!305892 m!1238079))

(declare-fun m!1238083 () Bool)

(assert (=> b!1087739 m!1238083))

(assert (=> start!92824 d!305892))

(declare-fun b!1087747 () Bool)

(declare-fun e!688064 () Bool)

(declare-fun tp!325981 () Bool)

(assert (=> b!1087747 (= e!688064 tp!325981)))

(declare-fun e!688063 () Bool)

(declare-fun tp!325982 () Bool)

(declare-fun b!1087746 () Bool)

(assert (=> b!1087746 (= e!688063 (and (inv!13274 (h!15761 (t!101422 zl!316))) e!688064 tp!325982))))

(assert (=> b!1087656 (= tp!325959 e!688063)))

(assert (= b!1087746 b!1087747))

(assert (= (and b!1087656 (is-Cons!10360 (t!101422 zl!316))) b!1087746))

(declare-fun m!1238085 () Bool)

(assert (=> b!1087746 m!1238085))

(declare-fun b!1087752 () Bool)

(declare-fun e!688067 () Bool)

(declare-fun tp!325987 () Bool)

(declare-fun tp!325988 () Bool)

(assert (=> b!1087752 (= e!688067 (and tp!325987 tp!325988))))

(assert (=> b!1087663 (= tp!325958 e!688067)))

(assert (= (and b!1087663 (is-Cons!10359 (exprs!1004 setElem!7663))) b!1087752))

(declare-fun condSetEmpty!7669 () Bool)

(assert (=> setNonEmpty!7663 (= condSetEmpty!7669 (= setRest!7663 (as set.empty (Set Context!1008))))))

(declare-fun setRes!7669 () Bool)

(assert (=> setNonEmpty!7663 (= tp!325960 setRes!7669)))

(declare-fun setIsEmpty!7669 () Bool)

(assert (=> setIsEmpty!7669 setRes!7669))

(declare-fun tp!325994 () Bool)

(declare-fun setNonEmpty!7669 () Bool)

(declare-fun e!688070 () Bool)

(declare-fun setElem!7669 () Context!1008)

(assert (=> setNonEmpty!7669 (= setRes!7669 (and tp!325994 (inv!13274 setElem!7669) e!688070))))

(declare-fun setRest!7669 () (Set Context!1008))

(assert (=> setNonEmpty!7669 (= setRest!7663 (set.union (set.insert setElem!7669 (as set.empty (Set Context!1008))) setRest!7669))))

(declare-fun b!1087757 () Bool)

(declare-fun tp!325993 () Bool)

(assert (=> b!1087757 (= e!688070 tp!325993)))

(assert (= (and setNonEmpty!7663 condSetEmpty!7669) setIsEmpty!7669))

(assert (= (and setNonEmpty!7663 (not condSetEmpty!7669)) setNonEmpty!7669))

(assert (= setNonEmpty!7669 b!1087757))

(declare-fun m!1238095 () Bool)

(assert (=> setNonEmpty!7669 m!1238095))

(declare-fun b!1087758 () Bool)

(declare-fun e!688071 () Bool)

(declare-fun tp!325995 () Bool)

(declare-fun tp!325996 () Bool)

(assert (=> b!1087758 (= e!688071 (and tp!325995 tp!325996))))

(assert (=> b!1087664 (= tp!325957 e!688071)))

(assert (= (and b!1087664 (is-Cons!10359 (exprs!1004 (h!15761 zl!316)))) b!1087758))

(declare-fun b!1087763 () Bool)

(declare-fun e!688074 () Bool)

(declare-fun tp!325999 () Bool)

(assert (=> b!1087763 (= e!688074 (and tp_is_empty!5679 tp!325999))))

(assert (=> b!1087655 (= tp!325961 e!688074)))

(assert (= (and b!1087655 (is-Cons!10361 (t!101423 s!2287))) b!1087763))

(declare-fun b_lambda!30279 () Bool)

(assert (= b_lambda!30275 (or b!1087653 b_lambda!30279)))

(declare-fun bs!257657 () Bool)

(declare-fun d!305900 () Bool)

(assert (= bs!257657 (and d!305900 b!1087653)))

(assert (=> bs!257657 (= (dynLambda!4535 lambda!40551 lt!363876) (matchZipper!72 (set.insert lt!363876 (as set.empty (Set Context!1008))) s!2287))))

(declare-fun m!1238097 () Bool)

(assert (=> bs!257657 m!1238097))

(assert (=> bs!257657 m!1238097))

(declare-fun m!1238099 () Bool)

(assert (=> bs!257657 m!1238099))

(assert (=> d!305850 d!305900))

(declare-fun b_lambda!30281 () Bool)

(assert (= b_lambda!30277 (or b!1087665 b_lambda!30281)))

(declare-fun bs!257658 () Bool)

(declare-fun d!305902 () Bool)

(assert (= bs!257658 (and d!305902 b!1087665)))

(assert (=> bs!257658 (= (dynLambda!4535 lambda!40552 lt!363845) (not (lostCause!234 lt!363845)))))

(assert (=> bs!257658 m!1237929))

(assert (=> d!305876 d!305902))

(push 1)

(assert (not d!305854))

(assert (not d!305882))

(assert (not d!305866))

(assert (not d!305878))

(assert (not b_lambda!30279))

(assert (not b!1087758))

(assert (not d!305870))

(assert (not b!1087746))

(assert (not bs!257658))

(assert (not d!305890))

(assert (not b!1087757))

(assert (not d!305884))

(assert (not d!305852))

(assert (not bs!257657))

(assert (not d!305888))

(assert (not b!1087752))

(assert (not d!305860))

(assert (not d!305862))

(assert (not b_lambda!30281))

(assert (not b!1087747))

(assert (not b!1087732))

(assert (not d!305876))

(assert (not b!1087763))

(assert tp_is_empty!5679)

(assert (not b!1087725))

(assert (not d!305886))

(assert (not b!1087731))

(assert (not d!305850))

(assert (not b!1087733))

(assert (not b!1087739))

(assert (not setNonEmpty!7669))

(assert (not d!305874))

(assert (not d!305892))

(assert (not d!305856))

(assert (not b!1087726))

(assert (not d!305864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

