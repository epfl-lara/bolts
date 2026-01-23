; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705730 () Bool)

(assert start!705730)

(declare-fun b!7251072 () Bool)

(assert (=> b!7251072 true))

(declare-fun b!7251066 () Bool)

(assert (=> b!7251066 true))

(declare-fun b!7251061 () Bool)

(declare-fun e!4347784 () Bool)

(declare-fun tp_is_empty!46753 () Bool)

(declare-fun tp!2037486 () Bool)

(assert (=> b!7251061 (= e!4347784 (and tp_is_empty!46753 tp!2037486))))

(declare-fun b!7251062 () Bool)

(declare-fun e!4347776 () Bool)

(declare-fun e!4347777 () Bool)

(assert (=> b!7251062 (= e!4347776 e!4347777)))

(declare-fun res!2940828 () Bool)

(assert (=> b!7251062 (=> res!2940828 e!4347777)))

(declare-datatypes ((C!37562 0))(
  ( (C!37563 (val!28729 Int)) )
))
(declare-datatypes ((Regex!18644 0))(
  ( (ElementMatch!18644 (c!1347548 C!37562)) (Concat!27489 (regOne!37800 Regex!18644) (regTwo!37800 Regex!18644)) (EmptyExpr!18644) (Star!18644 (reg!18973 Regex!18644)) (EmptyLang!18644) (Union!18644 (regOne!37801 Regex!18644) (regTwo!37801 Regex!18644)) )
))
(declare-datatypes ((List!70512 0))(
  ( (Nil!70388) (Cons!70388 (h!76836 Regex!18644) (t!384568 List!70512)) )
))
(declare-fun lt!2584926 () List!70512)

(declare-fun isEmpty!40536 (List!70512) Bool)

(assert (=> b!7251062 (= res!2940828 (isEmpty!40536 lt!2584926))))

(declare-datatypes ((Unit!163874 0))(
  ( (Unit!163875) )
))
(declare-fun lt!2584932 () Unit!163874)

(declare-datatypes ((Context!15168 0))(
  ( (Context!15169 (exprs!8084 List!70512)) )
))
(declare-fun ct1!232 () Context!15168)

(declare-fun lambda!444193 () Int)

(declare-fun ct2!328 () Context!15168)

(declare-fun lemmaConcatPreservesForall!1451 (List!70512 List!70512 Int) Unit!163874)

(assert (=> b!7251062 (= lt!2584932 (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(declare-fun lt!2584920 () (Set Context!15168))

(declare-fun lt!2584930 () Context!15168)

(declare-datatypes ((List!70513 0))(
  ( (Nil!70389) (Cons!70389 (h!76837 C!37562) (t!384569 List!70513)) )
))
(declare-fun s1!1971 () List!70513)

(declare-fun derivationStepZipperUp!2468 (Context!15168 C!37562) (Set Context!15168))

(assert (=> b!7251062 (= lt!2584920 (derivationStepZipperUp!2468 lt!2584930 (h!76837 s1!1971)))))

(declare-fun lt!2584921 () Unit!163874)

(assert (=> b!7251062 (= lt!2584921 (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(declare-fun lt!2584927 () (Set Context!15168))

(declare-fun lt!2584939 () Context!15168)

(declare-fun derivationStepZipperDown!2638 (Regex!18644 Context!15168 C!37562) (Set Context!15168))

(assert (=> b!7251062 (= lt!2584927 (derivationStepZipperDown!2638 (h!76836 (exprs!8084 ct1!232)) lt!2584939 (h!76837 s1!1971)))))

(declare-fun tail!14319 (List!70512) List!70512)

(assert (=> b!7251062 (= lt!2584939 (Context!15169 (tail!14319 (exprs!8084 ct1!232))))))

(declare-fun res!2940825 () Bool)

(declare-fun e!4347778 () Bool)

(assert (=> start!705730 (=> (not res!2940825) (not e!4347778))))

(declare-fun lt!2584919 () (Set Context!15168))

(declare-fun matchZipper!3554 ((Set Context!15168) List!70513) Bool)

(assert (=> start!705730 (= res!2940825 (matchZipper!3554 lt!2584919 s1!1971))))

(assert (=> start!705730 (= lt!2584919 (set.insert ct1!232 (as set.empty (Set Context!15168))))))

(assert (=> start!705730 e!4347778))

(declare-fun e!4347781 () Bool)

(declare-fun inv!89621 (Context!15168) Bool)

(assert (=> start!705730 (and (inv!89621 ct1!232) e!4347781)))

(assert (=> start!705730 e!4347784))

(declare-fun e!4347775 () Bool)

(assert (=> start!705730 e!4347775))

(declare-fun e!4347779 () Bool)

(assert (=> start!705730 (and (inv!89621 ct2!328) e!4347779)))

(declare-fun b!7251063 () Bool)

(declare-fun tp!2037485 () Bool)

(assert (=> b!7251063 (= e!4347779 tp!2037485)))

(declare-fun b!7251064 () Bool)

(declare-fun res!2940823 () Bool)

(declare-fun e!4347780 () Bool)

(assert (=> b!7251064 (=> res!2940823 e!4347780)))

(declare-fun lt!2584933 () (Set Context!15168))

(declare-fun lt!2584934 () (Set Context!15168))

(assert (=> b!7251064 (= res!2940823 (not (= lt!2584933 lt!2584934)))))

(declare-fun b!7251065 () Bool)

(declare-fun tp!2037484 () Bool)

(assert (=> b!7251065 (= e!4347775 (and tp_is_empty!46753 tp!2037484))))

(assert (=> b!7251066 (= e!4347777 e!4347780)))

(declare-fun res!2940829 () Bool)

(assert (=> b!7251066 (=> res!2940829 e!4347780)))

(declare-fun nullable!7904 (Regex!18644) Bool)

(assert (=> b!7251066 (= res!2940829 (not (nullable!7904 (h!76836 (exprs!8084 ct1!232)))))))

(declare-fun lt!2584925 () (Set Context!15168))

(declare-fun lambda!444195 () Int)

(declare-fun flatMap!2809 ((Set Context!15168) Int) (Set Context!15168))

(assert (=> b!7251066 (= (flatMap!2809 lt!2584925 lambda!444195) (derivationStepZipperUp!2468 lt!2584930 (h!76837 s1!1971)))))

(declare-fun lt!2584929 () Unit!163874)

(declare-fun lemmaFlatMapOnSingletonSet!2213 ((Set Context!15168) Context!15168 Int) Unit!163874)

(assert (=> b!7251066 (= lt!2584929 (lemmaFlatMapOnSingletonSet!2213 lt!2584925 lt!2584930 lambda!444195))))

(declare-fun lt!2584940 () Unit!163874)

(assert (=> b!7251066 (= lt!2584940 (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(assert (=> b!7251066 (= (flatMap!2809 lt!2584919 lambda!444195) (derivationStepZipperUp!2468 ct1!232 (h!76837 s1!1971)))))

(declare-fun lt!2584922 () Unit!163874)

(assert (=> b!7251066 (= lt!2584922 (lemmaFlatMapOnSingletonSet!2213 lt!2584919 ct1!232 lambda!444195))))

(declare-fun lt!2584935 () (Set Context!15168))

(assert (=> b!7251066 (= lt!2584935 (derivationStepZipperDown!2638 (h!76836 (exprs!8084 ct1!232)) (Context!15169 (tail!14319 lt!2584926)) (h!76837 s1!1971)))))

(declare-fun b!7251067 () Bool)

(declare-fun res!2940826 () Bool)

(assert (=> b!7251067 (=> (not res!2940826) (not e!4347778))))

(declare-fun s2!1849 () List!70513)

(assert (=> b!7251067 (= res!2940826 (matchZipper!3554 (set.insert ct2!328 (as set.empty (Set Context!15168))) s2!1849))))

(declare-fun b!7251068 () Bool)

(declare-fun e!4347783 () Bool)

(declare-fun e!4347785 () Bool)

(assert (=> b!7251068 (= e!4347783 e!4347785)))

(declare-fun res!2940824 () Bool)

(assert (=> b!7251068 (=> (not res!2940824) (not e!4347785))))

(assert (=> b!7251068 (= res!2940824 (matchZipper!3554 lt!2584933 (t!384569 s1!1971)))))

(declare-fun derivationStepZipper!3422 ((Set Context!15168) C!37562) (Set Context!15168))

(assert (=> b!7251068 (= lt!2584933 (derivationStepZipper!3422 lt!2584919 (h!76837 s1!1971)))))

(declare-fun b!7251069 () Bool)

(declare-fun tp!2037483 () Bool)

(assert (=> b!7251069 (= e!4347781 tp!2037483)))

(declare-fun b!7251070 () Bool)

(declare-fun e!4347782 () Bool)

(assert (=> b!7251070 (= e!4347782 e!4347776)))

(declare-fun res!2940830 () Bool)

(assert (=> b!7251070 (=> res!2940830 e!4347776)))

(assert (=> b!7251070 (= res!2940830 (isEmpty!40536 (exprs!8084 ct1!232)))))

(assert (=> b!7251070 (= lt!2584934 (derivationStepZipperUp!2468 ct1!232 (h!76837 s1!1971)))))

(declare-fun lt!2584924 () Unit!163874)

(declare-fun lt!2584937 () Context!15168)

(assert (=> b!7251070 (= lt!2584924 (lemmaConcatPreservesForall!1451 (exprs!8084 lt!2584937) (exprs!8084 ct2!328) lambda!444193))))

(declare-fun ++!16550 (List!70512 List!70512) List!70512)

(declare-fun ++!16551 (List!70513 List!70513) List!70513)

(assert (=> b!7251070 (matchZipper!3554 (set.insert (Context!15169 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328))) (as set.empty (Set Context!15168))) (++!16551 (t!384569 s1!1971) s2!1849))))

(declare-fun lt!2584936 () Unit!163874)

(assert (=> b!7251070 (= lt!2584936 (lemmaConcatPreservesForall!1451 (exprs!8084 lt!2584937) (exprs!8084 ct2!328) lambda!444193))))

(declare-fun lt!2584923 () Unit!163874)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!389 (Context!15168 Context!15168 List!70513 List!70513) Unit!163874)

(assert (=> b!7251070 (= lt!2584923 (lemmaConcatenateContextMatchesConcatOfStrings!389 lt!2584937 ct2!328 (t!384569 s1!1971) s2!1849))))

(declare-fun lambda!444194 () Int)

(declare-fun getWitness!2202 ((Set Context!15168) Int) Context!15168)

(assert (=> b!7251070 (= lt!2584937 (getWitness!2202 lt!2584933 lambda!444194))))

(declare-fun b!7251071 () Bool)

(declare-fun res!2940831 () Bool)

(assert (=> b!7251071 (=> res!2940831 e!4347780)))

(assert (=> b!7251071 (= res!2940831 (not (= lt!2584934 (set.union lt!2584927 (derivationStepZipperUp!2468 lt!2584939 (h!76837 s1!1971))))))))

(assert (=> b!7251072 (= e!4347785 (not e!4347782))))

(declare-fun res!2940827 () Bool)

(assert (=> b!7251072 (=> res!2940827 e!4347782)))

(declare-fun exists!4366 ((Set Context!15168) Int) Bool)

(assert (=> b!7251072 (= res!2940827 (not (exists!4366 lt!2584933 lambda!444194)))))

(declare-datatypes ((List!70514 0))(
  ( (Nil!70390) (Cons!70390 (h!76838 Context!15168) (t!384570 List!70514)) )
))
(declare-fun lt!2584938 () List!70514)

(declare-fun exists!4367 (List!70514 Int) Bool)

(assert (=> b!7251072 (exists!4367 lt!2584938 lambda!444194)))

(declare-fun lt!2584928 () Unit!163874)

(declare-fun lemmaZipperMatchesExistsMatchingContext!747 (List!70514 List!70513) Unit!163874)

(assert (=> b!7251072 (= lt!2584928 (lemmaZipperMatchesExistsMatchingContext!747 lt!2584938 (t!384569 s1!1971)))))

(declare-fun toList!11473 ((Set Context!15168)) List!70514)

(assert (=> b!7251072 (= lt!2584938 (toList!11473 lt!2584933))))

(declare-fun b!7251073 () Bool)

(assert (=> b!7251073 (= e!4347780 (inv!89621 lt!2584930))))

(declare-fun lt!2584918 () Unit!163874)

(assert (=> b!7251073 (= lt!2584918 (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(declare-fun b!7251074 () Bool)

(assert (=> b!7251074 (= e!4347778 e!4347783)))

(declare-fun res!2940832 () Bool)

(assert (=> b!7251074 (=> (not res!2940832) (not e!4347783))))

(assert (=> b!7251074 (= res!2940832 (and (not (is-Nil!70388 (exprs!8084 ct1!232))) (is-Cons!70389 s1!1971)))))

(assert (=> b!7251074 (= lt!2584925 (set.insert lt!2584930 (as set.empty (Set Context!15168))))))

(assert (=> b!7251074 (= lt!2584930 (Context!15169 lt!2584926))))

(assert (=> b!7251074 (= lt!2584926 (++!16550 (exprs!8084 ct1!232) (exprs!8084 ct2!328)))))

(declare-fun lt!2584931 () Unit!163874)

(assert (=> b!7251074 (= lt!2584931 (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(assert (= (and start!705730 res!2940825) b!7251067))

(assert (= (and b!7251067 res!2940826) b!7251074))

(assert (= (and b!7251074 res!2940832) b!7251068))

(assert (= (and b!7251068 res!2940824) b!7251072))

(assert (= (and b!7251072 (not res!2940827)) b!7251070))

(assert (= (and b!7251070 (not res!2940830)) b!7251062))

(assert (= (and b!7251062 (not res!2940828)) b!7251066))

(assert (= (and b!7251066 (not res!2940829)) b!7251071))

(assert (= (and b!7251071 (not res!2940831)) b!7251064))

(assert (= (and b!7251064 (not res!2940823)) b!7251073))

(assert (= start!705730 b!7251069))

(assert (= (and start!705730 (is-Cons!70389 s1!1971)) b!7251061))

(assert (= (and start!705730 (is-Cons!70389 s2!1849)) b!7251065))

(assert (= start!705730 b!7251063))

(declare-fun m!7930050 () Bool)

(assert (=> b!7251073 m!7930050))

(declare-fun m!7930052 () Bool)

(assert (=> b!7251073 m!7930052))

(declare-fun m!7930054 () Bool)

(assert (=> b!7251072 m!7930054))

(declare-fun m!7930056 () Bool)

(assert (=> b!7251072 m!7930056))

(declare-fun m!7930058 () Bool)

(assert (=> b!7251072 m!7930058))

(declare-fun m!7930060 () Bool)

(assert (=> b!7251072 m!7930060))

(declare-fun m!7930062 () Bool)

(assert (=> b!7251068 m!7930062))

(declare-fun m!7930064 () Bool)

(assert (=> b!7251068 m!7930064))

(declare-fun m!7930066 () Bool)

(assert (=> b!7251074 m!7930066))

(declare-fun m!7930068 () Bool)

(assert (=> b!7251074 m!7930068))

(assert (=> b!7251074 m!7930052))

(declare-fun m!7930070 () Bool)

(assert (=> b!7251070 m!7930070))

(declare-fun m!7930072 () Bool)

(assert (=> b!7251070 m!7930072))

(declare-fun m!7930074 () Bool)

(assert (=> b!7251070 m!7930074))

(declare-fun m!7930076 () Bool)

(assert (=> b!7251070 m!7930076))

(declare-fun m!7930078 () Bool)

(assert (=> b!7251070 m!7930078))

(declare-fun m!7930080 () Bool)

(assert (=> b!7251070 m!7930080))

(declare-fun m!7930082 () Bool)

(assert (=> b!7251070 m!7930082))

(declare-fun m!7930084 () Bool)

(assert (=> b!7251070 m!7930084))

(assert (=> b!7251070 m!7930072))

(assert (=> b!7251070 m!7930078))

(assert (=> b!7251070 m!7930070))

(declare-fun m!7930086 () Bool)

(assert (=> b!7251070 m!7930086))

(declare-fun m!7930088 () Bool)

(assert (=> b!7251071 m!7930088))

(declare-fun m!7930090 () Bool)

(assert (=> b!7251066 m!7930090))

(declare-fun m!7930092 () Bool)

(assert (=> b!7251066 m!7930092))

(declare-fun m!7930094 () Bool)

(assert (=> b!7251066 m!7930094))

(assert (=> b!7251066 m!7930084))

(declare-fun m!7930096 () Bool)

(assert (=> b!7251066 m!7930096))

(declare-fun m!7930098 () Bool)

(assert (=> b!7251066 m!7930098))

(declare-fun m!7930100 () Bool)

(assert (=> b!7251066 m!7930100))

(assert (=> b!7251066 m!7930052))

(declare-fun m!7930102 () Bool)

(assert (=> b!7251066 m!7930102))

(declare-fun m!7930104 () Bool)

(assert (=> b!7251066 m!7930104))

(declare-fun m!7930106 () Bool)

(assert (=> start!705730 m!7930106))

(declare-fun m!7930108 () Bool)

(assert (=> start!705730 m!7930108))

(declare-fun m!7930110 () Bool)

(assert (=> start!705730 m!7930110))

(declare-fun m!7930112 () Bool)

(assert (=> start!705730 m!7930112))

(declare-fun m!7930114 () Bool)

(assert (=> b!7251062 m!7930114))

(assert (=> b!7251062 m!7930096))

(declare-fun m!7930116 () Bool)

(assert (=> b!7251062 m!7930116))

(assert (=> b!7251062 m!7930052))

(assert (=> b!7251062 m!7930052))

(declare-fun m!7930118 () Bool)

(assert (=> b!7251062 m!7930118))

(declare-fun m!7930120 () Bool)

(assert (=> b!7251067 m!7930120))

(assert (=> b!7251067 m!7930120))

(declare-fun m!7930122 () Bool)

(assert (=> b!7251067 m!7930122))

(push 1)

(assert (not b!7251067))

(assert (not b!7251068))

(assert tp_is_empty!46753)

(assert (not b!7251065))

(assert (not b!7251071))

(assert (not b!7251070))

(assert (not b!7251061))

(assert (not b!7251066))

(assert (not b!7251069))

(assert (not start!705730))

(assert (not b!7251074))

(assert (not b!7251062))

(assert (not b!7251072))

(assert (not b!7251063))

(assert (not b!7251073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7251135 () Bool)

(declare-fun res!2940868 () Bool)

(declare-fun e!4347823 () Bool)

(assert (=> b!7251135 (=> (not res!2940868) (not e!4347823))))

(declare-fun lt!2585012 () List!70512)

(declare-fun size!41715 (List!70512) Int)

(assert (=> b!7251135 (= res!2940868 (= (size!41715 lt!2585012) (+ (size!41715 (exprs!8084 lt!2584937)) (size!41715 (exprs!8084 ct2!328)))))))

(declare-fun b!7251133 () Bool)

(declare-fun e!4347824 () List!70512)

(assert (=> b!7251133 (= e!4347824 (exprs!8084 ct2!328))))

(declare-fun b!7251136 () Bool)

(assert (=> b!7251136 (= e!4347823 (or (not (= (exprs!8084 ct2!328) Nil!70388)) (= lt!2585012 (exprs!8084 lt!2584937))))))

(declare-fun b!7251134 () Bool)

(assert (=> b!7251134 (= e!4347824 (Cons!70388 (h!76836 (exprs!8084 lt!2584937)) (++!16550 (t!384568 (exprs!8084 lt!2584937)) (exprs!8084 ct2!328))))))

(declare-fun d!2253989 () Bool)

(assert (=> d!2253989 e!4347823))

(declare-fun res!2940867 () Bool)

(assert (=> d!2253989 (=> (not res!2940867) (not e!4347823))))

(declare-fun content!14608 (List!70512) (Set Regex!18644))

(assert (=> d!2253989 (= res!2940867 (= (content!14608 lt!2585012) (set.union (content!14608 (exprs!8084 lt!2584937)) (content!14608 (exprs!8084 ct2!328)))))))

(assert (=> d!2253989 (= lt!2585012 e!4347824)))

(declare-fun c!1347562 () Bool)

(assert (=> d!2253989 (= c!1347562 (is-Nil!70388 (exprs!8084 lt!2584937)))))

(assert (=> d!2253989 (= (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328)) lt!2585012)))

(assert (= (and d!2253989 c!1347562) b!7251133))

(assert (= (and d!2253989 (not c!1347562)) b!7251134))

(assert (= (and d!2253989 res!2940867) b!7251135))

(assert (= (and b!7251135 res!2940868) b!7251136))

(declare-fun m!7930198 () Bool)

(assert (=> b!7251135 m!7930198))

(declare-fun m!7930200 () Bool)

(assert (=> b!7251135 m!7930200))

(declare-fun m!7930202 () Bool)

(assert (=> b!7251135 m!7930202))

(declare-fun m!7930204 () Bool)

(assert (=> b!7251134 m!7930204))

(declare-fun m!7930206 () Bool)

(assert (=> d!2253989 m!7930206))

(declare-fun m!7930208 () Bool)

(assert (=> d!2253989 m!7930208))

(declare-fun m!7930210 () Bool)

(assert (=> d!2253989 m!7930210))

(assert (=> b!7251070 d!2253989))

(declare-fun bs!1906314 () Bool)

(declare-fun d!2253991 () Bool)

(assert (= bs!1906314 (and d!2253991 b!7251074)))

(declare-fun lambda!444225 () Int)

(assert (=> bs!1906314 (= lambda!444225 lambda!444193)))

(assert (=> d!2253991 (matchZipper!3554 (set.insert (Context!15169 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328))) (as set.empty (Set Context!15168))) (++!16551 (t!384569 s1!1971) s2!1849))))

(declare-fun lt!2585018 () Unit!163874)

(assert (=> d!2253991 (= lt!2585018 (lemmaConcatPreservesForall!1451 (exprs!8084 lt!2584937) (exprs!8084 ct2!328) lambda!444225))))

(declare-fun lt!2585017 () Unit!163874)

(declare-fun choose!56013 (Context!15168 Context!15168 List!70513 List!70513) Unit!163874)

(assert (=> d!2253991 (= lt!2585017 (choose!56013 lt!2584937 ct2!328 (t!384569 s1!1971) s2!1849))))

(assert (=> d!2253991 (matchZipper!3554 (set.insert lt!2584937 (as set.empty (Set Context!15168))) (t!384569 s1!1971))))

(assert (=> d!2253991 (= (lemmaConcatenateContextMatchesConcatOfStrings!389 lt!2584937 ct2!328 (t!384569 s1!1971) s2!1849) lt!2585017)))

(declare-fun bs!1906315 () Bool)

(assert (= bs!1906315 d!2253991))

(assert (=> bs!1906315 m!7930072))

(assert (=> bs!1906315 m!7930070))

(declare-fun m!7930212 () Bool)

(assert (=> bs!1906315 m!7930212))

(declare-fun m!7930214 () Bool)

(assert (=> bs!1906315 m!7930214))

(assert (=> bs!1906315 m!7930070))

(assert (=> bs!1906315 m!7930072))

(assert (=> bs!1906315 m!7930074))

(assert (=> bs!1906315 m!7930212))

(declare-fun m!7930216 () Bool)

(assert (=> bs!1906315 m!7930216))

(assert (=> bs!1906315 m!7930082))

(declare-fun m!7930218 () Bool)

(assert (=> bs!1906315 m!7930218))

(assert (=> b!7251070 d!2253991))

(declare-fun d!2253993 () Bool)

(assert (=> d!2253993 (= (isEmpty!40536 (exprs!8084 ct1!232)) (is-Nil!70388 (exprs!8084 ct1!232)))))

(assert (=> b!7251070 d!2253993))

(declare-fun d!2253995 () Bool)

(declare-fun forall!17491 (List!70512 Int) Bool)

(assert (=> d!2253995 (forall!17491 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328)) lambda!444193)))

(declare-fun lt!2585021 () Unit!163874)

(declare-fun choose!56014 (List!70512 List!70512 Int) Unit!163874)

(assert (=> d!2253995 (= lt!2585021 (choose!56014 (exprs!8084 lt!2584937) (exprs!8084 ct2!328) lambda!444193))))

(assert (=> d!2253995 (forall!17491 (exprs!8084 lt!2584937) lambda!444193)))

(assert (=> d!2253995 (= (lemmaConcatPreservesForall!1451 (exprs!8084 lt!2584937) (exprs!8084 ct2!328) lambda!444193) lt!2585021)))

(declare-fun bs!1906316 () Bool)

(assert (= bs!1906316 d!2253995))

(assert (=> bs!1906316 m!7930082))

(assert (=> bs!1906316 m!7930082))

(declare-fun m!7930220 () Bool)

(assert (=> bs!1906316 m!7930220))

(declare-fun m!7930222 () Bool)

(assert (=> bs!1906316 m!7930222))

(declare-fun m!7930224 () Bool)

(assert (=> bs!1906316 m!7930224))

(assert (=> b!7251070 d!2253995))

(declare-fun d!2253997 () Bool)

(declare-fun c!1347565 () Bool)

(declare-fun isEmpty!40538 (List!70513) Bool)

(assert (=> d!2253997 (= c!1347565 (isEmpty!40538 (++!16551 (t!384569 s1!1971) s2!1849)))))

(declare-fun e!4347827 () Bool)

(assert (=> d!2253997 (= (matchZipper!3554 (set.insert (Context!15169 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328))) (as set.empty (Set Context!15168))) (++!16551 (t!384569 s1!1971) s2!1849)) e!4347827)))

(declare-fun b!7251141 () Bool)

(declare-fun nullableZipper!2913 ((Set Context!15168)) Bool)

(assert (=> b!7251141 (= e!4347827 (nullableZipper!2913 (set.insert (Context!15169 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328))) (as set.empty (Set Context!15168)))))))

(declare-fun b!7251142 () Bool)

(declare-fun head!14904 (List!70513) C!37562)

(declare-fun tail!14321 (List!70513) List!70513)

(assert (=> b!7251142 (= e!4347827 (matchZipper!3554 (derivationStepZipper!3422 (set.insert (Context!15169 (++!16550 (exprs!8084 lt!2584937) (exprs!8084 ct2!328))) (as set.empty (Set Context!15168))) (head!14904 (++!16551 (t!384569 s1!1971) s2!1849))) (tail!14321 (++!16551 (t!384569 s1!1971) s2!1849))))))

(assert (= (and d!2253997 c!1347565) b!7251141))

(assert (= (and d!2253997 (not c!1347565)) b!7251142))

(assert (=> d!2253997 m!7930072))

(declare-fun m!7930226 () Bool)

(assert (=> d!2253997 m!7930226))

(assert (=> b!7251141 m!7930070))

(declare-fun m!7930228 () Bool)

(assert (=> b!7251141 m!7930228))

(assert (=> b!7251142 m!7930072))

(declare-fun m!7930230 () Bool)

(assert (=> b!7251142 m!7930230))

(assert (=> b!7251142 m!7930070))

(assert (=> b!7251142 m!7930230))

(declare-fun m!7930232 () Bool)

(assert (=> b!7251142 m!7930232))

(assert (=> b!7251142 m!7930072))

(declare-fun m!7930234 () Bool)

(assert (=> b!7251142 m!7930234))

(assert (=> b!7251142 m!7930232))

(assert (=> b!7251142 m!7930234))

(declare-fun m!7930236 () Bool)

(assert (=> b!7251142 m!7930236))

(assert (=> b!7251070 d!2253997))

(declare-fun call!660437 () (Set Context!15168))

(declare-fun b!7251153 () Bool)

(declare-fun e!4347834 () (Set Context!15168))

(assert (=> b!7251153 (= e!4347834 (set.union call!660437 (derivationStepZipperUp!2468 (Context!15169 (t!384568 (exprs!8084 ct1!232))) (h!76837 s1!1971))))))

(declare-fun b!7251154 () Bool)

(declare-fun e!4347836 () (Set Context!15168))

(assert (=> b!7251154 (= e!4347836 call!660437)))

(declare-fun b!7251155 () Bool)

(declare-fun e!4347835 () Bool)

(assert (=> b!7251155 (= e!4347835 (nullable!7904 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun d!2253999 () Bool)

(declare-fun c!1347571 () Bool)

(assert (=> d!2253999 (= c!1347571 e!4347835)))

(declare-fun res!2940871 () Bool)

(assert (=> d!2253999 (=> (not res!2940871) (not e!4347835))))

(assert (=> d!2253999 (= res!2940871 (is-Cons!70388 (exprs!8084 ct1!232)))))

(assert (=> d!2253999 (= (derivationStepZipperUp!2468 ct1!232 (h!76837 s1!1971)) e!4347834)))

(declare-fun b!7251156 () Bool)

(assert (=> b!7251156 (= e!4347836 (as set.empty (Set Context!15168)))))

(declare-fun b!7251157 () Bool)

(assert (=> b!7251157 (= e!4347834 e!4347836)))

(declare-fun c!1347570 () Bool)

(assert (=> b!7251157 (= c!1347570 (is-Cons!70388 (exprs!8084 ct1!232)))))

(declare-fun bm!660432 () Bool)

(assert (=> bm!660432 (= call!660437 (derivationStepZipperDown!2638 (h!76836 (exprs!8084 ct1!232)) (Context!15169 (t!384568 (exprs!8084 ct1!232))) (h!76837 s1!1971)))))

(assert (= (and d!2253999 res!2940871) b!7251155))

(assert (= (and d!2253999 c!1347571) b!7251153))

(assert (= (and d!2253999 (not c!1347571)) b!7251157))

(assert (= (and b!7251157 c!1347570) b!7251154))

(assert (= (and b!7251157 (not c!1347570)) b!7251156))

(assert (= (or b!7251153 b!7251154) bm!660432))

(declare-fun m!7930238 () Bool)

(assert (=> b!7251153 m!7930238))

(assert (=> b!7251155 m!7930092))

(declare-fun m!7930240 () Bool)

(assert (=> bm!660432 m!7930240))

(assert (=> b!7251070 d!2253999))

(declare-fun b!7251178 () Bool)

(declare-fun res!2940879 () Bool)

(declare-fun e!4347847 () Bool)

(assert (=> b!7251178 (=> (not res!2940879) (not e!4347847))))

(declare-fun lt!2585024 () List!70513)

(declare-fun size!41716 (List!70513) Int)

(assert (=> b!7251178 (= res!2940879 (= (size!41716 lt!2585024) (+ (size!41716 (t!384569 s1!1971)) (size!41716 s2!1849))))))

(declare-fun b!7251176 () Bool)

(declare-fun e!4347848 () List!70513)

(assert (=> b!7251176 (= e!4347848 s2!1849)))

(declare-fun d!2254003 () Bool)

(assert (=> d!2254003 e!4347847))

(declare-fun res!2940878 () Bool)

(assert (=> d!2254003 (=> (not res!2940878) (not e!4347847))))

(declare-fun content!14609 (List!70513) (Set C!37562))

(assert (=> d!2254003 (= res!2940878 (= (content!14609 lt!2585024) (set.union (content!14609 (t!384569 s1!1971)) (content!14609 s2!1849))))))

(assert (=> d!2254003 (= lt!2585024 e!4347848)))

(declare-fun c!1347578 () Bool)

(assert (=> d!2254003 (= c!1347578 (is-Nil!70389 (t!384569 s1!1971)))))

(assert (=> d!2254003 (= (++!16551 (t!384569 s1!1971) s2!1849) lt!2585024)))

(declare-fun b!7251179 () Bool)

(assert (=> b!7251179 (= e!4347847 (or (not (= s2!1849 Nil!70389)) (= lt!2585024 (t!384569 s1!1971))))))

(declare-fun b!7251177 () Bool)

(assert (=> b!7251177 (= e!4347848 (Cons!70389 (h!76837 (t!384569 s1!1971)) (++!16551 (t!384569 (t!384569 s1!1971)) s2!1849)))))

(assert (= (and d!2254003 c!1347578) b!7251176))

(assert (= (and d!2254003 (not c!1347578)) b!7251177))

(assert (= (and d!2254003 res!2940878) b!7251178))

(assert (= (and b!7251178 res!2940879) b!7251179))

(declare-fun m!7930242 () Bool)

(assert (=> b!7251178 m!7930242))

(declare-fun m!7930244 () Bool)

(assert (=> b!7251178 m!7930244))

(declare-fun m!7930246 () Bool)

(assert (=> b!7251178 m!7930246))

(declare-fun m!7930248 () Bool)

(assert (=> d!2254003 m!7930248))

(declare-fun m!7930250 () Bool)

(assert (=> d!2254003 m!7930250))

(declare-fun m!7930252 () Bool)

(assert (=> d!2254003 m!7930252))

(declare-fun m!7930254 () Bool)

(assert (=> b!7251177 m!7930254))

(assert (=> b!7251070 d!2254003))

(declare-fun d!2254005 () Bool)

(declare-fun e!4347854 () Bool)

(assert (=> d!2254005 e!4347854))

(declare-fun res!2940883 () Bool)

(assert (=> d!2254005 (=> (not res!2940883) (not e!4347854))))

(declare-fun lt!2585027 () Context!15168)

(declare-fun dynLambda!28740 (Int Context!15168) Bool)

(assert (=> d!2254005 (= res!2940883 (dynLambda!28740 lambda!444194 lt!2585027))))

(declare-fun getWitness!2204 (List!70514 Int) Context!15168)

(assert (=> d!2254005 (= lt!2585027 (getWitness!2204 (toList!11473 lt!2584933) lambda!444194))))

(assert (=> d!2254005 (exists!4366 lt!2584933 lambda!444194)))

(assert (=> d!2254005 (= (getWitness!2202 lt!2584933 lambda!444194) lt!2585027)))

(declare-fun b!7251187 () Bool)

(assert (=> b!7251187 (= e!4347854 (set.member lt!2585027 lt!2584933))))

(assert (= (and d!2254005 res!2940883) b!7251187))

(declare-fun b_lambda!278475 () Bool)

(assert (=> (not b_lambda!278475) (not d!2254005)))

(declare-fun m!7930262 () Bool)

(assert (=> d!2254005 m!7930262))

(assert (=> d!2254005 m!7930060))

(assert (=> d!2254005 m!7930060))

(declare-fun m!7930264 () Bool)

(assert (=> d!2254005 m!7930264))

(assert (=> d!2254005 m!7930054))

(declare-fun m!7930266 () Bool)

(assert (=> b!7251187 m!7930266))

(assert (=> b!7251070 d!2254005))

(declare-fun d!2254009 () Bool)

(declare-fun dynLambda!28741 (Int Context!15168) (Set Context!15168))

(assert (=> d!2254009 (= (flatMap!2809 lt!2584919 lambda!444195) (dynLambda!28741 lambda!444195 ct1!232))))

(declare-fun lt!2585030 () Unit!163874)

(declare-fun choose!56015 ((Set Context!15168) Context!15168 Int) Unit!163874)

(assert (=> d!2254009 (= lt!2585030 (choose!56015 lt!2584919 ct1!232 lambda!444195))))

(assert (=> d!2254009 (= lt!2584919 (set.insert ct1!232 (as set.empty (Set Context!15168))))))

(assert (=> d!2254009 (= (lemmaFlatMapOnSingletonSet!2213 lt!2584919 ct1!232 lambda!444195) lt!2585030)))

(declare-fun b_lambda!278477 () Bool)

(assert (=> (not b_lambda!278477) (not d!2254009)))

(declare-fun bs!1906317 () Bool)

(assert (= bs!1906317 d!2254009))

(assert (=> bs!1906317 m!7930104))

(declare-fun m!7930268 () Bool)

(assert (=> bs!1906317 m!7930268))

(declare-fun m!7930270 () Bool)

(assert (=> bs!1906317 m!7930270))

(assert (=> bs!1906317 m!7930108))

(assert (=> b!7251066 d!2254009))

(declare-fun d!2254011 () Bool)

(assert (=> d!2254011 (= (tail!14319 lt!2584926) (t!384568 lt!2584926))))

(assert (=> b!7251066 d!2254011))

(declare-fun e!4347855 () (Set Context!15168))

(declare-fun b!7251188 () Bool)

(declare-fun call!660441 () (Set Context!15168))

(assert (=> b!7251188 (= e!4347855 (set.union call!660441 (derivationStepZipperUp!2468 (Context!15169 (t!384568 (exprs!8084 lt!2584930))) (h!76837 s1!1971))))))

(declare-fun b!7251189 () Bool)

(declare-fun e!4347857 () (Set Context!15168))

(assert (=> b!7251189 (= e!4347857 call!660441)))

(declare-fun b!7251190 () Bool)

(declare-fun e!4347856 () Bool)

(assert (=> b!7251190 (= e!4347856 (nullable!7904 (h!76836 (exprs!8084 lt!2584930))))))

(declare-fun d!2254013 () Bool)

(declare-fun c!1347582 () Bool)

(assert (=> d!2254013 (= c!1347582 e!4347856)))

(declare-fun res!2940884 () Bool)

(assert (=> d!2254013 (=> (not res!2940884) (not e!4347856))))

(assert (=> d!2254013 (= res!2940884 (is-Cons!70388 (exprs!8084 lt!2584930)))))

(assert (=> d!2254013 (= (derivationStepZipperUp!2468 lt!2584930 (h!76837 s1!1971)) e!4347855)))

(declare-fun b!7251191 () Bool)

(assert (=> b!7251191 (= e!4347857 (as set.empty (Set Context!15168)))))

(declare-fun b!7251192 () Bool)

(assert (=> b!7251192 (= e!4347855 e!4347857)))

(declare-fun c!1347581 () Bool)

(assert (=> b!7251192 (= c!1347581 (is-Cons!70388 (exprs!8084 lt!2584930)))))

(declare-fun bm!660436 () Bool)

(assert (=> bm!660436 (= call!660441 (derivationStepZipperDown!2638 (h!76836 (exprs!8084 lt!2584930)) (Context!15169 (t!384568 (exprs!8084 lt!2584930))) (h!76837 s1!1971)))))

(assert (= (and d!2254013 res!2940884) b!7251190))

(assert (= (and d!2254013 c!1347582) b!7251188))

(assert (= (and d!2254013 (not c!1347582)) b!7251192))

(assert (= (and b!7251192 c!1347581) b!7251189))

(assert (= (and b!7251192 (not c!1347581)) b!7251191))

(assert (= (or b!7251188 b!7251189) bm!660436))

(declare-fun m!7930272 () Bool)

(assert (=> b!7251188 m!7930272))

(declare-fun m!7930274 () Bool)

(assert (=> b!7251190 m!7930274))

(declare-fun m!7930276 () Bool)

(assert (=> bm!660436 m!7930276))

(assert (=> b!7251066 d!2254013))

(declare-fun d!2254015 () Bool)

(declare-fun choose!56016 ((Set Context!15168) Int) (Set Context!15168))

(assert (=> d!2254015 (= (flatMap!2809 lt!2584925 lambda!444195) (choose!56016 lt!2584925 lambda!444195))))

(declare-fun bs!1906318 () Bool)

(assert (= bs!1906318 d!2254015))

(declare-fun m!7930278 () Bool)

(assert (=> bs!1906318 m!7930278))

(assert (=> b!7251066 d!2254015))

(declare-fun b!7251217 () Bool)

(declare-fun e!4347871 () (Set Context!15168))

(declare-fun call!660458 () (Set Context!15168))

(assert (=> b!7251217 (= e!4347871 call!660458)))

(declare-fun b!7251218 () Bool)

(declare-fun e!4347875 () (Set Context!15168))

(declare-fun e!4347872 () (Set Context!15168))

(assert (=> b!7251218 (= e!4347875 e!4347872)))

(declare-fun c!1347593 () Bool)

(assert (=> b!7251218 (= c!1347593 (is-Union!18644 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun b!7251219 () Bool)

(declare-fun e!4347873 () (Set Context!15168))

(assert (=> b!7251219 (= e!4347873 (as set.empty (Set Context!15168)))))

(declare-fun bm!660449 () Bool)

(declare-fun c!1347594 () Bool)

(declare-fun call!660455 () List!70512)

(declare-fun call!660454 () (Set Context!15168))

(declare-fun c!1347597 () Bool)

(assert (=> bm!660449 (= call!660454 (derivationStepZipperDown!2638 (ite c!1347593 (regOne!37801 (h!76836 (exprs!8084 ct1!232))) (ite c!1347594 (regTwo!37800 (h!76836 (exprs!8084 ct1!232))) (ite c!1347597 (regOne!37800 (h!76836 (exprs!8084 ct1!232))) (reg!18973 (h!76836 (exprs!8084 ct1!232)))))) (ite (or c!1347593 c!1347594) (Context!15169 (tail!14319 lt!2584926)) (Context!15169 call!660455)) (h!76837 s1!1971)))))

(declare-fun b!7251220 () Bool)

(declare-fun e!4347870 () (Set Context!15168))

(assert (=> b!7251220 (= e!4347870 e!4347871)))

(assert (=> b!7251220 (= c!1347597 (is-Concat!27489 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun bm!660450 () Bool)

(declare-fun call!660459 () List!70512)

(assert (=> bm!660450 (= call!660455 call!660459)))

(declare-fun call!660456 () (Set Context!15168))

(declare-fun bm!660451 () Bool)

(assert (=> bm!660451 (= call!660456 (derivationStepZipperDown!2638 (ite c!1347593 (regTwo!37801 (h!76836 (exprs!8084 ct1!232))) (regOne!37800 (h!76836 (exprs!8084 ct1!232)))) (ite c!1347593 (Context!15169 (tail!14319 lt!2584926)) (Context!15169 call!660459)) (h!76837 s1!1971)))))

(declare-fun bm!660452 () Bool)

(declare-fun $colon$colon!2917 (List!70512 Regex!18644) List!70512)

(assert (=> bm!660452 (= call!660459 ($colon$colon!2917 (exprs!8084 (Context!15169 (tail!14319 lt!2584926))) (ite (or c!1347594 c!1347597) (regTwo!37800 (h!76836 (exprs!8084 ct1!232))) (h!76836 (exprs!8084 ct1!232)))))))

(declare-fun b!7251221 () Bool)

(declare-fun c!1347595 () Bool)

(assert (=> b!7251221 (= c!1347595 (is-Star!18644 (h!76836 (exprs!8084 ct1!232))))))

(assert (=> b!7251221 (= e!4347871 e!4347873)))

(declare-fun b!7251222 () Bool)

(assert (=> b!7251222 (= e!4347875 (set.insert (Context!15169 (tail!14319 lt!2584926)) (as set.empty (Set Context!15168))))))

(declare-fun d!2254017 () Bool)

(declare-fun c!1347596 () Bool)

(assert (=> d!2254017 (= c!1347596 (and (is-ElementMatch!18644 (h!76836 (exprs!8084 ct1!232))) (= (c!1347548 (h!76836 (exprs!8084 ct1!232))) (h!76837 s1!1971))))))

(assert (=> d!2254017 (= (derivationStepZipperDown!2638 (h!76836 (exprs!8084 ct1!232)) (Context!15169 (tail!14319 lt!2584926)) (h!76837 s1!1971)) e!4347875)))

(declare-fun b!7251223 () Bool)

(declare-fun e!4347874 () Bool)

(assert (=> b!7251223 (= e!4347874 (nullable!7904 (regOne!37800 (h!76836 (exprs!8084 ct1!232)))))))

(declare-fun b!7251224 () Bool)

(assert (=> b!7251224 (= e!4347873 call!660458)))

(declare-fun b!7251225 () Bool)

(declare-fun call!660457 () (Set Context!15168))

(assert (=> b!7251225 (= e!4347870 (set.union call!660456 call!660457))))

(declare-fun b!7251226 () Bool)

(assert (=> b!7251226 (= c!1347594 e!4347874)))

(declare-fun res!2940887 () Bool)

(assert (=> b!7251226 (=> (not res!2940887) (not e!4347874))))

(assert (=> b!7251226 (= res!2940887 (is-Concat!27489 (h!76836 (exprs!8084 ct1!232))))))

(assert (=> b!7251226 (= e!4347872 e!4347870)))

(declare-fun bm!660453 () Bool)

(assert (=> bm!660453 (= call!660457 call!660454)))

(declare-fun bm!660454 () Bool)

(assert (=> bm!660454 (= call!660458 call!660457)))

(declare-fun b!7251227 () Bool)

(assert (=> b!7251227 (= e!4347872 (set.union call!660454 call!660456))))

(assert (= (and d!2254017 c!1347596) b!7251222))

(assert (= (and d!2254017 (not c!1347596)) b!7251218))

(assert (= (and b!7251218 c!1347593) b!7251227))

(assert (= (and b!7251218 (not c!1347593)) b!7251226))

(assert (= (and b!7251226 res!2940887) b!7251223))

(assert (= (and b!7251226 c!1347594) b!7251225))

(assert (= (and b!7251226 (not c!1347594)) b!7251220))

(assert (= (and b!7251220 c!1347597) b!7251217))

(assert (= (and b!7251220 (not c!1347597)) b!7251221))

(assert (= (and b!7251221 c!1347595) b!7251224))

(assert (= (and b!7251221 (not c!1347595)) b!7251219))

(assert (= (or b!7251217 b!7251224) bm!660450))

(assert (= (or b!7251217 b!7251224) bm!660454))

(assert (= (or b!7251225 bm!660450) bm!660452))

(assert (= (or b!7251225 bm!660454) bm!660453))

(assert (= (or b!7251227 b!7251225) bm!660451))

(assert (= (or b!7251227 bm!660453) bm!660449))

(declare-fun m!7930286 () Bool)

(assert (=> b!7251222 m!7930286))

(declare-fun m!7930288 () Bool)

(assert (=> bm!660451 m!7930288))

(declare-fun m!7930290 () Bool)

(assert (=> b!7251223 m!7930290))

(declare-fun m!7930292 () Bool)

(assert (=> bm!660452 m!7930292))

(declare-fun m!7930294 () Bool)

(assert (=> bm!660449 m!7930294))

(assert (=> b!7251066 d!2254017))

(declare-fun d!2254023 () Bool)

(assert (=> d!2254023 (= (flatMap!2809 lt!2584925 lambda!444195) (dynLambda!28741 lambda!444195 lt!2584930))))

(declare-fun lt!2585034 () Unit!163874)

(assert (=> d!2254023 (= lt!2585034 (choose!56015 lt!2584925 lt!2584930 lambda!444195))))

(assert (=> d!2254023 (= lt!2584925 (set.insert lt!2584930 (as set.empty (Set Context!15168))))))

(assert (=> d!2254023 (= (lemmaFlatMapOnSingletonSet!2213 lt!2584925 lt!2584930 lambda!444195) lt!2585034)))

(declare-fun b_lambda!278479 () Bool)

(assert (=> (not b_lambda!278479) (not d!2254023)))

(declare-fun bs!1906322 () Bool)

(assert (= bs!1906322 d!2254023))

(assert (=> bs!1906322 m!7930102))

(declare-fun m!7930296 () Bool)

(assert (=> bs!1906322 m!7930296))

(declare-fun m!7930298 () Bool)

(assert (=> bs!1906322 m!7930298))

(assert (=> bs!1906322 m!7930066))

(assert (=> b!7251066 d!2254023))

(declare-fun d!2254025 () Bool)

(declare-fun nullableFct!3102 (Regex!18644) Bool)

(assert (=> d!2254025 (= (nullable!7904 (h!76836 (exprs!8084 ct1!232))) (nullableFct!3102 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun bs!1906323 () Bool)

(assert (= bs!1906323 d!2254025))

(declare-fun m!7930300 () Bool)

(assert (=> bs!1906323 m!7930300))

(assert (=> b!7251066 d!2254025))

(declare-fun d!2254027 () Bool)

(assert (=> d!2254027 (= (flatMap!2809 lt!2584919 lambda!444195) (choose!56016 lt!2584919 lambda!444195))))

(declare-fun bs!1906324 () Bool)

(assert (= bs!1906324 d!2254027))

(declare-fun m!7930302 () Bool)

(assert (=> bs!1906324 m!7930302))

(assert (=> b!7251066 d!2254027))

(declare-fun d!2254029 () Bool)

(assert (=> d!2254029 (forall!17491 (++!16550 (exprs!8084 ct1!232) (exprs!8084 ct2!328)) lambda!444193)))

(declare-fun lt!2585035 () Unit!163874)

(assert (=> d!2254029 (= lt!2585035 (choose!56014 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193))))

(assert (=> d!2254029 (forall!17491 (exprs!8084 ct1!232) lambda!444193)))

(assert (=> d!2254029 (= (lemmaConcatPreservesForall!1451 (exprs!8084 ct1!232) (exprs!8084 ct2!328) lambda!444193) lt!2585035)))

(declare-fun bs!1906325 () Bool)

(assert (= bs!1906325 d!2254029))

(assert (=> bs!1906325 m!7930068))

(assert (=> bs!1906325 m!7930068))

(declare-fun m!7930304 () Bool)

(assert (=> bs!1906325 m!7930304))

(declare-fun m!7930306 () Bool)

(assert (=> bs!1906325 m!7930306))

(declare-fun m!7930308 () Bool)

(assert (=> bs!1906325 m!7930308))

(assert (=> b!7251066 d!2254029))

(assert (=> b!7251066 d!2253999))

(declare-fun b!7251228 () Bool)

(declare-fun e!4347876 () (Set Context!15168))

(declare-fun call!660460 () (Set Context!15168))

(assert (=> b!7251228 (= e!4347876 (set.union call!660460 (derivationStepZipperUp!2468 (Context!15169 (t!384568 (exprs!8084 lt!2584939))) (h!76837 s1!1971))))))

(declare-fun b!7251229 () Bool)

(declare-fun e!4347878 () (Set Context!15168))

(assert (=> b!7251229 (= e!4347878 call!660460)))

(declare-fun b!7251230 () Bool)

(declare-fun e!4347877 () Bool)

(assert (=> b!7251230 (= e!4347877 (nullable!7904 (h!76836 (exprs!8084 lt!2584939))))))

(declare-fun d!2254031 () Bool)

(declare-fun c!1347599 () Bool)

(assert (=> d!2254031 (= c!1347599 e!4347877)))

(declare-fun res!2940888 () Bool)

(assert (=> d!2254031 (=> (not res!2940888) (not e!4347877))))

(assert (=> d!2254031 (= res!2940888 (is-Cons!70388 (exprs!8084 lt!2584939)))))

(assert (=> d!2254031 (= (derivationStepZipperUp!2468 lt!2584939 (h!76837 s1!1971)) e!4347876)))

(declare-fun b!7251231 () Bool)

(assert (=> b!7251231 (= e!4347878 (as set.empty (Set Context!15168)))))

(declare-fun b!7251232 () Bool)

(assert (=> b!7251232 (= e!4347876 e!4347878)))

(declare-fun c!1347598 () Bool)

(assert (=> b!7251232 (= c!1347598 (is-Cons!70388 (exprs!8084 lt!2584939)))))

(declare-fun bm!660455 () Bool)

(assert (=> bm!660455 (= call!660460 (derivationStepZipperDown!2638 (h!76836 (exprs!8084 lt!2584939)) (Context!15169 (t!384568 (exprs!8084 lt!2584939))) (h!76837 s1!1971)))))

(assert (= (and d!2254031 res!2940888) b!7251230))

(assert (= (and d!2254031 c!1347599) b!7251228))

(assert (= (and d!2254031 (not c!1347599)) b!7251232))

(assert (= (and b!7251232 c!1347598) b!7251229))

(assert (= (and b!7251232 (not c!1347598)) b!7251231))

(assert (= (or b!7251228 b!7251229) bm!660455))

(declare-fun m!7930310 () Bool)

(assert (=> b!7251228 m!7930310))

(declare-fun m!7930312 () Bool)

(assert (=> b!7251230 m!7930312))

(declare-fun m!7930314 () Bool)

(assert (=> bm!660455 m!7930314))

(assert (=> b!7251071 d!2254031))

(declare-fun d!2254033 () Bool)

(declare-fun lt!2585040 () Bool)

(assert (=> d!2254033 (= lt!2585040 (exists!4367 (toList!11473 lt!2584933) lambda!444194))))

(declare-fun choose!56017 ((Set Context!15168) Int) Bool)

(assert (=> d!2254033 (= lt!2585040 (choose!56017 lt!2584933 lambda!444194))))

(assert (=> d!2254033 (= (exists!4366 lt!2584933 lambda!444194) lt!2585040)))

(declare-fun bs!1906326 () Bool)

(assert (= bs!1906326 d!2254033))

(assert (=> bs!1906326 m!7930060))

(assert (=> bs!1906326 m!7930060))

(declare-fun m!7930316 () Bool)

(assert (=> bs!1906326 m!7930316))

(declare-fun m!7930318 () Bool)

(assert (=> bs!1906326 m!7930318))

(assert (=> b!7251072 d!2254033))

(declare-fun bs!1906328 () Bool)

(declare-fun d!2254035 () Bool)

(assert (= bs!1906328 (and d!2254035 b!7251072)))

(declare-fun lambda!444234 () Int)

(assert (=> bs!1906328 (not (= lambda!444234 lambda!444194))))

(assert (=> d!2254035 true))

(declare-fun order!28981 () Int)

(declare-fun dynLambda!28742 (Int Int) Int)

(assert (=> d!2254035 (< (dynLambda!28742 order!28981 lambda!444194) (dynLambda!28742 order!28981 lambda!444234))))

(declare-fun forall!17492 (List!70514 Int) Bool)

(assert (=> d!2254035 (= (exists!4367 lt!2584938 lambda!444194) (not (forall!17492 lt!2584938 lambda!444234)))))

(declare-fun bs!1906330 () Bool)

(assert (= bs!1906330 d!2254035))

(declare-fun m!7930320 () Bool)

(assert (=> bs!1906330 m!7930320))

(assert (=> b!7251072 d!2254035))

(declare-fun bs!1906332 () Bool)

(declare-fun d!2254037 () Bool)

(assert (= bs!1906332 (and d!2254037 b!7251072)))

(declare-fun lambda!444237 () Int)

(assert (=> bs!1906332 (= lambda!444237 lambda!444194)))

(declare-fun bs!1906333 () Bool)

(assert (= bs!1906333 (and d!2254037 d!2254035)))

(assert (=> bs!1906333 (not (= lambda!444237 lambda!444234))))

(assert (=> d!2254037 true))

(assert (=> d!2254037 (exists!4367 lt!2584938 lambda!444237)))

(declare-fun lt!2585046 () Unit!163874)

(declare-fun choose!56018 (List!70514 List!70513) Unit!163874)

(assert (=> d!2254037 (= lt!2585046 (choose!56018 lt!2584938 (t!384569 s1!1971)))))

(declare-fun content!14610 (List!70514) (Set Context!15168))

(assert (=> d!2254037 (matchZipper!3554 (content!14610 lt!2584938) (t!384569 s1!1971))))

(assert (=> d!2254037 (= (lemmaZipperMatchesExistsMatchingContext!747 lt!2584938 (t!384569 s1!1971)) lt!2585046)))

(declare-fun bs!1906334 () Bool)

(assert (= bs!1906334 d!2254037))

(declare-fun m!7930330 () Bool)

(assert (=> bs!1906334 m!7930330))

(declare-fun m!7930332 () Bool)

(assert (=> bs!1906334 m!7930332))

(declare-fun m!7930334 () Bool)

(assert (=> bs!1906334 m!7930334))

(assert (=> bs!1906334 m!7930334))

(declare-fun m!7930336 () Bool)

(assert (=> bs!1906334 m!7930336))

(assert (=> b!7251072 d!2254037))

(declare-fun d!2254041 () Bool)

(declare-fun e!4347884 () Bool)

(assert (=> d!2254041 e!4347884))

(declare-fun res!2940894 () Bool)

(assert (=> d!2254041 (=> (not res!2940894) (not e!4347884))))

(declare-fun lt!2585050 () List!70514)

(declare-fun noDuplicate!2989 (List!70514) Bool)

(assert (=> d!2254041 (= res!2940894 (noDuplicate!2989 lt!2585050))))

(declare-fun choose!56019 ((Set Context!15168)) List!70514)

(assert (=> d!2254041 (= lt!2585050 (choose!56019 lt!2584933))))

(assert (=> d!2254041 (= (toList!11473 lt!2584933) lt!2585050)))

(declare-fun b!7251240 () Bool)

(assert (=> b!7251240 (= e!4347884 (= (content!14610 lt!2585050) lt!2584933))))

(assert (= (and d!2254041 res!2940894) b!7251240))

(declare-fun m!7930344 () Bool)

(assert (=> d!2254041 m!7930344))

(declare-fun m!7930346 () Bool)

(assert (=> d!2254041 m!7930346))

(declare-fun m!7930348 () Bool)

(assert (=> b!7251240 m!7930348))

(assert (=> b!7251072 d!2254041))

(declare-fun d!2254045 () Bool)

(assert (=> d!2254045 (= (tail!14319 (exprs!8084 ct1!232)) (t!384568 (exprs!8084 ct1!232)))))

(assert (=> b!7251062 d!2254045))

(declare-fun d!2254047 () Bool)

(assert (=> d!2254047 (= (isEmpty!40536 lt!2584926) (is-Nil!70388 lt!2584926))))

(assert (=> b!7251062 d!2254047))

(assert (=> b!7251062 d!2254013))

(assert (=> b!7251062 d!2254029))

(declare-fun b!7251241 () Bool)

(declare-fun e!4347886 () (Set Context!15168))

(declare-fun call!660465 () (Set Context!15168))

(assert (=> b!7251241 (= e!4347886 call!660465)))

(declare-fun b!7251242 () Bool)

(declare-fun e!4347890 () (Set Context!15168))

(declare-fun e!4347887 () (Set Context!15168))

(assert (=> b!7251242 (= e!4347890 e!4347887)))

(declare-fun c!1347604 () Bool)

(assert (=> b!7251242 (= c!1347604 (is-Union!18644 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun b!7251243 () Bool)

(declare-fun e!4347888 () (Set Context!15168))

(assert (=> b!7251243 (= e!4347888 (as set.empty (Set Context!15168)))))

(declare-fun c!1347608 () Bool)

(declare-fun call!660461 () (Set Context!15168))

(declare-fun call!660462 () List!70512)

(declare-fun c!1347605 () Bool)

(declare-fun bm!660456 () Bool)

(assert (=> bm!660456 (= call!660461 (derivationStepZipperDown!2638 (ite c!1347604 (regOne!37801 (h!76836 (exprs!8084 ct1!232))) (ite c!1347605 (regTwo!37800 (h!76836 (exprs!8084 ct1!232))) (ite c!1347608 (regOne!37800 (h!76836 (exprs!8084 ct1!232))) (reg!18973 (h!76836 (exprs!8084 ct1!232)))))) (ite (or c!1347604 c!1347605) lt!2584939 (Context!15169 call!660462)) (h!76837 s1!1971)))))

(declare-fun b!7251244 () Bool)

(declare-fun e!4347885 () (Set Context!15168))

(assert (=> b!7251244 (= e!4347885 e!4347886)))

(assert (=> b!7251244 (= c!1347608 (is-Concat!27489 (h!76836 (exprs!8084 ct1!232))))))

(declare-fun bm!660457 () Bool)

(declare-fun call!660466 () List!70512)

(assert (=> bm!660457 (= call!660462 call!660466)))

(declare-fun bm!660458 () Bool)

(declare-fun call!660463 () (Set Context!15168))

(assert (=> bm!660458 (= call!660463 (derivationStepZipperDown!2638 (ite c!1347604 (regTwo!37801 (h!76836 (exprs!8084 ct1!232))) (regOne!37800 (h!76836 (exprs!8084 ct1!232)))) (ite c!1347604 lt!2584939 (Context!15169 call!660466)) (h!76837 s1!1971)))))

(declare-fun bm!660459 () Bool)

(assert (=> bm!660459 (= call!660466 ($colon$colon!2917 (exprs!8084 lt!2584939) (ite (or c!1347605 c!1347608) (regTwo!37800 (h!76836 (exprs!8084 ct1!232))) (h!76836 (exprs!8084 ct1!232)))))))

(declare-fun b!7251245 () Bool)

(declare-fun c!1347606 () Bool)

(assert (=> b!7251245 (= c!1347606 (is-Star!18644 (h!76836 (exprs!8084 ct1!232))))))

(assert (=> b!7251245 (= e!4347886 e!4347888)))

(declare-fun b!7251246 () Bool)

(assert (=> b!7251246 (= e!4347890 (set.insert lt!2584939 (as set.empty (Set Context!15168))))))

(declare-fun d!2254049 () Bool)

(declare-fun c!1347607 () Bool)

(assert (=> d!2254049 (= c!1347607 (and (is-ElementMatch!18644 (h!76836 (exprs!8084 ct1!232))) (= (c!1347548 (h!76836 (exprs!8084 ct1!232))) (h!76837 s1!1971))))))

(assert (=> d!2254049 (= (derivationStepZipperDown!2638 (h!76836 (exprs!8084 ct1!232)) lt!2584939 (h!76837 s1!1971)) e!4347890)))

(declare-fun b!7251247 () Bool)

(declare-fun e!4347889 () Bool)

(assert (=> b!7251247 (= e!4347889 (nullable!7904 (regOne!37800 (h!76836 (exprs!8084 ct1!232)))))))

(declare-fun b!7251248 () Bool)

(assert (=> b!7251248 (= e!4347888 call!660465)))

(declare-fun b!7251249 () Bool)

(declare-fun call!660464 () (Set Context!15168))

(assert (=> b!7251249 (= e!4347885 (set.union call!660463 call!660464))))

(declare-fun b!7251250 () Bool)

(assert (=> b!7251250 (= c!1347605 e!4347889)))

(declare-fun res!2940895 () Bool)

(assert (=> b!7251250 (=> (not res!2940895) (not e!4347889))))

(assert (=> b!7251250 (= res!2940895 (is-Concat!27489 (h!76836 (exprs!8084 ct1!232))))))

(assert (=> b!7251250 (= e!4347887 e!4347885)))

(declare-fun bm!660460 () Bool)

(assert (=> bm!660460 (= call!660464 call!660461)))

(declare-fun bm!660461 () Bool)

(assert (=> bm!660461 (= call!660465 call!660464)))

(declare-fun b!7251251 () Bool)

(assert (=> b!7251251 (= e!4347887 (set.union call!660461 call!660463))))

(assert (= (and d!2254049 c!1347607) b!7251246))

(assert (= (and d!2254049 (not c!1347607)) b!7251242))

(assert (= (and b!7251242 c!1347604) b!7251251))

(assert (= (and b!7251242 (not c!1347604)) b!7251250))

(assert (= (and b!7251250 res!2940895) b!7251247))

(assert (= (and b!7251250 c!1347605) b!7251249))

(assert (= (and b!7251250 (not c!1347605)) b!7251244))

(assert (= (and b!7251244 c!1347608) b!7251241))

(assert (= (and b!7251244 (not c!1347608)) b!7251245))

(assert (= (and b!7251245 c!1347606) b!7251248))

(assert (= (and b!7251245 (not c!1347606)) b!7251243))

(assert (= (or b!7251241 b!7251248) bm!660457))

(assert (= (or b!7251241 b!7251248) bm!660461))

(assert (= (or b!7251249 bm!660457) bm!660459))

(assert (= (or b!7251249 bm!660461) bm!660460))

(assert (= (or b!7251251 b!7251249) bm!660458))

(assert (= (or b!7251251 bm!660460) bm!660456))

(declare-fun m!7930350 () Bool)

(assert (=> b!7251246 m!7930350))

(declare-fun m!7930352 () Bool)

(assert (=> bm!660458 m!7930352))

(assert (=> b!7251247 m!7930290))

(declare-fun m!7930354 () Bool)

(assert (=> bm!660459 m!7930354))

(declare-fun m!7930356 () Bool)

(assert (=> bm!660456 m!7930356))

(assert (=> b!7251062 d!2254049))

(declare-fun d!2254051 () Bool)

(declare-fun c!1347609 () Bool)

(assert (=> d!2254051 (= c!1347609 (isEmpty!40538 s2!1849))))

(declare-fun e!4347891 () Bool)

(assert (=> d!2254051 (= (matchZipper!3554 (set.insert ct2!328 (as set.empty (Set Context!15168))) s2!1849) e!4347891)))

(declare-fun b!7251252 () Bool)

(assert (=> b!7251252 (= e!4347891 (nullableZipper!2913 (set.insert ct2!328 (as set.empty (Set Context!15168)))))))

(declare-fun b!7251253 () Bool)

(assert (=> b!7251253 (= e!4347891 (matchZipper!3554 (derivationStepZipper!3422 (set.insert ct2!328 (as set.empty (Set Context!15168))) (head!14904 s2!1849)) (tail!14321 s2!1849)))))

(assert (= (and d!2254051 c!1347609) b!7251252))

(assert (= (and d!2254051 (not c!1347609)) b!7251253))

(declare-fun m!7930358 () Bool)

(assert (=> d!2254051 m!7930358))

(assert (=> b!7251252 m!7930120))

(declare-fun m!7930360 () Bool)

(assert (=> b!7251252 m!7930360))

(declare-fun m!7930362 () Bool)

(assert (=> b!7251253 m!7930362))

(assert (=> b!7251253 m!7930120))

(assert (=> b!7251253 m!7930362))

(declare-fun m!7930364 () Bool)

(assert (=> b!7251253 m!7930364))

(declare-fun m!7930366 () Bool)

(assert (=> b!7251253 m!7930366))

(assert (=> b!7251253 m!7930364))

(assert (=> b!7251253 m!7930366))

(declare-fun m!7930368 () Bool)

(assert (=> b!7251253 m!7930368))

(assert (=> b!7251067 d!2254051))

(declare-fun d!2254053 () Bool)

(declare-fun c!1347610 () Bool)

(assert (=> d!2254053 (= c!1347610 (isEmpty!40538 (t!384569 s1!1971)))))

(declare-fun e!4347892 () Bool)

(assert (=> d!2254053 (= (matchZipper!3554 lt!2584933 (t!384569 s1!1971)) e!4347892)))

(declare-fun b!7251254 () Bool)

(assert (=> b!7251254 (= e!4347892 (nullableZipper!2913 lt!2584933))))

(declare-fun b!7251255 () Bool)

(assert (=> b!7251255 (= e!4347892 (matchZipper!3554 (derivationStepZipper!3422 lt!2584933 (head!14904 (t!384569 s1!1971))) (tail!14321 (t!384569 s1!1971))))))

(assert (= (and d!2254053 c!1347610) b!7251254))

(assert (= (and d!2254053 (not c!1347610)) b!7251255))

(declare-fun m!7930370 () Bool)

(assert (=> d!2254053 m!7930370))

(declare-fun m!7930372 () Bool)

(assert (=> b!7251254 m!7930372))

(declare-fun m!7930374 () Bool)

(assert (=> b!7251255 m!7930374))

(assert (=> b!7251255 m!7930374))

(declare-fun m!7930376 () Bool)

(assert (=> b!7251255 m!7930376))

(declare-fun m!7930378 () Bool)

(assert (=> b!7251255 m!7930378))

(assert (=> b!7251255 m!7930376))

(assert (=> b!7251255 m!7930378))

(declare-fun m!7930380 () Bool)

(assert (=> b!7251255 m!7930380))

(assert (=> b!7251068 d!2254053))

(declare-fun bs!1906335 () Bool)

(declare-fun d!2254055 () Bool)

(assert (= bs!1906335 (and d!2254055 b!7251066)))

(declare-fun lambda!444240 () Int)

(assert (=> bs!1906335 (= lambda!444240 lambda!444195)))

(assert (=> d!2254055 true))

(assert (=> d!2254055 (= (derivationStepZipper!3422 lt!2584919 (h!76837 s1!1971)) (flatMap!2809 lt!2584919 lambda!444240))))

(declare-fun bs!1906336 () Bool)

(assert (= bs!1906336 d!2254055))

(declare-fun m!7930382 () Bool)

(assert (=> bs!1906336 m!7930382))

(assert (=> b!7251068 d!2254055))

(declare-fun bs!1906337 () Bool)

(declare-fun d!2254057 () Bool)

(assert (= bs!1906337 (and d!2254057 b!7251074)))

(declare-fun lambda!444243 () Int)

(assert (=> bs!1906337 (= lambda!444243 lambda!444193)))

(declare-fun bs!1906338 () Bool)

(assert (= bs!1906338 (and d!2254057 d!2253991)))

(assert (=> bs!1906338 (= lambda!444243 lambda!444225)))

(assert (=> d!2254057 (= (inv!89621 lt!2584930) (forall!17491 (exprs!8084 lt!2584930) lambda!444243))))

(declare-fun bs!1906339 () Bool)

(assert (= bs!1906339 d!2254057))

(declare-fun m!7930384 () Bool)

(assert (=> bs!1906339 m!7930384))

(assert (=> b!7251073 d!2254057))

(assert (=> b!7251073 d!2254029))

(declare-fun b!7251263 () Bool)

(declare-fun res!2940900 () Bool)

(declare-fun e!4347896 () Bool)

(assert (=> b!7251263 (=> (not res!2940900) (not e!4347896))))

(declare-fun lt!2585054 () List!70512)

(assert (=> b!7251263 (= res!2940900 (= (size!41715 lt!2585054) (+ (size!41715 (exprs!8084 ct1!232)) (size!41715 (exprs!8084 ct2!328)))))))

(declare-fun b!7251261 () Bool)

(declare-fun e!4347897 () List!70512)

(assert (=> b!7251261 (= e!4347897 (exprs!8084 ct2!328))))

(declare-fun b!7251264 () Bool)

(assert (=> b!7251264 (= e!4347896 (or (not (= (exprs!8084 ct2!328) Nil!70388)) (= lt!2585054 (exprs!8084 ct1!232))))))

(declare-fun b!7251262 () Bool)

(assert (=> b!7251262 (= e!4347897 (Cons!70388 (h!76836 (exprs!8084 ct1!232)) (++!16550 (t!384568 (exprs!8084 ct1!232)) (exprs!8084 ct2!328))))))

(declare-fun d!2254059 () Bool)

(assert (=> d!2254059 e!4347896))

(declare-fun res!2940899 () Bool)

(assert (=> d!2254059 (=> (not res!2940899) (not e!4347896))))

(assert (=> d!2254059 (= res!2940899 (= (content!14608 lt!2585054) (set.union (content!14608 (exprs!8084 ct1!232)) (content!14608 (exprs!8084 ct2!328)))))))

(assert (=> d!2254059 (= lt!2585054 e!4347897)))

(declare-fun c!1347613 () Bool)

(assert (=> d!2254059 (= c!1347613 (is-Nil!70388 (exprs!8084 ct1!232)))))

(assert (=> d!2254059 (= (++!16550 (exprs!8084 ct1!232) (exprs!8084 ct2!328)) lt!2585054)))

(assert (= (and d!2254059 c!1347613) b!7251261))

(assert (= (and d!2254059 (not c!1347613)) b!7251262))

(assert (= (and d!2254059 res!2940899) b!7251263))

(assert (= (and b!7251263 res!2940900) b!7251264))

(declare-fun m!7930388 () Bool)

(assert (=> b!7251263 m!7930388))

(declare-fun m!7930390 () Bool)

(assert (=> b!7251263 m!7930390))

(assert (=> b!7251263 m!7930202))

(declare-fun m!7930394 () Bool)

(assert (=> b!7251262 m!7930394))

(declare-fun m!7930396 () Bool)

(assert (=> d!2254059 m!7930396))

(declare-fun m!7930398 () Bool)

(assert (=> d!2254059 m!7930398))

(assert (=> d!2254059 m!7930210))

(assert (=> b!7251074 d!2254059))

(assert (=> b!7251074 d!2254029))

(declare-fun d!2254061 () Bool)

(declare-fun c!1347614 () Bool)

(assert (=> d!2254061 (= c!1347614 (isEmpty!40538 s1!1971))))

(declare-fun e!4347898 () Bool)

(assert (=> d!2254061 (= (matchZipper!3554 lt!2584919 s1!1971) e!4347898)))

(declare-fun b!7251265 () Bool)

(assert (=> b!7251265 (= e!4347898 (nullableZipper!2913 lt!2584919))))

(declare-fun b!7251266 () Bool)

(assert (=> b!7251266 (= e!4347898 (matchZipper!3554 (derivationStepZipper!3422 lt!2584919 (head!14904 s1!1971)) (tail!14321 s1!1971)))))

(assert (= (and d!2254061 c!1347614) b!7251265))

(assert (= (and d!2254061 (not c!1347614)) b!7251266))

(declare-fun m!7930402 () Bool)

(assert (=> d!2254061 m!7930402))

(declare-fun m!7930404 () Bool)

(assert (=> b!7251265 m!7930404))

(declare-fun m!7930406 () Bool)

(assert (=> b!7251266 m!7930406))

(assert (=> b!7251266 m!7930406))

(declare-fun m!7930408 () Bool)

(assert (=> b!7251266 m!7930408))

(declare-fun m!7930410 () Bool)

(assert (=> b!7251266 m!7930410))

(assert (=> b!7251266 m!7930408))

(assert (=> b!7251266 m!7930410))

(declare-fun m!7930412 () Bool)

(assert (=> b!7251266 m!7930412))

(assert (=> start!705730 d!2254061))

(declare-fun bs!1906340 () Bool)

(declare-fun d!2254065 () Bool)

(assert (= bs!1906340 (and d!2254065 b!7251074)))

(declare-fun lambda!444244 () Int)

(assert (=> bs!1906340 (= lambda!444244 lambda!444193)))

(declare-fun bs!1906341 () Bool)

(assert (= bs!1906341 (and d!2254065 d!2253991)))

(assert (=> bs!1906341 (= lambda!444244 lambda!444225)))

(declare-fun bs!1906342 () Bool)

(assert (= bs!1906342 (and d!2254065 d!2254057)))

(assert (=> bs!1906342 (= lambda!444244 lambda!444243)))

(assert (=> d!2254065 (= (inv!89621 ct1!232) (forall!17491 (exprs!8084 ct1!232) lambda!444244))))

(declare-fun bs!1906343 () Bool)

(assert (= bs!1906343 d!2254065))

(declare-fun m!7930414 () Bool)

(assert (=> bs!1906343 m!7930414))

(assert (=> start!705730 d!2254065))

(declare-fun bs!1906344 () Bool)

(declare-fun d!2254067 () Bool)

(assert (= bs!1906344 (and d!2254067 b!7251074)))

(declare-fun lambda!444245 () Int)

(assert (=> bs!1906344 (= lambda!444245 lambda!444193)))

(declare-fun bs!1906345 () Bool)

(assert (= bs!1906345 (and d!2254067 d!2253991)))

(assert (=> bs!1906345 (= lambda!444245 lambda!444225)))

(declare-fun bs!1906346 () Bool)

(assert (= bs!1906346 (and d!2254067 d!2254057)))

(assert (=> bs!1906346 (= lambda!444245 lambda!444243)))

(declare-fun bs!1906347 () Bool)

(assert (= bs!1906347 (and d!2254067 d!2254065)))

(assert (=> bs!1906347 (= lambda!444245 lambda!444244)))

(assert (=> d!2254067 (= (inv!89621 ct2!328) (forall!17491 (exprs!8084 ct2!328) lambda!444245))))

(declare-fun bs!1906348 () Bool)

(assert (= bs!1906348 d!2254067))

(declare-fun m!7930416 () Bool)

(assert (=> bs!1906348 m!7930416))

(assert (=> start!705730 d!2254067))

(declare-fun b!7251271 () Bool)

(declare-fun e!4347901 () Bool)

(declare-fun tp!2037501 () Bool)

(assert (=> b!7251271 (= e!4347901 (and tp_is_empty!46753 tp!2037501))))

(assert (=> b!7251065 (= tp!2037484 e!4347901)))

(assert (= (and b!7251065 (is-Cons!70389 (t!384569 s2!1849))) b!7251271))

(declare-fun b!7251272 () Bool)

(declare-fun e!4347902 () Bool)

(declare-fun tp!2037502 () Bool)

(assert (=> b!7251272 (= e!4347902 (and tp_is_empty!46753 tp!2037502))))

(assert (=> b!7251061 (= tp!2037486 e!4347902)))

(assert (= (and b!7251061 (is-Cons!70389 (t!384569 s1!1971))) b!7251272))

(declare-fun b!7251277 () Bool)

(declare-fun e!4347905 () Bool)

(declare-fun tp!2037507 () Bool)

(declare-fun tp!2037508 () Bool)

(assert (=> b!7251277 (= e!4347905 (and tp!2037507 tp!2037508))))

(assert (=> b!7251063 (= tp!2037485 e!4347905)))

(assert (= (and b!7251063 (is-Cons!70388 (exprs!8084 ct2!328))) b!7251277))

(declare-fun b!7251278 () Bool)

(declare-fun e!4347906 () Bool)

(declare-fun tp!2037509 () Bool)

(declare-fun tp!2037510 () Bool)

(assert (=> b!7251278 (= e!4347906 (and tp!2037509 tp!2037510))))

(assert (=> b!7251069 (= tp!2037483 e!4347906)))

(assert (= (and b!7251069 (is-Cons!70388 (exprs!8084 ct1!232))) b!7251278))

(declare-fun b_lambda!278483 () Bool)

(assert (= b_lambda!278477 (or b!7251066 b_lambda!278483)))

(declare-fun bs!1906349 () Bool)

(declare-fun d!2254069 () Bool)

(assert (= bs!1906349 (and d!2254069 b!7251066)))

(assert (=> bs!1906349 (= (dynLambda!28741 lambda!444195 ct1!232) (derivationStepZipperUp!2468 ct1!232 (h!76837 s1!1971)))))

(assert (=> bs!1906349 m!7930084))

(assert (=> d!2254009 d!2254069))

(declare-fun b_lambda!278485 () Bool)

(assert (= b_lambda!278479 (or b!7251066 b_lambda!278485)))

(declare-fun bs!1906350 () Bool)

(declare-fun d!2254071 () Bool)

(assert (= bs!1906350 (and d!2254071 b!7251066)))

(assert (=> bs!1906350 (= (dynLambda!28741 lambda!444195 lt!2584930) (derivationStepZipperUp!2468 lt!2584930 (h!76837 s1!1971)))))

(assert (=> bs!1906350 m!7930096))

(assert (=> d!2254023 d!2254071))

(declare-fun b_lambda!278487 () Bool)

(assert (= b_lambda!278475 (or b!7251072 b_lambda!278487)))

(declare-fun bs!1906351 () Bool)

(declare-fun d!2254073 () Bool)

(assert (= bs!1906351 (and d!2254073 b!7251072)))

(assert (=> bs!1906351 (= (dynLambda!28740 lambda!444194 lt!2585027) (matchZipper!3554 (set.insert lt!2585027 (as set.empty (Set Context!15168))) (t!384569 s1!1971)))))

(declare-fun m!7930418 () Bool)

(assert (=> bs!1906351 m!7930418))

(assert (=> bs!1906351 m!7930418))

(declare-fun m!7930420 () Bool)

(assert (=> bs!1906351 m!7930420))

(assert (=> d!2254005 d!2254073))

(push 1)

(assert (not d!2254033))

(assert (not d!2254037))

(assert (not b!7251190))

(assert (not b!7251153))

(assert (not b!7251254))

(assert (not bm!660451))

(assert (not b!7251155))

(assert (not b!7251263))

(assert (not b_lambda!278483))

(assert (not b!7251240))

(assert (not b!7251188))

(assert (not b!7251255))

(assert (not d!2254025))

(assert (not bm!660449))

(assert (not d!2254023))

(assert (not b!7251177))

(assert (not bs!1906351))

(assert (not d!2254027))

(assert (not b_lambda!278487))

(assert (not b!7251135))

(assert (not b!7251271))

(assert (not b!7251252))

(assert (not d!2254003))

(assert (not d!2254015))

(assert (not b!7251230))

(assert (not bm!660459))

(assert (not b!7251262))

(assert (not bs!1906350))

(assert (not b!7251253))

(assert (not bm!660452))

(assert (not b!7251277))

(assert (not bm!660436))

(assert (not b!7251228))

(assert (not bm!660432))

(assert (not d!2254041))

(assert (not bm!660458))

(assert (not d!2254065))

(assert (not d!2254057))

(assert (not d!2254051))

(assert (not d!2254005))

(assert (not b!7251141))

(assert (not d!2253995))

(assert (not b!7251272))

(assert (not d!2253997))

(assert tp_is_empty!46753)

(assert (not d!2254061))

(assert (not d!2254035))

(assert (not bs!1906349))

(assert (not d!2254055))

(assert (not b!7251142))

(assert (not b!7251278))

(assert (not bm!660456))

(assert (not b!7251266))

(assert (not d!2254053))

(assert (not b!7251265))

(assert (not b!7251223))

(assert (not b_lambda!278485))

(assert (not b!7251247))

(assert (not bm!660455))

(assert (not b!7251178))

(assert (not b!7251134))

(assert (not d!2254009))

(assert (not d!2254059))

(assert (not d!2254029))

(assert (not d!2254067))

(assert (not d!2253991))

(assert (not d!2253989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

