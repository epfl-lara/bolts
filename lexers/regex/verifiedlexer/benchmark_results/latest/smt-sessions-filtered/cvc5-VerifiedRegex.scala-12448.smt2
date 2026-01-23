; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694322 () Bool)

(assert start!694322)

(declare-fun b!7126904 () Bool)

(declare-fun e!4282909 () Bool)

(declare-datatypes ((C!36326 0))(
  ( (C!36327 (val!28089 Int)) )
))
(declare-datatypes ((Regex!18028 0))(
  ( (ElementMatch!18028 (c!1329526 C!36326)) (Concat!26873 (regOne!36568 Regex!18028) (regTwo!36568 Regex!18028)) (EmptyExpr!18028) (Star!18028 (reg!18357 Regex!18028)) (EmptyLang!18028) (Union!18028 (regOne!36569 Regex!18028) (regTwo!36569 Regex!18028)) )
))
(declare-datatypes ((List!69107 0))(
  ( (Nil!68983) (Cons!68983 (h!75431 Regex!18028) (t!383084 List!69107)) )
))
(declare-datatypes ((Context!14044 0))(
  ( (Context!14045 (exprs!7522 List!69107)) )
))
(declare-fun z2!471 () (Set Context!14044))

(declare-datatypes ((List!69108 0))(
  ( (Nil!68984) (Cons!68984 (h!75432 C!36326) (t!383085 List!69108)) )
))
(declare-fun s2Rec!140 () List!69108)

(declare-fun matchZipper!3284 ((Set Context!14044) List!69108) Bool)

(assert (=> b!7126904 (= e!4282909 (not (matchZipper!3284 z2!471 s2Rec!140)))))

(declare-fun b!7126905 () Bool)

(declare-fun e!4282905 () Bool)

(declare-fun tp_is_empty!45657 () Bool)

(declare-fun tp!1963355 () Bool)

(assert (=> b!7126905 (= e!4282905 (and tp_is_empty!45657 tp!1963355))))

(declare-fun b!7126906 () Bool)

(declare-fun res!2908047 () Bool)

(declare-fun e!4282902 () Bool)

(assert (=> b!7126906 (=> (not res!2908047) (not e!4282902))))

(declare-fun s1Rec!140 () List!69108)

(declare-fun s!7390 () List!69108)

(declare-fun ++!16166 (List!69108 List!69108) List!69108)

(assert (=> b!7126906 (= res!2908047 (= (++!16166 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7126907 () Bool)

(declare-fun e!4282900 () Bool)

(declare-fun tp!1963353 () Bool)

(assert (=> b!7126907 (= e!4282900 tp!1963353)))

(declare-fun b!7126908 () Bool)

(declare-fun e!4282907 () Bool)

(declare-fun tp!1963352 () Bool)

(assert (=> b!7126908 (= e!4282907 (and tp_is_empty!45657 tp!1963352))))

(declare-fun setIsEmpty!51752 () Bool)

(declare-fun setRes!51753 () Bool)

(assert (=> setIsEmpty!51752 setRes!51753))

(declare-fun b!7126909 () Bool)

(declare-fun e!4282908 () Bool)

(declare-fun tp!1963351 () Bool)

(assert (=> b!7126909 (= e!4282908 (and tp_is_empty!45657 tp!1963351))))

(declare-fun b!7126910 () Bool)

(declare-fun e!4282906 () Bool)

(declare-fun tp!1963348 () Bool)

(assert (=> b!7126910 (= e!4282906 (and tp_is_empty!45657 tp!1963348))))

(declare-fun b!7126911 () Bool)

(declare-fun res!2908041 () Bool)

(assert (=> b!7126911 (=> (not res!2908041) (not e!4282902))))

(declare-fun s1!1688 () List!69108)

(declare-fun isPrefix!5897 (List!69108 List!69108) Bool)

(assert (=> b!7126911 (= res!2908041 (isPrefix!5897 s1Rec!140 s1!1688))))

(declare-fun b!7126912 () Bool)

(declare-fun res!2908039 () Bool)

(assert (=> b!7126912 (=> (not res!2908039) (not e!4282902))))

(assert (=> b!7126912 (= res!2908039 (is-Nil!68984 s2Rec!140))))

(declare-fun b!7126913 () Bool)

(declare-fun res!2908042 () Bool)

(assert (=> b!7126913 (=> (not res!2908042) (not e!4282902))))

(assert (=> b!7126913 (= res!2908042 e!4282909)))

(declare-fun res!2908043 () Bool)

(assert (=> b!7126913 (=> res!2908043 e!4282909)))

(declare-fun z1!552 () (Set Context!14044))

(assert (=> b!7126913 (= res!2908043 (not (matchZipper!3284 z1!552 s1Rec!140)))))

(declare-fun b!7126914 () Bool)

(declare-fun e!4282903 () Bool)

(assert (=> b!7126914 (= e!4282903 (not (= s1Rec!140 s1!1688)))))

(declare-fun setElem!51752 () Context!14044)

(declare-fun tp!1963349 () Bool)

(declare-fun setNonEmpty!51752 () Bool)

(declare-fun inv!88099 (Context!14044) Bool)

(assert (=> setNonEmpty!51752 (= setRes!51753 (and tp!1963349 (inv!88099 setElem!51752) e!4282900))))

(declare-fun setRest!51752 () (Set Context!14044))

(assert (=> setNonEmpty!51752 (= z2!471 (set.union (set.insert setElem!51752 (as set.empty (Set Context!14044))) setRest!51752))))

(declare-fun res!2908045 () Bool)

(assert (=> start!694322 (=> (not res!2908045) (not e!4282902))))

(assert (=> start!694322 (= res!2908045 (matchZipper!3284 z1!552 s1!1688))))

(assert (=> start!694322 e!4282902))

(assert (=> start!694322 e!4282905))

(declare-fun condSetEmpty!51753 () Bool)

(assert (=> start!694322 (= condSetEmpty!51753 (= z1!552 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51752 () Bool)

(assert (=> start!694322 setRes!51752))

(assert (=> start!694322 e!4282907))

(declare-fun condSetEmpty!51752 () Bool)

(assert (=> start!694322 (= condSetEmpty!51752 (= z2!471 (as set.empty (Set Context!14044))))))

(assert (=> start!694322 setRes!51753))

(declare-fun e!4282901 () Bool)

(assert (=> start!694322 e!4282901))

(assert (=> start!694322 e!4282908))

(assert (=> start!694322 e!4282906))

(declare-fun e!4282904 () Bool)

(declare-fun tp!1963354 () Bool)

(declare-fun setNonEmpty!51753 () Bool)

(declare-fun setElem!51753 () Context!14044)

(assert (=> setNonEmpty!51753 (= setRes!51752 (and tp!1963354 (inv!88099 setElem!51753) e!4282904))))

(declare-fun setRest!51753 () (Set Context!14044))

(assert (=> setNonEmpty!51753 (= z1!552 (set.union (set.insert setElem!51753 (as set.empty (Set Context!14044))) setRest!51753))))

(declare-fun b!7126915 () Bool)

(assert (=> b!7126915 (= e!4282902 e!4282903)))

(declare-fun res!2908040 () Bool)

(assert (=> b!7126915 (=> (not res!2908040) (not e!4282903))))

(declare-fun lt!2563539 () Int)

(declare-fun size!41463 (List!69108) Int)

(assert (=> b!7126915 (= res!2908040 (= lt!2563539 (size!41463 s!7390)))))

(assert (=> b!7126915 (= lt!2563539 (size!41463 s1Rec!140))))

(declare-fun b!7126916 () Bool)

(declare-fun res!2908038 () Bool)

(assert (=> b!7126916 (=> (not res!2908038) (not e!4282902))))

(declare-fun s2!1620 () List!69108)

(assert (=> b!7126916 (= res!2908038 (matchZipper!3284 z2!471 s2!1620))))

(declare-fun b!7126917 () Bool)

(declare-fun tp!1963356 () Bool)

(assert (=> b!7126917 (= e!4282904 tp!1963356)))

(declare-fun b!7126918 () Bool)

(declare-fun res!2908044 () Bool)

(assert (=> b!7126918 (=> (not res!2908044) (not e!4282903))))

(assert (=> b!7126918 (= res!2908044 (= lt!2563539 (size!41463 s1!1688)))))

(declare-fun b!7126919 () Bool)

(declare-fun res!2908046 () Bool)

(assert (=> b!7126919 (=> (not res!2908046) (not e!4282902))))

(assert (=> b!7126919 (= res!2908046 (= (++!16166 s1!1688 s2!1620) s!7390))))

(declare-fun b!7126920 () Bool)

(declare-fun tp!1963350 () Bool)

(assert (=> b!7126920 (= e!4282901 (and tp_is_empty!45657 tp!1963350))))

(declare-fun setIsEmpty!51753 () Bool)

(assert (=> setIsEmpty!51753 setRes!51752))

(assert (= (and start!694322 res!2908045) b!7126916))

(assert (= (and b!7126916 res!2908038) b!7126919))

(assert (= (and b!7126919 res!2908046) b!7126911))

(assert (= (and b!7126911 res!2908041) b!7126906))

(assert (= (and b!7126906 res!2908047) b!7126913))

(assert (= (and b!7126913 (not res!2908043)) b!7126904))

(assert (= (and b!7126913 res!2908042) b!7126912))

(assert (= (and b!7126912 res!2908039) b!7126915))

(assert (= (and b!7126915 res!2908040) b!7126918))

(assert (= (and b!7126918 res!2908044) b!7126914))

(assert (= (and start!694322 (is-Cons!68984 s1Rec!140)) b!7126905))

(assert (= (and start!694322 condSetEmpty!51753) setIsEmpty!51753))

(assert (= (and start!694322 (not condSetEmpty!51753)) setNonEmpty!51753))

(assert (= setNonEmpty!51753 b!7126917))

(assert (= (and start!694322 (is-Cons!68984 s2Rec!140)) b!7126908))

(assert (= (and start!694322 condSetEmpty!51752) setIsEmpty!51752))

(assert (= (and start!694322 (not condSetEmpty!51752)) setNonEmpty!51752))

(assert (= setNonEmpty!51752 b!7126907))

(assert (= (and start!694322 (is-Cons!68984 s2!1620)) b!7126920))

(assert (= (and start!694322 (is-Cons!68984 s1!1688)) b!7126909))

(assert (= (and start!694322 (is-Cons!68984 s!7390)) b!7126910))

(declare-fun m!7843828 () Bool)

(assert (=> b!7126904 m!7843828))

(declare-fun m!7843830 () Bool)

(assert (=> start!694322 m!7843830))

(declare-fun m!7843832 () Bool)

(assert (=> setNonEmpty!51752 m!7843832))

(declare-fun m!7843834 () Bool)

(assert (=> b!7126915 m!7843834))

(declare-fun m!7843836 () Bool)

(assert (=> b!7126915 m!7843836))

(declare-fun m!7843838 () Bool)

(assert (=> b!7126916 m!7843838))

(declare-fun m!7843840 () Bool)

(assert (=> b!7126918 m!7843840))

(declare-fun m!7843842 () Bool)

(assert (=> b!7126919 m!7843842))

(declare-fun m!7843844 () Bool)

(assert (=> setNonEmpty!51753 m!7843844))

(declare-fun m!7843846 () Bool)

(assert (=> b!7126911 m!7843846))

(declare-fun m!7843848 () Bool)

(assert (=> b!7126906 m!7843848))

(declare-fun m!7843850 () Bool)

(assert (=> b!7126913 m!7843850))

(push 1)

(assert (not b!7126911))

(assert (not b!7126919))

(assert (not b!7126907))

(assert (not b!7126909))

(assert (not setNonEmpty!51753))

(assert (not b!7126905))

(assert (not start!694322))

(assert (not b!7126920))

(assert (not b!7126910))

(assert (not b!7126915))

(assert (not setNonEmpty!51752))

(assert (not b!7126918))

(assert (not b!7126916))

(assert (not b!7126904))

(assert (not b!7126906))

(assert (not b!7126917))

(assert tp_is_empty!45657)

(assert (not b!7126908))

(assert (not b!7126913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223829 () Bool)

(declare-fun lt!2563545 () Int)

(assert (=> d!2223829 (>= lt!2563545 0)))

(declare-fun e!4282942 () Int)

(assert (=> d!2223829 (= lt!2563545 e!4282942)))

(declare-fun c!1329530 () Bool)

(assert (=> d!2223829 (= c!1329530 (is-Nil!68984 s!7390))))

(assert (=> d!2223829 (= (size!41463 s!7390) lt!2563545)))

(declare-fun b!7126976 () Bool)

(assert (=> b!7126976 (= e!4282942 0)))

(declare-fun b!7126977 () Bool)

(assert (=> b!7126977 (= e!4282942 (+ 1 (size!41463 (t!383085 s!7390))))))

(assert (= (and d!2223829 c!1329530) b!7126976))

(assert (= (and d!2223829 (not c!1329530)) b!7126977))

(declare-fun m!7843876 () Bool)

(assert (=> b!7126977 m!7843876))

(assert (=> b!7126915 d!2223829))

(declare-fun d!2223833 () Bool)

(declare-fun lt!2563546 () Int)

(assert (=> d!2223833 (>= lt!2563546 0)))

(declare-fun e!4282943 () Int)

(assert (=> d!2223833 (= lt!2563546 e!4282943)))

(declare-fun c!1329531 () Bool)

(assert (=> d!2223833 (= c!1329531 (is-Nil!68984 s1Rec!140))))

(assert (=> d!2223833 (= (size!41463 s1Rec!140) lt!2563546)))

(declare-fun b!7126978 () Bool)

(assert (=> b!7126978 (= e!4282943 0)))

(declare-fun b!7126979 () Bool)

(assert (=> b!7126979 (= e!4282943 (+ 1 (size!41463 (t!383085 s1Rec!140))))))

(assert (= (and d!2223833 c!1329531) b!7126978))

(assert (= (and d!2223833 (not c!1329531)) b!7126979))

(declare-fun m!7843878 () Bool)

(assert (=> b!7126979 m!7843878))

(assert (=> b!7126915 d!2223833))

(declare-fun b!7126990 () Bool)

(declare-fun e!4282951 () Bool)

(declare-fun tail!13935 (List!69108) List!69108)

(assert (=> b!7126990 (= e!4282951 (isPrefix!5897 (tail!13935 s1Rec!140) (tail!13935 s1!1688)))))

(declare-fun b!7126988 () Bool)

(declare-fun e!4282952 () Bool)

(assert (=> b!7126988 (= e!4282952 e!4282951)))

(declare-fun res!2908086 () Bool)

(assert (=> b!7126988 (=> (not res!2908086) (not e!4282951))))

(assert (=> b!7126988 (= res!2908086 (not (is-Nil!68984 s1!1688)))))

(declare-fun b!7126989 () Bool)

(declare-fun res!2908089 () Bool)

(assert (=> b!7126989 (=> (not res!2908089) (not e!4282951))))

(declare-fun head!14463 (List!69108) C!36326)

(assert (=> b!7126989 (= res!2908089 (= (head!14463 s1Rec!140) (head!14463 s1!1688)))))

(declare-fun d!2223835 () Bool)

(declare-fun e!4282950 () Bool)

(assert (=> d!2223835 e!4282950))

(declare-fun res!2908087 () Bool)

(assert (=> d!2223835 (=> res!2908087 e!4282950)))

(declare-fun lt!2563549 () Bool)

(assert (=> d!2223835 (= res!2908087 (not lt!2563549))))

(assert (=> d!2223835 (= lt!2563549 e!4282952)))

(declare-fun res!2908088 () Bool)

(assert (=> d!2223835 (=> res!2908088 e!4282952)))

(assert (=> d!2223835 (= res!2908088 (is-Nil!68984 s1Rec!140))))

(assert (=> d!2223835 (= (isPrefix!5897 s1Rec!140 s1!1688) lt!2563549)))

(declare-fun b!7126991 () Bool)

(assert (=> b!7126991 (= e!4282950 (>= (size!41463 s1!1688) (size!41463 s1Rec!140)))))

(assert (= (and d!2223835 (not res!2908088)) b!7126988))

(assert (= (and b!7126988 res!2908086) b!7126989))

(assert (= (and b!7126989 res!2908089) b!7126990))

(assert (= (and d!2223835 (not res!2908087)) b!7126991))

(declare-fun m!7843880 () Bool)

(assert (=> b!7126990 m!7843880))

(declare-fun m!7843882 () Bool)

(assert (=> b!7126990 m!7843882))

(assert (=> b!7126990 m!7843880))

(assert (=> b!7126990 m!7843882))

(declare-fun m!7843884 () Bool)

(assert (=> b!7126990 m!7843884))

(declare-fun m!7843886 () Bool)

(assert (=> b!7126989 m!7843886))

(declare-fun m!7843888 () Bool)

(assert (=> b!7126989 m!7843888))

(assert (=> b!7126991 m!7843840))

(assert (=> b!7126991 m!7843836))

(assert (=> b!7126911 d!2223835))

(declare-fun b!7127003 () Bool)

(declare-fun e!4282958 () Bool)

(declare-fun lt!2563552 () List!69108)

(assert (=> b!7127003 (= e!4282958 (or (not (= s2Rec!140 Nil!68984)) (= lt!2563552 s1Rec!140)))))

(declare-fun d!2223837 () Bool)

(assert (=> d!2223837 e!4282958))

(declare-fun res!2908095 () Bool)

(assert (=> d!2223837 (=> (not res!2908095) (not e!4282958))))

(declare-fun content!14114 (List!69108) (Set C!36326))

(assert (=> d!2223837 (= res!2908095 (= (content!14114 lt!2563552) (set.union (content!14114 s1Rec!140) (content!14114 s2Rec!140))))))

(declare-fun e!4282957 () List!69108)

(assert (=> d!2223837 (= lt!2563552 e!4282957)))

(declare-fun c!1329534 () Bool)

(assert (=> d!2223837 (= c!1329534 (is-Nil!68984 s1Rec!140))))

(assert (=> d!2223837 (= (++!16166 s1Rec!140 s2Rec!140) lt!2563552)))

(declare-fun b!7127002 () Bool)

(declare-fun res!2908094 () Bool)

(assert (=> b!7127002 (=> (not res!2908094) (not e!4282958))))

(assert (=> b!7127002 (= res!2908094 (= (size!41463 lt!2563552) (+ (size!41463 s1Rec!140) (size!41463 s2Rec!140))))))

(declare-fun b!7127001 () Bool)

(assert (=> b!7127001 (= e!4282957 (Cons!68984 (h!75432 s1Rec!140) (++!16166 (t!383085 s1Rec!140) s2Rec!140)))))

(declare-fun b!7127000 () Bool)

(assert (=> b!7127000 (= e!4282957 s2Rec!140)))

(assert (= (and d!2223837 c!1329534) b!7127000))

(assert (= (and d!2223837 (not c!1329534)) b!7127001))

(assert (= (and d!2223837 res!2908095) b!7127002))

(assert (= (and b!7127002 res!2908094) b!7127003))

(declare-fun m!7843890 () Bool)

(assert (=> d!2223837 m!7843890))

(declare-fun m!7843892 () Bool)

(assert (=> d!2223837 m!7843892))

(declare-fun m!7843894 () Bool)

(assert (=> d!2223837 m!7843894))

(declare-fun m!7843896 () Bool)

(assert (=> b!7127002 m!7843896))

(assert (=> b!7127002 m!7843836))

(declare-fun m!7843898 () Bool)

(assert (=> b!7127002 m!7843898))

(declare-fun m!7843900 () Bool)

(assert (=> b!7127001 m!7843900))

(assert (=> b!7126906 d!2223837))

(declare-fun lt!2563553 () List!69108)

(declare-fun b!7127007 () Bool)

(declare-fun e!4282960 () Bool)

(assert (=> b!7127007 (= e!4282960 (or (not (= s2!1620 Nil!68984)) (= lt!2563553 s1!1688)))))

(declare-fun d!2223839 () Bool)

(assert (=> d!2223839 e!4282960))

(declare-fun res!2908097 () Bool)

(assert (=> d!2223839 (=> (not res!2908097) (not e!4282960))))

(assert (=> d!2223839 (= res!2908097 (= (content!14114 lt!2563553) (set.union (content!14114 s1!1688) (content!14114 s2!1620))))))

(declare-fun e!4282959 () List!69108)

(assert (=> d!2223839 (= lt!2563553 e!4282959)))

(declare-fun c!1329535 () Bool)

(assert (=> d!2223839 (= c!1329535 (is-Nil!68984 s1!1688))))

(assert (=> d!2223839 (= (++!16166 s1!1688 s2!1620) lt!2563553)))

(declare-fun b!7127006 () Bool)

(declare-fun res!2908096 () Bool)

(assert (=> b!7127006 (=> (not res!2908096) (not e!4282960))))

(assert (=> b!7127006 (= res!2908096 (= (size!41463 lt!2563553) (+ (size!41463 s1!1688) (size!41463 s2!1620))))))

(declare-fun b!7127005 () Bool)

(assert (=> b!7127005 (= e!4282959 (Cons!68984 (h!75432 s1!1688) (++!16166 (t!383085 s1!1688) s2!1620)))))

(declare-fun b!7127004 () Bool)

(assert (=> b!7127004 (= e!4282959 s2!1620)))

(assert (= (and d!2223839 c!1329535) b!7127004))

(assert (= (and d!2223839 (not c!1329535)) b!7127005))

(assert (= (and d!2223839 res!2908097) b!7127006))

(assert (= (and b!7127006 res!2908096) b!7127007))

(declare-fun m!7843902 () Bool)

(assert (=> d!2223839 m!7843902))

(declare-fun m!7843904 () Bool)

(assert (=> d!2223839 m!7843904))

(declare-fun m!7843906 () Bool)

(assert (=> d!2223839 m!7843906))

(declare-fun m!7843908 () Bool)

(assert (=> b!7127006 m!7843908))

(assert (=> b!7127006 m!7843840))

(declare-fun m!7843910 () Bool)

(assert (=> b!7127006 m!7843910))

(declare-fun m!7843912 () Bool)

(assert (=> b!7127005 m!7843912))

(assert (=> b!7126919 d!2223839))

(declare-fun d!2223841 () Bool)

(declare-fun lambda!433042 () Int)

(declare-fun forall!16914 (List!69107 Int) Bool)

(assert (=> d!2223841 (= (inv!88099 setElem!51753) (forall!16914 (exprs!7522 setElem!51753) lambda!433042))))

(declare-fun bs!1886404 () Bool)

(assert (= bs!1886404 d!2223841))

(declare-fun m!7843914 () Bool)

(assert (=> bs!1886404 m!7843914))

(assert (=> setNonEmpty!51753 d!2223841))

(declare-fun bs!1886405 () Bool)

(declare-fun d!2223843 () Bool)

(assert (= bs!1886405 (and d!2223843 d!2223841)))

(declare-fun lambda!433043 () Int)

(assert (=> bs!1886405 (= lambda!433043 lambda!433042)))

(assert (=> d!2223843 (= (inv!88099 setElem!51752) (forall!16914 (exprs!7522 setElem!51752) lambda!433043))))

(declare-fun bs!1886406 () Bool)

(assert (= bs!1886406 d!2223843))

(declare-fun m!7843916 () Bool)

(assert (=> bs!1886406 m!7843916))

(assert (=> setNonEmpty!51752 d!2223843))

(declare-fun d!2223845 () Bool)

(declare-fun c!1329538 () Bool)

(declare-fun isEmpty!40019 (List!69108) Bool)

(assert (=> d!2223845 (= c!1329538 (isEmpty!40019 s1!1688))))

(declare-fun e!4282963 () Bool)

(assert (=> d!2223845 (= (matchZipper!3284 z1!552 s1!1688) e!4282963)))

(declare-fun b!7127012 () Bool)

(declare-fun nullableZipper!2755 ((Set Context!14044)) Bool)

(assert (=> b!7127012 (= e!4282963 (nullableZipper!2755 z1!552))))

(declare-fun b!7127013 () Bool)

(declare-fun derivationStepZipper!3167 ((Set Context!14044) C!36326) (Set Context!14044))

(assert (=> b!7127013 (= e!4282963 (matchZipper!3284 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (tail!13935 s1!1688)))))

(assert (= (and d!2223845 c!1329538) b!7127012))

(assert (= (and d!2223845 (not c!1329538)) b!7127013))

(declare-fun m!7843918 () Bool)

(assert (=> d!2223845 m!7843918))

(declare-fun m!7843920 () Bool)

(assert (=> b!7127012 m!7843920))

(assert (=> b!7127013 m!7843888))

(assert (=> b!7127013 m!7843888))

(declare-fun m!7843922 () Bool)

(assert (=> b!7127013 m!7843922))

(assert (=> b!7127013 m!7843882))

(assert (=> b!7127013 m!7843922))

(assert (=> b!7127013 m!7843882))

(declare-fun m!7843924 () Bool)

(assert (=> b!7127013 m!7843924))

(assert (=> start!694322 d!2223845))

(declare-fun d!2223847 () Bool)

(declare-fun lt!2563554 () Int)

(assert (=> d!2223847 (>= lt!2563554 0)))

(declare-fun e!4282964 () Int)

(assert (=> d!2223847 (= lt!2563554 e!4282964)))

(declare-fun c!1329539 () Bool)

(assert (=> d!2223847 (= c!1329539 (is-Nil!68984 s1!1688))))

(assert (=> d!2223847 (= (size!41463 s1!1688) lt!2563554)))

(declare-fun b!7127014 () Bool)

(assert (=> b!7127014 (= e!4282964 0)))

(declare-fun b!7127015 () Bool)

(assert (=> b!7127015 (= e!4282964 (+ 1 (size!41463 (t!383085 s1!1688))))))

(assert (= (and d!2223847 c!1329539) b!7127014))

(assert (= (and d!2223847 (not c!1329539)) b!7127015))

(declare-fun m!7843926 () Bool)

(assert (=> b!7127015 m!7843926))

(assert (=> b!7126918 d!2223847))

(declare-fun d!2223849 () Bool)

(declare-fun c!1329540 () Bool)

(assert (=> d!2223849 (= c!1329540 (isEmpty!40019 s2Rec!140))))

(declare-fun e!4282965 () Bool)

(assert (=> d!2223849 (= (matchZipper!3284 z2!471 s2Rec!140) e!4282965)))

(declare-fun b!7127016 () Bool)

(assert (=> b!7127016 (= e!4282965 (nullableZipper!2755 z2!471))))

(declare-fun b!7127017 () Bool)

(assert (=> b!7127017 (= e!4282965 (matchZipper!3284 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (tail!13935 s2Rec!140)))))

(assert (= (and d!2223849 c!1329540) b!7127016))

(assert (= (and d!2223849 (not c!1329540)) b!7127017))

(declare-fun m!7843928 () Bool)

(assert (=> d!2223849 m!7843928))

(declare-fun m!7843930 () Bool)

(assert (=> b!7127016 m!7843930))

(declare-fun m!7843932 () Bool)

(assert (=> b!7127017 m!7843932))

(assert (=> b!7127017 m!7843932))

(declare-fun m!7843934 () Bool)

(assert (=> b!7127017 m!7843934))

(declare-fun m!7843936 () Bool)

(assert (=> b!7127017 m!7843936))

(assert (=> b!7127017 m!7843934))

(assert (=> b!7127017 m!7843936))

(declare-fun m!7843938 () Bool)

(assert (=> b!7127017 m!7843938))

(assert (=> b!7126904 d!2223849))

(declare-fun d!2223851 () Bool)

(declare-fun c!1329541 () Bool)

(assert (=> d!2223851 (= c!1329541 (isEmpty!40019 s1Rec!140))))

(declare-fun e!4282966 () Bool)

(assert (=> d!2223851 (= (matchZipper!3284 z1!552 s1Rec!140) e!4282966)))

(declare-fun b!7127018 () Bool)

(assert (=> b!7127018 (= e!4282966 (nullableZipper!2755 z1!552))))

(declare-fun b!7127019 () Bool)

(assert (=> b!7127019 (= e!4282966 (matchZipper!3284 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (tail!13935 s1Rec!140)))))

(assert (= (and d!2223851 c!1329541) b!7127018))

(assert (= (and d!2223851 (not c!1329541)) b!7127019))

(declare-fun m!7843940 () Bool)

(assert (=> d!2223851 m!7843940))

(assert (=> b!7127018 m!7843920))

(assert (=> b!7127019 m!7843886))

(assert (=> b!7127019 m!7843886))

(declare-fun m!7843942 () Bool)

(assert (=> b!7127019 m!7843942))

(assert (=> b!7127019 m!7843880))

(assert (=> b!7127019 m!7843942))

(assert (=> b!7127019 m!7843880))

(declare-fun m!7843944 () Bool)

(assert (=> b!7127019 m!7843944))

(assert (=> b!7126913 d!2223851))

(declare-fun d!2223853 () Bool)

(declare-fun c!1329542 () Bool)

(assert (=> d!2223853 (= c!1329542 (isEmpty!40019 s2!1620))))

(declare-fun e!4282967 () Bool)

(assert (=> d!2223853 (= (matchZipper!3284 z2!471 s2!1620) e!4282967)))

(declare-fun b!7127020 () Bool)

(assert (=> b!7127020 (= e!4282967 (nullableZipper!2755 z2!471))))

(declare-fun b!7127021 () Bool)

(assert (=> b!7127021 (= e!4282967 (matchZipper!3284 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (tail!13935 s2!1620)))))

(assert (= (and d!2223853 c!1329542) b!7127020))

(assert (= (and d!2223853 (not c!1329542)) b!7127021))

(declare-fun m!7843946 () Bool)

(assert (=> d!2223853 m!7843946))

(assert (=> b!7127020 m!7843930))

(declare-fun m!7843948 () Bool)

(assert (=> b!7127021 m!7843948))

(assert (=> b!7127021 m!7843948))

(declare-fun m!7843950 () Bool)

(assert (=> b!7127021 m!7843950))

(declare-fun m!7843952 () Bool)

(assert (=> b!7127021 m!7843952))

(assert (=> b!7127021 m!7843950))

(assert (=> b!7127021 m!7843952))

(declare-fun m!7843954 () Bool)

(assert (=> b!7127021 m!7843954))

(assert (=> b!7126916 d!2223853))

(declare-fun b!7127026 () Bool)

(declare-fun e!4282970 () Bool)

(declare-fun tp!1963388 () Bool)

(declare-fun tp!1963389 () Bool)

(assert (=> b!7127026 (= e!4282970 (and tp!1963388 tp!1963389))))

(assert (=> b!7126907 (= tp!1963353 e!4282970)))

(assert (= (and b!7126907 (is-Cons!68983 (exprs!7522 setElem!51752))) b!7127026))

(declare-fun b!7127031 () Bool)

(declare-fun e!4282973 () Bool)

(declare-fun tp!1963392 () Bool)

(assert (=> b!7127031 (= e!4282973 (and tp_is_empty!45657 tp!1963392))))

(assert (=> b!7126920 (= tp!1963350 e!4282973)))

(assert (= (and b!7126920 (is-Cons!68984 (t!383085 s2!1620))) b!7127031))

(declare-fun condSetEmpty!51762 () Bool)

(assert (=> setNonEmpty!51753 (= condSetEmpty!51762 (= setRest!51753 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51762 () Bool)

(assert (=> setNonEmpty!51753 (= tp!1963354 setRes!51762)))

(declare-fun setIsEmpty!51762 () Bool)

(assert (=> setIsEmpty!51762 setRes!51762))

(declare-fun setNonEmpty!51762 () Bool)

(declare-fun e!4282976 () Bool)

(declare-fun tp!1963398 () Bool)

(declare-fun setElem!51762 () Context!14044)

(assert (=> setNonEmpty!51762 (= setRes!51762 (and tp!1963398 (inv!88099 setElem!51762) e!4282976))))

(declare-fun setRest!51762 () (Set Context!14044))

(assert (=> setNonEmpty!51762 (= setRest!51753 (set.union (set.insert setElem!51762 (as set.empty (Set Context!14044))) setRest!51762))))

(declare-fun b!7127036 () Bool)

(declare-fun tp!1963397 () Bool)

(assert (=> b!7127036 (= e!4282976 tp!1963397)))

(assert (= (and setNonEmpty!51753 condSetEmpty!51762) setIsEmpty!51762))

(assert (= (and setNonEmpty!51753 (not condSetEmpty!51762)) setNonEmpty!51762))

(assert (= setNonEmpty!51762 b!7127036))

(declare-fun m!7843956 () Bool)

(assert (=> setNonEmpty!51762 m!7843956))

(declare-fun condSetEmpty!51763 () Bool)

(assert (=> setNonEmpty!51752 (= condSetEmpty!51763 (= setRest!51752 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51763 () Bool)

(assert (=> setNonEmpty!51752 (= tp!1963349 setRes!51763)))

(declare-fun setIsEmpty!51763 () Bool)

(assert (=> setIsEmpty!51763 setRes!51763))

(declare-fun e!4282977 () Bool)

(declare-fun tp!1963400 () Bool)

(declare-fun setElem!51763 () Context!14044)

(declare-fun setNonEmpty!51763 () Bool)

(assert (=> setNonEmpty!51763 (= setRes!51763 (and tp!1963400 (inv!88099 setElem!51763) e!4282977))))

(declare-fun setRest!51763 () (Set Context!14044))

(assert (=> setNonEmpty!51763 (= setRest!51752 (set.union (set.insert setElem!51763 (as set.empty (Set Context!14044))) setRest!51763))))

(declare-fun b!7127037 () Bool)

(declare-fun tp!1963399 () Bool)

(assert (=> b!7127037 (= e!4282977 tp!1963399)))

(assert (= (and setNonEmpty!51752 condSetEmpty!51763) setIsEmpty!51763))

(assert (= (and setNonEmpty!51752 (not condSetEmpty!51763)) setNonEmpty!51763))

(assert (= setNonEmpty!51763 b!7127037))

(declare-fun m!7843958 () Bool)

(assert (=> setNonEmpty!51763 m!7843958))

(declare-fun b!7127038 () Bool)

(declare-fun e!4282978 () Bool)

(declare-fun tp!1963401 () Bool)

(assert (=> b!7127038 (= e!4282978 (and tp_is_empty!45657 tp!1963401))))

(assert (=> b!7126910 (= tp!1963348 e!4282978)))

(assert (= (and b!7126910 (is-Cons!68984 (t!383085 s!7390))) b!7127038))

(declare-fun b!7127039 () Bool)

(declare-fun e!4282979 () Bool)

(declare-fun tp!1963402 () Bool)

(assert (=> b!7127039 (= e!4282979 (and tp_is_empty!45657 tp!1963402))))

(assert (=> b!7126909 (= tp!1963351 e!4282979)))

(assert (= (and b!7126909 (is-Cons!68984 (t!383085 s1!1688))) b!7127039))

(declare-fun b!7127040 () Bool)

(declare-fun e!4282980 () Bool)

(declare-fun tp!1963403 () Bool)

(assert (=> b!7127040 (= e!4282980 (and tp_is_empty!45657 tp!1963403))))

(assert (=> b!7126905 (= tp!1963355 e!4282980)))

(assert (= (and b!7126905 (is-Cons!68984 (t!383085 s1Rec!140))) b!7127040))

(declare-fun b!7127041 () Bool)

(declare-fun e!4282981 () Bool)

(declare-fun tp!1963404 () Bool)

(declare-fun tp!1963405 () Bool)

(assert (=> b!7127041 (= e!4282981 (and tp!1963404 tp!1963405))))

(assert (=> b!7126917 (= tp!1963356 e!4282981)))

(assert (= (and b!7126917 (is-Cons!68983 (exprs!7522 setElem!51753))) b!7127041))

(declare-fun b!7127042 () Bool)

(declare-fun e!4282982 () Bool)

(declare-fun tp!1963406 () Bool)

(assert (=> b!7127042 (= e!4282982 (and tp_is_empty!45657 tp!1963406))))

(assert (=> b!7126908 (= tp!1963352 e!4282982)))

(assert (= (and b!7126908 (is-Cons!68984 (t!383085 s2Rec!140))) b!7127042))

(push 1)

(assert (not setNonEmpty!51762))

(assert (not b!7126991))

(assert (not b!7126977))

(assert (not b!7127036))

(assert (not d!2223843))

(assert (not d!2223837))

(assert (not b!7127017))

(assert (not b!7127006))

(assert tp_is_empty!45657)

(assert (not b!7127013))

(assert (not b!7127015))

(assert (not b!7126990))

(assert (not d!2223849))

(assert (not d!2223845))

(assert (not b!7127020))

(assert (not b!7126989))

(assert (not b!7127040))

(assert (not b!7127037))

(assert (not b!7127018))

(assert (not b!7127041))

(assert (not b!7127039))

(assert (not b!7127005))

(assert (not d!2223839))

(assert (not b!7127031))

(assert (not b!7127002))

(assert (not b!7127012))

(assert (not setNonEmpty!51763))

(assert (not d!2223853))

(assert (not b!7127021))

(assert (not b!7127019))

(assert (not d!2223841))

(assert (not b!7127026))

(assert (not b!7127016))

(assert (not b!7127038))

(assert (not b!7127001))

(assert (not b!7126979))

(assert (not d!2223851))

(assert (not b!7127042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223877 () Bool)

(declare-fun lt!2563567 () Int)

(assert (=> d!2223877 (>= lt!2563567 0)))

(declare-fun e!4283026 () Int)

(assert (=> d!2223877 (= lt!2563567 e!4283026)))

(declare-fun c!1329558 () Bool)

(assert (=> d!2223877 (= c!1329558 (is-Nil!68984 (t!383085 s!7390)))))

(assert (=> d!2223877 (= (size!41463 (t!383085 s!7390)) lt!2563567)))

(declare-fun b!7127114 () Bool)

(assert (=> b!7127114 (= e!4283026 0)))

(declare-fun b!7127115 () Bool)

(assert (=> b!7127115 (= e!4283026 (+ 1 (size!41463 (t!383085 (t!383085 s!7390)))))))

(assert (= (and d!2223877 c!1329558) b!7127114))

(assert (= (and d!2223877 (not c!1329558)) b!7127115))

(declare-fun m!7844044 () Bool)

(assert (=> b!7127115 m!7844044))

(assert (=> b!7126977 d!2223877))

(declare-fun d!2223879 () Bool)

(declare-fun c!1329559 () Bool)

(assert (=> d!2223879 (= c!1329559 (isEmpty!40019 (tail!13935 s2!1620)))))

(declare-fun e!4283027 () Bool)

(assert (=> d!2223879 (= (matchZipper!3284 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (tail!13935 s2!1620)) e!4283027)))

(declare-fun b!7127116 () Bool)

(assert (=> b!7127116 (= e!4283027 (nullableZipper!2755 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620))))))

(declare-fun b!7127117 () Bool)

(assert (=> b!7127117 (= e!4283027 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (head!14463 (tail!13935 s2!1620))) (tail!13935 (tail!13935 s2!1620))))))

(assert (= (and d!2223879 c!1329559) b!7127116))

(assert (= (and d!2223879 (not c!1329559)) b!7127117))

(assert (=> d!2223879 m!7843952))

(declare-fun m!7844046 () Bool)

(assert (=> d!2223879 m!7844046))

(assert (=> b!7127116 m!7843950))

(declare-fun m!7844048 () Bool)

(assert (=> b!7127116 m!7844048))

(assert (=> b!7127117 m!7843952))

(declare-fun m!7844050 () Bool)

(assert (=> b!7127117 m!7844050))

(assert (=> b!7127117 m!7843950))

(assert (=> b!7127117 m!7844050))

(declare-fun m!7844052 () Bool)

(assert (=> b!7127117 m!7844052))

(assert (=> b!7127117 m!7843952))

(declare-fun m!7844054 () Bool)

(assert (=> b!7127117 m!7844054))

(assert (=> b!7127117 m!7844052))

(assert (=> b!7127117 m!7844054))

(declare-fun m!7844056 () Bool)

(assert (=> b!7127117 m!7844056))

(assert (=> b!7127021 d!2223879))

(declare-fun d!2223881 () Bool)

(assert (=> d!2223881 true))

(declare-fun lambda!433050 () Int)

(declare-fun flatMap!2632 ((Set Context!14044) Int) (Set Context!14044))

(assert (=> d!2223881 (= (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (flatMap!2632 z2!471 lambda!433050))))

(declare-fun bs!1886410 () Bool)

(assert (= bs!1886410 d!2223881))

(declare-fun m!7844058 () Bool)

(assert (=> bs!1886410 m!7844058))

(assert (=> b!7127021 d!2223881))

(declare-fun d!2223883 () Bool)

(assert (=> d!2223883 (= (head!14463 s2!1620) (h!75432 s2!1620))))

(assert (=> b!7127021 d!2223883))

(declare-fun d!2223885 () Bool)

(assert (=> d!2223885 (= (tail!13935 s2!1620) (t!383085 s2!1620))))

(assert (=> b!7127021 d!2223885))

(declare-fun d!2223887 () Bool)

(declare-fun lambda!433053 () Int)

(declare-fun exists!3824 ((Set Context!14044) Int) Bool)

(assert (=> d!2223887 (= (nullableZipper!2755 z2!471) (exists!3824 z2!471 lambda!433053))))

(declare-fun bs!1886411 () Bool)

(assert (= bs!1886411 d!2223887))

(declare-fun m!7844060 () Bool)

(assert (=> bs!1886411 m!7844060))

(assert (=> b!7127020 d!2223887))

(declare-fun d!2223889 () Bool)

(declare-fun lt!2563568 () Int)

(assert (=> d!2223889 (>= lt!2563568 0)))

(declare-fun e!4283028 () Int)

(assert (=> d!2223889 (= lt!2563568 e!4283028)))

(declare-fun c!1329564 () Bool)

(assert (=> d!2223889 (= c!1329564 (is-Nil!68984 lt!2563553))))

(assert (=> d!2223889 (= (size!41463 lt!2563553) lt!2563568)))

(declare-fun b!7127120 () Bool)

(assert (=> b!7127120 (= e!4283028 0)))

(declare-fun b!7127121 () Bool)

(assert (=> b!7127121 (= e!4283028 (+ 1 (size!41463 (t!383085 lt!2563553))))))

(assert (= (and d!2223889 c!1329564) b!7127120))

(assert (= (and d!2223889 (not c!1329564)) b!7127121))

(declare-fun m!7844062 () Bool)

(assert (=> b!7127121 m!7844062))

(assert (=> b!7127006 d!2223889))

(assert (=> b!7127006 d!2223847))

(declare-fun d!2223891 () Bool)

(declare-fun lt!2563569 () Int)

(assert (=> d!2223891 (>= lt!2563569 0)))

(declare-fun e!4283029 () Int)

(assert (=> d!2223891 (= lt!2563569 e!4283029)))

(declare-fun c!1329565 () Bool)

(assert (=> d!2223891 (= c!1329565 (is-Nil!68984 s2!1620))))

(assert (=> d!2223891 (= (size!41463 s2!1620) lt!2563569)))

(declare-fun b!7127122 () Bool)

(assert (=> b!7127122 (= e!4283029 0)))

(declare-fun b!7127123 () Bool)

(assert (=> b!7127123 (= e!4283029 (+ 1 (size!41463 (t!383085 s2!1620))))))

(assert (= (and d!2223891 c!1329565) b!7127122))

(assert (= (and d!2223891 (not c!1329565)) b!7127123))

(declare-fun m!7844064 () Bool)

(assert (=> b!7127123 m!7844064))

(assert (=> b!7127006 d!2223891))

(declare-fun e!4283031 () Bool)

(declare-fun b!7127127 () Bool)

(declare-fun lt!2563570 () List!69108)

(assert (=> b!7127127 (= e!4283031 (or (not (= s2!1620 Nil!68984)) (= lt!2563570 (t!383085 s1!1688))))))

(declare-fun d!2223893 () Bool)

(assert (=> d!2223893 e!4283031))

(declare-fun res!2908119 () Bool)

(assert (=> d!2223893 (=> (not res!2908119) (not e!4283031))))

(assert (=> d!2223893 (= res!2908119 (= (content!14114 lt!2563570) (set.union (content!14114 (t!383085 s1!1688)) (content!14114 s2!1620))))))

(declare-fun e!4283030 () List!69108)

(assert (=> d!2223893 (= lt!2563570 e!4283030)))

(declare-fun c!1329566 () Bool)

(assert (=> d!2223893 (= c!1329566 (is-Nil!68984 (t!383085 s1!1688)))))

(assert (=> d!2223893 (= (++!16166 (t!383085 s1!1688) s2!1620) lt!2563570)))

(declare-fun b!7127126 () Bool)

(declare-fun res!2908118 () Bool)

(assert (=> b!7127126 (=> (not res!2908118) (not e!4283031))))

(assert (=> b!7127126 (= res!2908118 (= (size!41463 lt!2563570) (+ (size!41463 (t!383085 s1!1688)) (size!41463 s2!1620))))))

(declare-fun b!7127125 () Bool)

(assert (=> b!7127125 (= e!4283030 (Cons!68984 (h!75432 (t!383085 s1!1688)) (++!16166 (t!383085 (t!383085 s1!1688)) s2!1620)))))

(declare-fun b!7127124 () Bool)

(assert (=> b!7127124 (= e!4283030 s2!1620)))

(assert (= (and d!2223893 c!1329566) b!7127124))

(assert (= (and d!2223893 (not c!1329566)) b!7127125))

(assert (= (and d!2223893 res!2908119) b!7127126))

(assert (= (and b!7127126 res!2908118) b!7127127))

(declare-fun m!7844066 () Bool)

(assert (=> d!2223893 m!7844066))

(declare-fun m!7844068 () Bool)

(assert (=> d!2223893 m!7844068))

(assert (=> d!2223893 m!7843906))

(declare-fun m!7844070 () Bool)

(assert (=> b!7127126 m!7844070))

(assert (=> b!7127126 m!7843926))

(assert (=> b!7127126 m!7843910))

(declare-fun m!7844072 () Bool)

(assert (=> b!7127125 m!7844072))

(assert (=> b!7127005 d!2223893))

(declare-fun d!2223895 () Bool)

(declare-fun lt!2563571 () Int)

(assert (=> d!2223895 (>= lt!2563571 0)))

(declare-fun e!4283032 () Int)

(assert (=> d!2223895 (= lt!2563571 e!4283032)))

(declare-fun c!1329567 () Bool)

(assert (=> d!2223895 (= c!1329567 (is-Nil!68984 lt!2563552))))

(assert (=> d!2223895 (= (size!41463 lt!2563552) lt!2563571)))

(declare-fun b!7127128 () Bool)

(assert (=> b!7127128 (= e!4283032 0)))

(declare-fun b!7127129 () Bool)

(assert (=> b!7127129 (= e!4283032 (+ 1 (size!41463 (t!383085 lt!2563552))))))

(assert (= (and d!2223895 c!1329567) b!7127128))

(assert (= (and d!2223895 (not c!1329567)) b!7127129))

(declare-fun m!7844074 () Bool)

(assert (=> b!7127129 m!7844074))

(assert (=> b!7127002 d!2223895))

(assert (=> b!7127002 d!2223833))

(declare-fun d!2223897 () Bool)

(declare-fun lt!2563572 () Int)

(assert (=> d!2223897 (>= lt!2563572 0)))

(declare-fun e!4283033 () Int)

(assert (=> d!2223897 (= lt!2563572 e!4283033)))

(declare-fun c!1329568 () Bool)

(assert (=> d!2223897 (= c!1329568 (is-Nil!68984 s2Rec!140))))

(assert (=> d!2223897 (= (size!41463 s2Rec!140) lt!2563572)))

(declare-fun b!7127130 () Bool)

(assert (=> b!7127130 (= e!4283033 0)))

(declare-fun b!7127131 () Bool)

(assert (=> b!7127131 (= e!4283033 (+ 1 (size!41463 (t!383085 s2Rec!140))))))

(assert (= (and d!2223897 c!1329568) b!7127130))

(assert (= (and d!2223897 (not c!1329568)) b!7127131))

(declare-fun m!7844076 () Bool)

(assert (=> b!7127131 m!7844076))

(assert (=> b!7127002 d!2223897))

(declare-fun d!2223899 () Bool)

(assert (=> d!2223899 (= (isEmpty!40019 s2!1620) (is-Nil!68984 s2!1620))))

(assert (=> d!2223853 d!2223899))

(declare-fun lt!2563573 () List!69108)

(declare-fun b!7127135 () Bool)

(declare-fun e!4283035 () Bool)

(assert (=> b!7127135 (= e!4283035 (or (not (= s2Rec!140 Nil!68984)) (= lt!2563573 (t!383085 s1Rec!140))))))

(declare-fun d!2223901 () Bool)

(assert (=> d!2223901 e!4283035))

(declare-fun res!2908121 () Bool)

(assert (=> d!2223901 (=> (not res!2908121) (not e!4283035))))

(assert (=> d!2223901 (= res!2908121 (= (content!14114 lt!2563573) (set.union (content!14114 (t!383085 s1Rec!140)) (content!14114 s2Rec!140))))))

(declare-fun e!4283034 () List!69108)

(assert (=> d!2223901 (= lt!2563573 e!4283034)))

(declare-fun c!1329569 () Bool)

(assert (=> d!2223901 (= c!1329569 (is-Nil!68984 (t!383085 s1Rec!140)))))

(assert (=> d!2223901 (= (++!16166 (t!383085 s1Rec!140) s2Rec!140) lt!2563573)))

(declare-fun b!7127134 () Bool)

(declare-fun res!2908120 () Bool)

(assert (=> b!7127134 (=> (not res!2908120) (not e!4283035))))

(assert (=> b!7127134 (= res!2908120 (= (size!41463 lt!2563573) (+ (size!41463 (t!383085 s1Rec!140)) (size!41463 s2Rec!140))))))

(declare-fun b!7127133 () Bool)

(assert (=> b!7127133 (= e!4283034 (Cons!68984 (h!75432 (t!383085 s1Rec!140)) (++!16166 (t!383085 (t!383085 s1Rec!140)) s2Rec!140)))))

(declare-fun b!7127132 () Bool)

(assert (=> b!7127132 (= e!4283034 s2Rec!140)))

(assert (= (and d!2223901 c!1329569) b!7127132))

(assert (= (and d!2223901 (not c!1329569)) b!7127133))

(assert (= (and d!2223901 res!2908121) b!7127134))

(assert (= (and b!7127134 res!2908120) b!7127135))

(declare-fun m!7844078 () Bool)

(assert (=> d!2223901 m!7844078))

(declare-fun m!7844080 () Bool)

(assert (=> d!2223901 m!7844080))

(assert (=> d!2223901 m!7843894))

(declare-fun m!7844082 () Bool)

(assert (=> b!7127134 m!7844082))

(assert (=> b!7127134 m!7843878))

(assert (=> b!7127134 m!7843898))

(declare-fun m!7844084 () Bool)

(assert (=> b!7127133 m!7844084))

(assert (=> b!7127001 d!2223901))

(declare-fun d!2223903 () Bool)

(assert (=> d!2223903 (= (isEmpty!40019 s1!1688) (is-Nil!68984 s1!1688))))

(assert (=> d!2223845 d!2223903))

(declare-fun b!7127138 () Bool)

(declare-fun e!4283037 () Bool)

(assert (=> b!7127138 (= e!4283037 (isPrefix!5897 (tail!13935 (tail!13935 s1Rec!140)) (tail!13935 (tail!13935 s1!1688))))))

(declare-fun b!7127136 () Bool)

(declare-fun e!4283038 () Bool)

(assert (=> b!7127136 (= e!4283038 e!4283037)))

(declare-fun res!2908122 () Bool)

(assert (=> b!7127136 (=> (not res!2908122) (not e!4283037))))

(assert (=> b!7127136 (= res!2908122 (not (is-Nil!68984 (tail!13935 s1!1688))))))

(declare-fun b!7127137 () Bool)

(declare-fun res!2908125 () Bool)

(assert (=> b!7127137 (=> (not res!2908125) (not e!4283037))))

(assert (=> b!7127137 (= res!2908125 (= (head!14463 (tail!13935 s1Rec!140)) (head!14463 (tail!13935 s1!1688))))))

(declare-fun d!2223905 () Bool)

(declare-fun e!4283036 () Bool)

(assert (=> d!2223905 e!4283036))

(declare-fun res!2908123 () Bool)

(assert (=> d!2223905 (=> res!2908123 e!4283036)))

(declare-fun lt!2563574 () Bool)

(assert (=> d!2223905 (= res!2908123 (not lt!2563574))))

(assert (=> d!2223905 (= lt!2563574 e!4283038)))

(declare-fun res!2908124 () Bool)

(assert (=> d!2223905 (=> res!2908124 e!4283038)))

(assert (=> d!2223905 (= res!2908124 (is-Nil!68984 (tail!13935 s1Rec!140)))))

(assert (=> d!2223905 (= (isPrefix!5897 (tail!13935 s1Rec!140) (tail!13935 s1!1688)) lt!2563574)))

(declare-fun b!7127139 () Bool)

(assert (=> b!7127139 (= e!4283036 (>= (size!41463 (tail!13935 s1!1688)) (size!41463 (tail!13935 s1Rec!140))))))

(assert (= (and d!2223905 (not res!2908124)) b!7127136))

(assert (= (and b!7127136 res!2908122) b!7127137))

(assert (= (and b!7127137 res!2908125) b!7127138))

(assert (= (and d!2223905 (not res!2908123)) b!7127139))

(assert (=> b!7127138 m!7843880))

(declare-fun m!7844086 () Bool)

(assert (=> b!7127138 m!7844086))

(assert (=> b!7127138 m!7843882))

(declare-fun m!7844088 () Bool)

(assert (=> b!7127138 m!7844088))

(assert (=> b!7127138 m!7844086))

(assert (=> b!7127138 m!7844088))

(declare-fun m!7844090 () Bool)

(assert (=> b!7127138 m!7844090))

(assert (=> b!7127137 m!7843880))

(declare-fun m!7844092 () Bool)

(assert (=> b!7127137 m!7844092))

(assert (=> b!7127137 m!7843882))

(declare-fun m!7844094 () Bool)

(assert (=> b!7127137 m!7844094))

(assert (=> b!7127139 m!7843882))

(declare-fun m!7844096 () Bool)

(assert (=> b!7127139 m!7844096))

(assert (=> b!7127139 m!7843880))

(declare-fun m!7844098 () Bool)

(assert (=> b!7127139 m!7844098))

(assert (=> b!7126990 d!2223905))

(declare-fun d!2223907 () Bool)

(assert (=> d!2223907 (= (tail!13935 s1Rec!140) (t!383085 s1Rec!140))))

(assert (=> b!7126990 d!2223907))

(declare-fun d!2223909 () Bool)

(assert (=> d!2223909 (= (tail!13935 s1!1688) (t!383085 s1!1688))))

(assert (=> b!7126990 d!2223909))

(declare-fun bs!1886412 () Bool)

(declare-fun d!2223911 () Bool)

(assert (= bs!1886412 (and d!2223911 d!2223841)))

(declare-fun lambda!433054 () Int)

(assert (=> bs!1886412 (= lambda!433054 lambda!433042)))

(declare-fun bs!1886413 () Bool)

(assert (= bs!1886413 (and d!2223911 d!2223843)))

(assert (=> bs!1886413 (= lambda!433054 lambda!433043)))

(assert (=> d!2223911 (= (inv!88099 setElem!51762) (forall!16914 (exprs!7522 setElem!51762) lambda!433054))))

(declare-fun bs!1886414 () Bool)

(assert (= bs!1886414 d!2223911))

(declare-fun m!7844100 () Bool)

(assert (=> bs!1886414 m!7844100))

(assert (=> setNonEmpty!51762 d!2223911))

(assert (=> b!7126991 d!2223847))

(assert (=> b!7126991 d!2223833))

(declare-fun d!2223913 () Bool)

(assert (=> d!2223913 (= (head!14463 s1Rec!140) (h!75432 s1Rec!140))))

(assert (=> b!7126989 d!2223913))

(declare-fun d!2223915 () Bool)

(assert (=> d!2223915 (= (head!14463 s1!1688) (h!75432 s1!1688))))

(assert (=> b!7126989 d!2223915))

(declare-fun d!2223917 () Bool)

(declare-fun c!1329570 () Bool)

(assert (=> d!2223917 (= c!1329570 (isEmpty!40019 (tail!13935 s2Rec!140)))))

(declare-fun e!4283039 () Bool)

(assert (=> d!2223917 (= (matchZipper!3284 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (tail!13935 s2Rec!140)) e!4283039)))

(declare-fun b!7127140 () Bool)

(assert (=> b!7127140 (= e!4283039 (nullableZipper!2755 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140))))))

(declare-fun b!7127141 () Bool)

(assert (=> b!7127141 (= e!4283039 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (head!14463 (tail!13935 s2Rec!140))) (tail!13935 (tail!13935 s2Rec!140))))))

(assert (= (and d!2223917 c!1329570) b!7127140))

(assert (= (and d!2223917 (not c!1329570)) b!7127141))

(assert (=> d!2223917 m!7843936))

(declare-fun m!7844102 () Bool)

(assert (=> d!2223917 m!7844102))

(assert (=> b!7127140 m!7843934))

(declare-fun m!7844104 () Bool)

(assert (=> b!7127140 m!7844104))

(assert (=> b!7127141 m!7843936))

(declare-fun m!7844106 () Bool)

(assert (=> b!7127141 m!7844106))

(assert (=> b!7127141 m!7843934))

(assert (=> b!7127141 m!7844106))

(declare-fun m!7844108 () Bool)

(assert (=> b!7127141 m!7844108))

(assert (=> b!7127141 m!7843936))

(declare-fun m!7844110 () Bool)

(assert (=> b!7127141 m!7844110))

(assert (=> b!7127141 m!7844108))

(assert (=> b!7127141 m!7844110))

(declare-fun m!7844112 () Bool)

(assert (=> b!7127141 m!7844112))

(assert (=> b!7127017 d!2223917))

(declare-fun bs!1886415 () Bool)

(declare-fun d!2223919 () Bool)

(assert (= bs!1886415 (and d!2223919 d!2223881)))

(declare-fun lambda!433055 () Int)

(assert (=> bs!1886415 (= (= (head!14463 s2Rec!140) (head!14463 s2!1620)) (= lambda!433055 lambda!433050))))

(assert (=> d!2223919 true))

(assert (=> d!2223919 (= (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (flatMap!2632 z2!471 lambda!433055))))

(declare-fun bs!1886416 () Bool)

(assert (= bs!1886416 d!2223919))

(declare-fun m!7844114 () Bool)

(assert (=> bs!1886416 m!7844114))

(assert (=> b!7127017 d!2223919))

(declare-fun d!2223921 () Bool)

(assert (=> d!2223921 (= (head!14463 s2Rec!140) (h!75432 s2Rec!140))))

(assert (=> b!7127017 d!2223921))

(declare-fun d!2223923 () Bool)

(assert (=> d!2223923 (= (tail!13935 s2Rec!140) (t!383085 s2Rec!140))))

(assert (=> b!7127017 d!2223923))

(declare-fun d!2223925 () Bool)

(declare-fun res!2908130 () Bool)

(declare-fun e!4283044 () Bool)

(assert (=> d!2223925 (=> res!2908130 e!4283044)))

(assert (=> d!2223925 (= res!2908130 (is-Nil!68983 (exprs!7522 setElem!51753)))))

(assert (=> d!2223925 (= (forall!16914 (exprs!7522 setElem!51753) lambda!433042) e!4283044)))

(declare-fun b!7127146 () Bool)

(declare-fun e!4283045 () Bool)

(assert (=> b!7127146 (= e!4283044 e!4283045)))

(declare-fun res!2908131 () Bool)

(assert (=> b!7127146 (=> (not res!2908131) (not e!4283045))))

(declare-fun dynLambda!28110 (Int Regex!18028) Bool)

(assert (=> b!7127146 (= res!2908131 (dynLambda!28110 lambda!433042 (h!75431 (exprs!7522 setElem!51753))))))

(declare-fun b!7127147 () Bool)

(assert (=> b!7127147 (= e!4283045 (forall!16914 (t!383084 (exprs!7522 setElem!51753)) lambda!433042))))

(assert (= (and d!2223925 (not res!2908130)) b!7127146))

(assert (= (and b!7127146 res!2908131) b!7127147))

(declare-fun b_lambda!271965 () Bool)

(assert (=> (not b_lambda!271965) (not b!7127146)))

(declare-fun m!7844116 () Bool)

(assert (=> b!7127146 m!7844116))

(declare-fun m!7844118 () Bool)

(assert (=> b!7127147 m!7844118))

(assert (=> d!2223841 d!2223925))

(assert (=> b!7127016 d!2223887))

(declare-fun bs!1886417 () Bool)

(declare-fun d!2223927 () Bool)

(assert (= bs!1886417 (and d!2223927 d!2223887)))

(declare-fun lambda!433056 () Int)

(assert (=> bs!1886417 (= lambda!433056 lambda!433053)))

(assert (=> d!2223927 (= (nullableZipper!2755 z1!552) (exists!3824 z1!552 lambda!433056))))

(declare-fun bs!1886418 () Bool)

(assert (= bs!1886418 d!2223927))

(declare-fun m!7844120 () Bool)

(assert (=> bs!1886418 m!7844120))

(assert (=> b!7127012 d!2223927))

(declare-fun d!2223929 () Bool)

(declare-fun c!1329573 () Bool)

(assert (=> d!2223929 (= c!1329573 (is-Nil!68984 lt!2563553))))

(declare-fun e!4283048 () (Set C!36326))

(assert (=> d!2223929 (= (content!14114 lt!2563553) e!4283048)))

(declare-fun b!7127152 () Bool)

(assert (=> b!7127152 (= e!4283048 (as set.empty (Set C!36326)))))

(declare-fun b!7127153 () Bool)

(assert (=> b!7127153 (= e!4283048 (set.union (set.insert (h!75432 lt!2563553) (as set.empty (Set C!36326))) (content!14114 (t!383085 lt!2563553))))))

(assert (= (and d!2223929 c!1329573) b!7127152))

(assert (= (and d!2223929 (not c!1329573)) b!7127153))

(declare-fun m!7844122 () Bool)

(assert (=> b!7127153 m!7844122))

(declare-fun m!7844124 () Bool)

(assert (=> b!7127153 m!7844124))

(assert (=> d!2223839 d!2223929))

(declare-fun d!2223931 () Bool)

(declare-fun c!1329574 () Bool)

(assert (=> d!2223931 (= c!1329574 (is-Nil!68984 s1!1688))))

(declare-fun e!4283049 () (Set C!36326))

(assert (=> d!2223931 (= (content!14114 s1!1688) e!4283049)))

(declare-fun b!7127154 () Bool)

(assert (=> b!7127154 (= e!4283049 (as set.empty (Set C!36326)))))

(declare-fun b!7127155 () Bool)

(assert (=> b!7127155 (= e!4283049 (set.union (set.insert (h!75432 s1!1688) (as set.empty (Set C!36326))) (content!14114 (t!383085 s1!1688))))))

(assert (= (and d!2223931 c!1329574) b!7127154))

(assert (= (and d!2223931 (not c!1329574)) b!7127155))

(declare-fun m!7844126 () Bool)

(assert (=> b!7127155 m!7844126))

(assert (=> b!7127155 m!7844068))

(assert (=> d!2223839 d!2223931))

(declare-fun d!2223933 () Bool)

(declare-fun c!1329575 () Bool)

(assert (=> d!2223933 (= c!1329575 (is-Nil!68984 s2!1620))))

(declare-fun e!4283050 () (Set C!36326))

(assert (=> d!2223933 (= (content!14114 s2!1620) e!4283050)))

(declare-fun b!7127156 () Bool)

(assert (=> b!7127156 (= e!4283050 (as set.empty (Set C!36326)))))

(declare-fun b!7127157 () Bool)

(assert (=> b!7127157 (= e!4283050 (set.union (set.insert (h!75432 s2!1620) (as set.empty (Set C!36326))) (content!14114 (t!383085 s2!1620))))))

(assert (= (and d!2223933 c!1329575) b!7127156))

(assert (= (and d!2223933 (not c!1329575)) b!7127157))

(declare-fun m!7844128 () Bool)

(assert (=> b!7127157 m!7844128))

(declare-fun m!7844130 () Bool)

(assert (=> b!7127157 m!7844130))

(assert (=> d!2223839 d!2223933))

(declare-fun d!2223935 () Bool)

(declare-fun c!1329576 () Bool)

(assert (=> d!2223935 (= c!1329576 (isEmpty!40019 (tail!13935 s1!1688)))))

(declare-fun e!4283051 () Bool)

(assert (=> d!2223935 (= (matchZipper!3284 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (tail!13935 s1!1688)) e!4283051)))

(declare-fun b!7127158 () Bool)

(assert (=> b!7127158 (= e!4283051 (nullableZipper!2755 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688))))))

(declare-fun b!7127159 () Bool)

(assert (=> b!7127159 (= e!4283051 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (head!14463 (tail!13935 s1!1688))) (tail!13935 (tail!13935 s1!1688))))))

(assert (= (and d!2223935 c!1329576) b!7127158))

(assert (= (and d!2223935 (not c!1329576)) b!7127159))

(assert (=> d!2223935 m!7843882))

(declare-fun m!7844132 () Bool)

(assert (=> d!2223935 m!7844132))

(assert (=> b!7127158 m!7843922))

(declare-fun m!7844134 () Bool)

(assert (=> b!7127158 m!7844134))

(assert (=> b!7127159 m!7843882))

(assert (=> b!7127159 m!7844094))

(assert (=> b!7127159 m!7843922))

(assert (=> b!7127159 m!7844094))

(declare-fun m!7844136 () Bool)

(assert (=> b!7127159 m!7844136))

(assert (=> b!7127159 m!7843882))

(assert (=> b!7127159 m!7844088))

(assert (=> b!7127159 m!7844136))

(assert (=> b!7127159 m!7844088))

(declare-fun m!7844138 () Bool)

(assert (=> b!7127159 m!7844138))

(assert (=> b!7127013 d!2223935))

(declare-fun bs!1886419 () Bool)

(declare-fun d!2223937 () Bool)

(assert (= bs!1886419 (and d!2223937 d!2223881)))

(declare-fun lambda!433057 () Int)

(assert (=> bs!1886419 (= (= (head!14463 s1!1688) (head!14463 s2!1620)) (= lambda!433057 lambda!433050))))

(declare-fun bs!1886420 () Bool)

(assert (= bs!1886420 (and d!2223937 d!2223919)))

(assert (=> bs!1886420 (= (= (head!14463 s1!1688) (head!14463 s2Rec!140)) (= lambda!433057 lambda!433055))))

(assert (=> d!2223937 true))

(assert (=> d!2223937 (= (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (flatMap!2632 z1!552 lambda!433057))))

(declare-fun bs!1886421 () Bool)

(assert (= bs!1886421 d!2223937))

(declare-fun m!7844140 () Bool)

(assert (=> bs!1886421 m!7844140))

(assert (=> b!7127013 d!2223937))

(assert (=> b!7127013 d!2223915))

(assert (=> b!7127013 d!2223909))

(declare-fun d!2223939 () Bool)

(declare-fun lt!2563575 () Int)

(assert (=> d!2223939 (>= lt!2563575 0)))

(declare-fun e!4283052 () Int)

(assert (=> d!2223939 (= lt!2563575 e!4283052)))

(declare-fun c!1329577 () Bool)

(assert (=> d!2223939 (= c!1329577 (is-Nil!68984 (t!383085 s1Rec!140)))))

(assert (=> d!2223939 (= (size!41463 (t!383085 s1Rec!140)) lt!2563575)))

(declare-fun b!7127160 () Bool)

(assert (=> b!7127160 (= e!4283052 0)))

(declare-fun b!7127161 () Bool)

(assert (=> b!7127161 (= e!4283052 (+ 1 (size!41463 (t!383085 (t!383085 s1Rec!140)))))))

(assert (= (and d!2223939 c!1329577) b!7127160))

(assert (= (and d!2223939 (not c!1329577)) b!7127161))

(declare-fun m!7844142 () Bool)

(assert (=> b!7127161 m!7844142))

(assert (=> b!7126979 d!2223939))

(declare-fun d!2223941 () Bool)

(assert (=> d!2223941 (= (isEmpty!40019 s2Rec!140) (is-Nil!68984 s2Rec!140))))

(assert (=> d!2223849 d!2223941))

(declare-fun d!2223943 () Bool)

(declare-fun res!2908132 () Bool)

(declare-fun e!4283053 () Bool)

(assert (=> d!2223943 (=> res!2908132 e!4283053)))

(assert (=> d!2223943 (= res!2908132 (is-Nil!68983 (exprs!7522 setElem!51752)))))

(assert (=> d!2223943 (= (forall!16914 (exprs!7522 setElem!51752) lambda!433043) e!4283053)))

(declare-fun b!7127162 () Bool)

(declare-fun e!4283054 () Bool)

(assert (=> b!7127162 (= e!4283053 e!4283054)))

(declare-fun res!2908133 () Bool)

(assert (=> b!7127162 (=> (not res!2908133) (not e!4283054))))

(assert (=> b!7127162 (= res!2908133 (dynLambda!28110 lambda!433043 (h!75431 (exprs!7522 setElem!51752))))))

(declare-fun b!7127163 () Bool)

(assert (=> b!7127163 (= e!4283054 (forall!16914 (t!383084 (exprs!7522 setElem!51752)) lambda!433043))))

(assert (= (and d!2223943 (not res!2908132)) b!7127162))

(assert (= (and b!7127162 res!2908133) b!7127163))

(declare-fun b_lambda!271967 () Bool)

(assert (=> (not b_lambda!271967) (not b!7127162)))

(declare-fun m!7844144 () Bool)

(assert (=> b!7127162 m!7844144))

(declare-fun m!7844146 () Bool)

(assert (=> b!7127163 m!7844146))

(assert (=> d!2223843 d!2223943))

(declare-fun d!2223945 () Bool)

(declare-fun c!1329578 () Bool)

(assert (=> d!2223945 (= c!1329578 (isEmpty!40019 (tail!13935 s1Rec!140)))))

(declare-fun e!4283055 () Bool)

(assert (=> d!2223945 (= (matchZipper!3284 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (tail!13935 s1Rec!140)) e!4283055)))

(declare-fun b!7127164 () Bool)

(assert (=> b!7127164 (= e!4283055 (nullableZipper!2755 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140))))))

(declare-fun b!7127165 () Bool)

(assert (=> b!7127165 (= e!4283055 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (head!14463 (tail!13935 s1Rec!140))) (tail!13935 (tail!13935 s1Rec!140))))))

(assert (= (and d!2223945 c!1329578) b!7127164))

(assert (= (and d!2223945 (not c!1329578)) b!7127165))

(assert (=> d!2223945 m!7843880))

(declare-fun m!7844148 () Bool)

(assert (=> d!2223945 m!7844148))

(assert (=> b!7127164 m!7843942))

(declare-fun m!7844150 () Bool)

(assert (=> b!7127164 m!7844150))

(assert (=> b!7127165 m!7843880))

(assert (=> b!7127165 m!7844092))

(assert (=> b!7127165 m!7843942))

(assert (=> b!7127165 m!7844092))

(declare-fun m!7844152 () Bool)

(assert (=> b!7127165 m!7844152))

(assert (=> b!7127165 m!7843880))

(assert (=> b!7127165 m!7844086))

(assert (=> b!7127165 m!7844152))

(assert (=> b!7127165 m!7844086))

(declare-fun m!7844154 () Bool)

(assert (=> b!7127165 m!7844154))

(assert (=> b!7127019 d!2223945))

(declare-fun bs!1886422 () Bool)

(declare-fun d!2223947 () Bool)

(assert (= bs!1886422 (and d!2223947 d!2223881)))

(declare-fun lambda!433058 () Int)

(assert (=> bs!1886422 (= (= (head!14463 s1Rec!140) (head!14463 s2!1620)) (= lambda!433058 lambda!433050))))

(declare-fun bs!1886423 () Bool)

(assert (= bs!1886423 (and d!2223947 d!2223919)))

(assert (=> bs!1886423 (= (= (head!14463 s1Rec!140) (head!14463 s2Rec!140)) (= lambda!433058 lambda!433055))))

(declare-fun bs!1886424 () Bool)

(assert (= bs!1886424 (and d!2223947 d!2223937)))

(assert (=> bs!1886424 (= (= (head!14463 s1Rec!140) (head!14463 s1!1688)) (= lambda!433058 lambda!433057))))

(assert (=> d!2223947 true))

(assert (=> d!2223947 (= (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (flatMap!2632 z1!552 lambda!433058))))

(declare-fun bs!1886425 () Bool)

(assert (= bs!1886425 d!2223947))

(declare-fun m!7844156 () Bool)

(assert (=> bs!1886425 m!7844156))

(assert (=> b!7127019 d!2223947))

(assert (=> b!7127019 d!2223913))

(assert (=> b!7127019 d!2223907))

(assert (=> b!7127018 d!2223927))

(declare-fun d!2223949 () Bool)

(declare-fun lt!2563576 () Int)

(assert (=> d!2223949 (>= lt!2563576 0)))

(declare-fun e!4283056 () Int)

(assert (=> d!2223949 (= lt!2563576 e!4283056)))

(declare-fun c!1329579 () Bool)

(assert (=> d!2223949 (= c!1329579 (is-Nil!68984 (t!383085 s1!1688)))))

(assert (=> d!2223949 (= (size!41463 (t!383085 s1!1688)) lt!2563576)))

(declare-fun b!7127166 () Bool)

(assert (=> b!7127166 (= e!4283056 0)))

(declare-fun b!7127167 () Bool)

(assert (=> b!7127167 (= e!4283056 (+ 1 (size!41463 (t!383085 (t!383085 s1!1688)))))))

(assert (= (and d!2223949 c!1329579) b!7127166))

(assert (= (and d!2223949 (not c!1329579)) b!7127167))

(declare-fun m!7844158 () Bool)

(assert (=> b!7127167 m!7844158))

(assert (=> b!7127015 d!2223949))

(declare-fun bs!1886426 () Bool)

(declare-fun d!2223951 () Bool)

(assert (= bs!1886426 (and d!2223951 d!2223841)))

(declare-fun lambda!433059 () Int)

(assert (=> bs!1886426 (= lambda!433059 lambda!433042)))

(declare-fun bs!1886427 () Bool)

(assert (= bs!1886427 (and d!2223951 d!2223843)))

(assert (=> bs!1886427 (= lambda!433059 lambda!433043)))

(declare-fun bs!1886428 () Bool)

(assert (= bs!1886428 (and d!2223951 d!2223911)))

(assert (=> bs!1886428 (= lambda!433059 lambda!433054)))

(assert (=> d!2223951 (= (inv!88099 setElem!51763) (forall!16914 (exprs!7522 setElem!51763) lambda!433059))))

(declare-fun bs!1886429 () Bool)

(assert (= bs!1886429 d!2223951))

(declare-fun m!7844160 () Bool)

(assert (=> bs!1886429 m!7844160))

(assert (=> setNonEmpty!51763 d!2223951))

(declare-fun d!2223953 () Bool)

(declare-fun c!1329580 () Bool)

(assert (=> d!2223953 (= c!1329580 (is-Nil!68984 lt!2563552))))

(declare-fun e!4283057 () (Set C!36326))

(assert (=> d!2223953 (= (content!14114 lt!2563552) e!4283057)))

(declare-fun b!7127168 () Bool)

(assert (=> b!7127168 (= e!4283057 (as set.empty (Set C!36326)))))

(declare-fun b!7127169 () Bool)

(assert (=> b!7127169 (= e!4283057 (set.union (set.insert (h!75432 lt!2563552) (as set.empty (Set C!36326))) (content!14114 (t!383085 lt!2563552))))))

(assert (= (and d!2223953 c!1329580) b!7127168))

(assert (= (and d!2223953 (not c!1329580)) b!7127169))

(declare-fun m!7844162 () Bool)

(assert (=> b!7127169 m!7844162))

(declare-fun m!7844164 () Bool)

(assert (=> b!7127169 m!7844164))

(assert (=> d!2223837 d!2223953))

(declare-fun d!2223955 () Bool)

(declare-fun c!1329581 () Bool)

(assert (=> d!2223955 (= c!1329581 (is-Nil!68984 s1Rec!140))))

(declare-fun e!4283058 () (Set C!36326))

(assert (=> d!2223955 (= (content!14114 s1Rec!140) e!4283058)))

(declare-fun b!7127170 () Bool)

(assert (=> b!7127170 (= e!4283058 (as set.empty (Set C!36326)))))

(declare-fun b!7127171 () Bool)

(assert (=> b!7127171 (= e!4283058 (set.union (set.insert (h!75432 s1Rec!140) (as set.empty (Set C!36326))) (content!14114 (t!383085 s1Rec!140))))))

(assert (= (and d!2223955 c!1329581) b!7127170))

(assert (= (and d!2223955 (not c!1329581)) b!7127171))

(declare-fun m!7844166 () Bool)

(assert (=> b!7127171 m!7844166))

(assert (=> b!7127171 m!7844080))

(assert (=> d!2223837 d!2223955))

(declare-fun d!2223957 () Bool)

(declare-fun c!1329582 () Bool)

(assert (=> d!2223957 (= c!1329582 (is-Nil!68984 s2Rec!140))))

(declare-fun e!4283059 () (Set C!36326))

(assert (=> d!2223957 (= (content!14114 s2Rec!140) e!4283059)))

(declare-fun b!7127172 () Bool)

(assert (=> b!7127172 (= e!4283059 (as set.empty (Set C!36326)))))

(declare-fun b!7127173 () Bool)

(assert (=> b!7127173 (= e!4283059 (set.union (set.insert (h!75432 s2Rec!140) (as set.empty (Set C!36326))) (content!14114 (t!383085 s2Rec!140))))))

(assert (= (and d!2223957 c!1329582) b!7127172))

(assert (= (and d!2223957 (not c!1329582)) b!7127173))

(declare-fun m!7844168 () Bool)

(assert (=> b!7127173 m!7844168))

(declare-fun m!7844170 () Bool)

(assert (=> b!7127173 m!7844170))

(assert (=> d!2223837 d!2223957))

(declare-fun d!2223959 () Bool)

(assert (=> d!2223959 (= (isEmpty!40019 s1Rec!140) (is-Nil!68984 s1Rec!140))))

(assert (=> d!2223851 d!2223959))

(declare-fun condSetEmpty!51768 () Bool)

(assert (=> setNonEmpty!51763 (= condSetEmpty!51768 (= setRest!51763 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51768 () Bool)

(assert (=> setNonEmpty!51763 (= tp!1963400 setRes!51768)))

(declare-fun setIsEmpty!51768 () Bool)

(assert (=> setIsEmpty!51768 setRes!51768))

(declare-fun tp!1963431 () Bool)

(declare-fun setNonEmpty!51768 () Bool)

(declare-fun setElem!51768 () Context!14044)

(declare-fun e!4283060 () Bool)

(assert (=> setNonEmpty!51768 (= setRes!51768 (and tp!1963431 (inv!88099 setElem!51768) e!4283060))))

(declare-fun setRest!51768 () (Set Context!14044))

(assert (=> setNonEmpty!51768 (= setRest!51763 (set.union (set.insert setElem!51768 (as set.empty (Set Context!14044))) setRest!51768))))

(declare-fun b!7127174 () Bool)

(declare-fun tp!1963430 () Bool)

(assert (=> b!7127174 (= e!4283060 tp!1963430)))

(assert (= (and setNonEmpty!51763 condSetEmpty!51768) setIsEmpty!51768))

(assert (= (and setNonEmpty!51763 (not condSetEmpty!51768)) setNonEmpty!51768))

(assert (= setNonEmpty!51768 b!7127174))

(declare-fun m!7844172 () Bool)

(assert (=> setNonEmpty!51768 m!7844172))

(declare-fun b!7127188 () Bool)

(declare-fun e!4283063 () Bool)

(declare-fun tp!1963443 () Bool)

(declare-fun tp!1963444 () Bool)

(assert (=> b!7127188 (= e!4283063 (and tp!1963443 tp!1963444))))

(declare-fun b!7127185 () Bool)

(assert (=> b!7127185 (= e!4283063 tp_is_empty!45657)))

(assert (=> b!7127041 (= tp!1963404 e!4283063)))

(declare-fun b!7127187 () Bool)

(declare-fun tp!1963442 () Bool)

(assert (=> b!7127187 (= e!4283063 tp!1963442)))

(declare-fun b!7127186 () Bool)

(declare-fun tp!1963445 () Bool)

(declare-fun tp!1963446 () Bool)

(assert (=> b!7127186 (= e!4283063 (and tp!1963445 tp!1963446))))

(assert (= (and b!7127041 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51753)))) b!7127185))

(assert (= (and b!7127041 (is-Concat!26873 (h!75431 (exprs!7522 setElem!51753)))) b!7127186))

(assert (= (and b!7127041 (is-Star!18028 (h!75431 (exprs!7522 setElem!51753)))) b!7127187))

(assert (= (and b!7127041 (is-Union!18028 (h!75431 (exprs!7522 setElem!51753)))) b!7127188))

(declare-fun b!7127189 () Bool)

(declare-fun e!4283064 () Bool)

(declare-fun tp!1963447 () Bool)

(declare-fun tp!1963448 () Bool)

(assert (=> b!7127189 (= e!4283064 (and tp!1963447 tp!1963448))))

(assert (=> b!7127041 (= tp!1963405 e!4283064)))

(assert (= (and b!7127041 (is-Cons!68983 (t!383084 (exprs!7522 setElem!51753)))) b!7127189))

(declare-fun b!7127190 () Bool)

(declare-fun e!4283065 () Bool)

(declare-fun tp!1963449 () Bool)

(assert (=> b!7127190 (= e!4283065 (and tp_is_empty!45657 tp!1963449))))

(assert (=> b!7127031 (= tp!1963392 e!4283065)))

(assert (= (and b!7127031 (is-Cons!68984 (t!383085 (t!383085 s2!1620)))) b!7127190))

(declare-fun b!7127191 () Bool)

(declare-fun e!4283066 () Bool)

(declare-fun tp!1963450 () Bool)

(declare-fun tp!1963451 () Bool)

(assert (=> b!7127191 (= e!4283066 (and tp!1963450 tp!1963451))))

(assert (=> b!7127037 (= tp!1963399 e!4283066)))

(assert (= (and b!7127037 (is-Cons!68983 (exprs!7522 setElem!51763))) b!7127191))

(declare-fun b!7127192 () Bool)

(declare-fun e!4283067 () Bool)

(declare-fun tp!1963452 () Bool)

(assert (=> b!7127192 (= e!4283067 (and tp_is_empty!45657 tp!1963452))))

(assert (=> b!7127038 (= tp!1963401 e!4283067)))

(assert (= (and b!7127038 (is-Cons!68984 (t!383085 (t!383085 s!7390)))) b!7127192))

(declare-fun condSetEmpty!51769 () Bool)

(assert (=> setNonEmpty!51762 (= condSetEmpty!51769 (= setRest!51762 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51769 () Bool)

(assert (=> setNonEmpty!51762 (= tp!1963398 setRes!51769)))

(declare-fun setIsEmpty!51769 () Bool)

(assert (=> setIsEmpty!51769 setRes!51769))

(declare-fun e!4283068 () Bool)

(declare-fun setElem!51769 () Context!14044)

(declare-fun tp!1963454 () Bool)

(declare-fun setNonEmpty!51769 () Bool)

(assert (=> setNonEmpty!51769 (= setRes!51769 (and tp!1963454 (inv!88099 setElem!51769) e!4283068))))

(declare-fun setRest!51769 () (Set Context!14044))

(assert (=> setNonEmpty!51769 (= setRest!51762 (set.union (set.insert setElem!51769 (as set.empty (Set Context!14044))) setRest!51769))))

(declare-fun b!7127193 () Bool)

(declare-fun tp!1963453 () Bool)

(assert (=> b!7127193 (= e!4283068 tp!1963453)))

(assert (= (and setNonEmpty!51762 condSetEmpty!51769) setIsEmpty!51769))

(assert (= (and setNonEmpty!51762 (not condSetEmpty!51769)) setNonEmpty!51769))

(assert (= setNonEmpty!51769 b!7127193))

(declare-fun m!7844174 () Bool)

(assert (=> setNonEmpty!51769 m!7844174))

(declare-fun b!7127194 () Bool)

(declare-fun e!4283069 () Bool)

(declare-fun tp!1963455 () Bool)

(declare-fun tp!1963456 () Bool)

(assert (=> b!7127194 (= e!4283069 (and tp!1963455 tp!1963456))))

(assert (=> b!7127036 (= tp!1963397 e!4283069)))

(assert (= (and b!7127036 (is-Cons!68983 (exprs!7522 setElem!51762))) b!7127194))

(declare-fun b!7127195 () Bool)

(declare-fun e!4283070 () Bool)

(declare-fun tp!1963457 () Bool)

(assert (=> b!7127195 (= e!4283070 (and tp_is_empty!45657 tp!1963457))))

(assert (=> b!7127042 (= tp!1963406 e!4283070)))

(assert (= (and b!7127042 (is-Cons!68984 (t!383085 (t!383085 s2Rec!140)))) b!7127195))

(declare-fun b!7127196 () Bool)

(declare-fun e!4283071 () Bool)

(declare-fun tp!1963458 () Bool)

(assert (=> b!7127196 (= e!4283071 (and tp_is_empty!45657 tp!1963458))))

(assert (=> b!7127039 (= tp!1963402 e!4283071)))

(assert (= (and b!7127039 (is-Cons!68984 (t!383085 (t!383085 s1!1688)))) b!7127196))

(declare-fun b!7127197 () Bool)

(declare-fun e!4283072 () Bool)

(declare-fun tp!1963459 () Bool)

(assert (=> b!7127197 (= e!4283072 (and tp_is_empty!45657 tp!1963459))))

(assert (=> b!7127040 (= tp!1963403 e!4283072)))

(assert (= (and b!7127040 (is-Cons!68984 (t!383085 (t!383085 s1Rec!140)))) b!7127197))

(declare-fun b!7127201 () Bool)

(declare-fun e!4283073 () Bool)

(declare-fun tp!1963461 () Bool)

(declare-fun tp!1963462 () Bool)

(assert (=> b!7127201 (= e!4283073 (and tp!1963461 tp!1963462))))

(declare-fun b!7127198 () Bool)

(assert (=> b!7127198 (= e!4283073 tp_is_empty!45657)))

(assert (=> b!7127026 (= tp!1963388 e!4283073)))

(declare-fun b!7127200 () Bool)

(declare-fun tp!1963460 () Bool)

(assert (=> b!7127200 (= e!4283073 tp!1963460)))

(declare-fun b!7127199 () Bool)

(declare-fun tp!1963463 () Bool)

(declare-fun tp!1963464 () Bool)

(assert (=> b!7127199 (= e!4283073 (and tp!1963463 tp!1963464))))

(assert (= (and b!7127026 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51752)))) b!7127198))

(assert (= (and b!7127026 (is-Concat!26873 (h!75431 (exprs!7522 setElem!51752)))) b!7127199))

(assert (= (and b!7127026 (is-Star!18028 (h!75431 (exprs!7522 setElem!51752)))) b!7127200))

(assert (= (and b!7127026 (is-Union!18028 (h!75431 (exprs!7522 setElem!51752)))) b!7127201))

(declare-fun b!7127202 () Bool)

(declare-fun e!4283074 () Bool)

(declare-fun tp!1963465 () Bool)

(declare-fun tp!1963466 () Bool)

(assert (=> b!7127202 (= e!4283074 (and tp!1963465 tp!1963466))))

(assert (=> b!7127026 (= tp!1963389 e!4283074)))

(assert (= (and b!7127026 (is-Cons!68983 (t!383084 (exprs!7522 setElem!51752)))) b!7127202))

(declare-fun b_lambda!271969 () Bool)

(assert (= b_lambda!271967 (or d!2223843 b_lambda!271969)))

(declare-fun bs!1886430 () Bool)

(declare-fun d!2223961 () Bool)

(assert (= bs!1886430 (and d!2223961 d!2223843)))

(declare-fun validRegex!9266 (Regex!18028) Bool)

(assert (=> bs!1886430 (= (dynLambda!28110 lambda!433043 (h!75431 (exprs!7522 setElem!51752))) (validRegex!9266 (h!75431 (exprs!7522 setElem!51752))))))

(declare-fun m!7844176 () Bool)

(assert (=> bs!1886430 m!7844176))

(assert (=> b!7127162 d!2223961))

(declare-fun b_lambda!271971 () Bool)

(assert (= b_lambda!271965 (or d!2223841 b_lambda!271971)))

(declare-fun bs!1886431 () Bool)

(declare-fun d!2223963 () Bool)

(assert (= bs!1886431 (and d!2223963 d!2223841)))

(assert (=> bs!1886431 (= (dynLambda!28110 lambda!433042 (h!75431 (exprs!7522 setElem!51753))) (validRegex!9266 (h!75431 (exprs!7522 setElem!51753))))))

(declare-fun m!7844178 () Bool)

(assert (=> bs!1886431 m!7844178))

(assert (=> b!7127146 d!2223963))

(push 1)

(assert (not b!7127133))

(assert (not b!7127157))

(assert (not b!7127129))

(assert (not b!7127165))

(assert (not d!2223919))

(assert (not b!7127171))

(assert (not b!7127139))

(assert (not b!7127169))

(assert (not b!7127141))

(assert (not b!7127117))

(assert (not d!2223881))

(assert (not b!7127197))

(assert (not d!2223951))

(assert (not b!7127188))

(assert (not b!7127189))

(assert (not b!7127201))

(assert (not b!7127167))

(assert (not b!7127153))

(assert (not d!2223917))

(assert (not b!7127140))

(assert (not b!7127199))

(assert (not bs!1886430))

(assert (not b!7127138))

(assert (not d!2223911))

(assert (not b!7127190))

(assert (not b!7127161))

(assert (not b!7127194))

(assert (not bs!1886431))

(assert (not b!7127155))

(assert (not d!2223927))

(assert (not b!7127200))

(assert (not b_lambda!271971))

(assert (not b!7127126))

(assert (not d!2223945))

(assert (not d!2223879))

(assert (not b!7127173))

(assert (not b!7127191))

(assert (not b!7127187))

(assert (not b!7127163))

(assert (not b_lambda!271969))

(assert (not d!2223935))

(assert (not b!7127193))

(assert (not b!7127137))

(assert (not b!7127115))

(assert (not b!7127123))

(assert (not b!7127196))

(assert (not b!7127192))

(assert (not b!7127164))

(assert (not b!7127116))

(assert (not b!7127121))

(assert (not setNonEmpty!51769))

(assert (not d!2223901))

(assert (not b!7127202))

(assert (not b!7127131))

(assert tp_is_empty!45657)

(assert (not b!7127186))

(assert (not b!7127195))

(assert (not d!2223887))

(assert (not d!2223947))

(assert (not setNonEmpty!51768))

(assert (not b!7127158))

(assert (not b!7127159))

(assert (not b!7127134))

(assert (not d!2223893))

(assert (not b!7127174))

(assert (not d!2223937))

(assert (not b!7127125))

(assert (not b!7127147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2224053 () Bool)

(assert (=> d!2224053 (= (isEmpty!40019 (tail!13935 s2!1620)) (is-Nil!68984 (tail!13935 s2!1620)))))

(assert (=> d!2223879 d!2224053))

(declare-fun b!7127294 () Bool)

(declare-fun e!4283125 () Bool)

(assert (=> b!7127294 (= e!4283125 (isPrefix!5897 (tail!13935 (tail!13935 (tail!13935 s1Rec!140))) (tail!13935 (tail!13935 (tail!13935 s1!1688)))))))

(declare-fun b!7127292 () Bool)

(declare-fun e!4283126 () Bool)

(assert (=> b!7127292 (= e!4283126 e!4283125)))

(declare-fun res!2908150 () Bool)

(assert (=> b!7127292 (=> (not res!2908150) (not e!4283125))))

(assert (=> b!7127292 (= res!2908150 (not (is-Nil!68984 (tail!13935 (tail!13935 s1!1688)))))))

(declare-fun b!7127293 () Bool)

(declare-fun res!2908153 () Bool)

(assert (=> b!7127293 (=> (not res!2908153) (not e!4283125))))

(assert (=> b!7127293 (= res!2908153 (= (head!14463 (tail!13935 (tail!13935 s1Rec!140))) (head!14463 (tail!13935 (tail!13935 s1!1688)))))))

(declare-fun d!2224055 () Bool)

(declare-fun e!4283124 () Bool)

(assert (=> d!2224055 e!4283124))

(declare-fun res!2908151 () Bool)

(assert (=> d!2224055 (=> res!2908151 e!4283124)))

(declare-fun lt!2563587 () Bool)

(assert (=> d!2224055 (= res!2908151 (not lt!2563587))))

(assert (=> d!2224055 (= lt!2563587 e!4283126)))

(declare-fun res!2908152 () Bool)

(assert (=> d!2224055 (=> res!2908152 e!4283126)))

(assert (=> d!2224055 (= res!2908152 (is-Nil!68984 (tail!13935 (tail!13935 s1Rec!140))))))

(assert (=> d!2224055 (= (isPrefix!5897 (tail!13935 (tail!13935 s1Rec!140)) (tail!13935 (tail!13935 s1!1688))) lt!2563587)))

(declare-fun b!7127295 () Bool)

(assert (=> b!7127295 (= e!4283124 (>= (size!41463 (tail!13935 (tail!13935 s1!1688))) (size!41463 (tail!13935 (tail!13935 s1Rec!140)))))))

(assert (= (and d!2224055 (not res!2908152)) b!7127292))

(assert (= (and b!7127292 res!2908150) b!7127293))

(assert (= (and b!7127293 res!2908153) b!7127294))

(assert (= (and d!2224055 (not res!2908151)) b!7127295))

(assert (=> b!7127294 m!7844086))

(declare-fun m!7844316 () Bool)

(assert (=> b!7127294 m!7844316))

(assert (=> b!7127294 m!7844088))

(declare-fun m!7844318 () Bool)

(assert (=> b!7127294 m!7844318))

(assert (=> b!7127294 m!7844316))

(assert (=> b!7127294 m!7844318))

(declare-fun m!7844320 () Bool)

(assert (=> b!7127294 m!7844320))

(assert (=> b!7127293 m!7844086))

(declare-fun m!7844322 () Bool)

(assert (=> b!7127293 m!7844322))

(assert (=> b!7127293 m!7844088))

(declare-fun m!7844324 () Bool)

(assert (=> b!7127293 m!7844324))

(assert (=> b!7127295 m!7844088))

(declare-fun m!7844326 () Bool)

(assert (=> b!7127295 m!7844326))

(assert (=> b!7127295 m!7844086))

(declare-fun m!7844328 () Bool)

(assert (=> b!7127295 m!7844328))

(assert (=> b!7127138 d!2224055))

(declare-fun d!2224057 () Bool)

(assert (=> d!2224057 (= (tail!13935 (tail!13935 s1Rec!140)) (t!383085 (tail!13935 s1Rec!140)))))

(assert (=> b!7127138 d!2224057))

(declare-fun d!2224059 () Bool)

(assert (=> d!2224059 (= (tail!13935 (tail!13935 s1!1688)) (t!383085 (tail!13935 s1!1688)))))

(assert (=> b!7127138 d!2224059))

(declare-fun d!2224061 () Bool)

(declare-fun lt!2563588 () Int)

(assert (=> d!2224061 (>= lt!2563588 0)))

(declare-fun e!4283127 () Int)

(assert (=> d!2224061 (= lt!2563588 e!4283127)))

(declare-fun c!1329608 () Bool)

(assert (=> d!2224061 (= c!1329608 (is-Nil!68984 (t!383085 s2Rec!140)))))

(assert (=> d!2224061 (= (size!41463 (t!383085 s2Rec!140)) lt!2563588)))

(declare-fun b!7127296 () Bool)

(assert (=> b!7127296 (= e!4283127 0)))

(declare-fun b!7127297 () Bool)

(assert (=> b!7127297 (= e!4283127 (+ 1 (size!41463 (t!383085 (t!383085 s2Rec!140)))))))

(assert (= (and d!2224061 c!1329608) b!7127296))

(assert (= (and d!2224061 (not c!1329608)) b!7127297))

(declare-fun m!7844330 () Bool)

(assert (=> b!7127297 m!7844330))

(assert (=> b!7127131 d!2224061))

(declare-fun d!2224063 () Bool)

(declare-fun res!2908154 () Bool)

(declare-fun e!4283128 () Bool)

(assert (=> d!2224063 (=> res!2908154 e!4283128)))

(assert (=> d!2224063 (= res!2908154 (is-Nil!68983 (t!383084 (exprs!7522 setElem!51753))))))

(assert (=> d!2224063 (= (forall!16914 (t!383084 (exprs!7522 setElem!51753)) lambda!433042) e!4283128)))

(declare-fun b!7127298 () Bool)

(declare-fun e!4283129 () Bool)

(assert (=> b!7127298 (= e!4283128 e!4283129)))

(declare-fun res!2908155 () Bool)

(assert (=> b!7127298 (=> (not res!2908155) (not e!4283129))))

(assert (=> b!7127298 (= res!2908155 (dynLambda!28110 lambda!433042 (h!75431 (t!383084 (exprs!7522 setElem!51753)))))))

(declare-fun b!7127299 () Bool)

(assert (=> b!7127299 (= e!4283129 (forall!16914 (t!383084 (t!383084 (exprs!7522 setElem!51753))) lambda!433042))))

(assert (= (and d!2224063 (not res!2908154)) b!7127298))

(assert (= (and b!7127298 res!2908155) b!7127299))

(declare-fun b_lambda!271981 () Bool)

(assert (=> (not b_lambda!271981) (not b!7127298)))

(declare-fun m!7844332 () Bool)

(assert (=> b!7127298 m!7844332))

(declare-fun m!7844334 () Bool)

(assert (=> b!7127299 m!7844334))

(assert (=> b!7127147 d!2224063))

(declare-fun d!2224065 () Bool)

(declare-fun lt!2563589 () Int)

(assert (=> d!2224065 (>= lt!2563589 0)))

(declare-fun e!4283130 () Int)

(assert (=> d!2224065 (= lt!2563589 e!4283130)))

(declare-fun c!1329609 () Bool)

(assert (=> d!2224065 (= c!1329609 (is-Nil!68984 (t!383085 (t!383085 s!7390))))))

(assert (=> d!2224065 (= (size!41463 (t!383085 (t!383085 s!7390))) lt!2563589)))

(declare-fun b!7127300 () Bool)

(assert (=> b!7127300 (= e!4283130 0)))

(declare-fun b!7127301 () Bool)

(assert (=> b!7127301 (= e!4283130 (+ 1 (size!41463 (t!383085 (t!383085 (t!383085 s!7390))))))))

(assert (= (and d!2224065 c!1329609) b!7127300))

(assert (= (and d!2224065 (not c!1329609)) b!7127301))

(declare-fun m!7844336 () Bool)

(assert (=> b!7127301 m!7844336))

(assert (=> b!7127115 d!2224065))

(declare-fun d!2224067 () Bool)

(declare-fun res!2908156 () Bool)

(declare-fun e!4283131 () Bool)

(assert (=> d!2224067 (=> res!2908156 e!4283131)))

(assert (=> d!2224067 (= res!2908156 (is-Nil!68983 (exprs!7522 setElem!51762)))))

(assert (=> d!2224067 (= (forall!16914 (exprs!7522 setElem!51762) lambda!433054) e!4283131)))

(declare-fun b!7127302 () Bool)

(declare-fun e!4283132 () Bool)

(assert (=> b!7127302 (= e!4283131 e!4283132)))

(declare-fun res!2908157 () Bool)

(assert (=> b!7127302 (=> (not res!2908157) (not e!4283132))))

(assert (=> b!7127302 (= res!2908157 (dynLambda!28110 lambda!433054 (h!75431 (exprs!7522 setElem!51762))))))

(declare-fun b!7127303 () Bool)

(assert (=> b!7127303 (= e!4283132 (forall!16914 (t!383084 (exprs!7522 setElem!51762)) lambda!433054))))

(assert (= (and d!2224067 (not res!2908156)) b!7127302))

(assert (= (and b!7127302 res!2908157) b!7127303))

(declare-fun b_lambda!271983 () Bool)

(assert (=> (not b_lambda!271983) (not b!7127302)))

(declare-fun m!7844338 () Bool)

(assert (=> b!7127302 m!7844338))

(declare-fun m!7844340 () Bool)

(assert (=> b!7127303 m!7844340))

(assert (=> d!2223911 d!2224067))

(declare-fun lt!2563590 () List!69108)

(declare-fun b!7127307 () Bool)

(declare-fun e!4283134 () Bool)

(assert (=> b!7127307 (= e!4283134 (or (not (= s2Rec!140 Nil!68984)) (= lt!2563590 (t!383085 (t!383085 s1Rec!140)))))))

(declare-fun d!2224069 () Bool)

(assert (=> d!2224069 e!4283134))

(declare-fun res!2908159 () Bool)

(assert (=> d!2224069 (=> (not res!2908159) (not e!4283134))))

(assert (=> d!2224069 (= res!2908159 (= (content!14114 lt!2563590) (set.union (content!14114 (t!383085 (t!383085 s1Rec!140))) (content!14114 s2Rec!140))))))

(declare-fun e!4283133 () List!69108)

(assert (=> d!2224069 (= lt!2563590 e!4283133)))

(declare-fun c!1329610 () Bool)

(assert (=> d!2224069 (= c!1329610 (is-Nil!68984 (t!383085 (t!383085 s1Rec!140))))))

(assert (=> d!2224069 (= (++!16166 (t!383085 (t!383085 s1Rec!140)) s2Rec!140) lt!2563590)))

(declare-fun b!7127306 () Bool)

(declare-fun res!2908158 () Bool)

(assert (=> b!7127306 (=> (not res!2908158) (not e!4283134))))

(assert (=> b!7127306 (= res!2908158 (= (size!41463 lt!2563590) (+ (size!41463 (t!383085 (t!383085 s1Rec!140))) (size!41463 s2Rec!140))))))

(declare-fun b!7127305 () Bool)

(assert (=> b!7127305 (= e!4283133 (Cons!68984 (h!75432 (t!383085 (t!383085 s1Rec!140))) (++!16166 (t!383085 (t!383085 (t!383085 s1Rec!140))) s2Rec!140)))))

(declare-fun b!7127304 () Bool)

(assert (=> b!7127304 (= e!4283133 s2Rec!140)))

(assert (= (and d!2224069 c!1329610) b!7127304))

(assert (= (and d!2224069 (not c!1329610)) b!7127305))

(assert (= (and d!2224069 res!2908159) b!7127306))

(assert (= (and b!7127306 res!2908158) b!7127307))

(declare-fun m!7844342 () Bool)

(assert (=> d!2224069 m!7844342))

(declare-fun m!7844344 () Bool)

(assert (=> d!2224069 m!7844344))

(assert (=> d!2224069 m!7843894))

(declare-fun m!7844346 () Bool)

(assert (=> b!7127306 m!7844346))

(assert (=> b!7127306 m!7844142))

(assert (=> b!7127306 m!7843898))

(declare-fun m!7844348 () Bool)

(assert (=> b!7127305 m!7844348))

(assert (=> b!7127133 d!2224069))

(declare-fun d!2224071 () Bool)

(declare-fun c!1329611 () Bool)

(assert (=> d!2224071 (= c!1329611 (is-Nil!68984 (t!383085 s1!1688)))))

(declare-fun e!4283135 () (Set C!36326))

(assert (=> d!2224071 (= (content!14114 (t!383085 s1!1688)) e!4283135)))

(declare-fun b!7127308 () Bool)

(assert (=> b!7127308 (= e!4283135 (as set.empty (Set C!36326)))))

(declare-fun b!7127309 () Bool)

(assert (=> b!7127309 (= e!4283135 (set.union (set.insert (h!75432 (t!383085 s1!1688)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 s1!1688)))))))

(assert (= (and d!2224071 c!1329611) b!7127308))

(assert (= (and d!2224071 (not c!1329611)) b!7127309))

(declare-fun m!7844350 () Bool)

(assert (=> b!7127309 m!7844350))

(declare-fun m!7844352 () Bool)

(assert (=> b!7127309 m!7844352))

(assert (=> b!7127155 d!2224071))

(declare-fun d!2224073 () Bool)

(declare-fun lt!2563591 () Int)

(assert (=> d!2224073 (>= lt!2563591 0)))

(declare-fun e!4283136 () Int)

(assert (=> d!2224073 (= lt!2563591 e!4283136)))

(declare-fun c!1329612 () Bool)

(assert (=> d!2224073 (= c!1329612 (is-Nil!68984 lt!2563570))))

(assert (=> d!2224073 (= (size!41463 lt!2563570) lt!2563591)))

(declare-fun b!7127310 () Bool)

(assert (=> b!7127310 (= e!4283136 0)))

(declare-fun b!7127311 () Bool)

(assert (=> b!7127311 (= e!4283136 (+ 1 (size!41463 (t!383085 lt!2563570))))))

(assert (= (and d!2224073 c!1329612) b!7127310))

(assert (= (and d!2224073 (not c!1329612)) b!7127311))

(declare-fun m!7844354 () Bool)

(assert (=> b!7127311 m!7844354))

(assert (=> b!7127126 d!2224073))

(assert (=> b!7127126 d!2223949))

(assert (=> b!7127126 d!2223891))

(declare-fun d!2224075 () Bool)

(declare-fun c!1329613 () Bool)

(assert (=> d!2224075 (= c!1329613 (isEmpty!40019 (tail!13935 (tail!13935 s1Rec!140))))))

(declare-fun e!4283137 () Bool)

(assert (=> d!2224075 (= (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (head!14463 (tail!13935 s1Rec!140))) (tail!13935 (tail!13935 s1Rec!140))) e!4283137)))

(declare-fun b!7127312 () Bool)

(assert (=> b!7127312 (= e!4283137 (nullableZipper!2755 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (head!14463 (tail!13935 s1Rec!140)))))))

(declare-fun b!7127313 () Bool)

(assert (=> b!7127313 (= e!4283137 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (head!14463 (tail!13935 s1Rec!140))) (head!14463 (tail!13935 (tail!13935 s1Rec!140)))) (tail!13935 (tail!13935 (tail!13935 s1Rec!140)))))))

(assert (= (and d!2224075 c!1329613) b!7127312))

(assert (= (and d!2224075 (not c!1329613)) b!7127313))

(assert (=> d!2224075 m!7844086))

(declare-fun m!7844356 () Bool)

(assert (=> d!2224075 m!7844356))

(assert (=> b!7127312 m!7844152))

(declare-fun m!7844358 () Bool)

(assert (=> b!7127312 m!7844358))

(assert (=> b!7127313 m!7844086))

(assert (=> b!7127313 m!7844322))

(assert (=> b!7127313 m!7844152))

(assert (=> b!7127313 m!7844322))

(declare-fun m!7844360 () Bool)

(assert (=> b!7127313 m!7844360))

(assert (=> b!7127313 m!7844086))

(assert (=> b!7127313 m!7844316))

(assert (=> b!7127313 m!7844360))

(assert (=> b!7127313 m!7844316))

(declare-fun m!7844362 () Bool)

(assert (=> b!7127313 m!7844362))

(assert (=> b!7127165 d!2224075))

(declare-fun bs!1886454 () Bool)

(declare-fun d!2224077 () Bool)

(assert (= bs!1886454 (and d!2224077 d!2223881)))

(declare-fun lambda!433072 () Int)

(assert (=> bs!1886454 (= (= (head!14463 (tail!13935 s1Rec!140)) (head!14463 s2!1620)) (= lambda!433072 lambda!433050))))

(declare-fun bs!1886455 () Bool)

(assert (= bs!1886455 (and d!2224077 d!2223919)))

(assert (=> bs!1886455 (= (= (head!14463 (tail!13935 s1Rec!140)) (head!14463 s2Rec!140)) (= lambda!433072 lambda!433055))))

(declare-fun bs!1886456 () Bool)

(assert (= bs!1886456 (and d!2224077 d!2223937)))

(assert (=> bs!1886456 (= (= (head!14463 (tail!13935 s1Rec!140)) (head!14463 s1!1688)) (= lambda!433072 lambda!433057))))

(declare-fun bs!1886457 () Bool)

(assert (= bs!1886457 (and d!2224077 d!2223947)))

(assert (=> bs!1886457 (= (= (head!14463 (tail!13935 s1Rec!140)) (head!14463 s1Rec!140)) (= lambda!433072 lambda!433058))))

(assert (=> d!2224077 true))

(assert (=> d!2224077 (= (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) (head!14463 (tail!13935 s1Rec!140))) (flatMap!2632 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) lambda!433072))))

(declare-fun bs!1886458 () Bool)

(assert (= bs!1886458 d!2224077))

(assert (=> bs!1886458 m!7843942))

(declare-fun m!7844364 () Bool)

(assert (=> bs!1886458 m!7844364))

(assert (=> b!7127165 d!2224077))

(declare-fun d!2224079 () Bool)

(assert (=> d!2224079 (= (head!14463 (tail!13935 s1Rec!140)) (h!75432 (tail!13935 s1Rec!140)))))

(assert (=> b!7127165 d!2224079))

(assert (=> b!7127165 d!2224057))

(declare-fun d!2224081 () Bool)

(declare-fun lt!2563594 () Bool)

(declare-datatypes ((List!69111 0))(
  ( (Nil!68987) (Cons!68987 (h!75435 Context!14044) (t!383088 List!69111)) )
))
(declare-fun exists!3826 (List!69111 Int) Bool)

(declare-fun toList!11134 ((Set Context!14044)) List!69111)

(assert (=> d!2224081 (= lt!2563594 (exists!3826 (toList!11134 z2!471) lambda!433053))))

(declare-fun choose!55090 ((Set Context!14044) Int) Bool)

(assert (=> d!2224081 (= lt!2563594 (choose!55090 z2!471 lambda!433053))))

(assert (=> d!2224081 (= (exists!3824 z2!471 lambda!433053) lt!2563594)))

(declare-fun bs!1886459 () Bool)

(assert (= bs!1886459 d!2224081))

(declare-fun m!7844366 () Bool)

(assert (=> bs!1886459 m!7844366))

(assert (=> bs!1886459 m!7844366))

(declare-fun m!7844368 () Bool)

(assert (=> bs!1886459 m!7844368))

(declare-fun m!7844370 () Bool)

(assert (=> bs!1886459 m!7844370))

(assert (=> d!2223887 d!2224081))

(declare-fun bs!1886460 () Bool)

(declare-fun d!2224083 () Bool)

(assert (= bs!1886460 (and d!2224083 d!2223887)))

(declare-fun lambda!433073 () Int)

(assert (=> bs!1886460 (= lambda!433073 lambda!433053)))

(declare-fun bs!1886461 () Bool)

(assert (= bs!1886461 (and d!2224083 d!2223927)))

(assert (=> bs!1886461 (= lambda!433073 lambda!433056)))

(assert (=> d!2224083 (= (nullableZipper!2755 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140))) (exists!3824 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) lambda!433073))))

(declare-fun bs!1886462 () Bool)

(assert (= bs!1886462 d!2224083))

(assert (=> bs!1886462 m!7843934))

(declare-fun m!7844372 () Bool)

(assert (=> bs!1886462 m!7844372))

(assert (=> b!7127140 d!2224083))

(declare-fun d!2224085 () Bool)

(declare-fun c!1329614 () Bool)

(assert (=> d!2224085 (= c!1329614 (is-Nil!68984 (t!383085 s2Rec!140)))))

(declare-fun e!4283138 () (Set C!36326))

(assert (=> d!2224085 (= (content!14114 (t!383085 s2Rec!140)) e!4283138)))

(declare-fun b!7127314 () Bool)

(assert (=> b!7127314 (= e!4283138 (as set.empty (Set C!36326)))))

(declare-fun b!7127315 () Bool)

(assert (=> b!7127315 (= e!4283138 (set.union (set.insert (h!75432 (t!383085 s2Rec!140)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 s2Rec!140)))))))

(assert (= (and d!2224085 c!1329614) b!7127314))

(assert (= (and d!2224085 (not c!1329614)) b!7127315))

(declare-fun m!7844374 () Bool)

(assert (=> b!7127315 m!7844374))

(declare-fun m!7844376 () Bool)

(assert (=> b!7127315 m!7844376))

(assert (=> b!7127173 d!2224085))

(declare-fun d!2224087 () Bool)

(assert (=> d!2224087 (= (isEmpty!40019 (tail!13935 s1Rec!140)) (is-Nil!68984 (tail!13935 s1Rec!140)))))

(assert (=> d!2223945 d!2224087))

(declare-fun bs!1886463 () Bool)

(declare-fun d!2224089 () Bool)

(assert (= bs!1886463 (and d!2224089 d!2223887)))

(declare-fun lambda!433074 () Int)

(assert (=> bs!1886463 (= lambda!433074 lambda!433053)))

(declare-fun bs!1886464 () Bool)

(assert (= bs!1886464 (and d!2224089 d!2223927)))

(assert (=> bs!1886464 (= lambda!433074 lambda!433056)))

(declare-fun bs!1886465 () Bool)

(assert (= bs!1886465 (and d!2224089 d!2224083)))

(assert (=> bs!1886465 (= lambda!433074 lambda!433073)))

(assert (=> d!2224089 (= (nullableZipper!2755 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688))) (exists!3824 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) lambda!433074))))

(declare-fun bs!1886466 () Bool)

(assert (= bs!1886466 d!2224089))

(assert (=> bs!1886466 m!7843922))

(declare-fun m!7844378 () Bool)

(assert (=> bs!1886466 m!7844378))

(assert (=> b!7127158 d!2224089))

(declare-fun d!2224091 () Bool)

(declare-fun c!1329615 () Bool)

(assert (=> d!2224091 (= c!1329615 (is-Nil!68984 lt!2563573))))

(declare-fun e!4283139 () (Set C!36326))

(assert (=> d!2224091 (= (content!14114 lt!2563573) e!4283139)))

(declare-fun b!7127316 () Bool)

(assert (=> b!7127316 (= e!4283139 (as set.empty (Set C!36326)))))

(declare-fun b!7127317 () Bool)

(assert (=> b!7127317 (= e!4283139 (set.union (set.insert (h!75432 lt!2563573) (as set.empty (Set C!36326))) (content!14114 (t!383085 lt!2563573))))))

(assert (= (and d!2224091 c!1329615) b!7127316))

(assert (= (and d!2224091 (not c!1329615)) b!7127317))

(declare-fun m!7844380 () Bool)

(assert (=> b!7127317 m!7844380))

(declare-fun m!7844382 () Bool)

(assert (=> b!7127317 m!7844382))

(assert (=> d!2223901 d!2224091))

(declare-fun d!2224093 () Bool)

(declare-fun c!1329616 () Bool)

(assert (=> d!2224093 (= c!1329616 (is-Nil!68984 (t!383085 s1Rec!140)))))

(declare-fun e!4283140 () (Set C!36326))

(assert (=> d!2224093 (= (content!14114 (t!383085 s1Rec!140)) e!4283140)))

(declare-fun b!7127318 () Bool)

(assert (=> b!7127318 (= e!4283140 (as set.empty (Set C!36326)))))

(declare-fun b!7127319 () Bool)

(assert (=> b!7127319 (= e!4283140 (set.union (set.insert (h!75432 (t!383085 s1Rec!140)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 s1Rec!140)))))))

(assert (= (and d!2224093 c!1329616) b!7127318))

(assert (= (and d!2224093 (not c!1329616)) b!7127319))

(declare-fun m!7844384 () Bool)

(assert (=> b!7127319 m!7844384))

(assert (=> b!7127319 m!7844344))

(assert (=> d!2223901 d!2224093))

(assert (=> d!2223901 d!2223957))

(declare-fun d!2224095 () Bool)

(declare-fun choose!55091 ((Set Context!14044) Int) (Set Context!14044))

(assert (=> d!2224095 (= (flatMap!2632 z2!471 lambda!433055) (choose!55091 z2!471 lambda!433055))))

(declare-fun bs!1886467 () Bool)

(assert (= bs!1886467 d!2224095))

(declare-fun m!7844386 () Bool)

(assert (=> bs!1886467 m!7844386))

(assert (=> d!2223919 d!2224095))

(declare-fun bs!1886468 () Bool)

(declare-fun d!2224097 () Bool)

(assert (= bs!1886468 (and d!2224097 d!2223841)))

(declare-fun lambda!433075 () Int)

(assert (=> bs!1886468 (= lambda!433075 lambda!433042)))

(declare-fun bs!1886469 () Bool)

(assert (= bs!1886469 (and d!2224097 d!2223843)))

(assert (=> bs!1886469 (= lambda!433075 lambda!433043)))

(declare-fun bs!1886470 () Bool)

(assert (= bs!1886470 (and d!2224097 d!2223911)))

(assert (=> bs!1886470 (= lambda!433075 lambda!433054)))

(declare-fun bs!1886471 () Bool)

(assert (= bs!1886471 (and d!2224097 d!2223951)))

(assert (=> bs!1886471 (= lambda!433075 lambda!433059)))

(assert (=> d!2224097 (= (inv!88099 setElem!51768) (forall!16914 (exprs!7522 setElem!51768) lambda!433075))))

(declare-fun bs!1886472 () Bool)

(assert (= bs!1886472 d!2224097))

(declare-fun m!7844388 () Bool)

(assert (=> bs!1886472 m!7844388))

(assert (=> setNonEmpty!51768 d!2224097))

(declare-fun d!2224099 () Bool)

(declare-fun c!1329617 () Bool)

(assert (=> d!2224099 (= c!1329617 (is-Nil!68984 (t!383085 lt!2563553)))))

(declare-fun e!4283141 () (Set C!36326))

(assert (=> d!2224099 (= (content!14114 (t!383085 lt!2563553)) e!4283141)))

(declare-fun b!7127320 () Bool)

(assert (=> b!7127320 (= e!4283141 (as set.empty (Set C!36326)))))

(declare-fun b!7127321 () Bool)

(assert (=> b!7127321 (= e!4283141 (set.union (set.insert (h!75432 (t!383085 lt!2563553)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 lt!2563553)))))))

(assert (= (and d!2224099 c!1329617) b!7127320))

(assert (= (and d!2224099 (not c!1329617)) b!7127321))

(declare-fun m!7844390 () Bool)

(assert (=> b!7127321 m!7844390))

(declare-fun m!7844392 () Bool)

(assert (=> b!7127321 m!7844392))

(assert (=> b!7127153 d!2224099))

(declare-fun bs!1886473 () Bool)

(declare-fun d!2224101 () Bool)

(assert (= bs!1886473 (and d!2224101 d!2223887)))

(declare-fun lambda!433076 () Int)

(assert (=> bs!1886473 (= lambda!433076 lambda!433053)))

(declare-fun bs!1886474 () Bool)

(assert (= bs!1886474 (and d!2224101 d!2223927)))

(assert (=> bs!1886474 (= lambda!433076 lambda!433056)))

(declare-fun bs!1886475 () Bool)

(assert (= bs!1886475 (and d!2224101 d!2224083)))

(assert (=> bs!1886475 (= lambda!433076 lambda!433073)))

(declare-fun bs!1886476 () Bool)

(assert (= bs!1886476 (and d!2224101 d!2224089)))

(assert (=> bs!1886476 (= lambda!433076 lambda!433074)))

(assert (=> d!2224101 (= (nullableZipper!2755 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620))) (exists!3824 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) lambda!433076))))

(declare-fun bs!1886477 () Bool)

(assert (= bs!1886477 d!2224101))

(assert (=> bs!1886477 m!7843950))

(declare-fun m!7844394 () Bool)

(assert (=> bs!1886477 m!7844394))

(assert (=> b!7127116 d!2224101))

(assert (=> b!7127171 d!2224093))

(declare-fun d!2224103 () Bool)

(declare-fun res!2908160 () Bool)

(declare-fun e!4283142 () Bool)

(assert (=> d!2224103 (=> res!2908160 e!4283142)))

(assert (=> d!2224103 (= res!2908160 (is-Nil!68983 (t!383084 (exprs!7522 setElem!51752))))))

(assert (=> d!2224103 (= (forall!16914 (t!383084 (exprs!7522 setElem!51752)) lambda!433043) e!4283142)))

(declare-fun b!7127322 () Bool)

(declare-fun e!4283143 () Bool)

(assert (=> b!7127322 (= e!4283142 e!4283143)))

(declare-fun res!2908161 () Bool)

(assert (=> b!7127322 (=> (not res!2908161) (not e!4283143))))

(assert (=> b!7127322 (= res!2908161 (dynLambda!28110 lambda!433043 (h!75431 (t!383084 (exprs!7522 setElem!51752)))))))

(declare-fun b!7127323 () Bool)

(assert (=> b!7127323 (= e!4283143 (forall!16914 (t!383084 (t!383084 (exprs!7522 setElem!51752))) lambda!433043))))

(assert (= (and d!2224103 (not res!2908160)) b!7127322))

(assert (= (and b!7127322 res!2908161) b!7127323))

(declare-fun b_lambda!271985 () Bool)

(assert (=> (not b_lambda!271985) (not b!7127322)))

(declare-fun m!7844396 () Bool)

(assert (=> b!7127322 m!7844396))

(declare-fun m!7844398 () Bool)

(assert (=> b!7127323 m!7844398))

(assert (=> b!7127163 d!2224103))

(declare-fun d!2224105 () Bool)

(assert (=> d!2224105 (= (flatMap!2632 z1!552 lambda!433057) (choose!55091 z1!552 lambda!433057))))

(declare-fun bs!1886478 () Bool)

(assert (= bs!1886478 d!2224105))

(declare-fun m!7844400 () Bool)

(assert (=> bs!1886478 m!7844400))

(assert (=> d!2223937 d!2224105))

(declare-fun d!2224107 () Bool)

(declare-fun res!2908162 () Bool)

(declare-fun e!4283144 () Bool)

(assert (=> d!2224107 (=> res!2908162 e!4283144)))

(assert (=> d!2224107 (= res!2908162 (is-Nil!68983 (exprs!7522 setElem!51763)))))

(assert (=> d!2224107 (= (forall!16914 (exprs!7522 setElem!51763) lambda!433059) e!4283144)))

(declare-fun b!7127324 () Bool)

(declare-fun e!4283145 () Bool)

(assert (=> b!7127324 (= e!4283144 e!4283145)))

(declare-fun res!2908163 () Bool)

(assert (=> b!7127324 (=> (not res!2908163) (not e!4283145))))

(assert (=> b!7127324 (= res!2908163 (dynLambda!28110 lambda!433059 (h!75431 (exprs!7522 setElem!51763))))))

(declare-fun b!7127325 () Bool)

(assert (=> b!7127325 (= e!4283145 (forall!16914 (t!383084 (exprs!7522 setElem!51763)) lambda!433059))))

(assert (= (and d!2224107 (not res!2908162)) b!7127324))

(assert (= (and b!7127324 res!2908163) b!7127325))

(declare-fun b_lambda!271987 () Bool)

(assert (=> (not b_lambda!271987) (not b!7127324)))

(declare-fun m!7844402 () Bool)

(assert (=> b!7127324 m!7844402))

(declare-fun m!7844404 () Bool)

(assert (=> b!7127325 m!7844404))

(assert (=> d!2223951 d!2224107))

(declare-fun d!2224109 () Bool)

(declare-fun lt!2563595 () Int)

(assert (=> d!2224109 (>= lt!2563595 0)))

(declare-fun e!4283146 () Int)

(assert (=> d!2224109 (= lt!2563595 e!4283146)))

(declare-fun c!1329618 () Bool)

(assert (=> d!2224109 (= c!1329618 (is-Nil!68984 (tail!13935 s1!1688)))))

(assert (=> d!2224109 (= (size!41463 (tail!13935 s1!1688)) lt!2563595)))

(declare-fun b!7127326 () Bool)

(assert (=> b!7127326 (= e!4283146 0)))

(declare-fun b!7127327 () Bool)

(assert (=> b!7127327 (= e!4283146 (+ 1 (size!41463 (t!383085 (tail!13935 s1!1688)))))))

(assert (= (and d!2224109 c!1329618) b!7127326))

(assert (= (and d!2224109 (not c!1329618)) b!7127327))

(declare-fun m!7844406 () Bool)

(assert (=> b!7127327 m!7844406))

(assert (=> b!7127139 d!2224109))

(declare-fun d!2224111 () Bool)

(declare-fun lt!2563596 () Int)

(assert (=> d!2224111 (>= lt!2563596 0)))

(declare-fun e!4283147 () Int)

(assert (=> d!2224111 (= lt!2563596 e!4283147)))

(declare-fun c!1329619 () Bool)

(assert (=> d!2224111 (= c!1329619 (is-Nil!68984 (tail!13935 s1Rec!140)))))

(assert (=> d!2224111 (= (size!41463 (tail!13935 s1Rec!140)) lt!2563596)))

(declare-fun b!7127328 () Bool)

(assert (=> b!7127328 (= e!4283147 0)))

(declare-fun b!7127329 () Bool)

(assert (=> b!7127329 (= e!4283147 (+ 1 (size!41463 (t!383085 (tail!13935 s1Rec!140)))))))

(assert (= (and d!2224111 c!1329619) b!7127328))

(assert (= (and d!2224111 (not c!1329619)) b!7127329))

(declare-fun m!7844408 () Bool)

(assert (=> b!7127329 m!7844408))

(assert (=> b!7127139 d!2224111))

(assert (=> b!7127137 d!2224079))

(declare-fun d!2224113 () Bool)

(assert (=> d!2224113 (= (head!14463 (tail!13935 s1!1688)) (h!75432 (tail!13935 s1!1688)))))

(assert (=> b!7127137 d!2224113))

(declare-fun b!7127348 () Bool)

(declare-fun e!4283165 () Bool)

(declare-fun e!4283162 () Bool)

(assert (=> b!7127348 (= e!4283165 e!4283162)))

(declare-fun c!1329625 () Bool)

(assert (=> b!7127348 (= c!1329625 (is-Union!18028 (h!75431 (exprs!7522 setElem!51752))))))

(declare-fun b!7127350 () Bool)

(declare-fun e!4283166 () Bool)

(declare-fun call!650852 () Bool)

(assert (=> b!7127350 (= e!4283166 call!650852)))

(declare-fun b!7127351 () Bool)

(declare-fun res!2908175 () Bool)

(assert (=> b!7127351 (=> (not res!2908175) (not e!4283166))))

(declare-fun call!650853 () Bool)

(assert (=> b!7127351 (= res!2908175 call!650853)))

(assert (=> b!7127351 (= e!4283162 e!4283166)))

(declare-fun bm!650846 () Bool)

(declare-fun c!1329624 () Bool)

(declare-fun call!650851 () Bool)

(assert (=> bm!650846 (= call!650851 (validRegex!9266 (ite c!1329624 (reg!18357 (h!75431 (exprs!7522 setElem!51752))) (ite c!1329625 (regTwo!36569 (h!75431 (exprs!7522 setElem!51752))) (regOne!36568 (h!75431 (exprs!7522 setElem!51752)))))))))

(declare-fun b!7127352 () Bool)

(declare-fun e!4283168 () Bool)

(assert (=> b!7127352 (= e!4283168 call!650853)))

(declare-fun b!7127353 () Bool)

(declare-fun e!4283167 () Bool)

(assert (=> b!7127353 (= e!4283165 e!4283167)))

(declare-fun res!2908174 () Bool)

(declare-fun nullable!7627 (Regex!18028) Bool)

(assert (=> b!7127353 (= res!2908174 (not (nullable!7627 (reg!18357 (h!75431 (exprs!7522 setElem!51752))))))))

(assert (=> b!7127353 (=> (not res!2908174) (not e!4283167))))

(declare-fun b!7127354 () Bool)

(declare-fun e!4283163 () Bool)

(assert (=> b!7127354 (= e!4283163 e!4283168)))

(declare-fun res!2908176 () Bool)

(assert (=> b!7127354 (=> (not res!2908176) (not e!4283168))))

(assert (=> b!7127354 (= res!2908176 call!650852)))

(declare-fun b!7127355 () Bool)

(declare-fun res!2908178 () Bool)

(assert (=> b!7127355 (=> res!2908178 e!4283163)))

(assert (=> b!7127355 (= res!2908178 (not (is-Concat!26873 (h!75431 (exprs!7522 setElem!51752)))))))

(assert (=> b!7127355 (= e!4283162 e!4283163)))

(declare-fun bm!650847 () Bool)

(assert (=> bm!650847 (= call!650852 call!650851)))

(declare-fun b!7127349 () Bool)

(declare-fun e!4283164 () Bool)

(assert (=> b!7127349 (= e!4283164 e!4283165)))

(assert (=> b!7127349 (= c!1329624 (is-Star!18028 (h!75431 (exprs!7522 setElem!51752))))))

(declare-fun d!2224115 () Bool)

(declare-fun res!2908177 () Bool)

(assert (=> d!2224115 (=> res!2908177 e!4283164)))

(assert (=> d!2224115 (= res!2908177 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51752))))))

(assert (=> d!2224115 (= (validRegex!9266 (h!75431 (exprs!7522 setElem!51752))) e!4283164)))

(declare-fun b!7127356 () Bool)

(assert (=> b!7127356 (= e!4283167 call!650851)))

(declare-fun bm!650848 () Bool)

(assert (=> bm!650848 (= call!650853 (validRegex!9266 (ite c!1329625 (regOne!36569 (h!75431 (exprs!7522 setElem!51752))) (regTwo!36568 (h!75431 (exprs!7522 setElem!51752))))))))

(assert (= (and d!2224115 (not res!2908177)) b!7127349))

(assert (= (and b!7127349 c!1329624) b!7127353))

(assert (= (and b!7127349 (not c!1329624)) b!7127348))

(assert (= (and b!7127353 res!2908174) b!7127356))

(assert (= (and b!7127348 c!1329625) b!7127351))

(assert (= (and b!7127348 (not c!1329625)) b!7127355))

(assert (= (and b!7127351 res!2908175) b!7127350))

(assert (= (and b!7127355 (not res!2908178)) b!7127354))

(assert (= (and b!7127354 res!2908176) b!7127352))

(assert (= (or b!7127350 b!7127354) bm!650847))

(assert (= (or b!7127351 b!7127352) bm!650848))

(assert (= (or b!7127356 bm!650847) bm!650846))

(declare-fun m!7844410 () Bool)

(assert (=> bm!650846 m!7844410))

(declare-fun m!7844412 () Bool)

(assert (=> b!7127353 m!7844412))

(declare-fun m!7844414 () Bool)

(assert (=> bm!650848 m!7844414))

(assert (=> bs!1886430 d!2224115))

(declare-fun d!2224117 () Bool)

(assert (=> d!2224117 (= (flatMap!2632 z2!471 lambda!433050) (choose!55091 z2!471 lambda!433050))))

(declare-fun bs!1886479 () Bool)

(assert (= bs!1886479 d!2224117))

(declare-fun m!7844416 () Bool)

(assert (=> bs!1886479 m!7844416))

(assert (=> d!2223881 d!2224117))

(declare-fun d!2224119 () Bool)

(declare-fun lt!2563597 () Int)

(assert (=> d!2224119 (>= lt!2563597 0)))

(declare-fun e!4283169 () Int)

(assert (=> d!2224119 (= lt!2563597 e!4283169)))

(declare-fun c!1329626 () Bool)

(assert (=> d!2224119 (= c!1329626 (is-Nil!68984 (t!383085 (t!383085 s1!1688))))))

(assert (=> d!2224119 (= (size!41463 (t!383085 (t!383085 s1!1688))) lt!2563597)))

(declare-fun b!7127357 () Bool)

(assert (=> b!7127357 (= e!4283169 0)))

(declare-fun b!7127358 () Bool)

(assert (=> b!7127358 (= e!4283169 (+ 1 (size!41463 (t!383085 (t!383085 (t!383085 s1!1688))))))))

(assert (= (and d!2224119 c!1329626) b!7127357))

(assert (= (and d!2224119 (not c!1329626)) b!7127358))

(declare-fun m!7844418 () Bool)

(assert (=> b!7127358 m!7844418))

(assert (=> b!7127167 d!2224119))

(declare-fun d!2224121 () Bool)

(declare-fun lt!2563598 () Int)

(assert (=> d!2224121 (>= lt!2563598 0)))

(declare-fun e!4283170 () Int)

(assert (=> d!2224121 (= lt!2563598 e!4283170)))

(declare-fun c!1329627 () Bool)

(assert (=> d!2224121 (= c!1329627 (is-Nil!68984 lt!2563573))))

(assert (=> d!2224121 (= (size!41463 lt!2563573) lt!2563598)))

(declare-fun b!7127359 () Bool)

(assert (=> b!7127359 (= e!4283170 0)))

(declare-fun b!7127360 () Bool)

(assert (=> b!7127360 (= e!4283170 (+ 1 (size!41463 (t!383085 lt!2563573))))))

(assert (= (and d!2224121 c!1329627) b!7127359))

(assert (= (and d!2224121 (not c!1329627)) b!7127360))

(declare-fun m!7844420 () Bool)

(assert (=> b!7127360 m!7844420))

(assert (=> b!7127134 d!2224121))

(assert (=> b!7127134 d!2223939))

(assert (=> b!7127134 d!2223897))

(declare-fun d!2224123 () Bool)

(declare-fun lt!2563599 () Int)

(assert (=> d!2224123 (>= lt!2563599 0)))

(declare-fun e!4283171 () Int)

(assert (=> d!2224123 (= lt!2563599 e!4283171)))

(declare-fun c!1329628 () Bool)

(assert (=> d!2224123 (= c!1329628 (is-Nil!68984 (t!383085 lt!2563553)))))

(assert (=> d!2224123 (= (size!41463 (t!383085 lt!2563553)) lt!2563599)))

(declare-fun b!7127361 () Bool)

(assert (=> b!7127361 (= e!4283171 0)))

(declare-fun b!7127362 () Bool)

(assert (=> b!7127362 (= e!4283171 (+ 1 (size!41463 (t!383085 (t!383085 lt!2563553)))))))

(assert (= (and d!2224123 c!1329628) b!7127361))

(assert (= (and d!2224123 (not c!1329628)) b!7127362))

(declare-fun m!7844422 () Bool)

(assert (=> b!7127362 m!7844422))

(assert (=> b!7127121 d!2224123))

(declare-fun bs!1886480 () Bool)

(declare-fun d!2224125 () Bool)

(assert (= bs!1886480 (and d!2224125 d!2224083)))

(declare-fun lambda!433077 () Int)

(assert (=> bs!1886480 (= lambda!433077 lambda!433073)))

(declare-fun bs!1886481 () Bool)

(assert (= bs!1886481 (and d!2224125 d!2223887)))

(assert (=> bs!1886481 (= lambda!433077 lambda!433053)))

(declare-fun bs!1886482 () Bool)

(assert (= bs!1886482 (and d!2224125 d!2224101)))

(assert (=> bs!1886482 (= lambda!433077 lambda!433076)))

(declare-fun bs!1886483 () Bool)

(assert (= bs!1886483 (and d!2224125 d!2224089)))

(assert (=> bs!1886483 (= lambda!433077 lambda!433074)))

(declare-fun bs!1886484 () Bool)

(assert (= bs!1886484 (and d!2224125 d!2223927)))

(assert (=> bs!1886484 (= lambda!433077 lambda!433056)))

(assert (=> d!2224125 (= (nullableZipper!2755 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140))) (exists!3824 (derivationStepZipper!3167 z1!552 (head!14463 s1Rec!140)) lambda!433077))))

(declare-fun bs!1886485 () Bool)

(assert (= bs!1886485 d!2224125))

(assert (=> bs!1886485 m!7843942))

(declare-fun m!7844424 () Bool)

(assert (=> bs!1886485 m!7844424))

(assert (=> b!7127164 d!2224125))

(declare-fun b!7127366 () Bool)

(declare-fun e!4283173 () Bool)

(declare-fun lt!2563600 () List!69108)

(assert (=> b!7127366 (= e!4283173 (or (not (= s2!1620 Nil!68984)) (= lt!2563600 (t!383085 (t!383085 s1!1688)))))))

(declare-fun d!2224127 () Bool)

(assert (=> d!2224127 e!4283173))

(declare-fun res!2908180 () Bool)

(assert (=> d!2224127 (=> (not res!2908180) (not e!4283173))))

(assert (=> d!2224127 (= res!2908180 (= (content!14114 lt!2563600) (set.union (content!14114 (t!383085 (t!383085 s1!1688))) (content!14114 s2!1620))))))

(declare-fun e!4283172 () List!69108)

(assert (=> d!2224127 (= lt!2563600 e!4283172)))

(declare-fun c!1329629 () Bool)

(assert (=> d!2224127 (= c!1329629 (is-Nil!68984 (t!383085 (t!383085 s1!1688))))))

(assert (=> d!2224127 (= (++!16166 (t!383085 (t!383085 s1!1688)) s2!1620) lt!2563600)))

(declare-fun b!7127365 () Bool)

(declare-fun res!2908179 () Bool)

(assert (=> b!7127365 (=> (not res!2908179) (not e!4283173))))

(assert (=> b!7127365 (= res!2908179 (= (size!41463 lt!2563600) (+ (size!41463 (t!383085 (t!383085 s1!1688))) (size!41463 s2!1620))))))

(declare-fun b!7127364 () Bool)

(assert (=> b!7127364 (= e!4283172 (Cons!68984 (h!75432 (t!383085 (t!383085 s1!1688))) (++!16166 (t!383085 (t!383085 (t!383085 s1!1688))) s2!1620)))))

(declare-fun b!7127363 () Bool)

(assert (=> b!7127363 (= e!4283172 s2!1620)))

(assert (= (and d!2224127 c!1329629) b!7127363))

(assert (= (and d!2224127 (not c!1329629)) b!7127364))

(assert (= (and d!2224127 res!2908180) b!7127365))

(assert (= (and b!7127365 res!2908179) b!7127366))

(declare-fun m!7844426 () Bool)

(assert (=> d!2224127 m!7844426))

(assert (=> d!2224127 m!7844352))

(assert (=> d!2224127 m!7843906))

(declare-fun m!7844428 () Bool)

(assert (=> b!7127365 m!7844428))

(assert (=> b!7127365 m!7844158))

(assert (=> b!7127365 m!7843910))

(declare-fun m!7844430 () Bool)

(assert (=> b!7127364 m!7844430))

(assert (=> b!7127125 d!2224127))

(declare-fun d!2224129 () Bool)

(declare-fun c!1329630 () Bool)

(assert (=> d!2224129 (= c!1329630 (is-Nil!68984 (t!383085 lt!2563552)))))

(declare-fun e!4283174 () (Set C!36326))

(assert (=> d!2224129 (= (content!14114 (t!383085 lt!2563552)) e!4283174)))

(declare-fun b!7127367 () Bool)

(assert (=> b!7127367 (= e!4283174 (as set.empty (Set C!36326)))))

(declare-fun b!7127368 () Bool)

(assert (=> b!7127368 (= e!4283174 (set.union (set.insert (h!75432 (t!383085 lt!2563552)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 lt!2563552)))))))

(assert (= (and d!2224129 c!1329630) b!7127367))

(assert (= (and d!2224129 (not c!1329630)) b!7127368))

(declare-fun m!7844432 () Bool)

(assert (=> b!7127368 m!7844432))

(declare-fun m!7844434 () Bool)

(assert (=> b!7127368 m!7844434))

(assert (=> b!7127169 d!2224129))

(declare-fun d!2224131 () Bool)

(declare-fun c!1329631 () Bool)

(assert (=> d!2224131 (= c!1329631 (isEmpty!40019 (tail!13935 (tail!13935 s2Rec!140))))))

(declare-fun e!4283175 () Bool)

(assert (=> d!2224131 (= (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (head!14463 (tail!13935 s2Rec!140))) (tail!13935 (tail!13935 s2Rec!140))) e!4283175)))

(declare-fun b!7127369 () Bool)

(assert (=> b!7127369 (= e!4283175 (nullableZipper!2755 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (head!14463 (tail!13935 s2Rec!140)))))))

(declare-fun b!7127370 () Bool)

(assert (=> b!7127370 (= e!4283175 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (head!14463 (tail!13935 s2Rec!140))) (head!14463 (tail!13935 (tail!13935 s2Rec!140)))) (tail!13935 (tail!13935 (tail!13935 s2Rec!140)))))))

(assert (= (and d!2224131 c!1329631) b!7127369))

(assert (= (and d!2224131 (not c!1329631)) b!7127370))

(assert (=> d!2224131 m!7844110))

(declare-fun m!7844436 () Bool)

(assert (=> d!2224131 m!7844436))

(assert (=> b!7127369 m!7844108))

(declare-fun m!7844438 () Bool)

(assert (=> b!7127369 m!7844438))

(assert (=> b!7127370 m!7844110))

(declare-fun m!7844440 () Bool)

(assert (=> b!7127370 m!7844440))

(assert (=> b!7127370 m!7844108))

(assert (=> b!7127370 m!7844440))

(declare-fun m!7844442 () Bool)

(assert (=> b!7127370 m!7844442))

(assert (=> b!7127370 m!7844110))

(declare-fun m!7844444 () Bool)

(assert (=> b!7127370 m!7844444))

(assert (=> b!7127370 m!7844442))

(assert (=> b!7127370 m!7844444))

(declare-fun m!7844446 () Bool)

(assert (=> b!7127370 m!7844446))

(assert (=> b!7127141 d!2224131))

(declare-fun bs!1886486 () Bool)

(declare-fun d!2224133 () Bool)

(assert (= bs!1886486 (and d!2224133 d!2223919)))

(declare-fun lambda!433078 () Int)

(assert (=> bs!1886486 (= (= (head!14463 (tail!13935 s2Rec!140)) (head!14463 s2Rec!140)) (= lambda!433078 lambda!433055))))

(declare-fun bs!1886487 () Bool)

(assert (= bs!1886487 (and d!2224133 d!2223881)))

(assert (=> bs!1886487 (= (= (head!14463 (tail!13935 s2Rec!140)) (head!14463 s2!1620)) (= lambda!433078 lambda!433050))))

(declare-fun bs!1886488 () Bool)

(assert (= bs!1886488 (and d!2224133 d!2224077)))

(assert (=> bs!1886488 (= (= (head!14463 (tail!13935 s2Rec!140)) (head!14463 (tail!13935 s1Rec!140))) (= lambda!433078 lambda!433072))))

(declare-fun bs!1886489 () Bool)

(assert (= bs!1886489 (and d!2224133 d!2223947)))

(assert (=> bs!1886489 (= (= (head!14463 (tail!13935 s2Rec!140)) (head!14463 s1Rec!140)) (= lambda!433078 lambda!433058))))

(declare-fun bs!1886490 () Bool)

(assert (= bs!1886490 (and d!2224133 d!2223937)))

(assert (=> bs!1886490 (= (= (head!14463 (tail!13935 s2Rec!140)) (head!14463 s1!1688)) (= lambda!433078 lambda!433057))))

(assert (=> d!2224133 true))

(assert (=> d!2224133 (= (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) (head!14463 (tail!13935 s2Rec!140))) (flatMap!2632 (derivationStepZipper!3167 z2!471 (head!14463 s2Rec!140)) lambda!433078))))

(declare-fun bs!1886491 () Bool)

(assert (= bs!1886491 d!2224133))

(assert (=> bs!1886491 m!7843934))

(declare-fun m!7844448 () Bool)

(assert (=> bs!1886491 m!7844448))

(assert (=> b!7127141 d!2224133))

(declare-fun d!2224135 () Bool)

(assert (=> d!2224135 (= (head!14463 (tail!13935 s2Rec!140)) (h!75432 (tail!13935 s2Rec!140)))))

(assert (=> b!7127141 d!2224135))

(declare-fun d!2224137 () Bool)

(assert (=> d!2224137 (= (tail!13935 (tail!13935 s2Rec!140)) (t!383085 (tail!13935 s2Rec!140)))))

(assert (=> b!7127141 d!2224137))

(declare-fun d!2224139 () Bool)

(declare-fun lt!2563601 () Int)

(assert (=> d!2224139 (>= lt!2563601 0)))

(declare-fun e!4283176 () Int)

(assert (=> d!2224139 (= lt!2563601 e!4283176)))

(declare-fun c!1329632 () Bool)

(assert (=> d!2224139 (= c!1329632 (is-Nil!68984 (t!383085 (t!383085 s1Rec!140))))))

(assert (=> d!2224139 (= (size!41463 (t!383085 (t!383085 s1Rec!140))) lt!2563601)))

(declare-fun b!7127371 () Bool)

(assert (=> b!7127371 (= e!4283176 0)))

(declare-fun b!7127372 () Bool)

(assert (=> b!7127372 (= e!4283176 (+ 1 (size!41463 (t!383085 (t!383085 (t!383085 s1Rec!140))))))))

(assert (= (and d!2224139 c!1329632) b!7127371))

(assert (= (and d!2224139 (not c!1329632)) b!7127372))

(declare-fun m!7844450 () Bool)

(assert (=> b!7127372 m!7844450))

(assert (=> b!7127161 d!2224139))

(declare-fun d!2224141 () Bool)

(declare-fun c!1329633 () Bool)

(assert (=> d!2224141 (= c!1329633 (isEmpty!40019 (tail!13935 (tail!13935 s1!1688))))))

(declare-fun e!4283177 () Bool)

(assert (=> d!2224141 (= (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (head!14463 (tail!13935 s1!1688))) (tail!13935 (tail!13935 s1!1688))) e!4283177)))

(declare-fun b!7127373 () Bool)

(assert (=> b!7127373 (= e!4283177 (nullableZipper!2755 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (head!14463 (tail!13935 s1!1688)))))))

(declare-fun b!7127374 () Bool)

(assert (=> b!7127374 (= e!4283177 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (head!14463 (tail!13935 s1!1688))) (head!14463 (tail!13935 (tail!13935 s1!1688)))) (tail!13935 (tail!13935 (tail!13935 s1!1688)))))))

(assert (= (and d!2224141 c!1329633) b!7127373))

(assert (= (and d!2224141 (not c!1329633)) b!7127374))

(assert (=> d!2224141 m!7844088))

(declare-fun m!7844452 () Bool)

(assert (=> d!2224141 m!7844452))

(assert (=> b!7127373 m!7844136))

(declare-fun m!7844454 () Bool)

(assert (=> b!7127373 m!7844454))

(assert (=> b!7127374 m!7844088))

(assert (=> b!7127374 m!7844324))

(assert (=> b!7127374 m!7844136))

(assert (=> b!7127374 m!7844324))

(declare-fun m!7844456 () Bool)

(assert (=> b!7127374 m!7844456))

(assert (=> b!7127374 m!7844088))

(assert (=> b!7127374 m!7844318))

(assert (=> b!7127374 m!7844456))

(assert (=> b!7127374 m!7844318))

(declare-fun m!7844458 () Bool)

(assert (=> b!7127374 m!7844458))

(assert (=> b!7127159 d!2224141))

(declare-fun bs!1886492 () Bool)

(declare-fun d!2224143 () Bool)

(assert (= bs!1886492 (and d!2224143 d!2223919)))

(declare-fun lambda!433079 () Int)

(assert (=> bs!1886492 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 s2Rec!140)) (= lambda!433079 lambda!433055))))

(declare-fun bs!1886493 () Bool)

(assert (= bs!1886493 (and d!2224143 d!2223881)))

(assert (=> bs!1886493 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 s2!1620)) (= lambda!433079 lambda!433050))))

(declare-fun bs!1886494 () Bool)

(assert (= bs!1886494 (and d!2224143 d!2224133)))

(assert (=> bs!1886494 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 (tail!13935 s2Rec!140))) (= lambda!433079 lambda!433078))))

(declare-fun bs!1886495 () Bool)

(assert (= bs!1886495 (and d!2224143 d!2224077)))

(assert (=> bs!1886495 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 (tail!13935 s1Rec!140))) (= lambda!433079 lambda!433072))))

(declare-fun bs!1886496 () Bool)

(assert (= bs!1886496 (and d!2224143 d!2223947)))

(assert (=> bs!1886496 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 s1Rec!140)) (= lambda!433079 lambda!433058))))

(declare-fun bs!1886497 () Bool)

(assert (= bs!1886497 (and d!2224143 d!2223937)))

(assert (=> bs!1886497 (= (= (head!14463 (tail!13935 s1!1688)) (head!14463 s1!1688)) (= lambda!433079 lambda!433057))))

(assert (=> d!2224143 true))

(assert (=> d!2224143 (= (derivationStepZipper!3167 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) (head!14463 (tail!13935 s1!1688))) (flatMap!2632 (derivationStepZipper!3167 z1!552 (head!14463 s1!1688)) lambda!433079))))

(declare-fun bs!1886498 () Bool)

(assert (= bs!1886498 d!2224143))

(assert (=> bs!1886498 m!7843922))

(declare-fun m!7844460 () Bool)

(assert (=> bs!1886498 m!7844460))

(assert (=> b!7127159 d!2224143))

(assert (=> b!7127159 d!2224113))

(assert (=> b!7127159 d!2224059))

(declare-fun d!2224145 () Bool)

(declare-fun lt!2563602 () Int)

(assert (=> d!2224145 (>= lt!2563602 0)))

(declare-fun e!4283178 () Int)

(assert (=> d!2224145 (= lt!2563602 e!4283178)))

(declare-fun c!1329634 () Bool)

(assert (=> d!2224145 (= c!1329634 (is-Nil!68984 (t!383085 lt!2563552)))))

(assert (=> d!2224145 (= (size!41463 (t!383085 lt!2563552)) lt!2563602)))

(declare-fun b!7127375 () Bool)

(assert (=> b!7127375 (= e!4283178 0)))

(declare-fun b!7127376 () Bool)

(assert (=> b!7127376 (= e!4283178 (+ 1 (size!41463 (t!383085 (t!383085 lt!2563552)))))))

(assert (= (and d!2224145 c!1329634) b!7127375))

(assert (= (and d!2224145 (not c!1329634)) b!7127376))

(declare-fun m!7844462 () Bool)

(assert (=> b!7127376 m!7844462))

(assert (=> b!7127129 d!2224145))

(declare-fun d!2224147 () Bool)

(assert (=> d!2224147 (= (isEmpty!40019 (tail!13935 s2Rec!140)) (is-Nil!68984 (tail!13935 s2Rec!140)))))

(assert (=> d!2223917 d!2224147))

(declare-fun d!2224149 () Bool)

(declare-fun c!1329635 () Bool)

(assert (=> d!2224149 (= c!1329635 (is-Nil!68984 lt!2563570))))

(declare-fun e!4283179 () (Set C!36326))

(assert (=> d!2224149 (= (content!14114 lt!2563570) e!4283179)))

(declare-fun b!7127377 () Bool)

(assert (=> b!7127377 (= e!4283179 (as set.empty (Set C!36326)))))

(declare-fun b!7127378 () Bool)

(assert (=> b!7127378 (= e!4283179 (set.union (set.insert (h!75432 lt!2563570) (as set.empty (Set C!36326))) (content!14114 (t!383085 lt!2563570))))))

(assert (= (and d!2224149 c!1329635) b!7127377))

(assert (= (and d!2224149 (not c!1329635)) b!7127378))

(declare-fun m!7844464 () Bool)

(assert (=> b!7127378 m!7844464))

(declare-fun m!7844466 () Bool)

(assert (=> b!7127378 m!7844466))

(assert (=> d!2223893 d!2224149))

(assert (=> d!2223893 d!2224071))

(assert (=> d!2223893 d!2223933))

(declare-fun d!2224151 () Bool)

(assert (=> d!2224151 (= (isEmpty!40019 (tail!13935 s1!1688)) (is-Nil!68984 (tail!13935 s1!1688)))))

(assert (=> d!2223935 d!2224151))

(declare-fun d!2224153 () Bool)

(declare-fun lt!2563603 () Bool)

(assert (=> d!2224153 (= lt!2563603 (exists!3826 (toList!11134 z1!552) lambda!433056))))

(assert (=> d!2224153 (= lt!2563603 (choose!55090 z1!552 lambda!433056))))

(assert (=> d!2224153 (= (exists!3824 z1!552 lambda!433056) lt!2563603)))

(declare-fun bs!1886499 () Bool)

(assert (= bs!1886499 d!2224153))

(declare-fun m!7844468 () Bool)

(assert (=> bs!1886499 m!7844468))

(assert (=> bs!1886499 m!7844468))

(declare-fun m!7844470 () Bool)

(assert (=> bs!1886499 m!7844470))

(declare-fun m!7844472 () Bool)

(assert (=> bs!1886499 m!7844472))

(assert (=> d!2223927 d!2224153))

(declare-fun d!2224155 () Bool)

(declare-fun c!1329636 () Bool)

(assert (=> d!2224155 (= c!1329636 (isEmpty!40019 (tail!13935 (tail!13935 s2!1620))))))

(declare-fun e!4283180 () Bool)

(assert (=> d!2224155 (= (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (head!14463 (tail!13935 s2!1620))) (tail!13935 (tail!13935 s2!1620))) e!4283180)))

(declare-fun b!7127379 () Bool)

(assert (=> b!7127379 (= e!4283180 (nullableZipper!2755 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (head!14463 (tail!13935 s2!1620)))))))

(declare-fun b!7127380 () Bool)

(assert (=> b!7127380 (= e!4283180 (matchZipper!3284 (derivationStepZipper!3167 (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (head!14463 (tail!13935 s2!1620))) (head!14463 (tail!13935 (tail!13935 s2!1620)))) (tail!13935 (tail!13935 (tail!13935 s2!1620)))))))

(assert (= (and d!2224155 c!1329636) b!7127379))

(assert (= (and d!2224155 (not c!1329636)) b!7127380))

(assert (=> d!2224155 m!7844054))

(declare-fun m!7844474 () Bool)

(assert (=> d!2224155 m!7844474))

(assert (=> b!7127379 m!7844052))

(declare-fun m!7844476 () Bool)

(assert (=> b!7127379 m!7844476))

(assert (=> b!7127380 m!7844054))

(declare-fun m!7844478 () Bool)

(assert (=> b!7127380 m!7844478))

(assert (=> b!7127380 m!7844052))

(assert (=> b!7127380 m!7844478))

(declare-fun m!7844480 () Bool)

(assert (=> b!7127380 m!7844480))

(assert (=> b!7127380 m!7844054))

(declare-fun m!7844482 () Bool)

(assert (=> b!7127380 m!7844482))

(assert (=> b!7127380 m!7844480))

(assert (=> b!7127380 m!7844482))

(declare-fun m!7844484 () Bool)

(assert (=> b!7127380 m!7844484))

(assert (=> b!7127117 d!2224155))

(declare-fun bs!1886500 () Bool)

(declare-fun d!2224157 () Bool)

(assert (= bs!1886500 (and d!2224157 d!2223919)))

(declare-fun lambda!433080 () Int)

(assert (=> bs!1886500 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 s2Rec!140)) (= lambda!433080 lambda!433055))))

(declare-fun bs!1886501 () Bool)

(assert (= bs!1886501 (and d!2224157 d!2224133)))

(assert (=> bs!1886501 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 (tail!13935 s2Rec!140))) (= lambda!433080 lambda!433078))))

(declare-fun bs!1886502 () Bool)

(assert (= bs!1886502 (and d!2224157 d!2224077)))

(assert (=> bs!1886502 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 (tail!13935 s1Rec!140))) (= lambda!433080 lambda!433072))))

(declare-fun bs!1886503 () Bool)

(assert (= bs!1886503 (and d!2224157 d!2224143)))

(assert (=> bs!1886503 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 (tail!13935 s1!1688))) (= lambda!433080 lambda!433079))))

(declare-fun bs!1886504 () Bool)

(assert (= bs!1886504 (and d!2224157 d!2223881)))

(assert (=> bs!1886504 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 s2!1620)) (= lambda!433080 lambda!433050))))

(declare-fun bs!1886505 () Bool)

(assert (= bs!1886505 (and d!2224157 d!2223947)))

(assert (=> bs!1886505 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 s1Rec!140)) (= lambda!433080 lambda!433058))))

(declare-fun bs!1886506 () Bool)

(assert (= bs!1886506 (and d!2224157 d!2223937)))

(assert (=> bs!1886506 (= (= (head!14463 (tail!13935 s2!1620)) (head!14463 s1!1688)) (= lambda!433080 lambda!433057))))

(assert (=> d!2224157 true))

(assert (=> d!2224157 (= (derivationStepZipper!3167 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) (head!14463 (tail!13935 s2!1620))) (flatMap!2632 (derivationStepZipper!3167 z2!471 (head!14463 s2!1620)) lambda!433080))))

(declare-fun bs!1886507 () Bool)

(assert (= bs!1886507 d!2224157))

(assert (=> bs!1886507 m!7843950))

(declare-fun m!7844486 () Bool)

(assert (=> bs!1886507 m!7844486))

(assert (=> b!7127117 d!2224157))

(declare-fun d!2224159 () Bool)

(assert (=> d!2224159 (= (head!14463 (tail!13935 s2!1620)) (h!75432 (tail!13935 s2!1620)))))

(assert (=> b!7127117 d!2224159))

(declare-fun d!2224161 () Bool)

(assert (=> d!2224161 (= (tail!13935 (tail!13935 s2!1620)) (t!383085 (tail!13935 s2!1620)))))

(assert (=> b!7127117 d!2224161))

(declare-fun d!2224163 () Bool)

(assert (=> d!2224163 (= (flatMap!2632 z1!552 lambda!433058) (choose!55091 z1!552 lambda!433058))))

(declare-fun bs!1886508 () Bool)

(assert (= bs!1886508 d!2224163))

(declare-fun m!7844488 () Bool)

(assert (=> bs!1886508 m!7844488))

(assert (=> d!2223947 d!2224163))

(declare-fun d!2224165 () Bool)

(declare-fun lt!2563604 () Int)

(assert (=> d!2224165 (>= lt!2563604 0)))

(declare-fun e!4283181 () Int)

(assert (=> d!2224165 (= lt!2563604 e!4283181)))

(declare-fun c!1329637 () Bool)

(assert (=> d!2224165 (= c!1329637 (is-Nil!68984 (t!383085 s2!1620)))))

(assert (=> d!2224165 (= (size!41463 (t!383085 s2!1620)) lt!2563604)))

(declare-fun b!7127381 () Bool)

(assert (=> b!7127381 (= e!4283181 0)))

(declare-fun b!7127382 () Bool)

(assert (=> b!7127382 (= e!4283181 (+ 1 (size!41463 (t!383085 (t!383085 s2!1620)))))))

(assert (= (and d!2224165 c!1329637) b!7127381))

(assert (= (and d!2224165 (not c!1329637)) b!7127382))

(declare-fun m!7844490 () Bool)

(assert (=> b!7127382 m!7844490))

(assert (=> b!7127123 d!2224165))

(declare-fun d!2224167 () Bool)

(declare-fun c!1329638 () Bool)

(assert (=> d!2224167 (= c!1329638 (is-Nil!68984 (t!383085 s2!1620)))))

(declare-fun e!4283182 () (Set C!36326))

(assert (=> d!2224167 (= (content!14114 (t!383085 s2!1620)) e!4283182)))

(declare-fun b!7127383 () Bool)

(assert (=> b!7127383 (= e!4283182 (as set.empty (Set C!36326)))))

(declare-fun b!7127384 () Bool)

(assert (=> b!7127384 (= e!4283182 (set.union (set.insert (h!75432 (t!383085 s2!1620)) (as set.empty (Set C!36326))) (content!14114 (t!383085 (t!383085 s2!1620)))))))

(assert (= (and d!2224167 c!1329638) b!7127383))

(assert (= (and d!2224167 (not c!1329638)) b!7127384))

(declare-fun m!7844492 () Bool)

(assert (=> b!7127384 m!7844492))

(declare-fun m!7844494 () Bool)

(assert (=> b!7127384 m!7844494))

(assert (=> b!7127157 d!2224167))

(declare-fun b!7127385 () Bool)

(declare-fun e!4283186 () Bool)

(declare-fun e!4283183 () Bool)

(assert (=> b!7127385 (= e!4283186 e!4283183)))

(declare-fun c!1329640 () Bool)

(assert (=> b!7127385 (= c!1329640 (is-Union!18028 (h!75431 (exprs!7522 setElem!51753))))))

(declare-fun b!7127387 () Bool)

(declare-fun e!4283187 () Bool)

(declare-fun call!650855 () Bool)

(assert (=> b!7127387 (= e!4283187 call!650855)))

(declare-fun b!7127388 () Bool)

(declare-fun res!2908182 () Bool)

(assert (=> b!7127388 (=> (not res!2908182) (not e!4283187))))

(declare-fun call!650856 () Bool)

(assert (=> b!7127388 (= res!2908182 call!650856)))

(assert (=> b!7127388 (= e!4283183 e!4283187)))

(declare-fun c!1329639 () Bool)

(declare-fun call!650854 () Bool)

(declare-fun bm!650849 () Bool)

(assert (=> bm!650849 (= call!650854 (validRegex!9266 (ite c!1329639 (reg!18357 (h!75431 (exprs!7522 setElem!51753))) (ite c!1329640 (regTwo!36569 (h!75431 (exprs!7522 setElem!51753))) (regOne!36568 (h!75431 (exprs!7522 setElem!51753)))))))))

(declare-fun b!7127389 () Bool)

(declare-fun e!4283189 () Bool)

(assert (=> b!7127389 (= e!4283189 call!650856)))

(declare-fun b!7127390 () Bool)

(declare-fun e!4283188 () Bool)

(assert (=> b!7127390 (= e!4283186 e!4283188)))

(declare-fun res!2908181 () Bool)

(assert (=> b!7127390 (= res!2908181 (not (nullable!7627 (reg!18357 (h!75431 (exprs!7522 setElem!51753))))))))

(assert (=> b!7127390 (=> (not res!2908181) (not e!4283188))))

(declare-fun b!7127391 () Bool)

(declare-fun e!4283184 () Bool)

(assert (=> b!7127391 (= e!4283184 e!4283189)))

(declare-fun res!2908183 () Bool)

(assert (=> b!7127391 (=> (not res!2908183) (not e!4283189))))

(assert (=> b!7127391 (= res!2908183 call!650855)))

(declare-fun b!7127392 () Bool)

(declare-fun res!2908185 () Bool)

(assert (=> b!7127392 (=> res!2908185 e!4283184)))

(assert (=> b!7127392 (= res!2908185 (not (is-Concat!26873 (h!75431 (exprs!7522 setElem!51753)))))))

(assert (=> b!7127392 (= e!4283183 e!4283184)))

(declare-fun bm!650850 () Bool)

(assert (=> bm!650850 (= call!650855 call!650854)))

(declare-fun b!7127386 () Bool)

(declare-fun e!4283185 () Bool)

(assert (=> b!7127386 (= e!4283185 e!4283186)))

(assert (=> b!7127386 (= c!1329639 (is-Star!18028 (h!75431 (exprs!7522 setElem!51753))))))

(declare-fun d!2224169 () Bool)

(declare-fun res!2908184 () Bool)

(assert (=> d!2224169 (=> res!2908184 e!4283185)))

(assert (=> d!2224169 (= res!2908184 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51753))))))

(assert (=> d!2224169 (= (validRegex!9266 (h!75431 (exprs!7522 setElem!51753))) e!4283185)))

(declare-fun b!7127393 () Bool)

(assert (=> b!7127393 (= e!4283188 call!650854)))

(declare-fun bm!650851 () Bool)

(assert (=> bm!650851 (= call!650856 (validRegex!9266 (ite c!1329640 (regOne!36569 (h!75431 (exprs!7522 setElem!51753))) (regTwo!36568 (h!75431 (exprs!7522 setElem!51753))))))))

(assert (= (and d!2224169 (not res!2908184)) b!7127386))

(assert (= (and b!7127386 c!1329639) b!7127390))

(assert (= (and b!7127386 (not c!1329639)) b!7127385))

(assert (= (and b!7127390 res!2908181) b!7127393))

(assert (= (and b!7127385 c!1329640) b!7127388))

(assert (= (and b!7127385 (not c!1329640)) b!7127392))

(assert (= (and b!7127388 res!2908182) b!7127387))

(assert (= (and b!7127392 (not res!2908185)) b!7127391))

(assert (= (and b!7127391 res!2908183) b!7127389))

(assert (= (or b!7127387 b!7127391) bm!650850))

(assert (= (or b!7127388 b!7127389) bm!650851))

(assert (= (or b!7127393 bm!650850) bm!650849))

(declare-fun m!7844496 () Bool)

(assert (=> bm!650849 m!7844496))

(declare-fun m!7844498 () Bool)

(assert (=> b!7127390 m!7844498))

(declare-fun m!7844500 () Bool)

(assert (=> bm!650851 m!7844500))

(assert (=> bs!1886431 d!2224169))

(declare-fun bs!1886509 () Bool)

(declare-fun d!2224171 () Bool)

(assert (= bs!1886509 (and d!2224171 d!2223951)))

(declare-fun lambda!433081 () Int)

(assert (=> bs!1886509 (= lambda!433081 lambda!433059)))

(declare-fun bs!1886510 () Bool)

(assert (= bs!1886510 (and d!2224171 d!2223843)))

(assert (=> bs!1886510 (= lambda!433081 lambda!433043)))

(declare-fun bs!1886511 () Bool)

(assert (= bs!1886511 (and d!2224171 d!2223841)))

(assert (=> bs!1886511 (= lambda!433081 lambda!433042)))

(declare-fun bs!1886512 () Bool)

(assert (= bs!1886512 (and d!2224171 d!2224097)))

(assert (=> bs!1886512 (= lambda!433081 lambda!433075)))

(declare-fun bs!1886513 () Bool)

(assert (= bs!1886513 (and d!2224171 d!2223911)))

(assert (=> bs!1886513 (= lambda!433081 lambda!433054)))

(assert (=> d!2224171 (= (inv!88099 setElem!51769) (forall!16914 (exprs!7522 setElem!51769) lambda!433081))))

(declare-fun bs!1886514 () Bool)

(assert (= bs!1886514 d!2224171))

(declare-fun m!7844502 () Bool)

(assert (=> bs!1886514 m!7844502))

(assert (=> setNonEmpty!51769 d!2224171))

(declare-fun b!7127397 () Bool)

(declare-fun e!4283190 () Bool)

(declare-fun tp!1963505 () Bool)

(declare-fun tp!1963506 () Bool)

(assert (=> b!7127397 (= e!4283190 (and tp!1963505 tp!1963506))))

(declare-fun b!7127394 () Bool)

(assert (=> b!7127394 (= e!4283190 tp_is_empty!45657)))

(assert (=> b!7127202 (= tp!1963465 e!4283190)))

(declare-fun b!7127396 () Bool)

(declare-fun tp!1963504 () Bool)

(assert (=> b!7127396 (= e!4283190 tp!1963504)))

(declare-fun b!7127395 () Bool)

(declare-fun tp!1963507 () Bool)

(declare-fun tp!1963508 () Bool)

(assert (=> b!7127395 (= e!4283190 (and tp!1963507 tp!1963508))))

(assert (= (and b!7127202 (is-ElementMatch!18028 (h!75431 (t!383084 (exprs!7522 setElem!51752))))) b!7127394))

(assert (= (and b!7127202 (is-Concat!26873 (h!75431 (t!383084 (exprs!7522 setElem!51752))))) b!7127395))

(assert (= (and b!7127202 (is-Star!18028 (h!75431 (t!383084 (exprs!7522 setElem!51752))))) b!7127396))

(assert (= (and b!7127202 (is-Union!18028 (h!75431 (t!383084 (exprs!7522 setElem!51752))))) b!7127397))

(declare-fun b!7127398 () Bool)

(declare-fun e!4283191 () Bool)

(declare-fun tp!1963509 () Bool)

(declare-fun tp!1963510 () Bool)

(assert (=> b!7127398 (= e!4283191 (and tp!1963509 tp!1963510))))

(assert (=> b!7127202 (= tp!1963466 e!4283191)))

(assert (= (and b!7127202 (is-Cons!68983 (t!383084 (t!383084 (exprs!7522 setElem!51752))))) b!7127398))

(declare-fun b!7127402 () Bool)

(declare-fun e!4283192 () Bool)

(declare-fun tp!1963512 () Bool)

(declare-fun tp!1963513 () Bool)

(assert (=> b!7127402 (= e!4283192 (and tp!1963512 tp!1963513))))

(declare-fun b!7127399 () Bool)

(assert (=> b!7127399 (= e!4283192 tp_is_empty!45657)))

(assert (=> b!7127188 (= tp!1963443 e!4283192)))

(declare-fun b!7127401 () Bool)

(declare-fun tp!1963511 () Bool)

(assert (=> b!7127401 (= e!4283192 tp!1963511)))

(declare-fun b!7127400 () Bool)

(declare-fun tp!1963514 () Bool)

(declare-fun tp!1963515 () Bool)

(assert (=> b!7127400 (= e!4283192 (and tp!1963514 tp!1963515))))

(assert (= (and b!7127188 (is-ElementMatch!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127399))

(assert (= (and b!7127188 (is-Concat!26873 (regOne!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127400))

(assert (= (and b!7127188 (is-Star!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127401))

(assert (= (and b!7127188 (is-Union!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127402))

(declare-fun b!7127406 () Bool)

(declare-fun e!4283193 () Bool)

(declare-fun tp!1963517 () Bool)

(declare-fun tp!1963518 () Bool)

(assert (=> b!7127406 (= e!4283193 (and tp!1963517 tp!1963518))))

(declare-fun b!7127403 () Bool)

(assert (=> b!7127403 (= e!4283193 tp_is_empty!45657)))

(assert (=> b!7127188 (= tp!1963444 e!4283193)))

(declare-fun b!7127405 () Bool)

(declare-fun tp!1963516 () Bool)

(assert (=> b!7127405 (= e!4283193 tp!1963516)))

(declare-fun b!7127404 () Bool)

(declare-fun tp!1963519 () Bool)

(declare-fun tp!1963520 () Bool)

(assert (=> b!7127404 (= e!4283193 (and tp!1963519 tp!1963520))))

(assert (= (and b!7127188 (is-ElementMatch!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127403))

(assert (= (and b!7127188 (is-Concat!26873 (regTwo!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127404))

(assert (= (and b!7127188 (is-Star!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127405))

(assert (= (and b!7127188 (is-Union!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51753))))) b!7127406))

(declare-fun b!7127410 () Bool)

(declare-fun e!4283194 () Bool)

(declare-fun tp!1963522 () Bool)

(declare-fun tp!1963523 () Bool)

(assert (=> b!7127410 (= e!4283194 (and tp!1963522 tp!1963523))))

(declare-fun b!7127407 () Bool)

(assert (=> b!7127407 (= e!4283194 tp_is_empty!45657)))

(assert (=> b!7127191 (= tp!1963450 e!4283194)))

(declare-fun b!7127409 () Bool)

(declare-fun tp!1963521 () Bool)

(assert (=> b!7127409 (= e!4283194 tp!1963521)))

(declare-fun b!7127408 () Bool)

(declare-fun tp!1963524 () Bool)

(declare-fun tp!1963525 () Bool)

(assert (=> b!7127408 (= e!4283194 (and tp!1963524 tp!1963525))))

(assert (= (and b!7127191 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51763)))) b!7127407))

(assert (= (and b!7127191 (is-Concat!26873 (h!75431 (exprs!7522 setElem!51763)))) b!7127408))

(assert (= (and b!7127191 (is-Star!18028 (h!75431 (exprs!7522 setElem!51763)))) b!7127409))

(assert (= (and b!7127191 (is-Union!18028 (h!75431 (exprs!7522 setElem!51763)))) b!7127410))

(declare-fun b!7127411 () Bool)

(declare-fun e!4283195 () Bool)

(declare-fun tp!1963526 () Bool)

(declare-fun tp!1963527 () Bool)

(assert (=> b!7127411 (= e!4283195 (and tp!1963526 tp!1963527))))

(assert (=> b!7127191 (= tp!1963451 e!4283195)))

(assert (= (and b!7127191 (is-Cons!68983 (t!383084 (exprs!7522 setElem!51763)))) b!7127411))

(declare-fun b!7127415 () Bool)

(declare-fun e!4283196 () Bool)

(declare-fun tp!1963529 () Bool)

(declare-fun tp!1963530 () Bool)

(assert (=> b!7127415 (= e!4283196 (and tp!1963529 tp!1963530))))

(declare-fun b!7127412 () Bool)

(assert (=> b!7127412 (= e!4283196 tp_is_empty!45657)))

(assert (=> b!7127194 (= tp!1963455 e!4283196)))

(declare-fun b!7127414 () Bool)

(declare-fun tp!1963528 () Bool)

(assert (=> b!7127414 (= e!4283196 tp!1963528)))

(declare-fun b!7127413 () Bool)

(declare-fun tp!1963531 () Bool)

(declare-fun tp!1963532 () Bool)

(assert (=> b!7127413 (= e!4283196 (and tp!1963531 tp!1963532))))

(assert (= (and b!7127194 (is-ElementMatch!18028 (h!75431 (exprs!7522 setElem!51762)))) b!7127412))

(assert (= (and b!7127194 (is-Concat!26873 (h!75431 (exprs!7522 setElem!51762)))) b!7127413))

(assert (= (and b!7127194 (is-Star!18028 (h!75431 (exprs!7522 setElem!51762)))) b!7127414))

(assert (= (and b!7127194 (is-Union!18028 (h!75431 (exprs!7522 setElem!51762)))) b!7127415))

(declare-fun b!7127416 () Bool)

(declare-fun e!4283197 () Bool)

(declare-fun tp!1963533 () Bool)

(declare-fun tp!1963534 () Bool)

(assert (=> b!7127416 (= e!4283197 (and tp!1963533 tp!1963534))))

(assert (=> b!7127194 (= tp!1963456 e!4283197)))

(assert (= (and b!7127194 (is-Cons!68983 (t!383084 (exprs!7522 setElem!51762)))) b!7127416))

(declare-fun b!7127420 () Bool)

(declare-fun e!4283198 () Bool)

(declare-fun tp!1963536 () Bool)

(declare-fun tp!1963537 () Bool)

(assert (=> b!7127420 (= e!4283198 (and tp!1963536 tp!1963537))))

(declare-fun b!7127417 () Bool)

(assert (=> b!7127417 (= e!4283198 tp_is_empty!45657)))

(assert (=> b!7127186 (= tp!1963445 e!4283198)))

(declare-fun b!7127419 () Bool)

(declare-fun tp!1963535 () Bool)

(assert (=> b!7127419 (= e!4283198 tp!1963535)))

(declare-fun b!7127418 () Bool)

(declare-fun tp!1963538 () Bool)

(declare-fun tp!1963539 () Bool)

(assert (=> b!7127418 (= e!4283198 (and tp!1963538 tp!1963539))))

(assert (= (and b!7127186 (is-ElementMatch!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127417))

(assert (= (and b!7127186 (is-Concat!26873 (regOne!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127418))

(assert (= (and b!7127186 (is-Star!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127419))

(assert (= (and b!7127186 (is-Union!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127420))

(declare-fun b!7127424 () Bool)

(declare-fun e!4283199 () Bool)

(declare-fun tp!1963541 () Bool)

(declare-fun tp!1963542 () Bool)

(assert (=> b!7127424 (= e!4283199 (and tp!1963541 tp!1963542))))

(declare-fun b!7127421 () Bool)

(assert (=> b!7127421 (= e!4283199 tp_is_empty!45657)))

(assert (=> b!7127186 (= tp!1963446 e!4283199)))

(declare-fun b!7127423 () Bool)

(declare-fun tp!1963540 () Bool)

(assert (=> b!7127423 (= e!4283199 tp!1963540)))

(declare-fun b!7127422 () Bool)

(declare-fun tp!1963543 () Bool)

(declare-fun tp!1963544 () Bool)

(assert (=> b!7127422 (= e!4283199 (and tp!1963543 tp!1963544))))

(assert (= (and b!7127186 (is-ElementMatch!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127421))

(assert (= (and b!7127186 (is-Concat!26873 (regTwo!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127422))

(assert (= (and b!7127186 (is-Star!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127423))

(assert (= (and b!7127186 (is-Union!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51753))))) b!7127424))

(declare-fun b!7127428 () Bool)

(declare-fun e!4283200 () Bool)

(declare-fun tp!1963546 () Bool)

(declare-fun tp!1963547 () Bool)

(assert (=> b!7127428 (= e!4283200 (and tp!1963546 tp!1963547))))

(declare-fun b!7127425 () Bool)

(assert (=> b!7127425 (= e!4283200 tp_is_empty!45657)))

(assert (=> b!7127187 (= tp!1963442 e!4283200)))

(declare-fun b!7127427 () Bool)

(declare-fun tp!1963545 () Bool)

(assert (=> b!7127427 (= e!4283200 tp!1963545)))

(declare-fun b!7127426 () Bool)

(declare-fun tp!1963548 () Bool)

(declare-fun tp!1963549 () Bool)

(assert (=> b!7127426 (= e!4283200 (and tp!1963548 tp!1963549))))

(assert (= (and b!7127187 (is-ElementMatch!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51753))))) b!7127425))

(assert (= (and b!7127187 (is-Concat!26873 (reg!18357 (h!75431 (exprs!7522 setElem!51753))))) b!7127426))

(assert (= (and b!7127187 (is-Star!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51753))))) b!7127427))

(assert (= (and b!7127187 (is-Union!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51753))))) b!7127428))

(declare-fun b!7127432 () Bool)

(declare-fun e!4283201 () Bool)

(declare-fun tp!1963551 () Bool)

(declare-fun tp!1963552 () Bool)

(assert (=> b!7127432 (= e!4283201 (and tp!1963551 tp!1963552))))

(declare-fun b!7127429 () Bool)

(assert (=> b!7127429 (= e!4283201 tp_is_empty!45657)))

(assert (=> b!7127201 (= tp!1963461 e!4283201)))

(declare-fun b!7127431 () Bool)

(declare-fun tp!1963550 () Bool)

(assert (=> b!7127431 (= e!4283201 tp!1963550)))

(declare-fun b!7127430 () Bool)

(declare-fun tp!1963553 () Bool)

(declare-fun tp!1963554 () Bool)

(assert (=> b!7127430 (= e!4283201 (and tp!1963553 tp!1963554))))

(assert (= (and b!7127201 (is-ElementMatch!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127429))

(assert (= (and b!7127201 (is-Concat!26873 (regOne!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127430))

(assert (= (and b!7127201 (is-Star!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127431))

(assert (= (and b!7127201 (is-Union!18028 (regOne!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127432))

(declare-fun b!7127436 () Bool)

(declare-fun e!4283202 () Bool)

(declare-fun tp!1963556 () Bool)

(declare-fun tp!1963557 () Bool)

(assert (=> b!7127436 (= e!4283202 (and tp!1963556 tp!1963557))))

(declare-fun b!7127433 () Bool)

(assert (=> b!7127433 (= e!4283202 tp_is_empty!45657)))

(assert (=> b!7127201 (= tp!1963462 e!4283202)))

(declare-fun b!7127435 () Bool)

(declare-fun tp!1963555 () Bool)

(assert (=> b!7127435 (= e!4283202 tp!1963555)))

(declare-fun b!7127434 () Bool)

(declare-fun tp!1963558 () Bool)

(declare-fun tp!1963559 () Bool)

(assert (=> b!7127434 (= e!4283202 (and tp!1963558 tp!1963559))))

(assert (= (and b!7127201 (is-ElementMatch!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127433))

(assert (= (and b!7127201 (is-Concat!26873 (regTwo!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127434))

(assert (= (and b!7127201 (is-Star!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127435))

(assert (= (and b!7127201 (is-Union!18028 (regTwo!36569 (h!75431 (exprs!7522 setElem!51752))))) b!7127436))

(declare-fun b!7127437 () Bool)

(declare-fun e!4283203 () Bool)

(declare-fun tp!1963560 () Bool)

(assert (=> b!7127437 (= e!4283203 (and tp_is_empty!45657 tp!1963560))))

(assert (=> b!7127190 (= tp!1963449 e!4283203)))

(assert (= (and b!7127190 (is-Cons!68984 (t!383085 (t!383085 (t!383085 s2!1620))))) b!7127437))

(declare-fun b!7127438 () Bool)

(declare-fun e!4283204 () Bool)

(declare-fun tp!1963561 () Bool)

(assert (=> b!7127438 (= e!4283204 (and tp_is_empty!45657 tp!1963561))))

(assert (=> b!7127197 (= tp!1963459 e!4283204)))

(assert (= (and b!7127197 (is-Cons!68984 (t!383085 (t!383085 (t!383085 s1Rec!140))))) b!7127438))

(declare-fun b!7127439 () Bool)

(declare-fun e!4283205 () Bool)

(declare-fun tp!1963562 () Bool)

(declare-fun tp!1963563 () Bool)

(assert (=> b!7127439 (= e!4283205 (and tp!1963562 tp!1963563))))

(assert (=> b!7127174 (= tp!1963430 e!4283205)))

(assert (= (and b!7127174 (is-Cons!68983 (exprs!7522 setElem!51768))) b!7127439))

(declare-fun b!7127443 () Bool)

(declare-fun e!4283206 () Bool)

(declare-fun tp!1963565 () Bool)

(declare-fun tp!1963566 () Bool)

(assert (=> b!7127443 (= e!4283206 (and tp!1963565 tp!1963566))))

(declare-fun b!7127440 () Bool)

(assert (=> b!7127440 (= e!4283206 tp_is_empty!45657)))

(assert (=> b!7127200 (= tp!1963460 e!4283206)))

(declare-fun b!7127442 () Bool)

(declare-fun tp!1963564 () Bool)

(assert (=> b!7127442 (= e!4283206 tp!1963564)))

(declare-fun b!7127441 () Bool)

(declare-fun tp!1963567 () Bool)

(declare-fun tp!1963568 () Bool)

(assert (=> b!7127441 (= e!4283206 (and tp!1963567 tp!1963568))))

(assert (= (and b!7127200 (is-ElementMatch!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51752))))) b!7127440))

(assert (= (and b!7127200 (is-Concat!26873 (reg!18357 (h!75431 (exprs!7522 setElem!51752))))) b!7127441))

(assert (= (and b!7127200 (is-Star!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51752))))) b!7127442))

(assert (= (and b!7127200 (is-Union!18028 (reg!18357 (h!75431 (exprs!7522 setElem!51752))))) b!7127443))

(declare-fun b!7127444 () Bool)

(declare-fun e!4283207 () Bool)

(declare-fun tp!1963569 () Bool)

(assert (=> b!7127444 (= e!4283207 (and tp_is_empty!45657 tp!1963569))))

(assert (=> b!7127192 (= tp!1963452 e!4283207)))

(assert (= (and b!7127192 (is-Cons!68984 (t!383085 (t!383085 (t!383085 s!7390))))) b!7127444))

(declare-fun condSetEmpty!51772 () Bool)

(assert (=> setNonEmpty!51768 (= condSetEmpty!51772 (= setRest!51768 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51772 () Bool)

(assert (=> setNonEmpty!51768 (= tp!1963431 setRes!51772)))

(declare-fun setIsEmpty!51772 () Bool)

(assert (=> setIsEmpty!51772 setRes!51772))

(declare-fun tp!1963571 () Bool)

(declare-fun e!4283208 () Bool)

(declare-fun setElem!51772 () Context!14044)

(declare-fun setNonEmpty!51772 () Bool)

(assert (=> setNonEmpty!51772 (= setRes!51772 (and tp!1963571 (inv!88099 setElem!51772) e!4283208))))

(declare-fun setRest!51772 () (Set Context!14044))

(assert (=> setNonEmpty!51772 (= setRest!51768 (set.union (set.insert setElem!51772 (as set.empty (Set Context!14044))) setRest!51772))))

(declare-fun b!7127445 () Bool)

(declare-fun tp!1963570 () Bool)

(assert (=> b!7127445 (= e!4283208 tp!1963570)))

(assert (= (and setNonEmpty!51768 condSetEmpty!51772) setIsEmpty!51772))

(assert (= (and setNonEmpty!51768 (not condSetEmpty!51772)) setNonEmpty!51772))

(assert (= setNonEmpty!51772 b!7127445))

(declare-fun m!7844504 () Bool)

(assert (=> setNonEmpty!51772 m!7844504))

(declare-fun b!7127449 () Bool)

(declare-fun e!4283209 () Bool)

(declare-fun tp!1963573 () Bool)

(declare-fun tp!1963574 () Bool)

(assert (=> b!7127449 (= e!4283209 (and tp!1963573 tp!1963574))))

(declare-fun b!7127446 () Bool)

(assert (=> b!7127446 (= e!4283209 tp_is_empty!45657)))

(assert (=> b!7127189 (= tp!1963447 e!4283209)))

(declare-fun b!7127448 () Bool)

(declare-fun tp!1963572 () Bool)

(assert (=> b!7127448 (= e!4283209 tp!1963572)))

(declare-fun b!7127447 () Bool)

(declare-fun tp!1963575 () Bool)

(declare-fun tp!1963576 () Bool)

(assert (=> b!7127447 (= e!4283209 (and tp!1963575 tp!1963576))))

(assert (= (and b!7127189 (is-ElementMatch!18028 (h!75431 (t!383084 (exprs!7522 setElem!51753))))) b!7127446))

(assert (= (and b!7127189 (is-Concat!26873 (h!75431 (t!383084 (exprs!7522 setElem!51753))))) b!7127447))

(assert (= (and b!7127189 (is-Star!18028 (h!75431 (t!383084 (exprs!7522 setElem!51753))))) b!7127448))

(assert (= (and b!7127189 (is-Union!18028 (h!75431 (t!383084 (exprs!7522 setElem!51753))))) b!7127449))

(declare-fun b!7127450 () Bool)

(declare-fun e!4283210 () Bool)

(declare-fun tp!1963577 () Bool)

(declare-fun tp!1963578 () Bool)

(assert (=> b!7127450 (= e!4283210 (and tp!1963577 tp!1963578))))

(assert (=> b!7127189 (= tp!1963448 e!4283210)))

(assert (= (and b!7127189 (is-Cons!68983 (t!383084 (t!383084 (exprs!7522 setElem!51753))))) b!7127450))

(declare-fun b!7127451 () Bool)

(declare-fun e!4283211 () Bool)

(declare-fun tp!1963579 () Bool)

(assert (=> b!7127451 (= e!4283211 (and tp_is_empty!45657 tp!1963579))))

(assert (=> b!7127196 (= tp!1963458 e!4283211)))

(assert (= (and b!7127196 (is-Cons!68984 (t!383085 (t!383085 (t!383085 s1!1688))))) b!7127451))

(declare-fun b!7127455 () Bool)

(declare-fun e!4283212 () Bool)

(declare-fun tp!1963581 () Bool)

(declare-fun tp!1963582 () Bool)

(assert (=> b!7127455 (= e!4283212 (and tp!1963581 tp!1963582))))

(declare-fun b!7127452 () Bool)

(assert (=> b!7127452 (= e!4283212 tp_is_empty!45657)))

(assert (=> b!7127199 (= tp!1963463 e!4283212)))

(declare-fun b!7127454 () Bool)

(declare-fun tp!1963580 () Bool)

(assert (=> b!7127454 (= e!4283212 tp!1963580)))

(declare-fun b!7127453 () Bool)

(declare-fun tp!1963583 () Bool)

(declare-fun tp!1963584 () Bool)

(assert (=> b!7127453 (= e!4283212 (and tp!1963583 tp!1963584))))

(assert (= (and b!7127199 (is-ElementMatch!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127452))

(assert (= (and b!7127199 (is-Concat!26873 (regOne!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127453))

(assert (= (and b!7127199 (is-Star!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127454))

(assert (= (and b!7127199 (is-Union!18028 (regOne!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127455))

(declare-fun b!7127459 () Bool)

(declare-fun e!4283213 () Bool)

(declare-fun tp!1963586 () Bool)

(declare-fun tp!1963587 () Bool)

(assert (=> b!7127459 (= e!4283213 (and tp!1963586 tp!1963587))))

(declare-fun b!7127456 () Bool)

(assert (=> b!7127456 (= e!4283213 tp_is_empty!45657)))

(assert (=> b!7127199 (= tp!1963464 e!4283213)))

(declare-fun b!7127458 () Bool)

(declare-fun tp!1963585 () Bool)

(assert (=> b!7127458 (= e!4283213 tp!1963585)))

(declare-fun b!7127457 () Bool)

(declare-fun tp!1963588 () Bool)

(declare-fun tp!1963589 () Bool)

(assert (=> b!7127457 (= e!4283213 (and tp!1963588 tp!1963589))))

(assert (= (and b!7127199 (is-ElementMatch!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127456))

(assert (= (and b!7127199 (is-Concat!26873 (regTwo!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127457))

(assert (= (and b!7127199 (is-Star!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127458))

(assert (= (and b!7127199 (is-Union!18028 (regTwo!36568 (h!75431 (exprs!7522 setElem!51752))))) b!7127459))

(declare-fun b!7127460 () Bool)

(declare-fun e!4283214 () Bool)

(declare-fun tp!1963590 () Bool)

(declare-fun tp!1963591 () Bool)

(assert (=> b!7127460 (= e!4283214 (and tp!1963590 tp!1963591))))

(assert (=> b!7127193 (= tp!1963453 e!4283214)))

(assert (= (and b!7127193 (is-Cons!68983 (exprs!7522 setElem!51769))) b!7127460))

(declare-fun b!7127461 () Bool)

(declare-fun e!4283215 () Bool)

(declare-fun tp!1963592 () Bool)

(assert (=> b!7127461 (= e!4283215 (and tp_is_empty!45657 tp!1963592))))

(assert (=> b!7127195 (= tp!1963457 e!4283215)))

(assert (= (and b!7127195 (is-Cons!68984 (t!383085 (t!383085 (t!383085 s2Rec!140))))) b!7127461))

(declare-fun condSetEmpty!51773 () Bool)

(assert (=> setNonEmpty!51769 (= condSetEmpty!51773 (= setRest!51769 (as set.empty (Set Context!14044))))))

(declare-fun setRes!51773 () Bool)

(assert (=> setNonEmpty!51769 (= tp!1963454 setRes!51773)))

(declare-fun setIsEmpty!51773 () Bool)

(assert (=> setIsEmpty!51773 setRes!51773))

(declare-fun tp!1963594 () Bool)

(declare-fun e!4283216 () Bool)

(declare-fun setNonEmpty!51773 () Bool)

(declare-fun setElem!51773 () Context!14044)

(assert (=> setNonEmpty!51773 (= setRes!51773 (and tp!1963594 (inv!88099 setElem!51773) e!4283216))))

(declare-fun setRest!51773 () (Set Context!14044))

(assert (=> setNonEmpty!51773 (= setRest!51769 (set.union (set.insert setElem!51773 (as set.empty (Set Context!14044))) setRest!51773))))

(declare-fun b!7127462 () Bool)

(declare-fun tp!1963593 () Bool)

(assert (=> b!7127462 (= e!4283216 tp!1963593)))

(assert (= (and setNonEmpty!51769 condSetEmpty!51773) setIsEmpty!51773))

(assert (= (and setNonEmpty!51769 (not condSetEmpty!51773)) setNonEmpty!51773))

(assert (= setNonEmpty!51773 b!7127462))

(declare-fun m!7844506 () Bool)

(assert (=> setNonEmpty!51773 m!7844506))

(declare-fun b_lambda!271989 () Bool)

(assert (= b_lambda!271981 (or d!2223841 b_lambda!271989)))

(declare-fun bs!1886515 () Bool)

(declare-fun d!2224173 () Bool)

(assert (= bs!1886515 (and d!2224173 d!2223841)))

(assert (=> bs!1886515 (= (dynLambda!28110 lambda!433042 (h!75431 (t!383084 (exprs!7522 setElem!51753)))) (validRegex!9266 (h!75431 (t!383084 (exprs!7522 setElem!51753)))))))

(declare-fun m!7844508 () Bool)

(assert (=> bs!1886515 m!7844508))

(assert (=> b!7127298 d!2224173))

(declare-fun b_lambda!271991 () Bool)

(assert (= b_lambda!271985 (or d!2223843 b_lambda!271991)))

(declare-fun bs!1886516 () Bool)

(declare-fun d!2224175 () Bool)

(assert (= bs!1886516 (and d!2224175 d!2223843)))

(assert (=> bs!1886516 (= (dynLambda!28110 lambda!433043 (h!75431 (t!383084 (exprs!7522 setElem!51752)))) (validRegex!9266 (h!75431 (t!383084 (exprs!7522 setElem!51752)))))))

(declare-fun m!7844510 () Bool)

(assert (=> bs!1886516 m!7844510))

(assert (=> b!7127322 d!2224175))

(declare-fun b_lambda!271993 () Bool)

(assert (= b_lambda!271983 (or d!2223911 b_lambda!271993)))

(declare-fun bs!1886517 () Bool)

(declare-fun d!2224177 () Bool)

(assert (= bs!1886517 (and d!2224177 d!2223911)))

(assert (=> bs!1886517 (= (dynLambda!28110 lambda!433054 (h!75431 (exprs!7522 setElem!51762))) (validRegex!9266 (h!75431 (exprs!7522 setElem!51762))))))

(declare-fun m!7844512 () Bool)

(assert (=> bs!1886517 m!7844512))

(assert (=> b!7127302 d!2224177))

(declare-fun b_lambda!271995 () Bool)

(assert (= b_lambda!271987 (or d!2223951 b_lambda!271995)))

(declare-fun bs!1886518 () Bool)

(declare-fun d!2224179 () Bool)

(assert (= bs!1886518 (and d!2224179 d!2223951)))

(assert (=> bs!1886518 (= (dynLambda!28110 lambda!433059 (h!75431 (exprs!7522 setElem!51763))) (validRegex!9266 (h!75431 (exprs!7522 setElem!51763))))))

(declare-fun m!7844514 () Bool)

(assert (=> bs!1886518 m!7844514))

(assert (=> b!7127324 d!2224179))

(push 1)

(assert (not b!7127459))

(assert (not b!7127397))

(assert (not setNonEmpty!51772))

(assert (not b!7127451))

(assert (not b!7127434))

(assert (not d!2224117))

(assert (not b!7127445))

(assert (not b!7127372))

(assert (not b!7127436))

(assert (not b!7127448))

(assert (not b!7127411))

(assert (not d!2224077))

(assert (not d!2224143))

(assert (not b!7127380))

(assert (not bm!650848))

(assert (not b!7127305))

(assert (not b!7127432))

(assert (not b!7127312))

(assert (not d!2224133))

(assert (not d!2224101))

(assert (not bm!650849))

(assert (not b!7127311))

(assert (not b!7127390))

(assert (not b_lambda!271991))

(assert (not b!7127373))

(assert (not b!7127402))

(assert (not d!2224089))

(assert (not b_lambda!271995))

(assert (not b!7127427))

(assert (not b!7127329))

(assert (not b!7127353))

(assert (not b!7127423))

(assert (not b!7127415))

(assert (not b!7127400))

(assert (not b!7127382))

(assert (not b!7127454))

(assert (not b!7127462))

(assert (not d!2224095))

(assert (not d!2224075))

(assert (not b!7127368))

(assert (not b!7127441))

(assert (not b!7127303))

(assert (not b!7127408))

(assert (not b!7127439))

(assert (not b!7127426))

(assert (not b!7127413))

(assert (not bs!1886516))

(assert (not setNonEmpty!51773))

(assert (not d!2224097))

(assert (not b!7127297))

(assert (not b!7127437))

(assert (not b!7127378))

(assert (not b!7127420))

(assert (not b!7127416))

(assert (not b!7127414))

(assert (not b_lambda!271971))

(assert (not b!7127295))

(assert (not b!7127455))

(assert (not b!7127325))

(assert (not b!7127395))

(assert (not b!7127419))

(assert (not b!7127404))

(assert (not b!7127299))

(assert (not b!7127398))

(assert (not b!7127438))

(assert (not b!7127410))

(assert (not d!2224141))

(assert (not b!7127301))

(assert (not b!7127396))

(assert (not b!7127450))

(assert (not b!7127401))

(assert (not b!7127442))

(assert (not b!7127321))

(assert (not b!7127422))

(assert (not b!7127449))

(assert (not b_lambda!271969))

(assert (not b!7127293))

(assert (not d!2224171))

(assert (not b!7127458))

(assert (not b!7127309))

(assert (not bs!1886515))

(assert (not b!7127457))

(assert (not b!7127418))

(assert (not b!7127384))

(assert (not b!7127374))

(assert (not b!7127447))

(assert (not d!2224157))

(assert (not b!7127405))

(assert (not b_lambda!271993))

(assert (not d!2224155))

(assert (not b!7127460))

(assert (not b!7127319))

(assert (not b!7127370))

(assert (not b!7127376))

(assert (not d!2224105))

(assert (not b!7127453))

(assert (not b!7127461))

(assert (not b!7127409))

(assert (not bs!1886518))

(assert (not b!7127313))

(assert (not b!7127443))

(assert (not bm!650851))

(assert (not bs!1886517))

(assert (not d!2224069))

(assert (not d!2224125))

(assert (not b!7127327))

(assert (not b!7127424))

(assert (not d!2224127))

(assert (not b!7127435))

(assert (not b!7127365))

(assert tp_is_empty!45657)

(assert (not b!7127360))

(assert (not b!7127362))

(assert (not b!7127406))

(assert (not b!7127315))

(assert (not b!7127294))

(assert (not d!2224083))

(assert (not b_lambda!271989))

(assert (not d!2224153))

(assert (not b!7127306))

(assert (not b!7127369))

(assert (not b!7127428))

(assert (not d!2224163))

(assert (not d!2224131))

(assert (not b!7127358))

(assert (not b!7127323))

(assert (not bm!650846))

(assert (not b!7127379))

(assert (not b!7127431))

(assert (not b!7127364))

(assert (not d!2224081))

(assert (not b!7127317))

(assert (not b!7127430))

(assert (not b!7127444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

