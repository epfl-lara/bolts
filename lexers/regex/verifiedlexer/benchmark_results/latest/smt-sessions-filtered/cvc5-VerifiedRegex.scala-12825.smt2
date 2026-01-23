; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708268 () Bool)

(assert start!708268)

(declare-fun b!7264098 () Bool)

(assert (=> b!7264098 true))

(declare-fun b!7264092 () Bool)

(declare-fun e!4356116 () Bool)

(declare-fun tp!2040129 () Bool)

(assert (=> b!7264092 (= e!4356116 tp!2040129)))

(declare-fun b!7264093 () Bool)

(declare-fun res!2945124 () Bool)

(declare-fun e!4356114 () Bool)

(assert (=> b!7264093 (=> res!2945124 e!4356114)))

(declare-datatypes ((C!37790 0))(
  ( (C!37791 (val!28843 Int)) )
))
(declare-datatypes ((Regex!18758 0))(
  ( (ElementMatch!18758 (c!1351450 C!37790)) (Concat!27603 (regOne!38028 Regex!18758) (regTwo!38028 Regex!18758)) (EmptyExpr!18758) (Star!18758 (reg!19087 Regex!18758)) (EmptyLang!18758) (Union!18758 (regOne!38029 Regex!18758) (regTwo!38029 Regex!18758)) )
))
(declare-datatypes ((List!70831 0))(
  ( (Nil!70707) (Cons!70707 (h!77155 Regex!18758) (t!384897 List!70831)) )
))
(declare-datatypes ((Context!15396 0))(
  ( (Context!15397 (exprs!8198 List!70831)) )
))
(declare-fun ct1!250 () Context!15396)

(declare-fun isEmpty!40638 (List!70831) Bool)

(assert (=> b!7264093 (= res!2945124 (isEmpty!40638 (exprs!8198 ct1!250)))))

(declare-fun b!7264094 () Bool)

(declare-fun res!2945118 () Bool)

(declare-fun e!4356112 () Bool)

(assert (=> b!7264094 (=> (not res!2945118) (not e!4356112))))

(declare-datatypes ((List!70832 0))(
  ( (Nil!70708) (Cons!70708 (h!77156 C!37790) (t!384898 List!70832)) )
))
(declare-fun s!7854 () List!70832)

(assert (=> b!7264094 (= res!2945118 (is-Cons!70708 s!7854))))

(declare-fun b!7264095 () Bool)

(declare-fun e!4356115 () Bool)

(declare-fun tp_is_empty!46981 () Bool)

(declare-fun tp!2040131 () Bool)

(assert (=> b!7264095 (= e!4356115 (and tp_is_empty!46981 tp!2040131))))

(declare-fun b!7264096 () Bool)

(declare-fun res!2945123 () Bool)

(assert (=> b!7264096 (=> (not res!2945123) (not e!4356112))))

(declare-fun nullableContext!248 (Context!15396) Bool)

(assert (=> b!7264096 (= res!2945123 (nullableContext!248 ct1!250))))

(declare-fun b!7264097 () Bool)

(declare-fun res!2945122 () Bool)

(assert (=> b!7264097 (=> res!2945122 e!4356114)))

(assert (=> b!7264097 (= res!2945122 (not (is-Cons!70707 (exprs!8198 ct1!250))))))

(assert (=> b!7264098 (= e!4356112 (not e!4356114))))

(declare-fun res!2945119 () Bool)

(assert (=> b!7264098 (=> res!2945119 e!4356114)))

(declare-fun lt!2591890 () (Set Context!15396))

(declare-fun lt!2591884 () (Set Context!15396))

(declare-fun derivationStepZipper!3498 ((Set Context!15396) C!37790) (Set Context!15396))

(assert (=> b!7264098 (= res!2945119 (not (= lt!2591884 (derivationStepZipper!3498 lt!2591890 (h!77156 s!7854)))))))

(declare-fun lambda!447186 () Int)

(declare-fun ct2!346 () Context!15396)

(declare-datatypes ((Unit!164134 0))(
  ( (Unit!164135) )
))
(declare-fun lt!2591882 () Unit!164134)

(declare-fun lemmaConcatPreservesForall!1515 (List!70831 List!70831 Int) Unit!164134)

(assert (=> b!7264098 (= lt!2591882 (lemmaConcatPreservesForall!1515 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186))))

(declare-fun lt!2591885 () Context!15396)

(declare-fun lambda!447187 () Int)

(declare-fun flatMap!2871 ((Set Context!15396) Int) (Set Context!15396))

(declare-fun derivationStepZipperUp!2528 (Context!15396 C!37790) (Set Context!15396))

(assert (=> b!7264098 (= (flatMap!2871 lt!2591890 lambda!447187) (derivationStepZipperUp!2528 lt!2591885 (h!77156 s!7854)))))

(declare-fun lt!2591889 () Unit!164134)

(declare-fun lemmaFlatMapOnSingletonSet!2271 ((Set Context!15396) Context!15396 Int) Unit!164134)

(assert (=> b!7264098 (= lt!2591889 (lemmaFlatMapOnSingletonSet!2271 lt!2591890 lt!2591885 lambda!447187))))

(assert (=> b!7264098 (= lt!2591890 (set.insert lt!2591885 (as set.empty (Set Context!15396))))))

(declare-fun lt!2591883 () Unit!164134)

(assert (=> b!7264098 (= lt!2591883 (lemmaConcatPreservesForall!1515 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186))))

(declare-fun lt!2591880 () Unit!164134)

(assert (=> b!7264098 (= lt!2591880 (lemmaConcatPreservesForall!1515 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186))))

(declare-fun lt!2591886 () (Set Context!15396))

(assert (=> b!7264098 (= (flatMap!2871 lt!2591886 lambda!447187) (derivationStepZipperUp!2528 ct1!250 (h!77156 s!7854)))))

(declare-fun lt!2591888 () Unit!164134)

(assert (=> b!7264098 (= lt!2591888 (lemmaFlatMapOnSingletonSet!2271 lt!2591886 ct1!250 lambda!447187))))

(assert (=> b!7264098 (= lt!2591886 (set.insert ct1!250 (as set.empty (Set Context!15396))))))

(assert (=> b!7264098 (= lt!2591884 (derivationStepZipperUp!2528 lt!2591885 (h!77156 s!7854)))))

(declare-fun ++!16658 (List!70831 List!70831) List!70831)

(assert (=> b!7264098 (= lt!2591885 (Context!15397 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346))))))

(declare-fun lt!2591881 () Unit!164134)

(assert (=> b!7264098 (= lt!2591881 (lemmaConcatPreservesForall!1515 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186))))

(declare-fun res!2945121 () Bool)

(assert (=> start!708268 (=> (not res!2945121) (not e!4356112))))

(declare-fun matchZipper!3662 ((Set Context!15396) List!70832) Bool)

(assert (=> start!708268 (= res!2945121 (matchZipper!3662 (set.insert ct2!346 (as set.empty (Set Context!15396))) s!7854))))

(assert (=> start!708268 e!4356112))

(declare-fun e!4356113 () Bool)

(declare-fun inv!89906 (Context!15396) Bool)

(assert (=> start!708268 (and (inv!89906 ct2!346) e!4356113)))

(assert (=> start!708268 e!4356115))

(assert (=> start!708268 (and (inv!89906 ct1!250) e!4356116)))

(declare-fun b!7264099 () Bool)

(declare-fun tp!2040130 () Bool)

(assert (=> b!7264099 (= e!4356113 tp!2040130)))

(declare-fun b!7264100 () Bool)

(declare-fun e!4356117 () Bool)

(assert (=> b!7264100 (= e!4356114 e!4356117)))

(declare-fun res!2945120 () Bool)

(assert (=> b!7264100 (=> res!2945120 e!4356117)))

(declare-fun nullable!7958 (Regex!18758) Bool)

(assert (=> b!7264100 (= res!2945120 (not (nullable!7958 (h!77155 (exprs!8198 ct1!250)))))))

(declare-fun lt!2591887 () (Set Context!15396))

(assert (=> b!7264100 (= lt!2591887 (derivationStepZipperUp!2528 ct1!250 (h!77156 s!7854)))))

(declare-fun b!7264101 () Bool)

(declare-fun validRegex!9563 (Regex!18758) Bool)

(assert (=> b!7264101 (= e!4356117 (validRegex!9563 (h!77155 (exprs!8198 ct1!250))))))

(assert (= (and start!708268 res!2945121) b!7264096))

(assert (= (and b!7264096 res!2945123) b!7264094))

(assert (= (and b!7264094 res!2945118) b!7264098))

(assert (= (and b!7264098 (not res!2945119)) b!7264097))

(assert (= (and b!7264097 (not res!2945122)) b!7264093))

(assert (= (and b!7264093 (not res!2945124)) b!7264100))

(assert (= (and b!7264100 (not res!2945120)) b!7264101))

(assert (= start!708268 b!7264099))

(assert (= (and start!708268 (is-Cons!70708 s!7854)) b!7264095))

(assert (= start!708268 b!7264092))

(declare-fun m!7948846 () Bool)

(assert (=> b!7264101 m!7948846))

(declare-fun m!7948848 () Bool)

(assert (=> b!7264096 m!7948848))

(declare-fun m!7948850 () Bool)

(assert (=> b!7264100 m!7948850))

(declare-fun m!7948852 () Bool)

(assert (=> b!7264100 m!7948852))

(declare-fun m!7948854 () Bool)

(assert (=> b!7264093 m!7948854))

(declare-fun m!7948856 () Bool)

(assert (=> b!7264098 m!7948856))

(declare-fun m!7948858 () Bool)

(assert (=> b!7264098 m!7948858))

(assert (=> b!7264098 m!7948852))

(assert (=> b!7264098 m!7948858))

(declare-fun m!7948860 () Bool)

(assert (=> b!7264098 m!7948860))

(assert (=> b!7264098 m!7948858))

(assert (=> b!7264098 m!7948858))

(declare-fun m!7948862 () Bool)

(assert (=> b!7264098 m!7948862))

(declare-fun m!7948864 () Bool)

(assert (=> b!7264098 m!7948864))

(declare-fun m!7948866 () Bool)

(assert (=> b!7264098 m!7948866))

(declare-fun m!7948868 () Bool)

(assert (=> b!7264098 m!7948868))

(declare-fun m!7948870 () Bool)

(assert (=> b!7264098 m!7948870))

(declare-fun m!7948872 () Bool)

(assert (=> b!7264098 m!7948872))

(declare-fun m!7948874 () Bool)

(assert (=> b!7264098 m!7948874))

(declare-fun m!7948876 () Bool)

(assert (=> start!708268 m!7948876))

(assert (=> start!708268 m!7948876))

(declare-fun m!7948878 () Bool)

(assert (=> start!708268 m!7948878))

(declare-fun m!7948880 () Bool)

(assert (=> start!708268 m!7948880))

(declare-fun m!7948882 () Bool)

(assert (=> start!708268 m!7948882))

(push 1)

(assert (not b!7264095))

(assert (not b!7264099))

(assert (not b!7264093))

(assert (not b!7264092))

(assert (not b!7264101))

(assert (not start!708268))

(assert tp_is_empty!46981)

(assert (not b!7264098))

(assert (not b!7264100))

(assert (not b!7264096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7264155 () Bool)

(declare-fun e!4356152 () Bool)

(declare-fun e!4356155 () Bool)

(assert (=> b!7264155 (= e!4356152 e!4356155)))

(declare-fun c!1351461 () Bool)

(assert (=> b!7264155 (= c!1351461 (is-Union!18758 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264156 () Bool)

(declare-fun e!4356150 () Bool)

(declare-fun call!661853 () Bool)

(assert (=> b!7264156 (= e!4356150 call!661853)))

(declare-fun bm!661847 () Bool)

(declare-fun call!661852 () Bool)

(assert (=> bm!661847 (= call!661852 (validRegex!9563 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun b!7264157 () Bool)

(declare-fun e!4356154 () Bool)

(assert (=> b!7264157 (= e!4356154 call!661852)))

(declare-fun b!7264158 () Bool)

(declare-fun res!2945159 () Bool)

(declare-fun e!4356156 () Bool)

(assert (=> b!7264158 (=> res!2945159 e!4356156)))

(assert (=> b!7264158 (= res!2945159 (not (is-Concat!27603 (h!77155 (exprs!8198 ct1!250)))))))

(assert (=> b!7264158 (= e!4356155 e!4356156)))

(declare-fun b!7264159 () Bool)

(declare-fun e!4356151 () Bool)

(assert (=> b!7264159 (= e!4356151 call!661852)))

(declare-fun bm!661848 () Bool)

(declare-fun call!661854 () Bool)

(assert (=> bm!661848 (= call!661854 call!661853)))

(declare-fun b!7264154 () Bool)

(declare-fun e!4356153 () Bool)

(assert (=> b!7264154 (= e!4356153 e!4356152)))

(declare-fun c!1351460 () Bool)

(assert (=> b!7264154 (= c!1351460 (is-Star!18758 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun d!2259954 () Bool)

(declare-fun res!2945160 () Bool)

(assert (=> d!2259954 (=> res!2945160 e!4356153)))

(assert (=> d!2259954 (= res!2945160 (is-ElementMatch!18758 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> d!2259954 (= (validRegex!9563 (h!77155 (exprs!8198 ct1!250))) e!4356153)))

(declare-fun bm!661849 () Bool)

(assert (=> bm!661849 (= call!661853 (validRegex!9563 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))

(declare-fun b!7264160 () Bool)

(assert (=> b!7264160 (= e!4356156 e!4356151)))

(declare-fun res!2945156 () Bool)

(assert (=> b!7264160 (=> (not res!2945156) (not e!4356151))))

(assert (=> b!7264160 (= res!2945156 call!661854)))

(declare-fun b!7264161 () Bool)

(declare-fun res!2945157 () Bool)

(assert (=> b!7264161 (=> (not res!2945157) (not e!4356154))))

(assert (=> b!7264161 (= res!2945157 call!661854)))

(assert (=> b!7264161 (= e!4356155 e!4356154)))

(declare-fun b!7264162 () Bool)

(assert (=> b!7264162 (= e!4356152 e!4356150)))

(declare-fun res!2945158 () Bool)

(assert (=> b!7264162 (= res!2945158 (not (nullable!7958 (reg!19087 (h!77155 (exprs!8198 ct1!250))))))))

(assert (=> b!7264162 (=> (not res!2945158) (not e!4356150))))

(assert (= (and d!2259954 (not res!2945160)) b!7264154))

(assert (= (and b!7264154 c!1351460) b!7264162))

(assert (= (and b!7264154 (not c!1351460)) b!7264155))

(assert (= (and b!7264162 res!2945158) b!7264156))

(assert (= (and b!7264155 c!1351461) b!7264161))

(assert (= (and b!7264155 (not c!1351461)) b!7264158))

(assert (= (and b!7264161 res!2945157) b!7264157))

(assert (= (and b!7264158 (not res!2945159)) b!7264160))

(assert (= (and b!7264160 res!2945156) b!7264159))

(assert (= (or b!7264161 b!7264160) bm!661848))

(assert (= (or b!7264157 b!7264159) bm!661847))

(assert (= (or b!7264156 bm!661848) bm!661849))

(declare-fun m!7948922 () Bool)

(assert (=> bm!661847 m!7948922))

(declare-fun m!7948924 () Bool)

(assert (=> bm!661849 m!7948924))

(declare-fun m!7948926 () Bool)

(assert (=> b!7264162 m!7948926))

(assert (=> b!7264101 d!2259954))

(declare-fun bs!1909995 () Bool)

(declare-fun d!2259956 () Bool)

(assert (= bs!1909995 (and d!2259956 b!7264098)))

(declare-fun lambda!447204 () Int)

(assert (=> bs!1909995 (not (= lambda!447204 lambda!447186))))

(declare-fun forall!17591 (List!70831 Int) Bool)

(assert (=> d!2259956 (= (nullableContext!248 ct1!250) (forall!17591 (exprs!8198 ct1!250) lambda!447204))))

(declare-fun bs!1909996 () Bool)

(assert (= bs!1909996 d!2259956))

(declare-fun m!7948928 () Bool)

(assert (=> bs!1909996 m!7948928))

(assert (=> b!7264096 d!2259956))

(declare-fun d!2259960 () Bool)

(declare-fun nullableFct!3125 (Regex!18758) Bool)

(assert (=> d!2259960 (= (nullable!7958 (h!77155 (exprs!8198 ct1!250))) (nullableFct!3125 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun bs!1909997 () Bool)

(assert (= bs!1909997 d!2259960))

(declare-fun m!7948930 () Bool)

(assert (=> bs!1909997 m!7948930))

(assert (=> b!7264100 d!2259960))

(declare-fun b!7264173 () Bool)

(declare-fun e!4356165 () (Set Context!15396))

(declare-fun e!4356164 () (Set Context!15396))

(assert (=> b!7264173 (= e!4356165 e!4356164)))

(declare-fun c!1351467 () Bool)

(assert (=> b!7264173 (= c!1351467 (is-Cons!70707 (exprs!8198 ct1!250)))))

(declare-fun bm!661852 () Bool)

(declare-fun call!661857 () (Set Context!15396))

(declare-fun derivationStepZipperDown!2692 (Regex!18758 Context!15396 C!37790) (Set Context!15396))

(assert (=> bm!661852 (= call!661857 (derivationStepZipperDown!2692 (h!77155 (exprs!8198 ct1!250)) (Context!15397 (t!384897 (exprs!8198 ct1!250))) (h!77156 s!7854)))))

(declare-fun d!2259962 () Bool)

(declare-fun c!1351468 () Bool)

(declare-fun e!4356163 () Bool)

(assert (=> d!2259962 (= c!1351468 e!4356163)))

(declare-fun res!2945163 () Bool)

(assert (=> d!2259962 (=> (not res!2945163) (not e!4356163))))

(assert (=> d!2259962 (= res!2945163 (is-Cons!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2259962 (= (derivationStepZipperUp!2528 ct1!250 (h!77156 s!7854)) e!4356165)))

(declare-fun b!7264174 () Bool)

(assert (=> b!7264174 (= e!4356163 (nullable!7958 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264175 () Bool)

(assert (=> b!7264175 (= e!4356164 call!661857)))

(declare-fun b!7264176 () Bool)

(assert (=> b!7264176 (= e!4356164 (as set.empty (Set Context!15396)))))

(declare-fun b!7264177 () Bool)

(assert (=> b!7264177 (= e!4356165 (set.union call!661857 (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 ct1!250))) (h!77156 s!7854))))))

(assert (= (and d!2259962 res!2945163) b!7264174))

(assert (= (and d!2259962 c!1351468) b!7264177))

(assert (= (and d!2259962 (not c!1351468)) b!7264173))

(assert (= (and b!7264173 c!1351467) b!7264175))

(assert (= (and b!7264173 (not c!1351467)) b!7264176))

(assert (= (or b!7264177 b!7264175) bm!661852))

(declare-fun m!7948934 () Bool)

(assert (=> bm!661852 m!7948934))

(assert (=> b!7264174 m!7948850))

(declare-fun m!7948936 () Bool)

(assert (=> b!7264177 m!7948936))

(assert (=> b!7264100 d!2259962))

(declare-fun d!2259966 () Bool)

(assert (=> d!2259966 (= (isEmpty!40638 (exprs!8198 ct1!250)) (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> b!7264093 d!2259966))

(declare-fun d!2259968 () Bool)

(declare-fun c!1351471 () Bool)

(declare-fun isEmpty!40640 (List!70832) Bool)

(assert (=> d!2259968 (= c!1351471 (isEmpty!40640 s!7854))))

(declare-fun e!4356168 () Bool)

(assert (=> d!2259968 (= (matchZipper!3662 (set.insert ct2!346 (as set.empty (Set Context!15396))) s!7854) e!4356168)))

(declare-fun b!7264182 () Bool)

(declare-fun nullableZipper!2970 ((Set Context!15396)) Bool)

(assert (=> b!7264182 (= e!4356168 (nullableZipper!2970 (set.insert ct2!346 (as set.empty (Set Context!15396)))))))

(declare-fun b!7264183 () Bool)

(declare-fun head!14969 (List!70832) C!37790)

(declare-fun tail!14428 (List!70832) List!70832)

(assert (=> b!7264183 (= e!4356168 (matchZipper!3662 (derivationStepZipper!3498 (set.insert ct2!346 (as set.empty (Set Context!15396))) (head!14969 s!7854)) (tail!14428 s!7854)))))

(assert (= (and d!2259968 c!1351471) b!7264182))

(assert (= (and d!2259968 (not c!1351471)) b!7264183))

(declare-fun m!7948944 () Bool)

(assert (=> d!2259968 m!7948944))

(assert (=> b!7264182 m!7948876))

(declare-fun m!7948946 () Bool)

(assert (=> b!7264182 m!7948946))

(declare-fun m!7948948 () Bool)

(assert (=> b!7264183 m!7948948))

(assert (=> b!7264183 m!7948876))

(assert (=> b!7264183 m!7948948))

(declare-fun m!7948950 () Bool)

(assert (=> b!7264183 m!7948950))

(declare-fun m!7948952 () Bool)

(assert (=> b!7264183 m!7948952))

(assert (=> b!7264183 m!7948950))

(assert (=> b!7264183 m!7948952))

(declare-fun m!7948954 () Bool)

(assert (=> b!7264183 m!7948954))

(assert (=> start!708268 d!2259968))

(declare-fun bs!1910000 () Bool)

(declare-fun d!2259972 () Bool)

(assert (= bs!1910000 (and d!2259972 b!7264098)))

(declare-fun lambda!447207 () Int)

(assert (=> bs!1910000 (= lambda!447207 lambda!447186)))

(declare-fun bs!1910001 () Bool)

(assert (= bs!1910001 (and d!2259972 d!2259956)))

(assert (=> bs!1910001 (not (= lambda!447207 lambda!447204))))

(assert (=> d!2259972 (= (inv!89906 ct2!346) (forall!17591 (exprs!8198 ct2!346) lambda!447207))))

(declare-fun bs!1910002 () Bool)

(assert (= bs!1910002 d!2259972))

(declare-fun m!7948956 () Bool)

(assert (=> bs!1910002 m!7948956))

(assert (=> start!708268 d!2259972))

(declare-fun bs!1910003 () Bool)

(declare-fun d!2259974 () Bool)

(assert (= bs!1910003 (and d!2259974 b!7264098)))

(declare-fun lambda!447208 () Int)

(assert (=> bs!1910003 (= lambda!447208 lambda!447186)))

(declare-fun bs!1910004 () Bool)

(assert (= bs!1910004 (and d!2259974 d!2259956)))

(assert (=> bs!1910004 (not (= lambda!447208 lambda!447204))))

(declare-fun bs!1910005 () Bool)

(assert (= bs!1910005 (and d!2259974 d!2259972)))

(assert (=> bs!1910005 (= lambda!447208 lambda!447207)))

(assert (=> d!2259974 (= (inv!89906 ct1!250) (forall!17591 (exprs!8198 ct1!250) lambda!447208))))

(declare-fun bs!1910006 () Bool)

(assert (= bs!1910006 d!2259974))

(declare-fun m!7948958 () Bool)

(assert (=> bs!1910006 m!7948958))

(assert (=> start!708268 d!2259974))

(declare-fun d!2259976 () Bool)

(declare-fun dynLambda!28868 (Int Context!15396) (Set Context!15396))

(assert (=> d!2259976 (= (flatMap!2871 lt!2591890 lambda!447187) (dynLambda!28868 lambda!447187 lt!2591885))))

(declare-fun lt!2591932 () Unit!164134)

(declare-fun choose!56287 ((Set Context!15396) Context!15396 Int) Unit!164134)

(assert (=> d!2259976 (= lt!2591932 (choose!56287 lt!2591890 lt!2591885 lambda!447187))))

(assert (=> d!2259976 (= lt!2591890 (set.insert lt!2591885 (as set.empty (Set Context!15396))))))

(assert (=> d!2259976 (= (lemmaFlatMapOnSingletonSet!2271 lt!2591890 lt!2591885 lambda!447187) lt!2591932)))

(declare-fun b_lambda!279543 () Bool)

(assert (=> (not b_lambda!279543) (not d!2259976)))

(declare-fun bs!1910008 () Bool)

(assert (= bs!1910008 d!2259976))

(assert (=> bs!1910008 m!7948874))

(declare-fun m!7948964 () Bool)

(assert (=> bs!1910008 m!7948964))

(declare-fun m!7948966 () Bool)

(assert (=> bs!1910008 m!7948966))

(assert (=> bs!1910008 m!7948866))

(assert (=> b!7264098 d!2259976))

(declare-fun d!2259980 () Bool)

(assert (=> d!2259980 (= (flatMap!2871 lt!2591886 lambda!447187) (dynLambda!28868 lambda!447187 ct1!250))))

(declare-fun lt!2591933 () Unit!164134)

(assert (=> d!2259980 (= lt!2591933 (choose!56287 lt!2591886 ct1!250 lambda!447187))))

(assert (=> d!2259980 (= lt!2591886 (set.insert ct1!250 (as set.empty (Set Context!15396))))))

(assert (=> d!2259980 (= (lemmaFlatMapOnSingletonSet!2271 lt!2591886 ct1!250 lambda!447187) lt!2591933)))

(declare-fun b_lambda!279545 () Bool)

(assert (=> (not b_lambda!279545) (not d!2259980)))

(declare-fun bs!1910009 () Bool)

(assert (= bs!1910009 d!2259980))

(assert (=> bs!1910009 m!7948872))

(declare-fun m!7948968 () Bool)

(assert (=> bs!1910009 m!7948968))

(declare-fun m!7948970 () Bool)

(assert (=> bs!1910009 m!7948970))

(assert (=> bs!1910009 m!7948862))

(assert (=> b!7264098 d!2259980))

(assert (=> b!7264098 d!2259962))

(declare-fun b!7264184 () Bool)

(declare-fun e!4356171 () (Set Context!15396))

(declare-fun e!4356170 () (Set Context!15396))

(assert (=> b!7264184 (= e!4356171 e!4356170)))

(declare-fun c!1351472 () Bool)

(assert (=> b!7264184 (= c!1351472 (is-Cons!70707 (exprs!8198 lt!2591885)))))

(declare-fun bm!661853 () Bool)

(declare-fun call!661858 () (Set Context!15396))

(assert (=> bm!661853 (= call!661858 (derivationStepZipperDown!2692 (h!77155 (exprs!8198 lt!2591885)) (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (h!77156 s!7854)))))

(declare-fun d!2259982 () Bool)

(declare-fun c!1351473 () Bool)

(declare-fun e!4356169 () Bool)

(assert (=> d!2259982 (= c!1351473 e!4356169)))

(declare-fun res!2945164 () Bool)

(assert (=> d!2259982 (=> (not res!2945164) (not e!4356169))))

(assert (=> d!2259982 (= res!2945164 (is-Cons!70707 (exprs!8198 lt!2591885)))))

(assert (=> d!2259982 (= (derivationStepZipperUp!2528 lt!2591885 (h!77156 s!7854)) e!4356171)))

(declare-fun b!7264185 () Bool)

(assert (=> b!7264185 (= e!4356169 (nullable!7958 (h!77155 (exprs!8198 lt!2591885))))))

(declare-fun b!7264186 () Bool)

(assert (=> b!7264186 (= e!4356170 call!661858)))

(declare-fun b!7264187 () Bool)

(assert (=> b!7264187 (= e!4356170 (as set.empty (Set Context!15396)))))

(declare-fun b!7264188 () Bool)

(assert (=> b!7264188 (= e!4356171 (set.union call!661858 (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (h!77156 s!7854))))))

(assert (= (and d!2259982 res!2945164) b!7264185))

(assert (= (and d!2259982 c!1351473) b!7264188))

(assert (= (and d!2259982 (not c!1351473)) b!7264184))

(assert (= (and b!7264184 c!1351472) b!7264186))

(assert (= (and b!7264184 (not c!1351472)) b!7264187))

(assert (= (or b!7264188 b!7264186) bm!661853))

(declare-fun m!7948972 () Bool)

(assert (=> bm!661853 m!7948972))

(declare-fun m!7948974 () Bool)

(assert (=> b!7264185 m!7948974))

(declare-fun m!7948976 () Bool)

(assert (=> b!7264188 m!7948976))

(assert (=> b!7264098 d!2259982))

(declare-fun d!2259984 () Bool)

(assert (=> d!2259984 (forall!17591 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)) lambda!447186)))

(declare-fun lt!2591936 () Unit!164134)

(declare-fun choose!56288 (List!70831 List!70831 Int) Unit!164134)

(assert (=> d!2259984 (= lt!2591936 (choose!56288 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186))))

(assert (=> d!2259984 (forall!17591 (exprs!8198 ct1!250) lambda!447186)))

(assert (=> d!2259984 (= (lemmaConcatPreservesForall!1515 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186) lt!2591936)))

(declare-fun bs!1910010 () Bool)

(assert (= bs!1910010 d!2259984))

(assert (=> bs!1910010 m!7948864))

(assert (=> bs!1910010 m!7948864))

(declare-fun m!7948978 () Bool)

(assert (=> bs!1910010 m!7948978))

(declare-fun m!7948980 () Bool)

(assert (=> bs!1910010 m!7948980))

(declare-fun m!7948982 () Bool)

(assert (=> bs!1910010 m!7948982))

(assert (=> b!7264098 d!2259984))

(declare-fun b!7264207 () Bool)

(declare-fun e!4356182 () List!70831)

(assert (=> b!7264207 (= e!4356182 (exprs!8198 ct2!346))))

(declare-fun b!7264209 () Bool)

(declare-fun res!2945171 () Bool)

(declare-fun e!4356183 () Bool)

(assert (=> b!7264209 (=> (not res!2945171) (not e!4356183))))

(declare-fun lt!2591939 () List!70831)

(declare-fun size!41790 (List!70831) Int)

(assert (=> b!7264209 (= res!2945171 (= (size!41790 lt!2591939) (+ (size!41790 (exprs!8198 ct1!250)) (size!41790 (exprs!8198 ct2!346)))))))

(declare-fun b!7264210 () Bool)

(assert (=> b!7264210 (= e!4356183 (or (not (= (exprs!8198 ct2!346) Nil!70707)) (= lt!2591939 (exprs!8198 ct1!250))))))

(declare-fun d!2259986 () Bool)

(assert (=> d!2259986 e!4356183))

(declare-fun res!2945172 () Bool)

(assert (=> d!2259986 (=> (not res!2945172) (not e!4356183))))

(declare-fun content!14742 (List!70831) (Set Regex!18758))

(assert (=> d!2259986 (= res!2945172 (= (content!14742 lt!2591939) (set.union (content!14742 (exprs!8198 ct1!250)) (content!14742 (exprs!8198 ct2!346)))))))

(assert (=> d!2259986 (= lt!2591939 e!4356182)))

(declare-fun c!1351480 () Bool)

(assert (=> d!2259986 (= c!1351480 (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2259986 (= (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)) lt!2591939)))

(declare-fun b!7264208 () Bool)

(assert (=> b!7264208 (= e!4356182 (Cons!70707 (h!77155 (exprs!8198 ct1!250)) (++!16658 (t!384897 (exprs!8198 ct1!250)) (exprs!8198 ct2!346))))))

(assert (= (and d!2259986 c!1351480) b!7264207))

(assert (= (and d!2259986 (not c!1351480)) b!7264208))

(assert (= (and d!2259986 res!2945172) b!7264209))

(assert (= (and b!7264209 res!2945171) b!7264210))

(declare-fun m!7948984 () Bool)

(assert (=> b!7264209 m!7948984))

(declare-fun m!7948986 () Bool)

(assert (=> b!7264209 m!7948986))

(declare-fun m!7948988 () Bool)

(assert (=> b!7264209 m!7948988))

(declare-fun m!7948990 () Bool)

(assert (=> d!2259986 m!7948990))

(declare-fun m!7948992 () Bool)

(assert (=> d!2259986 m!7948992))

(declare-fun m!7948994 () Bool)

(assert (=> d!2259986 m!7948994))

(declare-fun m!7948996 () Bool)

(assert (=> b!7264208 m!7948996))

(assert (=> b!7264098 d!2259986))

(declare-fun d!2259988 () Bool)

(declare-fun choose!56289 ((Set Context!15396) Int) (Set Context!15396))

(assert (=> d!2259988 (= (flatMap!2871 lt!2591886 lambda!447187) (choose!56289 lt!2591886 lambda!447187))))

(declare-fun bs!1910011 () Bool)

(assert (= bs!1910011 d!2259988))

(declare-fun m!7948998 () Bool)

(assert (=> bs!1910011 m!7948998))

(assert (=> b!7264098 d!2259988))

(declare-fun d!2259990 () Bool)

(assert (=> d!2259990 (= (flatMap!2871 lt!2591890 lambda!447187) (choose!56289 lt!2591890 lambda!447187))))

(declare-fun bs!1910012 () Bool)

(assert (= bs!1910012 d!2259990))

(declare-fun m!7949000 () Bool)

(assert (=> bs!1910012 m!7949000))

(assert (=> b!7264098 d!2259990))

(declare-fun bs!1910014 () Bool)

(declare-fun d!2259992 () Bool)

(assert (= bs!1910014 (and d!2259992 b!7264098)))

(declare-fun lambda!447211 () Int)

(assert (=> bs!1910014 (= lambda!447211 lambda!447187)))

(assert (=> d!2259992 true))

(assert (=> d!2259992 (= (derivationStepZipper!3498 lt!2591890 (h!77156 s!7854)) (flatMap!2871 lt!2591890 lambda!447211))))

(declare-fun bs!1910015 () Bool)

(assert (= bs!1910015 d!2259992))

(declare-fun m!7949008 () Bool)

(assert (=> bs!1910015 m!7949008))

(assert (=> b!7264098 d!2259992))

(declare-fun b!7264222 () Bool)

(declare-fun e!4356189 () Bool)

(declare-fun tp!2040145 () Bool)

(declare-fun tp!2040146 () Bool)

(assert (=> b!7264222 (= e!4356189 (and tp!2040145 tp!2040146))))

(assert (=> b!7264092 (= tp!2040129 e!4356189)))

(assert (= (and b!7264092 (is-Cons!70707 (exprs!8198 ct1!250))) b!7264222))

(declare-fun b!7264227 () Bool)

(declare-fun e!4356192 () Bool)

(declare-fun tp!2040149 () Bool)

(assert (=> b!7264227 (= e!4356192 (and tp_is_empty!46981 tp!2040149))))

(assert (=> b!7264095 (= tp!2040131 e!4356192)))

(assert (= (and b!7264095 (is-Cons!70708 (t!384898 s!7854))) b!7264227))

(declare-fun b!7264228 () Bool)

(declare-fun e!4356193 () Bool)

(declare-fun tp!2040150 () Bool)

(declare-fun tp!2040151 () Bool)

(assert (=> b!7264228 (= e!4356193 (and tp!2040150 tp!2040151))))

(assert (=> b!7264099 (= tp!2040130 e!4356193)))

(assert (= (and b!7264099 (is-Cons!70707 (exprs!8198 ct2!346))) b!7264228))

(declare-fun b_lambda!279547 () Bool)

(assert (= b_lambda!279545 (or b!7264098 b_lambda!279547)))

(declare-fun bs!1910016 () Bool)

(declare-fun d!2259998 () Bool)

(assert (= bs!1910016 (and d!2259998 b!7264098)))

(assert (=> bs!1910016 (= (dynLambda!28868 lambda!447187 ct1!250) (derivationStepZipperUp!2528 ct1!250 (h!77156 s!7854)))))

(assert (=> bs!1910016 m!7948852))

(assert (=> d!2259980 d!2259998))

(declare-fun b_lambda!279549 () Bool)

(assert (= b_lambda!279543 (or b!7264098 b_lambda!279549)))

(declare-fun bs!1910017 () Bool)

(declare-fun d!2260000 () Bool)

(assert (= bs!1910017 (and d!2260000 b!7264098)))

(assert (=> bs!1910017 (= (dynLambda!28868 lambda!447187 lt!2591885) (derivationStepZipperUp!2528 lt!2591885 (h!77156 s!7854)))))

(assert (=> bs!1910017 m!7948870))

(assert (=> d!2259976 d!2260000))

(push 1)

(assert (not d!2259980))

(assert (not d!2259956))

(assert (not b!7264177))

(assert (not b!7264227))

(assert (not b!7264222))

(assert (not b!7264185))

(assert (not d!2259986))

(assert (not b!7264209))

(assert (not bm!661847))

(assert (not d!2259968))

(assert (not b!7264183))

(assert (not b!7264174))

(assert (not b_lambda!279547))

(assert (not bs!1910017))

(assert (not d!2259992))

(assert (not d!2259984))

(assert (not b!7264228))

(assert (not bm!661853))

(assert (not d!2259976))

(assert (not bm!661852))

(assert (not b!7264188))

(assert (not b!7264208))

(assert tp_is_empty!46981)

(assert (not d!2259990))

(assert (not b!7264162))

(assert (not b_lambda!279549))

(assert (not b!7264182))

(assert (not d!2259974))

(assert (not d!2259960))

(assert (not d!2259972))

(assert (not bm!661849))

(assert (not d!2259988))

(assert (not bs!1910016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!1910016 d!2259962))

(declare-fun bm!661871 () Bool)

(declare-fun call!661877 () Bool)

(declare-fun c!1351504 () Bool)

(assert (=> bm!661871 (= call!661877 (nullable!7958 (ite c!1351504 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun b!7264306 () Bool)

(declare-fun e!4356248 () Bool)

(declare-fun e!4356247 () Bool)

(assert (=> b!7264306 (= e!4356248 e!4356247)))

(declare-fun res!2945209 () Bool)

(assert (=> b!7264306 (= res!2945209 call!661877)))

(assert (=> b!7264306 (=> res!2945209 e!4356247)))

(declare-fun b!7264307 () Bool)

(declare-fun call!661876 () Bool)

(assert (=> b!7264307 (= e!4356247 call!661876)))

(declare-fun bm!661872 () Bool)

(assert (=> bm!661872 (= call!661876 (nullable!7958 (ite c!1351504 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun b!7264308 () Bool)

(declare-fun e!4356251 () Bool)

(assert (=> b!7264308 (= e!4356251 e!4356248)))

(assert (=> b!7264308 (= c!1351504 (is-Union!18758 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264309 () Bool)

(declare-fun e!4356250 () Bool)

(assert (=> b!7264309 (= e!4356248 e!4356250)))

(declare-fun res!2945207 () Bool)

(assert (=> b!7264309 (= res!2945207 call!661876)))

(assert (=> b!7264309 (=> (not res!2945207) (not e!4356250))))

(declare-fun d!2260026 () Bool)

(declare-fun res!2945206 () Bool)

(declare-fun e!4356249 () Bool)

(assert (=> d!2260026 (=> res!2945206 e!4356249)))

(assert (=> d!2260026 (= res!2945206 (is-EmptyExpr!18758 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> d!2260026 (= (nullableFct!3125 (h!77155 (exprs!8198 ct1!250))) e!4356249)))

(declare-fun b!7264310 () Bool)

(declare-fun e!4356246 () Bool)

(assert (=> b!7264310 (= e!4356249 e!4356246)))

(declare-fun res!2945208 () Bool)

(assert (=> b!7264310 (=> (not res!2945208) (not e!4356246))))

(assert (=> b!7264310 (= res!2945208 (and (not (is-EmptyLang!18758 (h!77155 (exprs!8198 ct1!250)))) (not (is-ElementMatch!18758 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun b!7264311 () Bool)

(assert (=> b!7264311 (= e!4356250 call!661877)))

(declare-fun b!7264312 () Bool)

(assert (=> b!7264312 (= e!4356246 e!4356251)))

(declare-fun res!2945210 () Bool)

(assert (=> b!7264312 (=> res!2945210 e!4356251)))

(assert (=> b!7264312 (= res!2945210 (is-Star!18758 (h!77155 (exprs!8198 ct1!250))))))

(assert (= (and d!2260026 (not res!2945206)) b!7264310))

(assert (= (and b!7264310 res!2945208) b!7264312))

(assert (= (and b!7264312 (not res!2945210)) b!7264308))

(assert (= (and b!7264308 c!1351504) b!7264306))

(assert (= (and b!7264308 (not c!1351504)) b!7264309))

(assert (= (and b!7264306 (not res!2945209)) b!7264307))

(assert (= (and b!7264309 res!2945207) b!7264311))

(assert (= (or b!7264306 b!7264311) bm!661871))

(assert (= (or b!7264307 b!7264309) bm!661872))

(declare-fun m!7949062 () Bool)

(assert (=> bm!661871 m!7949062))

(declare-fun m!7949064 () Bool)

(assert (=> bm!661872 m!7949064))

(assert (=> d!2259960 d!2260026))

(assert (=> d!2259976 d!2259990))

(declare-fun d!2260028 () Bool)

(assert (=> d!2260028 (= (flatMap!2871 lt!2591890 lambda!447187) (dynLambda!28868 lambda!447187 lt!2591885))))

(assert (=> d!2260028 true))

(declare-fun _$13!4612 () Unit!164134)

(assert (=> d!2260028 (= (choose!56287 lt!2591890 lt!2591885 lambda!447187) _$13!4612)))

(declare-fun b_lambda!279557 () Bool)

(assert (=> (not b_lambda!279557) (not d!2260028)))

(declare-fun bs!1910033 () Bool)

(assert (= bs!1910033 d!2260028))

(assert (=> bs!1910033 m!7948874))

(assert (=> bs!1910033 m!7948964))

(assert (=> d!2259976 d!2260028))

(declare-fun bm!661885 () Bool)

(declare-fun call!661895 () (Set Context!15396))

(declare-fun call!661890 () (Set Context!15396))

(assert (=> bm!661885 (= call!661895 call!661890)))

(declare-fun b!7264335 () Bool)

(declare-fun c!1351517 () Bool)

(declare-fun e!4356267 () Bool)

(assert (=> b!7264335 (= c!1351517 e!4356267)))

(declare-fun res!2945213 () Bool)

(assert (=> b!7264335 (=> (not res!2945213) (not e!4356267))))

(assert (=> b!7264335 (= res!2945213 (is-Concat!27603 (h!77155 (exprs!8198 lt!2591885))))))

(declare-fun e!4356265 () (Set Context!15396))

(declare-fun e!4356264 () (Set Context!15396))

(assert (=> b!7264335 (= e!4356265 e!4356264)))

(declare-fun b!7264336 () Bool)

(assert (=> b!7264336 (= e!4356267 (nullable!7958 (regOne!38028 (h!77155 (exprs!8198 lt!2591885)))))))

(declare-fun b!7264337 () Bool)

(declare-fun e!4356266 () (Set Context!15396))

(assert (=> b!7264337 (= e!4356266 call!661895)))

(declare-fun c!1351519 () Bool)

(declare-fun bm!661886 () Bool)

(declare-fun call!661892 () List!70831)

(declare-fun $colon$colon!2940 (List!70831 Regex!18758) List!70831)

(assert (=> bm!661886 (= call!661892 ($colon$colon!2940 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885)))) (ite (or c!1351517 c!1351519) (regTwo!38028 (h!77155 (exprs!8198 lt!2591885))) (h!77155 (exprs!8198 lt!2591885)))))))

(declare-fun d!2260030 () Bool)

(declare-fun c!1351515 () Bool)

(assert (=> d!2260030 (= c!1351515 (and (is-ElementMatch!18758 (h!77155 (exprs!8198 lt!2591885))) (= (c!1351450 (h!77155 (exprs!8198 lt!2591885))) (h!77156 s!7854))))))

(declare-fun e!4356268 () (Set Context!15396))

(assert (=> d!2260030 (= (derivationStepZipperDown!2692 (h!77155 (exprs!8198 lt!2591885)) (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (h!77156 s!7854)) e!4356268)))

(declare-fun b!7264338 () Bool)

(declare-fun e!4356269 () (Set Context!15396))

(assert (=> b!7264338 (= e!4356269 (as set.empty (Set Context!15396)))))

(declare-fun bm!661887 () Bool)

(declare-fun call!661894 () (Set Context!15396))

(assert (=> bm!661887 (= call!661890 call!661894)))

(declare-fun b!7264339 () Bool)

(declare-fun c!1351516 () Bool)

(assert (=> b!7264339 (= c!1351516 (is-Star!18758 (h!77155 (exprs!8198 lt!2591885))))))

(assert (=> b!7264339 (= e!4356266 e!4356269)))

(declare-fun b!7264340 () Bool)

(declare-fun call!661893 () (Set Context!15396))

(assert (=> b!7264340 (= e!4356265 (set.union call!661893 call!661894))))

(declare-fun b!7264341 () Bool)

(assert (=> b!7264341 (= e!4356268 (set.insert (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (as set.empty (Set Context!15396))))))

(declare-fun bm!661888 () Bool)

(declare-fun c!1351518 () Bool)

(assert (=> bm!661888 (= call!661893 (derivationStepZipperDown!2692 (ite c!1351518 (regOne!38029 (h!77155 (exprs!8198 lt!2591885))) (regOne!38028 (h!77155 (exprs!8198 lt!2591885)))) (ite c!1351518 (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (Context!15397 call!661892)) (h!77156 s!7854)))))

(declare-fun b!7264342 () Bool)

(assert (=> b!7264342 (= e!4356268 e!4356265)))

(assert (=> b!7264342 (= c!1351518 (is-Union!18758 (h!77155 (exprs!8198 lt!2591885))))))

(declare-fun b!7264343 () Bool)

(assert (=> b!7264343 (= e!4356264 e!4356266)))

(assert (=> b!7264343 (= c!1351519 (is-Concat!27603 (h!77155 (exprs!8198 lt!2591885))))))

(declare-fun bm!661889 () Bool)

(declare-fun call!661891 () List!70831)

(assert (=> bm!661889 (= call!661894 (derivationStepZipperDown!2692 (ite c!1351518 (regTwo!38029 (h!77155 (exprs!8198 lt!2591885))) (ite c!1351517 (regTwo!38028 (h!77155 (exprs!8198 lt!2591885))) (ite c!1351519 (regOne!38028 (h!77155 (exprs!8198 lt!2591885))) (reg!19087 (h!77155 (exprs!8198 lt!2591885)))))) (ite (or c!1351518 c!1351517) (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (Context!15397 call!661891)) (h!77156 s!7854)))))

(declare-fun b!7264344 () Bool)

(assert (=> b!7264344 (= e!4356269 call!661895)))

(declare-fun bm!661890 () Bool)

(assert (=> bm!661890 (= call!661891 call!661892)))

(declare-fun b!7264345 () Bool)

(assert (=> b!7264345 (= e!4356264 (set.union call!661893 call!661890))))

(assert (= (and d!2260030 c!1351515) b!7264341))

(assert (= (and d!2260030 (not c!1351515)) b!7264342))

(assert (= (and b!7264342 c!1351518) b!7264340))

(assert (= (and b!7264342 (not c!1351518)) b!7264335))

(assert (= (and b!7264335 res!2945213) b!7264336))

(assert (= (and b!7264335 c!1351517) b!7264345))

(assert (= (and b!7264335 (not c!1351517)) b!7264343))

(assert (= (and b!7264343 c!1351519) b!7264337))

(assert (= (and b!7264343 (not c!1351519)) b!7264339))

(assert (= (and b!7264339 c!1351516) b!7264344))

(assert (= (and b!7264339 (not c!1351516)) b!7264338))

(assert (= (or b!7264337 b!7264344) bm!661890))

(assert (= (or b!7264337 b!7264344) bm!661885))

(assert (= (or b!7264345 bm!661890) bm!661886))

(assert (= (or b!7264345 bm!661885) bm!661887))

(assert (= (or b!7264340 b!7264345) bm!661888))

(assert (= (or b!7264340 bm!661887) bm!661889))

(declare-fun m!7949066 () Bool)

(assert (=> b!7264336 m!7949066))

(declare-fun m!7949068 () Bool)

(assert (=> bm!661889 m!7949068))

(declare-fun m!7949070 () Bool)

(assert (=> bm!661886 m!7949070))

(declare-fun m!7949072 () Bool)

(assert (=> bm!661888 m!7949072))

(declare-fun m!7949074 () Bool)

(assert (=> b!7264341 m!7949074))

(assert (=> bm!661853 d!2260030))

(declare-fun d!2260032 () Bool)

(assert (=> d!2260032 (= (nullable!7958 (h!77155 (exprs!8198 lt!2591885))) (nullableFct!3125 (h!77155 (exprs!8198 lt!2591885))))))

(declare-fun bs!1910034 () Bool)

(assert (= bs!1910034 d!2260032))

(declare-fun m!7949076 () Bool)

(assert (=> bs!1910034 m!7949076))

(assert (=> b!7264185 d!2260032))

(declare-fun d!2260034 () Bool)

(declare-fun res!2945218 () Bool)

(declare-fun e!4356274 () Bool)

(assert (=> d!2260034 (=> res!2945218 e!4356274)))

(assert (=> d!2260034 (= res!2945218 (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2260034 (= (forall!17591 (exprs!8198 ct1!250) lambda!447204) e!4356274)))

(declare-fun b!7264350 () Bool)

(declare-fun e!4356275 () Bool)

(assert (=> b!7264350 (= e!4356274 e!4356275)))

(declare-fun res!2945219 () Bool)

(assert (=> b!7264350 (=> (not res!2945219) (not e!4356275))))

(declare-fun dynLambda!28870 (Int Regex!18758) Bool)

(assert (=> b!7264350 (= res!2945219 (dynLambda!28870 lambda!447204 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264351 () Bool)

(assert (=> b!7264351 (= e!4356275 (forall!17591 (t!384897 (exprs!8198 ct1!250)) lambda!447204))))

(assert (= (and d!2260034 (not res!2945218)) b!7264350))

(assert (= (and b!7264350 res!2945219) b!7264351))

(declare-fun b_lambda!279559 () Bool)

(assert (=> (not b_lambda!279559) (not b!7264350)))

(declare-fun m!7949078 () Bool)

(assert (=> b!7264350 m!7949078))

(declare-fun m!7949080 () Bool)

(assert (=> b!7264351 m!7949080))

(assert (=> d!2259956 d!2260034))

(assert (=> bs!1910017 d!2259982))

(declare-fun b!7264352 () Bool)

(declare-fun e!4356278 () (Set Context!15396))

(declare-fun e!4356277 () (Set Context!15396))

(assert (=> b!7264352 (= e!4356278 e!4356277)))

(declare-fun c!1351520 () Bool)

(assert (=> b!7264352 (= c!1351520 (is-Cons!70707 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250))))))))

(declare-fun bm!661891 () Bool)

(declare-fun call!661896 () (Set Context!15396))

(assert (=> bm!661891 (= call!661896 (derivationStepZipperDown!2692 (h!77155 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250))))) (Context!15397 (t!384897 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250)))))) (h!77156 s!7854)))))

(declare-fun d!2260036 () Bool)

(declare-fun c!1351521 () Bool)

(declare-fun e!4356276 () Bool)

(assert (=> d!2260036 (= c!1351521 e!4356276)))

(declare-fun res!2945220 () Bool)

(assert (=> d!2260036 (=> (not res!2945220) (not e!4356276))))

(assert (=> d!2260036 (= res!2945220 (is-Cons!70707 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250))))))))

(assert (=> d!2260036 (= (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 ct1!250))) (h!77156 s!7854)) e!4356278)))

(declare-fun b!7264353 () Bool)

(assert (=> b!7264353 (= e!4356276 (nullable!7958 (h!77155 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250)))))))))

(declare-fun b!7264354 () Bool)

(assert (=> b!7264354 (= e!4356277 call!661896)))

(declare-fun b!7264355 () Bool)

(assert (=> b!7264355 (= e!4356277 (as set.empty (Set Context!15396)))))

(declare-fun b!7264356 () Bool)

(assert (=> b!7264356 (= e!4356278 (set.union call!661896 (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250)))))) (h!77156 s!7854))))))

(assert (= (and d!2260036 res!2945220) b!7264353))

(assert (= (and d!2260036 c!1351521) b!7264356))

(assert (= (and d!2260036 (not c!1351521)) b!7264352))

(assert (= (and b!7264352 c!1351520) b!7264354))

(assert (= (and b!7264352 (not c!1351520)) b!7264355))

(assert (= (or b!7264356 b!7264354) bm!661891))

(declare-fun m!7949082 () Bool)

(assert (=> bm!661891 m!7949082))

(declare-fun m!7949084 () Bool)

(assert (=> b!7264353 m!7949084))

(declare-fun m!7949086 () Bool)

(assert (=> b!7264356 m!7949086))

(assert (=> b!7264177 d!2260036))

(declare-fun d!2260038 () Bool)

(declare-fun res!2945221 () Bool)

(declare-fun e!4356279 () Bool)

(assert (=> d!2260038 (=> res!2945221 e!4356279)))

(assert (=> d!2260038 (= res!2945221 (is-Nil!70707 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346))))))

(assert (=> d!2260038 (= (forall!17591 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)) lambda!447186) e!4356279)))

(declare-fun b!7264357 () Bool)

(declare-fun e!4356280 () Bool)

(assert (=> b!7264357 (= e!4356279 e!4356280)))

(declare-fun res!2945222 () Bool)

(assert (=> b!7264357 (=> (not res!2945222) (not e!4356280))))

(assert (=> b!7264357 (= res!2945222 (dynLambda!28870 lambda!447186 (h!77155 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)))))))

(declare-fun b!7264358 () Bool)

(assert (=> b!7264358 (= e!4356280 (forall!17591 (t!384897 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346))) lambda!447186))))

(assert (= (and d!2260038 (not res!2945221)) b!7264357))

(assert (= (and b!7264357 res!2945222) b!7264358))

(declare-fun b_lambda!279561 () Bool)

(assert (=> (not b_lambda!279561) (not b!7264357)))

(declare-fun m!7949088 () Bool)

(assert (=> b!7264357 m!7949088))

(declare-fun m!7949090 () Bool)

(assert (=> b!7264358 m!7949090))

(assert (=> d!2259984 d!2260038))

(assert (=> d!2259984 d!2259986))

(declare-fun d!2260040 () Bool)

(assert (=> d!2260040 (forall!17591 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)) lambda!447186)))

(assert (=> d!2260040 true))

(declare-fun _$78!804 () Unit!164134)

(assert (=> d!2260040 (= (choose!56288 (exprs!8198 ct1!250) (exprs!8198 ct2!346) lambda!447186) _$78!804)))

(declare-fun bs!1910035 () Bool)

(assert (= bs!1910035 d!2260040))

(assert (=> bs!1910035 m!7948864))

(assert (=> bs!1910035 m!7948864))

(assert (=> bs!1910035 m!7948978))

(assert (=> d!2259984 d!2260040))

(declare-fun d!2260042 () Bool)

(declare-fun res!2945223 () Bool)

(declare-fun e!4356281 () Bool)

(assert (=> d!2260042 (=> res!2945223 e!4356281)))

(assert (=> d!2260042 (= res!2945223 (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2260042 (= (forall!17591 (exprs!8198 ct1!250) lambda!447186) e!4356281)))

(declare-fun b!7264359 () Bool)

(declare-fun e!4356282 () Bool)

(assert (=> b!7264359 (= e!4356281 e!4356282)))

(declare-fun res!2945224 () Bool)

(assert (=> b!7264359 (=> (not res!2945224) (not e!4356282))))

(assert (=> b!7264359 (= res!2945224 (dynLambda!28870 lambda!447186 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264360 () Bool)

(assert (=> b!7264360 (= e!4356282 (forall!17591 (t!384897 (exprs!8198 ct1!250)) lambda!447186))))

(assert (= (and d!2260042 (not res!2945223)) b!7264359))

(assert (= (and b!7264359 res!2945224) b!7264360))

(declare-fun b_lambda!279563 () Bool)

(assert (=> (not b_lambda!279563) (not b!7264359)))

(declare-fun m!7949092 () Bool)

(assert (=> b!7264359 m!7949092))

(declare-fun m!7949094 () Bool)

(assert (=> b!7264360 m!7949094))

(assert (=> d!2259984 d!2260042))

(declare-fun d!2260044 () Bool)

(declare-fun lambda!447224 () Int)

(declare-fun exists!4486 ((Set Context!15396) Int) Bool)

(assert (=> d!2260044 (= (nullableZipper!2970 (set.insert ct2!346 (as set.empty (Set Context!15396)))) (exists!4486 (set.insert ct2!346 (as set.empty (Set Context!15396))) lambda!447224))))

(declare-fun bs!1910036 () Bool)

(assert (= bs!1910036 d!2260044))

(assert (=> bs!1910036 m!7948876))

(declare-fun m!7949096 () Bool)

(assert (=> bs!1910036 m!7949096))

(assert (=> b!7264182 d!2260044))

(declare-fun d!2260046 () Bool)

(declare-fun c!1351524 () Bool)

(assert (=> d!2260046 (= c!1351524 (isEmpty!40640 (tail!14428 s!7854)))))

(declare-fun e!4356283 () Bool)

(assert (=> d!2260046 (= (matchZipper!3662 (derivationStepZipper!3498 (set.insert ct2!346 (as set.empty (Set Context!15396))) (head!14969 s!7854)) (tail!14428 s!7854)) e!4356283)))

(declare-fun b!7264361 () Bool)

(assert (=> b!7264361 (= e!4356283 (nullableZipper!2970 (derivationStepZipper!3498 (set.insert ct2!346 (as set.empty (Set Context!15396))) (head!14969 s!7854))))))

(declare-fun b!7264362 () Bool)

(assert (=> b!7264362 (= e!4356283 (matchZipper!3662 (derivationStepZipper!3498 (derivationStepZipper!3498 (set.insert ct2!346 (as set.empty (Set Context!15396))) (head!14969 s!7854)) (head!14969 (tail!14428 s!7854))) (tail!14428 (tail!14428 s!7854))))))

(assert (= (and d!2260046 c!1351524) b!7264361))

(assert (= (and d!2260046 (not c!1351524)) b!7264362))

(assert (=> d!2260046 m!7948952))

(declare-fun m!7949098 () Bool)

(assert (=> d!2260046 m!7949098))

(assert (=> b!7264361 m!7948950))

(declare-fun m!7949100 () Bool)

(assert (=> b!7264361 m!7949100))

(assert (=> b!7264362 m!7948952))

(declare-fun m!7949102 () Bool)

(assert (=> b!7264362 m!7949102))

(assert (=> b!7264362 m!7948950))

(assert (=> b!7264362 m!7949102))

(declare-fun m!7949104 () Bool)

(assert (=> b!7264362 m!7949104))

(assert (=> b!7264362 m!7948952))

(declare-fun m!7949106 () Bool)

(assert (=> b!7264362 m!7949106))

(assert (=> b!7264362 m!7949104))

(assert (=> b!7264362 m!7949106))

(declare-fun m!7949108 () Bool)

(assert (=> b!7264362 m!7949108))

(assert (=> b!7264183 d!2260046))

(declare-fun bs!1910037 () Bool)

(declare-fun d!2260048 () Bool)

(assert (= bs!1910037 (and d!2260048 b!7264098)))

(declare-fun lambda!447225 () Int)

(assert (=> bs!1910037 (= (= (head!14969 s!7854) (h!77156 s!7854)) (= lambda!447225 lambda!447187))))

(declare-fun bs!1910038 () Bool)

(assert (= bs!1910038 (and d!2260048 d!2259992)))

(assert (=> bs!1910038 (= (= (head!14969 s!7854) (h!77156 s!7854)) (= lambda!447225 lambda!447211))))

(assert (=> d!2260048 true))

(assert (=> d!2260048 (= (derivationStepZipper!3498 (set.insert ct2!346 (as set.empty (Set Context!15396))) (head!14969 s!7854)) (flatMap!2871 (set.insert ct2!346 (as set.empty (Set Context!15396))) lambda!447225))))

(declare-fun bs!1910039 () Bool)

(assert (= bs!1910039 d!2260048))

(assert (=> bs!1910039 m!7948876))

(declare-fun m!7949110 () Bool)

(assert (=> bs!1910039 m!7949110))

(assert (=> b!7264183 d!2260048))

(declare-fun d!2260050 () Bool)

(assert (=> d!2260050 (= (head!14969 s!7854) (h!77156 s!7854))))

(assert (=> b!7264183 d!2260050))

(declare-fun d!2260052 () Bool)

(assert (=> d!2260052 (= (tail!14428 s!7854) (t!384898 s!7854))))

(assert (=> b!7264183 d!2260052))

(declare-fun b!7264364 () Bool)

(declare-fun e!4356286 () Bool)

(declare-fun e!4356289 () Bool)

(assert (=> b!7264364 (= e!4356286 e!4356289)))

(declare-fun c!1351526 () Bool)

(assert (=> b!7264364 (= c!1351526 (is-Union!18758 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))

(declare-fun b!7264365 () Bool)

(declare-fun e!4356284 () Bool)

(declare-fun call!661898 () Bool)

(assert (=> b!7264365 (= e!4356284 call!661898)))

(declare-fun call!661897 () Bool)

(declare-fun bm!661892 () Bool)

(assert (=> bm!661892 (= call!661897 (validRegex!9563 (ite c!1351526 (regTwo!38029 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))) (regTwo!38028 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))))

(declare-fun b!7264366 () Bool)

(declare-fun e!4356288 () Bool)

(assert (=> b!7264366 (= e!4356288 call!661897)))

(declare-fun b!7264367 () Bool)

(declare-fun res!2945228 () Bool)

(declare-fun e!4356290 () Bool)

(assert (=> b!7264367 (=> res!2945228 e!4356290)))

(assert (=> b!7264367 (= res!2945228 (not (is-Concat!27603 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250))))))))))

(assert (=> b!7264367 (= e!4356289 e!4356290)))

(declare-fun b!7264368 () Bool)

(declare-fun e!4356285 () Bool)

(assert (=> b!7264368 (= e!4356285 call!661897)))

(declare-fun bm!661893 () Bool)

(declare-fun call!661899 () Bool)

(assert (=> bm!661893 (= call!661899 call!661898)))

(declare-fun b!7264363 () Bool)

(declare-fun e!4356287 () Bool)

(assert (=> b!7264363 (= e!4356287 e!4356286)))

(declare-fun c!1351525 () Bool)

(assert (=> b!7264363 (= c!1351525 (is-Star!18758 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))

(declare-fun d!2260054 () Bool)

(declare-fun res!2945229 () Bool)

(assert (=> d!2260054 (=> res!2945229 e!4356287)))

(assert (=> d!2260054 (= res!2945229 (is-ElementMatch!18758 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))

(assert (=> d!2260054 (= (validRegex!9563 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))) e!4356287)))

(declare-fun bm!661894 () Bool)

(assert (=> bm!661894 (= call!661898 (validRegex!9563 (ite c!1351525 (reg!19087 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))) (ite c!1351526 (regOne!38029 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))) (regOne!38028 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250))))))))))))

(declare-fun b!7264369 () Bool)

(assert (=> b!7264369 (= e!4356290 e!4356285)))

(declare-fun res!2945225 () Bool)

(assert (=> b!7264369 (=> (not res!2945225) (not e!4356285))))

(assert (=> b!7264369 (= res!2945225 call!661899)))

(declare-fun b!7264370 () Bool)

(declare-fun res!2945226 () Bool)

(assert (=> b!7264370 (=> (not res!2945226) (not e!4356288))))

(assert (=> b!7264370 (= res!2945226 call!661899)))

(assert (=> b!7264370 (= e!4356289 e!4356288)))

(declare-fun b!7264371 () Bool)

(assert (=> b!7264371 (= e!4356286 e!4356284)))

(declare-fun res!2945227 () Bool)

(assert (=> b!7264371 (= res!2945227 (not (nullable!7958 (reg!19087 (ite c!1351460 (reg!19087 (h!77155 (exprs!8198 ct1!250))) (ite c!1351461 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))))))

(assert (=> b!7264371 (=> (not res!2945227) (not e!4356284))))

(assert (= (and d!2260054 (not res!2945229)) b!7264363))

(assert (= (and b!7264363 c!1351525) b!7264371))

(assert (= (and b!7264363 (not c!1351525)) b!7264364))

(assert (= (and b!7264371 res!2945227) b!7264365))

(assert (= (and b!7264364 c!1351526) b!7264370))

(assert (= (and b!7264364 (not c!1351526)) b!7264367))

(assert (= (and b!7264370 res!2945226) b!7264366))

(assert (= (and b!7264367 (not res!2945228)) b!7264369))

(assert (= (and b!7264369 res!2945225) b!7264368))

(assert (= (or b!7264370 b!7264369) bm!661893))

(assert (= (or b!7264366 b!7264368) bm!661892))

(assert (= (or b!7264365 bm!661893) bm!661894))

(declare-fun m!7949112 () Bool)

(assert (=> bm!661892 m!7949112))

(declare-fun m!7949114 () Bool)

(assert (=> bm!661894 m!7949114))

(declare-fun m!7949116 () Bool)

(assert (=> b!7264371 m!7949116))

(assert (=> bm!661849 d!2260054))

(declare-fun d!2260056 () Bool)

(declare-fun res!2945230 () Bool)

(declare-fun e!4356291 () Bool)

(assert (=> d!2260056 (=> res!2945230 e!4356291)))

(assert (=> d!2260056 (= res!2945230 (is-Nil!70707 (exprs!8198 ct2!346)))))

(assert (=> d!2260056 (= (forall!17591 (exprs!8198 ct2!346) lambda!447207) e!4356291)))

(declare-fun b!7264372 () Bool)

(declare-fun e!4356292 () Bool)

(assert (=> b!7264372 (= e!4356291 e!4356292)))

(declare-fun res!2945231 () Bool)

(assert (=> b!7264372 (=> (not res!2945231) (not e!4356292))))

(assert (=> b!7264372 (= res!2945231 (dynLambda!28870 lambda!447207 (h!77155 (exprs!8198 ct2!346))))))

(declare-fun b!7264373 () Bool)

(assert (=> b!7264373 (= e!4356292 (forall!17591 (t!384897 (exprs!8198 ct2!346)) lambda!447207))))

(assert (= (and d!2260056 (not res!2945230)) b!7264372))

(assert (= (and b!7264372 res!2945231) b!7264373))

(declare-fun b_lambda!279565 () Bool)

(assert (=> (not b_lambda!279565) (not b!7264372)))

(declare-fun m!7949118 () Bool)

(assert (=> b!7264372 m!7949118))

(declare-fun m!7949120 () Bool)

(assert (=> b!7264373 m!7949120))

(assert (=> d!2259972 d!2260056))

(declare-fun d!2260058 () Bool)

(assert (=> d!2260058 (= (flatMap!2871 lt!2591890 lambda!447211) (choose!56289 lt!2591890 lambda!447211))))

(declare-fun bs!1910040 () Bool)

(assert (= bs!1910040 d!2260058))

(declare-fun m!7949122 () Bool)

(assert (=> bs!1910040 m!7949122))

(assert (=> d!2259992 d!2260058))

(declare-fun d!2260060 () Bool)

(declare-fun res!2945232 () Bool)

(declare-fun e!4356293 () Bool)

(assert (=> d!2260060 (=> res!2945232 e!4356293)))

(assert (=> d!2260060 (= res!2945232 (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2260060 (= (forall!17591 (exprs!8198 ct1!250) lambda!447208) e!4356293)))

(declare-fun b!7264374 () Bool)

(declare-fun e!4356294 () Bool)

(assert (=> b!7264374 (= e!4356293 e!4356294)))

(declare-fun res!2945233 () Bool)

(assert (=> b!7264374 (=> (not res!2945233) (not e!4356294))))

(assert (=> b!7264374 (= res!2945233 (dynLambda!28870 lambda!447208 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264375 () Bool)

(assert (=> b!7264375 (= e!4356294 (forall!17591 (t!384897 (exprs!8198 ct1!250)) lambda!447208))))

(assert (= (and d!2260060 (not res!2945232)) b!7264374))

(assert (= (and b!7264374 res!2945233) b!7264375))

(declare-fun b_lambda!279567 () Bool)

(assert (=> (not b_lambda!279567) (not b!7264374)))

(declare-fun m!7949124 () Bool)

(assert (=> b!7264374 m!7949124))

(declare-fun m!7949126 () Bool)

(assert (=> b!7264375 m!7949126))

(assert (=> d!2259974 d!2260060))

(declare-fun d!2260062 () Bool)

(declare-fun lt!2591946 () Int)

(assert (=> d!2260062 (>= lt!2591946 0)))

(declare-fun e!4356297 () Int)

(assert (=> d!2260062 (= lt!2591946 e!4356297)))

(declare-fun c!1351529 () Bool)

(assert (=> d!2260062 (= c!1351529 (is-Nil!70707 lt!2591939))))

(assert (=> d!2260062 (= (size!41790 lt!2591939) lt!2591946)))

(declare-fun b!7264380 () Bool)

(assert (=> b!7264380 (= e!4356297 0)))

(declare-fun b!7264381 () Bool)

(assert (=> b!7264381 (= e!4356297 (+ 1 (size!41790 (t!384897 lt!2591939))))))

(assert (= (and d!2260062 c!1351529) b!7264380))

(assert (= (and d!2260062 (not c!1351529)) b!7264381))

(declare-fun m!7949128 () Bool)

(assert (=> b!7264381 m!7949128))

(assert (=> b!7264209 d!2260062))

(declare-fun d!2260064 () Bool)

(declare-fun lt!2591947 () Int)

(assert (=> d!2260064 (>= lt!2591947 0)))

(declare-fun e!4356298 () Int)

(assert (=> d!2260064 (= lt!2591947 e!4356298)))

(declare-fun c!1351530 () Bool)

(assert (=> d!2260064 (= c!1351530 (is-Nil!70707 (exprs!8198 ct1!250)))))

(assert (=> d!2260064 (= (size!41790 (exprs!8198 ct1!250)) lt!2591947)))

(declare-fun b!7264382 () Bool)

(assert (=> b!7264382 (= e!4356298 0)))

(declare-fun b!7264383 () Bool)

(assert (=> b!7264383 (= e!4356298 (+ 1 (size!41790 (t!384897 (exprs!8198 ct1!250)))))))

(assert (= (and d!2260064 c!1351530) b!7264382))

(assert (= (and d!2260064 (not c!1351530)) b!7264383))

(declare-fun m!7949130 () Bool)

(assert (=> b!7264383 m!7949130))

(assert (=> b!7264209 d!2260064))

(declare-fun d!2260066 () Bool)

(declare-fun lt!2591948 () Int)

(assert (=> d!2260066 (>= lt!2591948 0)))

(declare-fun e!4356299 () Int)

(assert (=> d!2260066 (= lt!2591948 e!4356299)))

(declare-fun c!1351531 () Bool)

(assert (=> d!2260066 (= c!1351531 (is-Nil!70707 (exprs!8198 ct2!346)))))

(assert (=> d!2260066 (= (size!41790 (exprs!8198 ct2!346)) lt!2591948)))

(declare-fun b!7264384 () Bool)

(assert (=> b!7264384 (= e!4356299 0)))

(declare-fun b!7264385 () Bool)

(assert (=> b!7264385 (= e!4356299 (+ 1 (size!41790 (t!384897 (exprs!8198 ct2!346)))))))

(assert (= (and d!2260066 c!1351531) b!7264384))

(assert (= (and d!2260066 (not c!1351531)) b!7264385))

(declare-fun m!7949132 () Bool)

(assert (=> b!7264385 m!7949132))

(assert (=> b!7264209 d!2260066))

(assert (=> b!7264174 d!2259960))

(declare-fun d!2260068 () Bool)

(assert (=> d!2260068 (= (nullable!7958 (reg!19087 (h!77155 (exprs!8198 ct1!250)))) (nullableFct!3125 (reg!19087 (h!77155 (exprs!8198 ct1!250)))))))

(declare-fun bs!1910041 () Bool)

(assert (= bs!1910041 d!2260068))

(declare-fun m!7949134 () Bool)

(assert (=> bs!1910041 m!7949134))

(assert (=> b!7264162 d!2260068))

(declare-fun d!2260070 () Bool)

(assert (=> d!2260070 (= (isEmpty!40640 s!7854) (is-Nil!70708 s!7854))))

(assert (=> d!2259968 d!2260070))

(declare-fun bm!661895 () Bool)

(declare-fun call!661905 () (Set Context!15396))

(declare-fun call!661900 () (Set Context!15396))

(assert (=> bm!661895 (= call!661905 call!661900)))

(declare-fun b!7264386 () Bool)

(declare-fun c!1351534 () Bool)

(declare-fun e!4356303 () Bool)

(assert (=> b!7264386 (= c!1351534 e!4356303)))

(declare-fun res!2945234 () Bool)

(assert (=> b!7264386 (=> (not res!2945234) (not e!4356303))))

(assert (=> b!7264386 (= res!2945234 (is-Concat!27603 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun e!4356301 () (Set Context!15396))

(declare-fun e!4356300 () (Set Context!15396))

(assert (=> b!7264386 (= e!4356301 e!4356300)))

(declare-fun b!7264387 () Bool)

(assert (=> b!7264387 (= e!4356303 (nullable!7958 (regOne!38028 (h!77155 (exprs!8198 ct1!250)))))))

(declare-fun b!7264388 () Bool)

(declare-fun e!4356302 () (Set Context!15396))

(assert (=> b!7264388 (= e!4356302 call!661905)))

(declare-fun c!1351536 () Bool)

(declare-fun bm!661896 () Bool)

(declare-fun call!661902 () List!70831)

(assert (=> bm!661896 (= call!661902 ($colon$colon!2940 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 ct1!250)))) (ite (or c!1351534 c!1351536) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))) (h!77155 (exprs!8198 ct1!250)))))))

(declare-fun d!2260072 () Bool)

(declare-fun c!1351532 () Bool)

(assert (=> d!2260072 (= c!1351532 (and (is-ElementMatch!18758 (h!77155 (exprs!8198 ct1!250))) (= (c!1351450 (h!77155 (exprs!8198 ct1!250))) (h!77156 s!7854))))))

(declare-fun e!4356304 () (Set Context!15396))

(assert (=> d!2260072 (= (derivationStepZipperDown!2692 (h!77155 (exprs!8198 ct1!250)) (Context!15397 (t!384897 (exprs!8198 ct1!250))) (h!77156 s!7854)) e!4356304)))

(declare-fun b!7264389 () Bool)

(declare-fun e!4356305 () (Set Context!15396))

(assert (=> b!7264389 (= e!4356305 (as set.empty (Set Context!15396)))))

(declare-fun bm!661897 () Bool)

(declare-fun call!661904 () (Set Context!15396))

(assert (=> bm!661897 (= call!661900 call!661904)))

(declare-fun b!7264390 () Bool)

(declare-fun c!1351533 () Bool)

(assert (=> b!7264390 (= c!1351533 (is-Star!18758 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> b!7264390 (= e!4356302 e!4356305)))

(declare-fun b!7264391 () Bool)

(declare-fun call!661903 () (Set Context!15396))

(assert (=> b!7264391 (= e!4356301 (set.union call!661903 call!661904))))

(declare-fun b!7264392 () Bool)

(assert (=> b!7264392 (= e!4356304 (set.insert (Context!15397 (t!384897 (exprs!8198 ct1!250))) (as set.empty (Set Context!15396))))))

(declare-fun c!1351535 () Bool)

(declare-fun bm!661898 () Bool)

(assert (=> bm!661898 (= call!661903 (derivationStepZipperDown!2692 (ite c!1351535 (regOne!38029 (h!77155 (exprs!8198 ct1!250))) (regOne!38028 (h!77155 (exprs!8198 ct1!250)))) (ite c!1351535 (Context!15397 (t!384897 (exprs!8198 ct1!250))) (Context!15397 call!661902)) (h!77156 s!7854)))))

(declare-fun b!7264393 () Bool)

(assert (=> b!7264393 (= e!4356304 e!4356301)))

(assert (=> b!7264393 (= c!1351535 (is-Union!18758 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun b!7264394 () Bool)

(assert (=> b!7264394 (= e!4356300 e!4356302)))

(assert (=> b!7264394 (= c!1351536 (is-Concat!27603 (h!77155 (exprs!8198 ct1!250))))))

(declare-fun call!661901 () List!70831)

(declare-fun bm!661899 () Bool)

(assert (=> bm!661899 (= call!661904 (derivationStepZipperDown!2692 (ite c!1351535 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (ite c!1351534 (regTwo!38028 (h!77155 (exprs!8198 ct1!250))) (ite c!1351536 (regOne!38028 (h!77155 (exprs!8198 ct1!250))) (reg!19087 (h!77155 (exprs!8198 ct1!250)))))) (ite (or c!1351535 c!1351534) (Context!15397 (t!384897 (exprs!8198 ct1!250))) (Context!15397 call!661901)) (h!77156 s!7854)))))

(declare-fun b!7264395 () Bool)

(assert (=> b!7264395 (= e!4356305 call!661905)))

(declare-fun bm!661900 () Bool)

(assert (=> bm!661900 (= call!661901 call!661902)))

(declare-fun b!7264396 () Bool)

(assert (=> b!7264396 (= e!4356300 (set.union call!661903 call!661900))))

(assert (= (and d!2260072 c!1351532) b!7264392))

(assert (= (and d!2260072 (not c!1351532)) b!7264393))

(assert (= (and b!7264393 c!1351535) b!7264391))

(assert (= (and b!7264393 (not c!1351535)) b!7264386))

(assert (= (and b!7264386 res!2945234) b!7264387))

(assert (= (and b!7264386 c!1351534) b!7264396))

(assert (= (and b!7264386 (not c!1351534)) b!7264394))

(assert (= (and b!7264394 c!1351536) b!7264388))

(assert (= (and b!7264394 (not c!1351536)) b!7264390))

(assert (= (and b!7264390 c!1351533) b!7264395))

(assert (= (and b!7264390 (not c!1351533)) b!7264389))

(assert (= (or b!7264388 b!7264395) bm!661900))

(assert (= (or b!7264388 b!7264395) bm!661895))

(assert (= (or b!7264396 bm!661900) bm!661896))

(assert (= (or b!7264396 bm!661895) bm!661897))

(assert (= (or b!7264391 b!7264396) bm!661898))

(assert (= (or b!7264391 bm!661897) bm!661899))

(declare-fun m!7949136 () Bool)

(assert (=> b!7264387 m!7949136))

(declare-fun m!7949138 () Bool)

(assert (=> bm!661899 m!7949138))

(declare-fun m!7949140 () Bool)

(assert (=> bm!661896 m!7949140))

(declare-fun m!7949142 () Bool)

(assert (=> bm!661898 m!7949142))

(declare-fun m!7949144 () Bool)

(assert (=> b!7264392 m!7949144))

(assert (=> bm!661852 d!2260072))

(declare-fun d!2260074 () Bool)

(assert (=> d!2260074 true))

(declare-fun setRes!53614 () Bool)

(assert (=> d!2260074 setRes!53614))

(declare-fun condSetEmpty!53614 () Bool)

(declare-fun res!2945237 () (Set Context!15396))

(assert (=> d!2260074 (= condSetEmpty!53614 (= res!2945237 (as set.empty (Set Context!15396))))))

(assert (=> d!2260074 (= (choose!56289 lt!2591890 lambda!447187) res!2945237)))

(declare-fun setIsEmpty!53614 () Bool)

(assert (=> setIsEmpty!53614 setRes!53614))

(declare-fun e!4356308 () Bool)

(declare-fun tp!2040167 () Bool)

(declare-fun setNonEmpty!53614 () Bool)

(declare-fun setElem!53614 () Context!15396)

(assert (=> setNonEmpty!53614 (= setRes!53614 (and tp!2040167 (inv!89906 setElem!53614) e!4356308))))

(declare-fun setRest!53614 () (Set Context!15396))

(assert (=> setNonEmpty!53614 (= res!2945237 (set.union (set.insert setElem!53614 (as set.empty (Set Context!15396))) setRest!53614))))

(declare-fun b!7264399 () Bool)

(declare-fun tp!2040168 () Bool)

(assert (=> b!7264399 (= e!4356308 tp!2040168)))

(assert (= (and d!2260074 condSetEmpty!53614) setIsEmpty!53614))

(assert (= (and d!2260074 (not condSetEmpty!53614)) setNonEmpty!53614))

(assert (= setNonEmpty!53614 b!7264399))

(declare-fun m!7949146 () Bool)

(assert (=> setNonEmpty!53614 m!7949146))

(assert (=> d!2259990 d!2260074))

(declare-fun b!7264401 () Bool)

(declare-fun e!4356311 () Bool)

(declare-fun e!4356314 () Bool)

(assert (=> b!7264401 (= e!4356311 e!4356314)))

(declare-fun c!1351538 () Bool)

(assert (=> b!7264401 (= c!1351538 (is-Union!18758 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun b!7264402 () Bool)

(declare-fun e!4356309 () Bool)

(declare-fun call!661907 () Bool)

(assert (=> b!7264402 (= e!4356309 call!661907)))

(declare-fun call!661906 () Bool)

(declare-fun bm!661901 () Bool)

(assert (=> bm!661901 (= call!661906 (validRegex!9563 (ite c!1351538 (regTwo!38029 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))) (regTwo!38028 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))))

(declare-fun b!7264403 () Bool)

(declare-fun e!4356313 () Bool)

(assert (=> b!7264403 (= e!4356313 call!661906)))

(declare-fun b!7264404 () Bool)

(declare-fun res!2945241 () Bool)

(declare-fun e!4356315 () Bool)

(assert (=> b!7264404 (=> res!2945241 e!4356315)))

(assert (=> b!7264404 (= res!2945241 (not (is-Concat!27603 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250)))))))))

(assert (=> b!7264404 (= e!4356314 e!4356315)))

(declare-fun b!7264405 () Bool)

(declare-fun e!4356310 () Bool)

(assert (=> b!7264405 (= e!4356310 call!661906)))

(declare-fun bm!661902 () Bool)

(declare-fun call!661908 () Bool)

(assert (=> bm!661902 (= call!661908 call!661907)))

(declare-fun b!7264400 () Bool)

(declare-fun e!4356312 () Bool)

(assert (=> b!7264400 (= e!4356312 e!4356311)))

(declare-fun c!1351537 () Bool)

(assert (=> b!7264400 (= c!1351537 (is-Star!18758 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))

(declare-fun d!2260076 () Bool)

(declare-fun res!2945242 () Bool)

(assert (=> d!2260076 (=> res!2945242 e!4356312)))

(assert (=> d!2260076 (= res!2945242 (is-ElementMatch!18758 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))

(assert (=> d!2260076 (= (validRegex!9563 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))) e!4356312)))

(declare-fun bm!661903 () Bool)

(assert (=> bm!661903 (= call!661907 (validRegex!9563 (ite c!1351537 (reg!19087 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))) (ite c!1351538 (regOne!38029 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))) (regOne!38028 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250)))))))))))

(declare-fun b!7264406 () Bool)

(assert (=> b!7264406 (= e!4356315 e!4356310)))

(declare-fun res!2945238 () Bool)

(assert (=> b!7264406 (=> (not res!2945238) (not e!4356310))))

(assert (=> b!7264406 (= res!2945238 call!661908)))

(declare-fun b!7264407 () Bool)

(declare-fun res!2945239 () Bool)

(assert (=> b!7264407 (=> (not res!2945239) (not e!4356313))))

(assert (=> b!7264407 (= res!2945239 call!661908)))

(assert (=> b!7264407 (= e!4356314 e!4356313)))

(declare-fun b!7264408 () Bool)

(assert (=> b!7264408 (= e!4356311 e!4356309)))

(declare-fun res!2945240 () Bool)

(assert (=> b!7264408 (= res!2945240 (not (nullable!7958 (reg!19087 (ite c!1351461 (regTwo!38029 (h!77155 (exprs!8198 ct1!250))) (regTwo!38028 (h!77155 (exprs!8198 ct1!250))))))))))

(assert (=> b!7264408 (=> (not res!2945240) (not e!4356309))))

(assert (= (and d!2260076 (not res!2945242)) b!7264400))

(assert (= (and b!7264400 c!1351537) b!7264408))

(assert (= (and b!7264400 (not c!1351537)) b!7264401))

(assert (= (and b!7264408 res!2945240) b!7264402))

(assert (= (and b!7264401 c!1351538) b!7264407))

(assert (= (and b!7264401 (not c!1351538)) b!7264404))

(assert (= (and b!7264407 res!2945239) b!7264403))

(assert (= (and b!7264404 (not res!2945241)) b!7264406))

(assert (= (and b!7264406 res!2945238) b!7264405))

(assert (= (or b!7264407 b!7264406) bm!661902))

(assert (= (or b!7264403 b!7264405) bm!661901))

(assert (= (or b!7264402 bm!661902) bm!661903))

(declare-fun m!7949148 () Bool)

(assert (=> bm!661901 m!7949148))

(declare-fun m!7949150 () Bool)

(assert (=> bm!661903 m!7949150))

(declare-fun m!7949152 () Bool)

(assert (=> b!7264408 m!7949152))

(assert (=> bm!661847 d!2260076))

(assert (=> d!2259980 d!2259988))

(declare-fun d!2260078 () Bool)

(assert (=> d!2260078 (= (flatMap!2871 lt!2591886 lambda!447187) (dynLambda!28868 lambda!447187 ct1!250))))

(assert (=> d!2260078 true))

(declare-fun _$13!4613 () Unit!164134)

(assert (=> d!2260078 (= (choose!56287 lt!2591886 ct1!250 lambda!447187) _$13!4613)))

(declare-fun b_lambda!279569 () Bool)

(assert (=> (not b_lambda!279569) (not d!2260078)))

(declare-fun bs!1910042 () Bool)

(assert (= bs!1910042 d!2260078))

(assert (=> bs!1910042 m!7948872))

(assert (=> bs!1910042 m!7948968))

(assert (=> d!2259980 d!2260078))

(declare-fun d!2260080 () Bool)

(assert (=> d!2260080 true))

(declare-fun setRes!53615 () Bool)

(assert (=> d!2260080 setRes!53615))

(declare-fun condSetEmpty!53615 () Bool)

(declare-fun res!2945243 () (Set Context!15396))

(assert (=> d!2260080 (= condSetEmpty!53615 (= res!2945243 (as set.empty (Set Context!15396))))))

(assert (=> d!2260080 (= (choose!56289 lt!2591886 lambda!447187) res!2945243)))

(declare-fun setIsEmpty!53615 () Bool)

(assert (=> setIsEmpty!53615 setRes!53615))

(declare-fun setElem!53615 () Context!15396)

(declare-fun e!4356316 () Bool)

(declare-fun setNonEmpty!53615 () Bool)

(declare-fun tp!2040169 () Bool)

(assert (=> setNonEmpty!53615 (= setRes!53615 (and tp!2040169 (inv!89906 setElem!53615) e!4356316))))

(declare-fun setRest!53615 () (Set Context!15396))

(assert (=> setNonEmpty!53615 (= res!2945243 (set.union (set.insert setElem!53615 (as set.empty (Set Context!15396))) setRest!53615))))

(declare-fun b!7264409 () Bool)

(declare-fun tp!2040170 () Bool)

(assert (=> b!7264409 (= e!4356316 tp!2040170)))

(assert (= (and d!2260080 condSetEmpty!53615) setIsEmpty!53615))

(assert (= (and d!2260080 (not condSetEmpty!53615)) setNonEmpty!53615))

(assert (= setNonEmpty!53615 b!7264409))

(declare-fun m!7949154 () Bool)

(assert (=> setNonEmpty!53615 m!7949154))

(assert (=> d!2259988 d!2260080))

(declare-fun b!7264410 () Bool)

(declare-fun e!4356317 () List!70831)

(assert (=> b!7264410 (= e!4356317 (exprs!8198 ct2!346))))

(declare-fun b!7264412 () Bool)

(declare-fun res!2945244 () Bool)

(declare-fun e!4356318 () Bool)

(assert (=> b!7264412 (=> (not res!2945244) (not e!4356318))))

(declare-fun lt!2591949 () List!70831)

(assert (=> b!7264412 (= res!2945244 (= (size!41790 lt!2591949) (+ (size!41790 (t!384897 (exprs!8198 ct1!250))) (size!41790 (exprs!8198 ct2!346)))))))

(declare-fun b!7264413 () Bool)

(assert (=> b!7264413 (= e!4356318 (or (not (= (exprs!8198 ct2!346) Nil!70707)) (= lt!2591949 (t!384897 (exprs!8198 ct1!250)))))))

(declare-fun d!2260082 () Bool)

(assert (=> d!2260082 e!4356318))

(declare-fun res!2945245 () Bool)

(assert (=> d!2260082 (=> (not res!2945245) (not e!4356318))))

(assert (=> d!2260082 (= res!2945245 (= (content!14742 lt!2591949) (set.union (content!14742 (t!384897 (exprs!8198 ct1!250))) (content!14742 (exprs!8198 ct2!346)))))))

(assert (=> d!2260082 (= lt!2591949 e!4356317)))

(declare-fun c!1351539 () Bool)

(assert (=> d!2260082 (= c!1351539 (is-Nil!70707 (t!384897 (exprs!8198 ct1!250))))))

(assert (=> d!2260082 (= (++!16658 (t!384897 (exprs!8198 ct1!250)) (exprs!8198 ct2!346)) lt!2591949)))

(declare-fun b!7264411 () Bool)

(assert (=> b!7264411 (= e!4356317 (Cons!70707 (h!77155 (t!384897 (exprs!8198 ct1!250))) (++!16658 (t!384897 (t!384897 (exprs!8198 ct1!250))) (exprs!8198 ct2!346))))))

(assert (= (and d!2260082 c!1351539) b!7264410))

(assert (= (and d!2260082 (not c!1351539)) b!7264411))

(assert (= (and d!2260082 res!2945245) b!7264412))

(assert (= (and b!7264412 res!2945244) b!7264413))

(declare-fun m!7949156 () Bool)

(assert (=> b!7264412 m!7949156))

(assert (=> b!7264412 m!7949130))

(assert (=> b!7264412 m!7948988))

(declare-fun m!7949158 () Bool)

(assert (=> d!2260082 m!7949158))

(declare-fun m!7949160 () Bool)

(assert (=> d!2260082 m!7949160))

(assert (=> d!2260082 m!7948994))

(declare-fun m!7949162 () Bool)

(assert (=> b!7264411 m!7949162))

(assert (=> b!7264208 d!2260082))

(declare-fun d!2260084 () Bool)

(declare-fun c!1351542 () Bool)

(assert (=> d!2260084 (= c!1351542 (is-Nil!70707 lt!2591939))))

(declare-fun e!4356321 () (Set Regex!18758))

(assert (=> d!2260084 (= (content!14742 lt!2591939) e!4356321)))

(declare-fun b!7264418 () Bool)

(assert (=> b!7264418 (= e!4356321 (as set.empty (Set Regex!18758)))))

(declare-fun b!7264419 () Bool)

(assert (=> b!7264419 (= e!4356321 (set.union (set.insert (h!77155 lt!2591939) (as set.empty (Set Regex!18758))) (content!14742 (t!384897 lt!2591939))))))

(assert (= (and d!2260084 c!1351542) b!7264418))

(assert (= (and d!2260084 (not c!1351542)) b!7264419))

(declare-fun m!7949164 () Bool)

(assert (=> b!7264419 m!7949164))

(declare-fun m!7949166 () Bool)

(assert (=> b!7264419 m!7949166))

(assert (=> d!2259986 d!2260084))

(declare-fun d!2260086 () Bool)

(declare-fun c!1351543 () Bool)

(assert (=> d!2260086 (= c!1351543 (is-Nil!70707 (exprs!8198 ct1!250)))))

(declare-fun e!4356322 () (Set Regex!18758))

(assert (=> d!2260086 (= (content!14742 (exprs!8198 ct1!250)) e!4356322)))

(declare-fun b!7264420 () Bool)

(assert (=> b!7264420 (= e!4356322 (as set.empty (Set Regex!18758)))))

(declare-fun b!7264421 () Bool)

(assert (=> b!7264421 (= e!4356322 (set.union (set.insert (h!77155 (exprs!8198 ct1!250)) (as set.empty (Set Regex!18758))) (content!14742 (t!384897 (exprs!8198 ct1!250)))))))

(assert (= (and d!2260086 c!1351543) b!7264420))

(assert (= (and d!2260086 (not c!1351543)) b!7264421))

(declare-fun m!7949168 () Bool)

(assert (=> b!7264421 m!7949168))

(assert (=> b!7264421 m!7949160))

(assert (=> d!2259986 d!2260086))

(declare-fun d!2260088 () Bool)

(declare-fun c!1351544 () Bool)

(assert (=> d!2260088 (= c!1351544 (is-Nil!70707 (exprs!8198 ct2!346)))))

(declare-fun e!4356323 () (Set Regex!18758))

(assert (=> d!2260088 (= (content!14742 (exprs!8198 ct2!346)) e!4356323)))

(declare-fun b!7264422 () Bool)

(assert (=> b!7264422 (= e!4356323 (as set.empty (Set Regex!18758)))))

(declare-fun b!7264423 () Bool)

(assert (=> b!7264423 (= e!4356323 (set.union (set.insert (h!77155 (exprs!8198 ct2!346)) (as set.empty (Set Regex!18758))) (content!14742 (t!384897 (exprs!8198 ct2!346)))))))

(assert (= (and d!2260088 c!1351544) b!7264422))

(assert (= (and d!2260088 (not c!1351544)) b!7264423))

(declare-fun m!7949170 () Bool)

(assert (=> b!7264423 m!7949170))

(declare-fun m!7949172 () Bool)

(assert (=> b!7264423 m!7949172))

(assert (=> d!2259986 d!2260088))

(declare-fun b!7264424 () Bool)

(declare-fun e!4356326 () (Set Context!15396))

(declare-fun e!4356325 () (Set Context!15396))

(assert (=> b!7264424 (= e!4356326 e!4356325)))

(declare-fun c!1351545 () Bool)

(assert (=> b!7264424 (= c!1351545 (is-Cons!70707 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885))))))))

(declare-fun bm!661904 () Bool)

(declare-fun call!661909 () (Set Context!15396))

(assert (=> bm!661904 (= call!661909 (derivationStepZipperDown!2692 (h!77155 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885))))) (Context!15397 (t!384897 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885)))))) (h!77156 s!7854)))))

(declare-fun d!2260090 () Bool)

(declare-fun c!1351546 () Bool)

(declare-fun e!4356324 () Bool)

(assert (=> d!2260090 (= c!1351546 e!4356324)))

(declare-fun res!2945246 () Bool)

(assert (=> d!2260090 (=> (not res!2945246) (not e!4356324))))

(assert (=> d!2260090 (= res!2945246 (is-Cons!70707 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885))))))))

(assert (=> d!2260090 (= (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 lt!2591885))) (h!77156 s!7854)) e!4356326)))

(declare-fun b!7264425 () Bool)

(assert (=> b!7264425 (= e!4356324 (nullable!7958 (h!77155 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885)))))))))

(declare-fun b!7264426 () Bool)

(assert (=> b!7264426 (= e!4356325 call!661909)))

(declare-fun b!7264427 () Bool)

(assert (=> b!7264427 (= e!4356325 (as set.empty (Set Context!15396)))))

(declare-fun b!7264428 () Bool)

(assert (=> b!7264428 (= e!4356326 (set.union call!661909 (derivationStepZipperUp!2528 (Context!15397 (t!384897 (exprs!8198 (Context!15397 (t!384897 (exprs!8198 lt!2591885)))))) (h!77156 s!7854))))))

(assert (= (and d!2260090 res!2945246) b!7264425))

(assert (= (and d!2260090 c!1351546) b!7264428))

(assert (= (and d!2260090 (not c!1351546)) b!7264424))

(assert (= (and b!7264424 c!1351545) b!7264426))

(assert (= (and b!7264424 (not c!1351545)) b!7264427))

(assert (= (or b!7264428 b!7264426) bm!661904))

(declare-fun m!7949174 () Bool)

(assert (=> bm!661904 m!7949174))

(declare-fun m!7949176 () Bool)

(assert (=> b!7264425 m!7949176))

(declare-fun m!7949178 () Bool)

(assert (=> b!7264428 m!7949178))

(assert (=> b!7264188 d!2260090))

(declare-fun b!7264429 () Bool)

(declare-fun e!4356327 () Bool)

(declare-fun tp!2040171 () Bool)

(assert (=> b!7264429 (= e!4356327 (and tp_is_empty!46981 tp!2040171))))

(assert (=> b!7264227 (= tp!2040149 e!4356327)))

(assert (= (and b!7264227 (is-Cons!70708 (t!384898 (t!384898 s!7854)))) b!7264429))

(declare-fun b!7264443 () Bool)

(declare-fun e!4356330 () Bool)

(declare-fun tp!2040182 () Bool)

(declare-fun tp!2040185 () Bool)

(assert (=> b!7264443 (= e!4356330 (and tp!2040182 tp!2040185))))

(assert (=> b!7264222 (= tp!2040145 e!4356330)))

(declare-fun b!7264440 () Bool)

(assert (=> b!7264440 (= e!4356330 tp_is_empty!46981)))

(declare-fun b!7264442 () Bool)

(declare-fun tp!2040186 () Bool)

(assert (=> b!7264442 (= e!4356330 tp!2040186)))

(declare-fun b!7264441 () Bool)

(declare-fun tp!2040184 () Bool)

(declare-fun tp!2040183 () Bool)

(assert (=> b!7264441 (= e!4356330 (and tp!2040184 tp!2040183))))

(assert (= (and b!7264222 (is-ElementMatch!18758 (h!77155 (exprs!8198 ct1!250)))) b!7264440))

(assert (= (and b!7264222 (is-Concat!27603 (h!77155 (exprs!8198 ct1!250)))) b!7264441))

(assert (= (and b!7264222 (is-Star!18758 (h!77155 (exprs!8198 ct1!250)))) b!7264442))

(assert (= (and b!7264222 (is-Union!18758 (h!77155 (exprs!8198 ct1!250)))) b!7264443))

(declare-fun b!7264444 () Bool)

(declare-fun e!4356331 () Bool)

(declare-fun tp!2040187 () Bool)

(declare-fun tp!2040188 () Bool)

(assert (=> b!7264444 (= e!4356331 (and tp!2040187 tp!2040188))))

(assert (=> b!7264222 (= tp!2040146 e!4356331)))

(assert (= (and b!7264222 (is-Cons!70707 (t!384897 (exprs!8198 ct1!250)))) b!7264444))

(declare-fun b!7264448 () Bool)

(declare-fun e!4356332 () Bool)

(declare-fun tp!2040189 () Bool)

(declare-fun tp!2040192 () Bool)

(assert (=> b!7264448 (= e!4356332 (and tp!2040189 tp!2040192))))

(assert (=> b!7264228 (= tp!2040150 e!4356332)))

(declare-fun b!7264445 () Bool)

(assert (=> b!7264445 (= e!4356332 tp_is_empty!46981)))

(declare-fun b!7264447 () Bool)

(declare-fun tp!2040193 () Bool)

(assert (=> b!7264447 (= e!4356332 tp!2040193)))

(declare-fun b!7264446 () Bool)

(declare-fun tp!2040191 () Bool)

(declare-fun tp!2040190 () Bool)

(assert (=> b!7264446 (= e!4356332 (and tp!2040191 tp!2040190))))

(assert (= (and b!7264228 (is-ElementMatch!18758 (h!77155 (exprs!8198 ct2!346)))) b!7264445))

(assert (= (and b!7264228 (is-Concat!27603 (h!77155 (exprs!8198 ct2!346)))) b!7264446))

(assert (= (and b!7264228 (is-Star!18758 (h!77155 (exprs!8198 ct2!346)))) b!7264447))

(assert (= (and b!7264228 (is-Union!18758 (h!77155 (exprs!8198 ct2!346)))) b!7264448))

(declare-fun b!7264449 () Bool)

(declare-fun e!4356333 () Bool)

(declare-fun tp!2040194 () Bool)

(declare-fun tp!2040195 () Bool)

(assert (=> b!7264449 (= e!4356333 (and tp!2040194 tp!2040195))))

(assert (=> b!7264228 (= tp!2040151 e!4356333)))

(assert (= (and b!7264228 (is-Cons!70707 (t!384897 (exprs!8198 ct2!346)))) b!7264449))

(declare-fun b_lambda!279571 () Bool)

(assert (= b_lambda!279559 (or d!2259956 b_lambda!279571)))

(declare-fun bs!1910043 () Bool)

(declare-fun d!2260092 () Bool)

(assert (= bs!1910043 (and d!2260092 d!2259956)))

(assert (=> bs!1910043 (= (dynLambda!28870 lambda!447204 (h!77155 (exprs!8198 ct1!250))) (nullable!7958 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> bs!1910043 m!7948850))

(assert (=> b!7264350 d!2260092))

(declare-fun b_lambda!279573 () Bool)

(assert (= b_lambda!279565 (or d!2259972 b_lambda!279573)))

(declare-fun bs!1910044 () Bool)

(declare-fun d!2260094 () Bool)

(assert (= bs!1910044 (and d!2260094 d!2259972)))

(assert (=> bs!1910044 (= (dynLambda!28870 lambda!447207 (h!77155 (exprs!8198 ct2!346))) (validRegex!9563 (h!77155 (exprs!8198 ct2!346))))))

(declare-fun m!7949180 () Bool)

(assert (=> bs!1910044 m!7949180))

(assert (=> b!7264372 d!2260094))

(declare-fun b_lambda!279575 () Bool)

(assert (= b_lambda!279561 (or b!7264098 b_lambda!279575)))

(declare-fun bs!1910045 () Bool)

(declare-fun d!2260096 () Bool)

(assert (= bs!1910045 (and d!2260096 b!7264098)))

(assert (=> bs!1910045 (= (dynLambda!28870 lambda!447186 (h!77155 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)))) (validRegex!9563 (h!77155 (++!16658 (exprs!8198 ct1!250) (exprs!8198 ct2!346)))))))

(declare-fun m!7949182 () Bool)

(assert (=> bs!1910045 m!7949182))

(assert (=> b!7264357 d!2260096))

(declare-fun b_lambda!279577 () Bool)

(assert (= b_lambda!279569 (or b!7264098 b_lambda!279577)))

(assert (=> d!2260078 d!2259998))

(declare-fun b_lambda!279579 () Bool)

(assert (= b_lambda!279567 (or d!2259974 b_lambda!279579)))

(declare-fun bs!1910046 () Bool)

(declare-fun d!2260098 () Bool)

(assert (= bs!1910046 (and d!2260098 d!2259974)))

(assert (=> bs!1910046 (= (dynLambda!28870 lambda!447208 (h!77155 (exprs!8198 ct1!250))) (validRegex!9563 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> bs!1910046 m!7948846))

(assert (=> b!7264374 d!2260098))

(declare-fun b_lambda!279581 () Bool)

(assert (= b_lambda!279563 (or b!7264098 b_lambda!279581)))

(declare-fun bs!1910047 () Bool)

(declare-fun d!2260100 () Bool)

(assert (= bs!1910047 (and d!2260100 b!7264098)))

(assert (=> bs!1910047 (= (dynLambda!28870 lambda!447186 (h!77155 (exprs!8198 ct1!250))) (validRegex!9563 (h!77155 (exprs!8198 ct1!250))))))

(assert (=> bs!1910047 m!7948846))

(assert (=> b!7264359 d!2260100))

(declare-fun b_lambda!279583 () Bool)

(assert (= b_lambda!279557 (or b!7264098 b_lambda!279583)))

(assert (=> d!2260028 d!2260000))

(push 1)

(assert (not bm!661899))

(assert (not bs!1910044))

(assert (not bm!661891))

(assert (not b_lambda!279577))

(assert (not b!7264351))

(assert (not b_lambda!279547))

(assert (not b!7264425))

(assert (not b_lambda!279583))

(assert (not d!2260048))

(assert (not b_lambda!279573))

(assert (not b!7264360))

(assert (not b!7264441))

(assert (not d!2260068))

(assert (not b!7264443))

(assert (not d!2260040))

(assert (not bm!661896))

(assert (not bs!1910045))

(assert (not bm!661904))

(assert (not bm!661898))

(assert (not b!7264429))

(assert (not bm!661889))

(assert (not b!7264442))

(assert (not bm!661871))

(assert (not b!7264447))

(assert (not bs!1910043))

(assert (not b!7264446))

(assert (not bm!661888))

(assert (not bm!661872))

(assert (not b!7264375))

(assert (not b!7264408))

(assert (not d!2260032))

(assert (not b!7264373))

(assert (not bm!661894))

(assert (not bs!1910047))

(assert (not b!7264336))

(assert tp_is_empty!46981)

(assert (not d!2260046))

(assert (not b!7264371))

(assert (not b!7264383))

(assert (not b_lambda!279575))

(assert (not bm!661901))

(assert (not b!7264362))

(assert (not d!2260082))

(assert (not d!2260028))

(assert (not b_lambda!279581))

(assert (not b!7264444))

(assert (not b!7264419))

(assert (not bs!1910046))

(assert (not b!7264412))

(assert (not b!7264358))

(assert (not setNonEmpty!53615))

(assert (not b!7264361))

(assert (not b_lambda!279549))

(assert (not b!7264381))

(assert (not b!7264387))

(assert (not b!7264423))

(assert (not b!7264409))

(assert (not b_lambda!279579))

(assert (not b!7264385))

(assert (not bm!661886))

(assert (not b_lambda!279571))

(assert (not b!7264428))

(assert (not b!7264421))

(assert (not b!7264448))

(assert (not b!7264356))

(assert (not bm!661892))

(assert (not d!2260058))

(assert (not d!2260044))

(assert (not setNonEmpty!53614))

(assert (not b!7264411))

(assert (not b!7264449))

(assert (not b!7264399))

(assert (not bm!661903))

(assert (not d!2260078))

(assert (not b!7264353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

