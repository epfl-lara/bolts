; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708832 () Bool)

(assert start!708832)

(declare-fun b!7267142 () Bool)

(assert (=> b!7267142 true))

(declare-fun b!7267132 () Bool)

(declare-fun e!4357922 () Bool)

(declare-fun tp_is_empty!47013 () Bool)

(declare-fun tp!2040626 () Bool)

(assert (=> b!7267132 (= e!4357922 (and tp_is_empty!47013 tp!2040626))))

(declare-fun b!7267133 () Bool)

(declare-fun res!2946194 () Bool)

(declare-fun e!4357918 () Bool)

(assert (=> b!7267133 (=> res!2946194 e!4357918)))

(declare-datatypes ((C!37822 0))(
  ( (C!37823 (val!28859 Int)) )
))
(declare-datatypes ((Regex!18774 0))(
  ( (ElementMatch!18774 (c!1352328 C!37822)) (Concat!27619 (regOne!38060 Regex!18774) (regTwo!38060 Regex!18774)) (EmptyExpr!18774) (Star!18774 (reg!19103 Regex!18774)) (EmptyLang!18774) (Union!18774 (regOne!38061 Regex!18774) (regTwo!38061 Regex!18774)) )
))
(declare-datatypes ((List!70863 0))(
  ( (Nil!70739) (Cons!70739 (h!77187 Regex!18774) (t!384933 List!70863)) )
))
(declare-datatypes ((Context!15428 0))(
  ( (Context!15429 (exprs!8214 List!70863)) )
))
(declare-fun ct1!250 () Context!15428)

(declare-datatypes ((List!70864 0))(
  ( (Nil!70740) (Cons!70740 (h!77188 C!37822) (t!384934 List!70864)) )
))
(declare-fun s!7854 () List!70864)

(declare-fun lt!2592805 () (Set Context!15428))

(declare-fun lt!2592806 () Context!15428)

(declare-fun derivationStepZipperDown!2708 (Regex!18774 Context!15428 C!37822) (Set Context!15428))

(declare-fun derivationStepZipperUp!2544 (Context!15428 C!37822) (Set Context!15428))

(assert (=> b!7267133 (= res!2946194 (not (= lt!2592805 (set.union (derivationStepZipperDown!2708 (h!77187 (exprs!8214 ct1!250)) lt!2592806 (h!77188 s!7854)) (derivationStepZipperUp!2544 lt!2592806 (h!77188 s!7854))))))))

(declare-fun b!7267134 () Bool)

(declare-fun e!4357921 () Bool)

(assert (=> b!7267134 (= e!4357918 e!4357921)))

(declare-fun res!2946189 () Bool)

(assert (=> b!7267134 (=> res!2946189 e!4357921)))

(declare-fun lt!2592813 () Context!15428)

(declare-fun lt!2592809 () (Set Context!15428))

(assert (=> b!7267134 (= res!2946189 (not (= lt!2592809 (set.union (derivationStepZipperDown!2708 (h!77187 (exprs!8214 ct1!250)) lt!2592813 (h!77188 s!7854)) (derivationStepZipperUp!2544 lt!2592813 (h!77188 s!7854))))))))

(declare-fun lt!2592803 () List!70863)

(declare-fun ct2!346 () Context!15428)

(declare-fun ++!16674 (List!70863 List!70863) List!70863)

(assert (=> b!7267134 (= lt!2592813 (Context!15429 (++!16674 lt!2592803 (exprs!8214 ct2!346))))))

(declare-fun lambda!447644 () Int)

(declare-datatypes ((Unit!164166 0))(
  ( (Unit!164167) )
))
(declare-fun lt!2592812 () Unit!164166)

(declare-fun lemmaConcatPreservesForall!1531 (List!70863 List!70863 Int) Unit!164166)

(assert (=> b!7267134 (= lt!2592812 (lemmaConcatPreservesForall!1531 lt!2592803 (exprs!8214 ct2!346) lambda!447644))))

(declare-fun lt!2592796 () Unit!164166)

(assert (=> b!7267134 (= lt!2592796 (lemmaConcatPreservesForall!1531 lt!2592803 (exprs!8214 ct2!346) lambda!447644))))

(declare-fun res!2946195 () Bool)

(declare-fun e!4357920 () Bool)

(assert (=> start!708832 (=> (not res!2946195) (not e!4357920))))

(declare-fun matchZipper!3678 ((Set Context!15428) List!70864) Bool)

(assert (=> start!708832 (= res!2946195 (matchZipper!3678 (set.insert ct2!346 (as set.empty (Set Context!15428))) s!7854))))

(assert (=> start!708832 e!4357920))

(declare-fun e!4357923 () Bool)

(declare-fun inv!89946 (Context!15428) Bool)

(assert (=> start!708832 (and (inv!89946 ct2!346) e!4357923)))

(assert (=> start!708832 e!4357922))

(declare-fun e!4357925 () Bool)

(assert (=> start!708832 (and (inv!89946 ct1!250) e!4357925)))

(declare-fun b!7267135 () Bool)

(declare-fun tp!2040625 () Bool)

(assert (=> b!7267135 (= e!4357925 tp!2040625)))

(declare-fun b!7267136 () Bool)

(declare-fun tp!2040627 () Bool)

(assert (=> b!7267136 (= e!4357923 tp!2040627)))

(declare-fun b!7267137 () Bool)

(declare-fun res!2946191 () Bool)

(assert (=> b!7267137 (=> (not res!2946191) (not e!4357920))))

(assert (=> b!7267137 (= res!2946191 (is-Cons!70740 s!7854))))

(declare-fun b!7267138 () Bool)

(declare-fun res!2946187 () Bool)

(declare-fun e!4357924 () Bool)

(assert (=> b!7267138 (=> res!2946187 e!4357924)))

(assert (=> b!7267138 (= res!2946187 (not (is-Cons!70739 (exprs!8214 ct1!250))))))

(declare-fun b!7267139 () Bool)

(declare-fun res!2946193 () Bool)

(assert (=> b!7267139 (=> res!2946193 e!4357924)))

(declare-fun isEmpty!40667 (List!70863) Bool)

(assert (=> b!7267139 (= res!2946193 (isEmpty!40667 (exprs!8214 ct1!250)))))

(declare-fun b!7267140 () Bool)

(declare-fun e!4357919 () Bool)

(declare-fun forall!17605 (List!70863 Int) Bool)

(assert (=> b!7267140 (= e!4357919 (forall!17605 (exprs!8214 ct2!346) lambda!447644))))

(declare-fun b!7267141 () Bool)

(assert (=> b!7267141 (= e!4357921 e!4357919)))

(declare-fun res!2946190 () Bool)

(assert (=> b!7267141 (=> res!2946190 e!4357919)))

(assert (=> b!7267141 (= res!2946190 (not (forall!17605 lt!2592803 lambda!447644)))))

(assert (=> b!7267141 (matchZipper!3678 (set.insert lt!2592813 (as set.empty (Set Context!15428))) s!7854)))

(declare-fun lt!2592799 () Unit!164166)

(assert (=> b!7267141 (= lt!2592799 (lemmaConcatPreservesForall!1531 lt!2592803 (exprs!8214 ct2!346) lambda!447644))))

(declare-fun lt!2592802 () Unit!164166)

(declare-fun lemmaPrependingNullableCtxStillMatches!11 (Context!15428 Context!15428 List!70864) Unit!164166)

(assert (=> b!7267141 (= lt!2592802 (lemmaPrependingNullableCtxStillMatches!11 lt!2592806 ct2!346 s!7854))))

(assert (=> b!7267142 (= e!4357920 (not e!4357924))))

(declare-fun res!2946188 () Bool)

(assert (=> b!7267142 (=> res!2946188 e!4357924)))

(declare-fun lt!2592807 () (Set Context!15428))

(declare-fun derivationStepZipper!3514 ((Set Context!15428) C!37822) (Set Context!15428))

(assert (=> b!7267142 (= res!2946188 (not (= lt!2592809 (derivationStepZipper!3514 lt!2592807 (h!77188 s!7854)))))))

(declare-fun lt!2592804 () Unit!164166)

(assert (=> b!7267142 (= lt!2592804 (lemmaConcatPreservesForall!1531 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644))))

(declare-fun lt!2592801 () Context!15428)

(declare-fun lambda!447645 () Int)

(declare-fun flatMap!2887 ((Set Context!15428) Int) (Set Context!15428))

(assert (=> b!7267142 (= (flatMap!2887 lt!2592807 lambda!447645) (derivationStepZipperUp!2544 lt!2592801 (h!77188 s!7854)))))

(declare-fun lt!2592797 () Unit!164166)

(declare-fun lemmaFlatMapOnSingletonSet!2287 ((Set Context!15428) Context!15428 Int) Unit!164166)

(assert (=> b!7267142 (= lt!2592797 (lemmaFlatMapOnSingletonSet!2287 lt!2592807 lt!2592801 lambda!447645))))

(assert (=> b!7267142 (= lt!2592807 (set.insert lt!2592801 (as set.empty (Set Context!15428))))))

(declare-fun lt!2592810 () Unit!164166)

(assert (=> b!7267142 (= lt!2592810 (lemmaConcatPreservesForall!1531 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644))))

(declare-fun lt!2592798 () Unit!164166)

(assert (=> b!7267142 (= lt!2592798 (lemmaConcatPreservesForall!1531 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644))))

(declare-fun lt!2592808 () (Set Context!15428))

(assert (=> b!7267142 (= (flatMap!2887 lt!2592808 lambda!447645) (derivationStepZipperUp!2544 ct1!250 (h!77188 s!7854)))))

(declare-fun lt!2592800 () Unit!164166)

(assert (=> b!7267142 (= lt!2592800 (lemmaFlatMapOnSingletonSet!2287 lt!2592808 ct1!250 lambda!447645))))

(assert (=> b!7267142 (= lt!2592808 (set.insert ct1!250 (as set.empty (Set Context!15428))))))

(assert (=> b!7267142 (= lt!2592809 (derivationStepZipperUp!2544 lt!2592801 (h!77188 s!7854)))))

(assert (=> b!7267142 (= lt!2592801 (Context!15429 (++!16674 (exprs!8214 ct1!250) (exprs!8214 ct2!346))))))

(declare-fun lt!2592811 () Unit!164166)

(assert (=> b!7267142 (= lt!2592811 (lemmaConcatPreservesForall!1531 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644))))

(declare-fun b!7267143 () Bool)

(declare-fun res!2946186 () Bool)

(assert (=> b!7267143 (=> (not res!2946186) (not e!4357920))))

(declare-fun nullableContext!264 (Context!15428) Bool)

(assert (=> b!7267143 (= res!2946186 (nullableContext!264 ct1!250))))

(declare-fun b!7267144 () Bool)

(assert (=> b!7267144 (= e!4357924 e!4357918)))

(declare-fun res!2946192 () Bool)

(assert (=> b!7267144 (=> res!2946192 e!4357918)))

(declare-fun nullable!7974 (Regex!18774) Bool)

(assert (=> b!7267144 (= res!2946192 (not (nullable!7974 (h!77187 (exprs!8214 ct1!250)))))))

(assert (=> b!7267144 (= lt!2592805 (derivationStepZipperUp!2544 ct1!250 (h!77188 s!7854)))))

(assert (=> b!7267144 (= lt!2592806 (Context!15429 lt!2592803))))

(declare-fun tail!14455 (List!70863) List!70863)

(assert (=> b!7267144 (= lt!2592803 (tail!14455 (exprs!8214 ct1!250)))))

(assert (= (and start!708832 res!2946195) b!7267143))

(assert (= (and b!7267143 res!2946186) b!7267137))

(assert (= (and b!7267137 res!2946191) b!7267142))

(assert (= (and b!7267142 (not res!2946188)) b!7267138))

(assert (= (and b!7267138 (not res!2946187)) b!7267139))

(assert (= (and b!7267139 (not res!2946193)) b!7267144))

(assert (= (and b!7267144 (not res!2946192)) b!7267133))

(assert (= (and b!7267133 (not res!2946194)) b!7267134))

(assert (= (and b!7267134 (not res!2946189)) b!7267141))

(assert (= (and b!7267141 (not res!2946190)) b!7267140))

(assert (= start!708832 b!7267136))

(assert (= (and start!708832 (is-Cons!70740 s!7854)) b!7267132))

(assert (= start!708832 b!7267135))

(declare-fun m!7951882 () Bool)

(assert (=> b!7267142 m!7951882))

(declare-fun m!7951884 () Bool)

(assert (=> b!7267142 m!7951884))

(assert (=> b!7267142 m!7951882))

(assert (=> b!7267142 m!7951882))

(declare-fun m!7951886 () Bool)

(assert (=> b!7267142 m!7951886))

(assert (=> b!7267142 m!7951882))

(declare-fun m!7951888 () Bool)

(assert (=> b!7267142 m!7951888))

(declare-fun m!7951890 () Bool)

(assert (=> b!7267142 m!7951890))

(declare-fun m!7951892 () Bool)

(assert (=> b!7267142 m!7951892))

(declare-fun m!7951894 () Bool)

(assert (=> b!7267142 m!7951894))

(declare-fun m!7951896 () Bool)

(assert (=> b!7267142 m!7951896))

(declare-fun m!7951898 () Bool)

(assert (=> b!7267142 m!7951898))

(declare-fun m!7951900 () Bool)

(assert (=> b!7267142 m!7951900))

(declare-fun m!7951902 () Bool)

(assert (=> b!7267142 m!7951902))

(declare-fun m!7951904 () Bool)

(assert (=> b!7267141 m!7951904))

(declare-fun m!7951906 () Bool)

(assert (=> b!7267141 m!7951906))

(declare-fun m!7951908 () Bool)

(assert (=> b!7267141 m!7951908))

(declare-fun m!7951910 () Bool)

(assert (=> b!7267141 m!7951910))

(declare-fun m!7951912 () Bool)

(assert (=> b!7267141 m!7951912))

(assert (=> b!7267141 m!7951910))

(declare-fun m!7951914 () Bool)

(assert (=> b!7267139 m!7951914))

(declare-fun m!7951916 () Bool)

(assert (=> b!7267143 m!7951916))

(declare-fun m!7951918 () Bool)

(assert (=> start!708832 m!7951918))

(assert (=> start!708832 m!7951918))

(declare-fun m!7951920 () Bool)

(assert (=> start!708832 m!7951920))

(declare-fun m!7951922 () Bool)

(assert (=> start!708832 m!7951922))

(declare-fun m!7951924 () Bool)

(assert (=> start!708832 m!7951924))

(declare-fun m!7951926 () Bool)

(assert (=> b!7267144 m!7951926))

(assert (=> b!7267144 m!7951884))

(declare-fun m!7951928 () Bool)

(assert (=> b!7267144 m!7951928))

(declare-fun m!7951930 () Bool)

(assert (=> b!7267140 m!7951930))

(declare-fun m!7951932 () Bool)

(assert (=> b!7267133 m!7951932))

(declare-fun m!7951934 () Bool)

(assert (=> b!7267133 m!7951934))

(assert (=> b!7267134 m!7951906))

(declare-fun m!7951936 () Bool)

(assert (=> b!7267134 m!7951936))

(declare-fun m!7951938 () Bool)

(assert (=> b!7267134 m!7951938))

(declare-fun m!7951940 () Bool)

(assert (=> b!7267134 m!7951940))

(assert (=> b!7267134 m!7951906))

(push 1)

(assert tp_is_empty!47013)

(assert (not b!7267133))

(assert (not b!7267144))

(assert (not start!708832))

(assert (not b!7267141))

(assert (not b!7267139))

(assert (not b!7267135))

(assert (not b!7267143))

(assert (not b!7267132))

(assert (not b!7267142))

(assert (not b!7267134))

(assert (not b!7267140))

(assert (not b!7267136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261158 () Bool)

(declare-fun res!2946230 () Bool)

(declare-fun e!4357954 () Bool)

(assert (=> d!2261158 (=> res!2946230 e!4357954)))

(assert (=> d!2261158 (= res!2946230 (is-Nil!70739 lt!2592803))))

(assert (=> d!2261158 (= (forall!17605 lt!2592803 lambda!447644) e!4357954)))

(declare-fun b!7267192 () Bool)

(declare-fun e!4357955 () Bool)

(assert (=> b!7267192 (= e!4357954 e!4357955)))

(declare-fun res!2946231 () Bool)

(assert (=> b!7267192 (=> (not res!2946231) (not e!4357955))))

(declare-fun dynLambda!28893 (Int Regex!18774) Bool)

(assert (=> b!7267192 (= res!2946231 (dynLambda!28893 lambda!447644 (h!77187 lt!2592803)))))

(declare-fun b!7267193 () Bool)

(assert (=> b!7267193 (= e!4357955 (forall!17605 (t!384933 lt!2592803) lambda!447644))))

(assert (= (and d!2261158 (not res!2946230)) b!7267192))

(assert (= (and b!7267192 res!2946231) b!7267193))

(declare-fun b_lambda!279901 () Bool)

(assert (=> (not b_lambda!279901) (not b!7267192)))

(declare-fun m!7952002 () Bool)

(assert (=> b!7267192 m!7952002))

(declare-fun m!7952004 () Bool)

(assert (=> b!7267193 m!7952004))

(assert (=> b!7267141 d!2261158))

(declare-fun d!2261160 () Bool)

(declare-fun c!1352336 () Bool)

(declare-fun isEmpty!40669 (List!70864) Bool)

(assert (=> d!2261160 (= c!1352336 (isEmpty!40669 s!7854))))

(declare-fun e!4357958 () Bool)

(assert (=> d!2261160 (= (matchZipper!3678 (set.insert lt!2592813 (as set.empty (Set Context!15428))) s!7854) e!4357958)))

(declare-fun b!7267198 () Bool)

(declare-fun nullableZipper!2983 ((Set Context!15428)) Bool)

(assert (=> b!7267198 (= e!4357958 (nullableZipper!2983 (set.insert lt!2592813 (as set.empty (Set Context!15428)))))))

(declare-fun b!7267199 () Bool)

(declare-fun head!14982 (List!70864) C!37822)

(declare-fun tail!14457 (List!70864) List!70864)

(assert (=> b!7267199 (= e!4357958 (matchZipper!3678 (derivationStepZipper!3514 (set.insert lt!2592813 (as set.empty (Set Context!15428))) (head!14982 s!7854)) (tail!14457 s!7854)))))

(assert (= (and d!2261160 c!1352336) b!7267198))

(assert (= (and d!2261160 (not c!1352336)) b!7267199))

(declare-fun m!7952006 () Bool)

(assert (=> d!2261160 m!7952006))

(assert (=> b!7267198 m!7951910))

(declare-fun m!7952008 () Bool)

(assert (=> b!7267198 m!7952008))

(declare-fun m!7952010 () Bool)

(assert (=> b!7267199 m!7952010))

(assert (=> b!7267199 m!7951910))

(assert (=> b!7267199 m!7952010))

(declare-fun m!7952012 () Bool)

(assert (=> b!7267199 m!7952012))

(declare-fun m!7952014 () Bool)

(assert (=> b!7267199 m!7952014))

(assert (=> b!7267199 m!7952012))

(assert (=> b!7267199 m!7952014))

(declare-fun m!7952016 () Bool)

(assert (=> b!7267199 m!7952016))

(assert (=> b!7267141 d!2261160))

(declare-fun d!2261162 () Bool)

(assert (=> d!2261162 (forall!17605 (++!16674 lt!2592803 (exprs!8214 ct2!346)) lambda!447644)))

(declare-fun lt!2592870 () Unit!164166)

(declare-fun choose!56328 (List!70863 List!70863 Int) Unit!164166)

(assert (=> d!2261162 (= lt!2592870 (choose!56328 lt!2592803 (exprs!8214 ct2!346) lambda!447644))))

(assert (=> d!2261162 (forall!17605 lt!2592803 lambda!447644)))

(assert (=> d!2261162 (= (lemmaConcatPreservesForall!1531 lt!2592803 (exprs!8214 ct2!346) lambda!447644) lt!2592870)))

(declare-fun bs!1910409 () Bool)

(assert (= bs!1910409 d!2261162))

(assert (=> bs!1910409 m!7951936))

(assert (=> bs!1910409 m!7951936))

(declare-fun m!7952018 () Bool)

(assert (=> bs!1910409 m!7952018))

(declare-fun m!7952020 () Bool)

(assert (=> bs!1910409 m!7952020))

(assert (=> bs!1910409 m!7951908))

(assert (=> b!7267141 d!2261162))

(declare-fun bs!1910410 () Bool)

(declare-fun d!2261164 () Bool)

(assert (= bs!1910410 (and d!2261164 b!7267142)))

(declare-fun lambda!447670 () Int)

(assert (=> bs!1910410 (= lambda!447670 lambda!447644)))

(assert (=> d!2261164 (matchZipper!3678 (set.insert (Context!15429 (++!16674 (exprs!8214 lt!2592806) (exprs!8214 ct2!346))) (as set.empty (Set Context!15428))) s!7854)))

(declare-fun lt!2592876 () Unit!164166)

(assert (=> d!2261164 (= lt!2592876 (lemmaConcatPreservesForall!1531 (exprs!8214 lt!2592806) (exprs!8214 ct2!346) lambda!447670))))

(declare-fun lt!2592875 () Unit!164166)

(declare-fun choose!56329 (Context!15428 Context!15428 List!70864) Unit!164166)

(assert (=> d!2261164 (= lt!2592875 (choose!56329 lt!2592806 ct2!346 s!7854))))

(assert (=> d!2261164 (matchZipper!3678 (set.insert ct2!346 (as set.empty (Set Context!15428))) s!7854)))

(assert (=> d!2261164 (= (lemmaPrependingNullableCtxStillMatches!11 lt!2592806 ct2!346 s!7854) lt!2592875)))

(declare-fun bs!1910411 () Bool)

(assert (= bs!1910411 d!2261164))

(declare-fun m!7952022 () Bool)

(assert (=> bs!1910411 m!7952022))

(declare-fun m!7952024 () Bool)

(assert (=> bs!1910411 m!7952024))

(declare-fun m!7952026 () Bool)

(assert (=> bs!1910411 m!7952026))

(assert (=> bs!1910411 m!7951918))

(assert (=> bs!1910411 m!7951920))

(declare-fun m!7952028 () Bool)

(assert (=> bs!1910411 m!7952028))

(declare-fun m!7952030 () Bool)

(assert (=> bs!1910411 m!7952030))

(assert (=> bs!1910411 m!7952028))

(assert (=> bs!1910411 m!7951918))

(assert (=> b!7267141 d!2261164))

(declare-fun bm!662439 () Bool)

(declare-fun call!662444 () (Set Context!15428))

(assert (=> bm!662439 (= call!662444 (derivationStepZipperDown!2708 (h!77187 (exprs!8214 lt!2592813)) (Context!15429 (t!384933 (exprs!8214 lt!2592813))) (h!77188 s!7854)))))

(declare-fun b!7267210 () Bool)

(declare-fun e!4357965 () (Set Context!15428))

(assert (=> b!7267210 (= e!4357965 call!662444)))

(declare-fun e!4357967 () (Set Context!15428))

(declare-fun b!7267211 () Bool)

(assert (=> b!7267211 (= e!4357967 (set.union call!662444 (derivationStepZipperUp!2544 (Context!15429 (t!384933 (exprs!8214 lt!2592813))) (h!77188 s!7854))))))

(declare-fun b!7267212 () Bool)

(assert (=> b!7267212 (= e!4357967 e!4357965)))

(declare-fun c!1352341 () Bool)

(assert (=> b!7267212 (= c!1352341 (is-Cons!70739 (exprs!8214 lt!2592813)))))

(declare-fun d!2261166 () Bool)

(declare-fun c!1352342 () Bool)

(declare-fun e!4357966 () Bool)

(assert (=> d!2261166 (= c!1352342 e!4357966)))

(declare-fun res!2946234 () Bool)

(assert (=> d!2261166 (=> (not res!2946234) (not e!4357966))))

(assert (=> d!2261166 (= res!2946234 (is-Cons!70739 (exprs!8214 lt!2592813)))))

(assert (=> d!2261166 (= (derivationStepZipperUp!2544 lt!2592813 (h!77188 s!7854)) e!4357967)))

(declare-fun b!7267213 () Bool)

(assert (=> b!7267213 (= e!4357965 (as set.empty (Set Context!15428)))))

(declare-fun b!7267214 () Bool)

(assert (=> b!7267214 (= e!4357966 (nullable!7974 (h!77187 (exprs!8214 lt!2592813))))))

(assert (= (and d!2261166 res!2946234) b!7267214))

(assert (= (and d!2261166 c!1352342) b!7267211))

(assert (= (and d!2261166 (not c!1352342)) b!7267212))

(assert (= (and b!7267212 c!1352341) b!7267210))

(assert (= (and b!7267212 (not c!1352341)) b!7267213))

(assert (= (or b!7267211 b!7267210) bm!662439))

(declare-fun m!7952032 () Bool)

(assert (=> bm!662439 m!7952032))

(declare-fun m!7952034 () Bool)

(assert (=> b!7267211 m!7952034))

(declare-fun m!7952036 () Bool)

(assert (=> b!7267214 m!7952036))

(assert (=> b!7267134 d!2261166))

(assert (=> b!7267134 d!2261162))

(declare-fun b!7267249 () Bool)

(declare-fun e!4357988 () (Set Context!15428))

(declare-fun call!662459 () (Set Context!15428))

(assert (=> b!7267249 (= e!4357988 call!662459)))

(declare-fun bm!662452 () Bool)

(declare-fun call!662460 () (Set Context!15428))

(assert (=> bm!662452 (= call!662459 call!662460)))

(declare-fun bm!662453 () Bool)

(declare-fun call!662461 () List!70863)

(declare-fun call!662462 () List!70863)

(assert (=> bm!662453 (= call!662461 call!662462)))

(declare-fun b!7267251 () Bool)

(assert (=> b!7267251 (= e!4357988 (as set.empty (Set Context!15428)))))

(declare-fun c!1352360 () Bool)

(declare-fun bm!662454 () Bool)

(declare-fun c!1352359 () Bool)

(declare-fun $colon$colon!2952 (List!70863 Regex!18774) List!70863)

(assert (=> bm!662454 (= call!662462 ($colon$colon!2952 (exprs!8214 lt!2592813) (ite (or c!1352359 c!1352360) (regTwo!38060 (h!77187 (exprs!8214 ct1!250))) (h!77187 (exprs!8214 ct1!250)))))))

(declare-fun b!7267252 () Bool)

(declare-fun e!4357986 () (Set Context!15428))

(assert (=> b!7267252 (= e!4357986 (set.insert lt!2592813 (as set.empty (Set Context!15428))))))

(declare-fun b!7267253 () Bool)

(declare-fun e!4357990 () Bool)

(assert (=> b!7267253 (= e!4357990 (nullable!7974 (regOne!38060 (h!77187 (exprs!8214 ct1!250)))))))

(declare-fun b!7267254 () Bool)

(declare-fun e!4357989 () (Set Context!15428))

(declare-fun e!4357987 () (Set Context!15428))

(assert (=> b!7267254 (= e!4357989 e!4357987)))

(assert (=> b!7267254 (= c!1352360 (is-Concat!27619 (h!77187 (exprs!8214 ct1!250))))))

(declare-fun b!7267255 () Bool)

(assert (=> b!7267255 (= e!4357987 call!662459)))

(declare-fun b!7267256 () Bool)

(declare-fun call!662458 () (Set Context!15428))

(assert (=> b!7267256 (= e!4357989 (set.union call!662458 call!662460))))

(declare-fun b!7267257 () Bool)

(declare-fun c!1352357 () Bool)

(assert (=> b!7267257 (= c!1352357 (is-Star!18774 (h!77187 (exprs!8214 ct1!250))))))

(assert (=> b!7267257 (= e!4357987 e!4357988)))

(declare-fun bm!662455 () Bool)

(declare-fun call!662457 () (Set Context!15428))

(assert (=> bm!662455 (= call!662460 call!662457)))

(declare-fun d!2261170 () Bool)

(declare-fun c!1352358 () Bool)

(assert (=> d!2261170 (= c!1352358 (and (is-ElementMatch!18774 (h!77187 (exprs!8214 ct1!250))) (= (c!1352328 (h!77187 (exprs!8214 ct1!250))) (h!77188 s!7854))))))

(assert (=> d!2261170 (= (derivationStepZipperDown!2708 (h!77187 (exprs!8214 ct1!250)) lt!2592813 (h!77188 s!7854)) e!4357986)))

(declare-fun b!7267250 () Bool)

(assert (=> b!7267250 (= c!1352359 e!4357990)))

(declare-fun res!2946243 () Bool)

(assert (=> b!7267250 (=> (not res!2946243) (not e!4357990))))

(assert (=> b!7267250 (= res!2946243 (is-Concat!27619 (h!77187 (exprs!8214 ct1!250))))))

(declare-fun e!4357991 () (Set Context!15428))

(assert (=> b!7267250 (= e!4357991 e!4357989)))

(declare-fun bm!662456 () Bool)

(declare-fun c!1352356 () Bool)

(assert (=> bm!662456 (= call!662458 (derivationStepZipperDown!2708 (ite c!1352356 (regOne!38061 (h!77187 (exprs!8214 ct1!250))) (regOne!38060 (h!77187 (exprs!8214 ct1!250)))) (ite c!1352356 lt!2592813 (Context!15429 call!662462)) (h!77188 s!7854)))))

(declare-fun bm!662457 () Bool)

(assert (=> bm!662457 (= call!662457 (derivationStepZipperDown!2708 (ite c!1352356 (regTwo!38061 (h!77187 (exprs!8214 ct1!250))) (ite c!1352359 (regTwo!38060 (h!77187 (exprs!8214 ct1!250))) (ite c!1352360 (regOne!38060 (h!77187 (exprs!8214 ct1!250))) (reg!19103 (h!77187 (exprs!8214 ct1!250)))))) (ite (or c!1352356 c!1352359) lt!2592813 (Context!15429 call!662461)) (h!77188 s!7854)))))

(declare-fun b!7267258 () Bool)

(assert (=> b!7267258 (= e!4357991 (set.union call!662458 call!662457))))

(declare-fun b!7267259 () Bool)

(assert (=> b!7267259 (= e!4357986 e!4357991)))

(assert (=> b!7267259 (= c!1352356 (is-Union!18774 (h!77187 (exprs!8214 ct1!250))))))

(assert (= (and d!2261170 c!1352358) b!7267252))

(assert (= (and d!2261170 (not c!1352358)) b!7267259))

(assert (= (and b!7267259 c!1352356) b!7267258))

(assert (= (and b!7267259 (not c!1352356)) b!7267250))

(assert (= (and b!7267250 res!2946243) b!7267253))

(assert (= (and b!7267250 c!1352359) b!7267256))

(assert (= (and b!7267250 (not c!1352359)) b!7267254))

(assert (= (and b!7267254 c!1352360) b!7267255))

(assert (= (and b!7267254 (not c!1352360)) b!7267257))

(assert (= (and b!7267257 c!1352357) b!7267249))

(assert (= (and b!7267257 (not c!1352357)) b!7267251))

(assert (= (or b!7267255 b!7267249) bm!662453))

(assert (= (or b!7267255 b!7267249) bm!662452))

(assert (= (or b!7267256 bm!662453) bm!662454))

(assert (= (or b!7267256 bm!662452) bm!662455))

(assert (= (or b!7267258 b!7267256) bm!662456))

(assert (= (or b!7267258 bm!662455) bm!662457))

(declare-fun m!7952052 () Bool)

(assert (=> bm!662457 m!7952052))

(declare-fun m!7952054 () Bool)

(assert (=> bm!662456 m!7952054))

(assert (=> b!7267252 m!7951910))

(declare-fun m!7952056 () Bool)

(assert (=> b!7267253 m!7952056))

(declare-fun m!7952058 () Bool)

(assert (=> bm!662454 m!7952058))

(assert (=> b!7267134 d!2261170))

(declare-fun b!7267273 () Bool)

(declare-fun e!4357999 () List!70863)

(assert (=> b!7267273 (= e!4357999 (Cons!70739 (h!77187 lt!2592803) (++!16674 (t!384933 lt!2592803) (exprs!8214 ct2!346))))))

(declare-fun b!7267274 () Bool)

(declare-fun res!2946248 () Bool)

(declare-fun e!4357998 () Bool)

(assert (=> b!7267274 (=> (not res!2946248) (not e!4357998))))

(declare-fun lt!2592882 () List!70863)

(declare-fun size!41803 (List!70863) Int)

(assert (=> b!7267274 (= res!2946248 (= (size!41803 lt!2592882) (+ (size!41803 lt!2592803) (size!41803 (exprs!8214 ct2!346)))))))

(declare-fun b!7267275 () Bool)

(assert (=> b!7267275 (= e!4357998 (or (not (= (exprs!8214 ct2!346) Nil!70739)) (= lt!2592882 lt!2592803)))))

(declare-fun d!2261174 () Bool)

(assert (=> d!2261174 e!4357998))

(declare-fun res!2946249 () Bool)

(assert (=> d!2261174 (=> (not res!2946249) (not e!4357998))))

(declare-fun content!14755 (List!70863) (Set Regex!18774))

(assert (=> d!2261174 (= res!2946249 (= (content!14755 lt!2592882) (set.union (content!14755 lt!2592803) (content!14755 (exprs!8214 ct2!346)))))))

(assert (=> d!2261174 (= lt!2592882 e!4357999)))

(declare-fun c!1352365 () Bool)

(assert (=> d!2261174 (= c!1352365 (is-Nil!70739 lt!2592803))))

(assert (=> d!2261174 (= (++!16674 lt!2592803 (exprs!8214 ct2!346)) lt!2592882)))

(declare-fun b!7267272 () Bool)

(assert (=> b!7267272 (= e!4357999 (exprs!8214 ct2!346))))

(assert (= (and d!2261174 c!1352365) b!7267272))

(assert (= (and d!2261174 (not c!1352365)) b!7267273))

(assert (= (and d!2261174 res!2946249) b!7267274))

(assert (= (and b!7267274 res!2946248) b!7267275))

(declare-fun m!7952060 () Bool)

(assert (=> b!7267273 m!7952060))

(declare-fun m!7952062 () Bool)

(assert (=> b!7267274 m!7952062))

(declare-fun m!7952064 () Bool)

(assert (=> b!7267274 m!7952064))

(declare-fun m!7952066 () Bool)

(assert (=> b!7267274 m!7952066))

(declare-fun m!7952068 () Bool)

(assert (=> d!2261174 m!7952068))

(declare-fun m!7952070 () Bool)

(assert (=> d!2261174 m!7952070))

(declare-fun m!7952072 () Bool)

(assert (=> d!2261174 m!7952072))

(assert (=> b!7267134 d!2261174))

(declare-fun d!2261176 () Bool)

(assert (=> d!2261176 (= (isEmpty!40667 (exprs!8214 ct1!250)) (is-Nil!70739 (exprs!8214 ct1!250)))))

(assert (=> b!7267139 d!2261176))

(declare-fun d!2261178 () Bool)

(declare-fun res!2946252 () Bool)

(declare-fun e!4358004 () Bool)

(assert (=> d!2261178 (=> res!2946252 e!4358004)))

(assert (=> d!2261178 (= res!2946252 (is-Nil!70739 (exprs!8214 ct2!346)))))

(assert (=> d!2261178 (= (forall!17605 (exprs!8214 ct2!346) lambda!447644) e!4358004)))

(declare-fun b!7267282 () Bool)

(declare-fun e!4358005 () Bool)

(assert (=> b!7267282 (= e!4358004 e!4358005)))

(declare-fun res!2946253 () Bool)

(assert (=> b!7267282 (=> (not res!2946253) (not e!4358005))))

(assert (=> b!7267282 (= res!2946253 (dynLambda!28893 lambda!447644 (h!77187 (exprs!8214 ct2!346))))))

(declare-fun b!7267283 () Bool)

(assert (=> b!7267283 (= e!4358005 (forall!17605 (t!384933 (exprs!8214 ct2!346)) lambda!447644))))

(assert (= (and d!2261178 (not res!2946252)) b!7267282))

(assert (= (and b!7267282 res!2946253) b!7267283))

(declare-fun b_lambda!279903 () Bool)

(assert (=> (not b_lambda!279903) (not b!7267282)))

(declare-fun m!7952074 () Bool)

(assert (=> b!7267282 m!7952074))

(declare-fun m!7952076 () Bool)

(assert (=> b!7267283 m!7952076))

(assert (=> b!7267140 d!2261178))

(declare-fun bs!1910412 () Bool)

(declare-fun d!2261180 () Bool)

(assert (= bs!1910412 (and d!2261180 b!7267142)))

(declare-fun lambda!447673 () Int)

(assert (=> bs!1910412 (not (= lambda!447673 lambda!447644))))

(declare-fun bs!1910413 () Bool)

(assert (= bs!1910413 (and d!2261180 d!2261164)))

(assert (=> bs!1910413 (not (= lambda!447673 lambda!447670))))

(assert (=> d!2261180 (= (nullableContext!264 ct1!250) (forall!17605 (exprs!8214 ct1!250) lambda!447673))))

(declare-fun bs!1910414 () Bool)

(assert (= bs!1910414 d!2261180))

(declare-fun m!7952078 () Bool)

(assert (=> bs!1910414 m!7952078))

(assert (=> b!7267143 d!2261180))

(declare-fun d!2261182 () Bool)

(declare-fun c!1352369 () Bool)

(assert (=> d!2261182 (= c!1352369 (isEmpty!40669 s!7854))))

(declare-fun e!4358006 () Bool)

(assert (=> d!2261182 (= (matchZipper!3678 (set.insert ct2!346 (as set.empty (Set Context!15428))) s!7854) e!4358006)))

(declare-fun b!7267284 () Bool)

(assert (=> b!7267284 (= e!4358006 (nullableZipper!2983 (set.insert ct2!346 (as set.empty (Set Context!15428)))))))

(declare-fun b!7267285 () Bool)

(assert (=> b!7267285 (= e!4358006 (matchZipper!3678 (derivationStepZipper!3514 (set.insert ct2!346 (as set.empty (Set Context!15428))) (head!14982 s!7854)) (tail!14457 s!7854)))))

(assert (= (and d!2261182 c!1352369) b!7267284))

(assert (= (and d!2261182 (not c!1352369)) b!7267285))

(assert (=> d!2261182 m!7952006))

(assert (=> b!7267284 m!7951918))

(declare-fun m!7952080 () Bool)

(assert (=> b!7267284 m!7952080))

(assert (=> b!7267285 m!7952010))

(assert (=> b!7267285 m!7951918))

(assert (=> b!7267285 m!7952010))

(declare-fun m!7952082 () Bool)

(assert (=> b!7267285 m!7952082))

(assert (=> b!7267285 m!7952014))

(assert (=> b!7267285 m!7952082))

(assert (=> b!7267285 m!7952014))

(declare-fun m!7952084 () Bool)

(assert (=> b!7267285 m!7952084))

(assert (=> start!708832 d!2261182))

(declare-fun bs!1910415 () Bool)

(declare-fun d!2261184 () Bool)

(assert (= bs!1910415 (and d!2261184 b!7267142)))

(declare-fun lambda!447676 () Int)

(assert (=> bs!1910415 (= lambda!447676 lambda!447644)))

(declare-fun bs!1910416 () Bool)

(assert (= bs!1910416 (and d!2261184 d!2261164)))

(assert (=> bs!1910416 (= lambda!447676 lambda!447670)))

(declare-fun bs!1910417 () Bool)

(assert (= bs!1910417 (and d!2261184 d!2261180)))

(assert (=> bs!1910417 (not (= lambda!447676 lambda!447673))))

(assert (=> d!2261184 (= (inv!89946 ct2!346) (forall!17605 (exprs!8214 ct2!346) lambda!447676))))

(declare-fun bs!1910418 () Bool)

(assert (= bs!1910418 d!2261184))

(declare-fun m!7952086 () Bool)

(assert (=> bs!1910418 m!7952086))

(assert (=> start!708832 d!2261184))

(declare-fun bs!1910419 () Bool)

(declare-fun d!2261186 () Bool)

(assert (= bs!1910419 (and d!2261186 b!7267142)))

(declare-fun lambda!447677 () Int)

(assert (=> bs!1910419 (= lambda!447677 lambda!447644)))

(declare-fun bs!1910420 () Bool)

(assert (= bs!1910420 (and d!2261186 d!2261164)))

(assert (=> bs!1910420 (= lambda!447677 lambda!447670)))

(declare-fun bs!1910421 () Bool)

(assert (= bs!1910421 (and d!2261186 d!2261180)))

(assert (=> bs!1910421 (not (= lambda!447677 lambda!447673))))

(declare-fun bs!1910422 () Bool)

(assert (= bs!1910422 (and d!2261186 d!2261184)))

(assert (=> bs!1910422 (= lambda!447677 lambda!447676)))

(assert (=> d!2261186 (= (inv!89946 ct1!250) (forall!17605 (exprs!8214 ct1!250) lambda!447677))))

(declare-fun bs!1910423 () Bool)

(assert (= bs!1910423 d!2261186))

(declare-fun m!7952088 () Bool)

(assert (=> bs!1910423 m!7952088))

(assert (=> start!708832 d!2261186))

(declare-fun d!2261188 () Bool)

(declare-fun nullableFct!3137 (Regex!18774) Bool)

(assert (=> d!2261188 (= (nullable!7974 (h!77187 (exprs!8214 ct1!250))) (nullableFct!3137 (h!77187 (exprs!8214 ct1!250))))))

(declare-fun bs!1910424 () Bool)

(assert (= bs!1910424 d!2261188))

(declare-fun m!7952090 () Bool)

(assert (=> bs!1910424 m!7952090))

(assert (=> b!7267144 d!2261188))

(declare-fun bm!662461 () Bool)

(declare-fun call!662466 () (Set Context!15428))

(assert (=> bm!662461 (= call!662466 (derivationStepZipperDown!2708 (h!77187 (exprs!8214 ct1!250)) (Context!15429 (t!384933 (exprs!8214 ct1!250))) (h!77188 s!7854)))))

(declare-fun b!7267291 () Bool)

(declare-fun e!4358010 () (Set Context!15428))

(assert (=> b!7267291 (= e!4358010 call!662466)))

(declare-fun e!4358012 () (Set Context!15428))

(declare-fun b!7267292 () Bool)

(assert (=> b!7267292 (= e!4358012 (set.union call!662466 (derivationStepZipperUp!2544 (Context!15429 (t!384933 (exprs!8214 ct1!250))) (h!77188 s!7854))))))

(declare-fun b!7267293 () Bool)

(assert (=> b!7267293 (= e!4358012 e!4358010)))

(declare-fun c!1352372 () Bool)

(assert (=> b!7267293 (= c!1352372 (is-Cons!70739 (exprs!8214 ct1!250)))))

(declare-fun d!2261190 () Bool)

(declare-fun c!1352373 () Bool)

(declare-fun e!4358011 () Bool)

(assert (=> d!2261190 (= c!1352373 e!4358011)))

(declare-fun res!2946255 () Bool)

(assert (=> d!2261190 (=> (not res!2946255) (not e!4358011))))

(assert (=> d!2261190 (= res!2946255 (is-Cons!70739 (exprs!8214 ct1!250)))))

(assert (=> d!2261190 (= (derivationStepZipperUp!2544 ct1!250 (h!77188 s!7854)) e!4358012)))

(declare-fun b!7267294 () Bool)

(assert (=> b!7267294 (= e!4358010 (as set.empty (Set Context!15428)))))

(declare-fun b!7267295 () Bool)

(assert (=> b!7267295 (= e!4358011 (nullable!7974 (h!77187 (exprs!8214 ct1!250))))))

(assert (= (and d!2261190 res!2946255) b!7267295))

(assert (= (and d!2261190 c!1352373) b!7267292))

(assert (= (and d!2261190 (not c!1352373)) b!7267293))

(assert (= (and b!7267293 c!1352372) b!7267291))

(assert (= (and b!7267293 (not c!1352372)) b!7267294))

(assert (= (or b!7267292 b!7267291) bm!662461))

(declare-fun m!7952096 () Bool)

(assert (=> bm!662461 m!7952096))

(declare-fun m!7952098 () Bool)

(assert (=> b!7267292 m!7952098))

(assert (=> b!7267295 m!7951926))

(assert (=> b!7267144 d!2261190))

(declare-fun d!2261192 () Bool)

(assert (=> d!2261192 (= (tail!14455 (exprs!8214 ct1!250)) (t!384933 (exprs!8214 ct1!250)))))

(assert (=> b!7267144 d!2261192))

(declare-fun b!7267296 () Bool)

(declare-fun e!4358015 () (Set Context!15428))

(declare-fun call!662469 () (Set Context!15428))

(assert (=> b!7267296 (= e!4358015 call!662469)))

(declare-fun bm!662462 () Bool)

(declare-fun call!662470 () (Set Context!15428))

(assert (=> bm!662462 (= call!662469 call!662470)))

(declare-fun bm!662463 () Bool)

(declare-fun call!662471 () List!70863)

(declare-fun call!662472 () List!70863)

(assert (=> bm!662463 (= call!662471 call!662472)))

(declare-fun b!7267298 () Bool)

(assert (=> b!7267298 (= e!4358015 (as set.empty (Set Context!15428)))))

(declare-fun bm!662464 () Bool)

(declare-fun c!1352377 () Bool)

(declare-fun c!1352378 () Bool)

(assert (=> bm!662464 (= call!662472 ($colon$colon!2952 (exprs!8214 lt!2592806) (ite (or c!1352377 c!1352378) (regTwo!38060 (h!77187 (exprs!8214 ct1!250))) (h!77187 (exprs!8214 ct1!250)))))))

(declare-fun b!7267299 () Bool)

(declare-fun e!4358013 () (Set Context!15428))

(assert (=> b!7267299 (= e!4358013 (set.insert lt!2592806 (as set.empty (Set Context!15428))))))

(declare-fun b!7267300 () Bool)

(declare-fun e!4358017 () Bool)

(assert (=> b!7267300 (= e!4358017 (nullable!7974 (regOne!38060 (h!77187 (exprs!8214 ct1!250)))))))

(declare-fun b!7267301 () Bool)

(declare-fun e!4358016 () (Set Context!15428))

(declare-fun e!4358014 () (Set Context!15428))

(assert (=> b!7267301 (= e!4358016 e!4358014)))

(assert (=> b!7267301 (= c!1352378 (is-Concat!27619 (h!77187 (exprs!8214 ct1!250))))))

(declare-fun b!7267302 () Bool)

(assert (=> b!7267302 (= e!4358014 call!662469)))

(declare-fun b!7267303 () Bool)

(declare-fun call!662468 () (Set Context!15428))

(assert (=> b!7267303 (= e!4358016 (set.union call!662468 call!662470))))

(declare-fun b!7267304 () Bool)

(declare-fun c!1352375 () Bool)

(assert (=> b!7267304 (= c!1352375 (is-Star!18774 (h!77187 (exprs!8214 ct1!250))))))

(assert (=> b!7267304 (= e!4358014 e!4358015)))

(declare-fun bm!662465 () Bool)

(declare-fun call!662467 () (Set Context!15428))

(assert (=> bm!662465 (= call!662470 call!662467)))

(declare-fun d!2261196 () Bool)

(declare-fun c!1352376 () Bool)

(assert (=> d!2261196 (= c!1352376 (and (is-ElementMatch!18774 (h!77187 (exprs!8214 ct1!250))) (= (c!1352328 (h!77187 (exprs!8214 ct1!250))) (h!77188 s!7854))))))

(assert (=> d!2261196 (= (derivationStepZipperDown!2708 (h!77187 (exprs!8214 ct1!250)) lt!2592806 (h!77188 s!7854)) e!4358013)))

(declare-fun b!7267297 () Bool)

(assert (=> b!7267297 (= c!1352377 e!4358017)))

(declare-fun res!2946256 () Bool)

(assert (=> b!7267297 (=> (not res!2946256) (not e!4358017))))

(assert (=> b!7267297 (= res!2946256 (is-Concat!27619 (h!77187 (exprs!8214 ct1!250))))))

(declare-fun e!4358018 () (Set Context!15428))

(assert (=> b!7267297 (= e!4358018 e!4358016)))

(declare-fun bm!662466 () Bool)

(declare-fun c!1352374 () Bool)

(assert (=> bm!662466 (= call!662468 (derivationStepZipperDown!2708 (ite c!1352374 (regOne!38061 (h!77187 (exprs!8214 ct1!250))) (regOne!38060 (h!77187 (exprs!8214 ct1!250)))) (ite c!1352374 lt!2592806 (Context!15429 call!662472)) (h!77188 s!7854)))))

(declare-fun bm!662467 () Bool)

(assert (=> bm!662467 (= call!662467 (derivationStepZipperDown!2708 (ite c!1352374 (regTwo!38061 (h!77187 (exprs!8214 ct1!250))) (ite c!1352377 (regTwo!38060 (h!77187 (exprs!8214 ct1!250))) (ite c!1352378 (regOne!38060 (h!77187 (exprs!8214 ct1!250))) (reg!19103 (h!77187 (exprs!8214 ct1!250)))))) (ite (or c!1352374 c!1352377) lt!2592806 (Context!15429 call!662471)) (h!77188 s!7854)))))

(declare-fun b!7267305 () Bool)

(assert (=> b!7267305 (= e!4358018 (set.union call!662468 call!662467))))

(declare-fun b!7267306 () Bool)

(assert (=> b!7267306 (= e!4358013 e!4358018)))

(assert (=> b!7267306 (= c!1352374 (is-Union!18774 (h!77187 (exprs!8214 ct1!250))))))

(assert (= (and d!2261196 c!1352376) b!7267299))

(assert (= (and d!2261196 (not c!1352376)) b!7267306))

(assert (= (and b!7267306 c!1352374) b!7267305))

(assert (= (and b!7267306 (not c!1352374)) b!7267297))

(assert (= (and b!7267297 res!2946256) b!7267300))

(assert (= (and b!7267297 c!1352377) b!7267303))

(assert (= (and b!7267297 (not c!1352377)) b!7267301))

(assert (= (and b!7267301 c!1352378) b!7267302))

(assert (= (and b!7267301 (not c!1352378)) b!7267304))

(assert (= (and b!7267304 c!1352375) b!7267296))

(assert (= (and b!7267304 (not c!1352375)) b!7267298))

(assert (= (or b!7267302 b!7267296) bm!662463))

(assert (= (or b!7267302 b!7267296) bm!662462))

(assert (= (or b!7267303 bm!662463) bm!662464))

(assert (= (or b!7267303 bm!662462) bm!662465))

(assert (= (or b!7267305 b!7267303) bm!662466))

(assert (= (or b!7267305 bm!662465) bm!662467))

(declare-fun m!7952102 () Bool)

(assert (=> bm!662467 m!7952102))

(declare-fun m!7952104 () Bool)

(assert (=> bm!662466 m!7952104))

(declare-fun m!7952106 () Bool)

(assert (=> b!7267299 m!7952106))

(assert (=> b!7267300 m!7952056))

(declare-fun m!7952108 () Bool)

(assert (=> bm!662464 m!7952108))

(assert (=> b!7267133 d!2261196))

(declare-fun bm!662468 () Bool)

(declare-fun call!662473 () (Set Context!15428))

(assert (=> bm!662468 (= call!662473 (derivationStepZipperDown!2708 (h!77187 (exprs!8214 lt!2592806)) (Context!15429 (t!384933 (exprs!8214 lt!2592806))) (h!77188 s!7854)))))

(declare-fun b!7267307 () Bool)

(declare-fun e!4358019 () (Set Context!15428))

(assert (=> b!7267307 (= e!4358019 call!662473)))

(declare-fun b!7267308 () Bool)

(declare-fun e!4358021 () (Set Context!15428))

(assert (=> b!7267308 (= e!4358021 (set.union call!662473 (derivationStepZipperUp!2544 (Context!15429 (t!384933 (exprs!8214 lt!2592806))) (h!77188 s!7854))))))

(declare-fun b!7267309 () Bool)

(assert (=> b!7267309 (= e!4358021 e!4358019)))

(declare-fun c!1352379 () Bool)

(assert (=> b!7267309 (= c!1352379 (is-Cons!70739 (exprs!8214 lt!2592806)))))

(declare-fun d!2261198 () Bool)

(declare-fun c!1352380 () Bool)

(declare-fun e!4358020 () Bool)

(assert (=> d!2261198 (= c!1352380 e!4358020)))

(declare-fun res!2946257 () Bool)

(assert (=> d!2261198 (=> (not res!2946257) (not e!4358020))))

(assert (=> d!2261198 (= res!2946257 (is-Cons!70739 (exprs!8214 lt!2592806)))))

(assert (=> d!2261198 (= (derivationStepZipperUp!2544 lt!2592806 (h!77188 s!7854)) e!4358021)))

(declare-fun b!7267310 () Bool)

(assert (=> b!7267310 (= e!4358019 (as set.empty (Set Context!15428)))))

(declare-fun b!7267311 () Bool)

(assert (=> b!7267311 (= e!4358020 (nullable!7974 (h!77187 (exprs!8214 lt!2592806))))))

(assert (= (and d!2261198 res!2946257) b!7267311))

(assert (= (and d!2261198 c!1352380) b!7267308))

(assert (= (and d!2261198 (not c!1352380)) b!7267309))

(assert (= (and b!7267309 c!1352379) b!7267307))

(assert (= (and b!7267309 (not c!1352379)) b!7267310))

(assert (= (or b!7267308 b!7267307) bm!662468))

(declare-fun m!7952110 () Bool)

(assert (=> bm!662468 m!7952110))

(declare-fun m!7952112 () Bool)

(assert (=> b!7267308 m!7952112))

(declare-fun m!7952114 () Bool)

(assert (=> b!7267311 m!7952114))

(assert (=> b!7267133 d!2261198))

(declare-fun d!2261200 () Bool)

(declare-fun choose!56330 ((Set Context!15428) Int) (Set Context!15428))

(assert (=> d!2261200 (= (flatMap!2887 lt!2592807 lambda!447645) (choose!56330 lt!2592807 lambda!447645))))

(declare-fun bs!1910425 () Bool)

(assert (= bs!1910425 d!2261200))

(declare-fun m!7952116 () Bool)

(assert (=> bs!1910425 m!7952116))

(assert (=> b!7267142 d!2261200))

(declare-fun d!2261202 () Bool)

(assert (=> d!2261202 (forall!17605 (++!16674 (exprs!8214 ct1!250) (exprs!8214 ct2!346)) lambda!447644)))

(declare-fun lt!2592883 () Unit!164166)

(assert (=> d!2261202 (= lt!2592883 (choose!56328 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644))))

(assert (=> d!2261202 (forall!17605 (exprs!8214 ct1!250) lambda!447644)))

(assert (=> d!2261202 (= (lemmaConcatPreservesForall!1531 (exprs!8214 ct1!250) (exprs!8214 ct2!346) lambda!447644) lt!2592883)))

(declare-fun bs!1910426 () Bool)

(assert (= bs!1910426 d!2261202))

(assert (=> bs!1910426 m!7951892))

(assert (=> bs!1910426 m!7951892))

(declare-fun m!7952118 () Bool)

(assert (=> bs!1910426 m!7952118))

(declare-fun m!7952120 () Bool)

(assert (=> bs!1910426 m!7952120))

(declare-fun m!7952122 () Bool)

(assert (=> bs!1910426 m!7952122))

(assert (=> b!7267142 d!2261202))

(declare-fun d!2261204 () Bool)

(assert (=> d!2261204 (= (flatMap!2887 lt!2592808 lambda!447645) (choose!56330 lt!2592808 lambda!447645))))

(declare-fun bs!1910427 () Bool)

(assert (= bs!1910427 d!2261204))

(declare-fun m!7952124 () Bool)

(assert (=> bs!1910427 m!7952124))

(assert (=> b!7267142 d!2261204))

(declare-fun b!7267313 () Bool)

(declare-fun e!4358023 () List!70863)

(assert (=> b!7267313 (= e!4358023 (Cons!70739 (h!77187 (exprs!8214 ct1!250)) (++!16674 (t!384933 (exprs!8214 ct1!250)) (exprs!8214 ct2!346))))))

(declare-fun b!7267314 () Bool)

(declare-fun res!2946258 () Bool)

(declare-fun e!4358022 () Bool)

(assert (=> b!7267314 (=> (not res!2946258) (not e!4358022))))

(declare-fun lt!2592884 () List!70863)

(assert (=> b!7267314 (= res!2946258 (= (size!41803 lt!2592884) (+ (size!41803 (exprs!8214 ct1!250)) (size!41803 (exprs!8214 ct2!346)))))))

(declare-fun b!7267315 () Bool)

(assert (=> b!7267315 (= e!4358022 (or (not (= (exprs!8214 ct2!346) Nil!70739)) (= lt!2592884 (exprs!8214 ct1!250))))))

(declare-fun d!2261206 () Bool)

(assert (=> d!2261206 e!4358022))

(declare-fun res!2946259 () Bool)

(assert (=> d!2261206 (=> (not res!2946259) (not e!4358022))))

(assert (=> d!2261206 (= res!2946259 (= (content!14755 lt!2592884) (set.union (content!14755 (exprs!8214 ct1!250)) (content!14755 (exprs!8214 ct2!346)))))))

(assert (=> d!2261206 (= lt!2592884 e!4358023)))

(declare-fun c!1352381 () Bool)

(assert (=> d!2261206 (= c!1352381 (is-Nil!70739 (exprs!8214 ct1!250)))))

(assert (=> d!2261206 (= (++!16674 (exprs!8214 ct1!250) (exprs!8214 ct2!346)) lt!2592884)))

(declare-fun b!7267312 () Bool)

(assert (=> b!7267312 (= e!4358023 (exprs!8214 ct2!346))))

(assert (= (and d!2261206 c!1352381) b!7267312))

(assert (= (and d!2261206 (not c!1352381)) b!7267313))

(assert (= (and d!2261206 res!2946259) b!7267314))

(assert (= (and b!7267314 res!2946258) b!7267315))

(declare-fun m!7952126 () Bool)

(assert (=> b!7267313 m!7952126))

(declare-fun m!7952128 () Bool)

(assert (=> b!7267314 m!7952128))

(declare-fun m!7952130 () Bool)

(assert (=> b!7267314 m!7952130))

(assert (=> b!7267314 m!7952066))

(declare-fun m!7952132 () Bool)

(assert (=> d!2261206 m!7952132))

(declare-fun m!7952134 () Bool)

(assert (=> d!2261206 m!7952134))

(assert (=> d!2261206 m!7952072))

(assert (=> b!7267142 d!2261206))

(declare-fun d!2261208 () Bool)

(declare-fun dynLambda!28894 (Int Context!15428) (Set Context!15428))

(assert (=> d!2261208 (= (flatMap!2887 lt!2592808 lambda!447645) (dynLambda!28894 lambda!447645 ct1!250))))

(declare-fun lt!2592890 () Unit!164166)

(declare-fun choose!56331 ((Set Context!15428) Context!15428 Int) Unit!164166)

(assert (=> d!2261208 (= lt!2592890 (choose!56331 lt!2592808 ct1!250 lambda!447645))))

(assert (=> d!2261208 (= lt!2592808 (set.insert ct1!250 (as set.empty (Set Context!15428))))))

(assert (=> d!2261208 (= (lemmaFlatMapOnSingletonSet!2287 lt!2592808 ct1!250 lambda!447645) lt!2592890)))

(declare-fun b_lambda!279905 () Bool)

(assert (=> (not b_lambda!279905) (not d!2261208)))

(declare-fun bs!1910429 () Bool)

(assert (= bs!1910429 d!2261208))

(assert (=> bs!1910429 m!7951888))

(declare-fun m!7952140 () Bool)

(assert (=> bs!1910429 m!7952140))

(declare-fun m!7952142 () Bool)

(assert (=> bs!1910429 m!7952142))

(assert (=> bs!1910429 m!7951890))

(assert (=> b!7267142 d!2261208))

(declare-fun bm!662469 () Bool)

(declare-fun call!662474 () (Set Context!15428))

(assert (=> bm!662469 (= call!662474 (derivationStepZipperDown!2708 (h!77187 (exprs!8214 lt!2592801)) (Context!15429 (t!384933 (exprs!8214 lt!2592801))) (h!77188 s!7854)))))

(declare-fun b!7267316 () Bool)

(declare-fun e!4358024 () (Set Context!15428))

(assert (=> b!7267316 (= e!4358024 call!662474)))

(declare-fun b!7267317 () Bool)

(declare-fun e!4358026 () (Set Context!15428))

(assert (=> b!7267317 (= e!4358026 (set.union call!662474 (derivationStepZipperUp!2544 (Context!15429 (t!384933 (exprs!8214 lt!2592801))) (h!77188 s!7854))))))

(declare-fun b!7267318 () Bool)

(assert (=> b!7267318 (= e!4358026 e!4358024)))

(declare-fun c!1352382 () Bool)

(assert (=> b!7267318 (= c!1352382 (is-Cons!70739 (exprs!8214 lt!2592801)))))

(declare-fun d!2261212 () Bool)

(declare-fun c!1352383 () Bool)

(declare-fun e!4358025 () Bool)

(assert (=> d!2261212 (= c!1352383 e!4358025)))

(declare-fun res!2946260 () Bool)

(assert (=> d!2261212 (=> (not res!2946260) (not e!4358025))))

(assert (=> d!2261212 (= res!2946260 (is-Cons!70739 (exprs!8214 lt!2592801)))))

(assert (=> d!2261212 (= (derivationStepZipperUp!2544 lt!2592801 (h!77188 s!7854)) e!4358026)))

(declare-fun b!7267319 () Bool)

(assert (=> b!7267319 (= e!4358024 (as set.empty (Set Context!15428)))))

(declare-fun b!7267320 () Bool)

(assert (=> b!7267320 (= e!4358025 (nullable!7974 (h!77187 (exprs!8214 lt!2592801))))))

(assert (= (and d!2261212 res!2946260) b!7267320))

(assert (= (and d!2261212 c!1352383) b!7267317))

(assert (= (and d!2261212 (not c!1352383)) b!7267318))

(assert (= (and b!7267318 c!1352382) b!7267316))

(assert (= (and b!7267318 (not c!1352382)) b!7267319))

(assert (= (or b!7267317 b!7267316) bm!662469))

(declare-fun m!7952144 () Bool)

(assert (=> bm!662469 m!7952144))

(declare-fun m!7952146 () Bool)

(assert (=> b!7267317 m!7952146))

(declare-fun m!7952148 () Bool)

(assert (=> b!7267320 m!7952148))

(assert (=> b!7267142 d!2261212))

(declare-fun bs!1910430 () Bool)

(declare-fun d!2261214 () Bool)

(assert (= bs!1910430 (and d!2261214 b!7267142)))

(declare-fun lambda!447680 () Int)

(assert (=> bs!1910430 (= lambda!447680 lambda!447645)))

(assert (=> d!2261214 true))

(assert (=> d!2261214 (= (derivationStepZipper!3514 lt!2592807 (h!77188 s!7854)) (flatMap!2887 lt!2592807 lambda!447680))))

(declare-fun bs!1910431 () Bool)

(assert (= bs!1910431 d!2261214))

(declare-fun m!7952150 () Bool)

(assert (=> bs!1910431 m!7952150))

(assert (=> b!7267142 d!2261214))

(declare-fun d!2261216 () Bool)

(assert (=> d!2261216 (= (flatMap!2887 lt!2592807 lambda!447645) (dynLambda!28894 lambda!447645 lt!2592801))))

(declare-fun lt!2592891 () Unit!164166)

(assert (=> d!2261216 (= lt!2592891 (choose!56331 lt!2592807 lt!2592801 lambda!447645))))

(assert (=> d!2261216 (= lt!2592807 (set.insert lt!2592801 (as set.empty (Set Context!15428))))))

(assert (=> d!2261216 (= (lemmaFlatMapOnSingletonSet!2287 lt!2592807 lt!2592801 lambda!447645) lt!2592891)))

(declare-fun b_lambda!279907 () Bool)

(assert (=> (not b_lambda!279907) (not d!2261216)))

(declare-fun bs!1910432 () Bool)

(assert (= bs!1910432 d!2261216))

(assert (=> bs!1910432 m!7951896))

(declare-fun m!7952152 () Bool)

(assert (=> bs!1910432 m!7952152))

(declare-fun m!7952154 () Bool)

(assert (=> bs!1910432 m!7952154))

(assert (=> bs!1910432 m!7951902))

(assert (=> b!7267142 d!2261216))

(assert (=> b!7267142 d!2261190))

(declare-fun b!7267327 () Bool)

(declare-fun e!4358029 () Bool)

(declare-fun tp!2040641 () Bool)

(declare-fun tp!2040642 () Bool)

(assert (=> b!7267327 (= e!4358029 (and tp!2040641 tp!2040642))))

(assert (=> b!7267135 (= tp!2040625 e!4358029)))

(assert (= (and b!7267135 (is-Cons!70739 (exprs!8214 ct1!250))) b!7267327))

(declare-fun b!7267328 () Bool)

(declare-fun e!4358030 () Bool)

(declare-fun tp!2040643 () Bool)

(declare-fun tp!2040644 () Bool)

(assert (=> b!7267328 (= e!4358030 (and tp!2040643 tp!2040644))))

(assert (=> b!7267136 (= tp!2040627 e!4358030)))

(assert (= (and b!7267136 (is-Cons!70739 (exprs!8214 ct2!346))) b!7267328))

(declare-fun b!7267333 () Bool)

(declare-fun e!4358033 () Bool)

(declare-fun tp!2040647 () Bool)

(assert (=> b!7267333 (= e!4358033 (and tp_is_empty!47013 tp!2040647))))

(assert (=> b!7267132 (= tp!2040626 e!4358033)))

(assert (= (and b!7267132 (is-Cons!70740 (t!384934 s!7854))) b!7267333))

(declare-fun b_lambda!279909 () Bool)

(assert (= b_lambda!279907 (or b!7267142 b_lambda!279909)))

(declare-fun bs!1910433 () Bool)

(declare-fun d!2261218 () Bool)

(assert (= bs!1910433 (and d!2261218 b!7267142)))

(assert (=> bs!1910433 (= (dynLambda!28894 lambda!447645 lt!2592801) (derivationStepZipperUp!2544 lt!2592801 (h!77188 s!7854)))))

(assert (=> bs!1910433 m!7951898))

(assert (=> d!2261216 d!2261218))

(declare-fun b_lambda!279911 () Bool)

(assert (= b_lambda!279905 (or b!7267142 b_lambda!279911)))

(declare-fun bs!1910434 () Bool)

(declare-fun d!2261220 () Bool)

(assert (= bs!1910434 (and d!2261220 b!7267142)))

(assert (=> bs!1910434 (= (dynLambda!28894 lambda!447645 ct1!250) (derivationStepZipperUp!2544 ct1!250 (h!77188 s!7854)))))

(assert (=> bs!1910434 m!7951884))

(assert (=> d!2261208 d!2261220))

(declare-fun b_lambda!279913 () Bool)

(assert (= b_lambda!279901 (or b!7267142 b_lambda!279913)))

(declare-fun bs!1910435 () Bool)

(declare-fun d!2261222 () Bool)

(assert (= bs!1910435 (and d!2261222 b!7267142)))

(declare-fun validRegex!9574 (Regex!18774) Bool)

(assert (=> bs!1910435 (= (dynLambda!28893 lambda!447644 (h!77187 lt!2592803)) (validRegex!9574 (h!77187 lt!2592803)))))

(declare-fun m!7952156 () Bool)

(assert (=> bs!1910435 m!7952156))

(assert (=> b!7267192 d!2261222))

(declare-fun b_lambda!279915 () Bool)

(assert (= b_lambda!279903 (or b!7267142 b_lambda!279915)))

(declare-fun bs!1910436 () Bool)

(declare-fun d!2261224 () Bool)

(assert (= bs!1910436 (and d!2261224 b!7267142)))

(assert (=> bs!1910436 (= (dynLambda!28893 lambda!447644 (h!77187 (exprs!8214 ct2!346))) (validRegex!9574 (h!77187 (exprs!8214 ct2!346))))))

(declare-fun m!7952158 () Bool)

(assert (=> bs!1910436 m!7952158))

(assert (=> b!7267282 d!2261224))

(push 1)

(assert (not d!2261200))

(assert (not b_lambda!279911))

(assert (not b!7267199))

(assert (not bm!662461))

(assert (not b!7267333))

(assert (not d!2261186))

(assert (not d!2261204))

(assert (not bm!662439))

(assert (not d!2261214))

(assert (not b!7267327))

(assert (not d!2261208))

(assert (not d!2261162))

(assert (not b!7267308))

(assert tp_is_empty!47013)

(assert (not d!2261184))

(assert (not b!7267295))

(assert (not d!2261160))

(assert (not bm!662468))

(assert (not b!7267193))

(assert (not bm!662464))

(assert (not bs!1910435))

(assert (not b!7267274))

(assert (not d!2261182))

(assert (not bm!662456))

(assert (not bm!662457))

(assert (not b!7267311))

(assert (not b!7267314))

(assert (not b!7267313))

(assert (not b!7267317))

(assert (not bs!1910433))

(assert (not b_lambda!279909))

(assert (not b!7267283))

(assert (not b!7267253))

(assert (not b!7267320))

(assert (not b!7267273))

(assert (not bm!662467))

(assert (not d!2261180))

(assert (not d!2261216))

(assert (not b!7267211))

(assert (not b!7267198))

(assert (not b_lambda!279913))

(assert (not d!2261188))

(assert (not bs!1910434))

(assert (not bm!662466))

(assert (not bm!662454))

(assert (not b!7267285))

(assert (not d!2261174))

(assert (not b!7267292))

(assert (not bs!1910436))

(assert (not b!7267328))

(assert (not b!7267284))

(assert (not bm!662469))

(assert (not b!7267300))

(assert (not d!2261164))

(assert (not d!2261206))

(assert (not b_lambda!279915))

(assert (not b!7267214))

(assert (not d!2261202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

