; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743442 () Bool)

(assert start!743442)

(declare-fun b!7857023 () Bool)

(declare-fun e!4643752 () Bool)

(declare-fun tp_is_empty!52597 () Bool)

(declare-fun tp!2327675 () Bool)

(assert (=> b!7857023 (= e!4643752 (and tp_is_empty!52597 tp!2327675))))

(declare-fun b!7857024 () Bool)

(declare-fun res!3123774 () Bool)

(declare-fun e!4643753 () Bool)

(assert (=> b!7857024 (=> (not res!3123774) (not e!4643753))))

(declare-datatypes ((C!42524 0))(
  ( (C!42525 (val!31724 Int)) )
))
(declare-datatypes ((Regex!21099 0))(
  ( (ElementMatch!21099 (c!1444041 C!42524)) (Concat!29944 (regOne!42710 Regex!21099) (regTwo!42710 Regex!21099)) (EmptyExpr!21099) (Star!21099 (reg!21428 Regex!21099)) (EmptyLang!21099) (Union!21099 (regOne!42711 Regex!21099) (regTwo!42711 Regex!21099)) )
))
(declare-fun r2!6165 () Regex!21099)

(declare-datatypes ((List!73958 0))(
  ( (Nil!73834) (Cons!73834 (h!80282 C!42524) (t!388693 List!73958)) )
))
(declare-fun s2!3706 () List!73958)

(declare-fun matchR!10535 (Regex!21099 List!73958) Bool)

(assert (=> b!7857024 (= res!3123774 (matchR!10535 r2!6165 s2!3706))))

(declare-fun b!7857026 () Bool)

(declare-fun e!4643751 () Bool)

(declare-fun tp!2327671 () Bool)

(assert (=> b!7857026 (= e!4643751 tp!2327671)))

(declare-fun b!7857027 () Bool)

(declare-fun e!4643754 () Bool)

(declare-fun tp!2327674 () Bool)

(assert (=> b!7857027 (= e!4643754 (and tp_is_empty!52597 tp!2327674))))

(declare-fun b!7857028 () Bool)

(declare-fun tp!2327676 () Bool)

(declare-fun tp!2327673 () Bool)

(assert (=> b!7857028 (= e!4643751 (and tp!2327676 tp!2327673))))

(declare-fun b!7857029 () Bool)

(declare-fun e!4643749 () Bool)

(declare-fun tp!2327666 () Bool)

(assert (=> b!7857029 (= e!4643749 tp!2327666)))

(declare-fun b!7857030 () Bool)

(declare-fun res!3123775 () Bool)

(assert (=> b!7857030 (=> (not res!3123775) (not e!4643753))))

(declare-fun s1!4084 () List!73958)

(get-info :version)

(assert (=> b!7857030 (= res!3123775 ((_ is Cons!73834) s1!4084))))

(declare-fun b!7857031 () Bool)

(declare-fun e!4643750 () Bool)

(declare-fun e!4643755 () Bool)

(assert (=> b!7857031 (= e!4643750 e!4643755)))

(declare-fun res!3123776 () Bool)

(assert (=> b!7857031 (=> (not res!3123776) (not e!4643755))))

(declare-fun lt!2680071 () Regex!21099)

(declare-fun validRegex!11509 (Regex!21099) Bool)

(assert (=> b!7857031 (= res!3123776 (validRegex!11509 lt!2680071))))

(declare-fun b!7857032 () Bool)

(declare-fun res!3123773 () Bool)

(assert (=> b!7857032 (=> (not res!3123773) (not e!4643753))))

(assert (=> b!7857032 (= res!3123773 (validRegex!11509 r2!6165))))

(declare-fun b!7857033 () Bool)

(declare-fun tp!2327669 () Bool)

(declare-fun tp!2327665 () Bool)

(assert (=> b!7857033 (= e!4643749 (and tp!2327669 tp!2327665))))

(declare-fun b!7857034 () Bool)

(assert (=> b!7857034 (= e!4643755 true)))

(declare-fun res!3123777 () Bool)

(assert (=> start!743442 (=> (not res!3123777) (not e!4643753))))

(declare-fun r1!6227 () Regex!21099)

(assert (=> start!743442 (= res!3123777 (validRegex!11509 r1!6227))))

(assert (=> start!743442 e!4643753))

(assert (=> start!743442 e!4643751))

(assert (=> start!743442 e!4643749))

(assert (=> start!743442 e!4643754))

(assert (=> start!743442 e!4643752))

(declare-fun b!7857025 () Bool)

(assert (=> b!7857025 (= e!4643753 (not e!4643750))))

(declare-fun res!3123772 () Bool)

(assert (=> b!7857025 (=> res!3123772 e!4643750)))

(declare-fun nullable!9371 (Regex!21099) Bool)

(assert (=> b!7857025 (= res!3123772 (nullable!9371 r1!6227))))

(declare-fun ++!18099 (List!73958 List!73958) List!73958)

(assert (=> b!7857025 (matchR!10535 lt!2680071 (++!18099 (t!388693 s1!4084) s2!3706))))

(declare-fun lt!2680069 () Regex!21099)

(assert (=> b!7857025 (= lt!2680071 (Concat!29944 lt!2680069 r2!6165))))

(declare-datatypes ((Unit!168924 0))(
  ( (Unit!168925) )
))
(declare-fun lt!2680070 () Unit!168924)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!458 (Regex!21099 Regex!21099 List!73958 List!73958) Unit!168924)

(assert (=> b!7857025 (= lt!2680070 (lemmaTwoRegexMatchThenConcatMatchesConcatString!458 lt!2680069 r2!6165 (t!388693 s1!4084) s2!3706))))

(declare-fun derivativeStep!6334 (Regex!21099 C!42524) Regex!21099)

(assert (=> b!7857025 (= lt!2680069 (derivativeStep!6334 r1!6227 (h!80282 s1!4084)))))

(declare-fun b!7857035 () Bool)

(declare-fun res!3123778 () Bool)

(assert (=> b!7857035 (=> res!3123778 e!4643750)))

(assert (=> b!7857035 (= res!3123778 (not (= (derivativeStep!6334 (Concat!29944 r1!6227 r2!6165) (h!80282 s1!4084)) (Union!21099 lt!2680071 EmptyLang!21099))))))

(declare-fun b!7857036 () Bool)

(declare-fun res!3123771 () Bool)

(assert (=> b!7857036 (=> (not res!3123771) (not e!4643753))))

(assert (=> b!7857036 (= res!3123771 (matchR!10535 r1!6227 s1!4084))))

(declare-fun b!7857037 () Bool)

(assert (=> b!7857037 (= e!4643751 tp_is_empty!52597)))

(declare-fun b!7857038 () Bool)

(assert (=> b!7857038 (= e!4643749 tp_is_empty!52597)))

(declare-fun b!7857039 () Bool)

(declare-fun tp!2327667 () Bool)

(declare-fun tp!2327668 () Bool)

(assert (=> b!7857039 (= e!4643751 (and tp!2327667 tp!2327668))))

(declare-fun b!7857040 () Bool)

(declare-fun tp!2327670 () Bool)

(declare-fun tp!2327672 () Bool)

(assert (=> b!7857040 (= e!4643749 (and tp!2327670 tp!2327672))))

(assert (= (and start!743442 res!3123777) b!7857032))

(assert (= (and b!7857032 res!3123773) b!7857036))

(assert (= (and b!7857036 res!3123771) b!7857024))

(assert (= (and b!7857024 res!3123774) b!7857030))

(assert (= (and b!7857030 res!3123775) b!7857025))

(assert (= (and b!7857025 (not res!3123772)) b!7857035))

(assert (= (and b!7857035 (not res!3123778)) b!7857031))

(assert (= (and b!7857031 res!3123776) b!7857034))

(assert (= (and start!743442 ((_ is ElementMatch!21099) r1!6227)) b!7857037))

(assert (= (and start!743442 ((_ is Concat!29944) r1!6227)) b!7857028))

(assert (= (and start!743442 ((_ is Star!21099) r1!6227)) b!7857026))

(assert (= (and start!743442 ((_ is Union!21099) r1!6227)) b!7857039))

(assert (= (and start!743442 ((_ is ElementMatch!21099) r2!6165)) b!7857038))

(assert (= (and start!743442 ((_ is Concat!29944) r2!6165)) b!7857040))

(assert (= (and start!743442 ((_ is Star!21099) r2!6165)) b!7857029))

(assert (= (and start!743442 ((_ is Union!21099) r2!6165)) b!7857033))

(assert (= (and start!743442 ((_ is Cons!73834) s1!4084)) b!7857027))

(assert (= (and start!743442 ((_ is Cons!73834) s2!3706)) b!7857023))

(declare-fun m!8260886 () Bool)

(assert (=> b!7857025 m!8260886))

(declare-fun m!8260888 () Bool)

(assert (=> b!7857025 m!8260888))

(declare-fun m!8260890 () Bool)

(assert (=> b!7857025 m!8260890))

(declare-fun m!8260892 () Bool)

(assert (=> b!7857025 m!8260892))

(declare-fun m!8260894 () Bool)

(assert (=> b!7857025 m!8260894))

(assert (=> b!7857025 m!8260892))

(declare-fun m!8260896 () Bool)

(assert (=> b!7857032 m!8260896))

(declare-fun m!8260898 () Bool)

(assert (=> b!7857036 m!8260898))

(declare-fun m!8260900 () Bool)

(assert (=> start!743442 m!8260900))

(declare-fun m!8260902 () Bool)

(assert (=> b!7857035 m!8260902))

(declare-fun m!8260904 () Bool)

(assert (=> b!7857031 m!8260904))

(declare-fun m!8260906 () Bool)

(assert (=> b!7857024 m!8260906))

(check-sat (not b!7857026) (not b!7857024) (not b!7857023) (not b!7857029) tp_is_empty!52597 (not b!7857039) (not b!7857035) (not b!7857033) (not b!7857040) (not b!7857036) (not b!7857032) (not b!7857031) (not b!7857028) (not start!743442) (not b!7857025) (not b!7857027))
(check-sat)
(get-model)

(declare-fun d!2354122 () Bool)

(declare-fun res!3123813 () Bool)

(declare-fun e!4643799 () Bool)

(assert (=> d!2354122 (=> res!3123813 e!4643799)))

(assert (=> d!2354122 (= res!3123813 ((_ is ElementMatch!21099) r1!6227))))

(assert (=> d!2354122 (= (validRegex!11509 r1!6227) e!4643799)))

(declare-fun b!7857095 () Bool)

(declare-fun e!4643804 () Bool)

(declare-fun call!728431 () Bool)

(assert (=> b!7857095 (= e!4643804 call!728431)))

(declare-fun c!1444055 () Bool)

(declare-fun c!1444054 () Bool)

(declare-fun bm!728426 () Bool)

(declare-fun call!728433 () Bool)

(assert (=> bm!728426 (= call!728433 (validRegex!11509 (ite c!1444054 (reg!21428 r1!6227) (ite c!1444055 (regOne!42711 r1!6227) (regTwo!42710 r1!6227)))))))

(declare-fun b!7857096 () Bool)

(declare-fun e!4643801 () Bool)

(declare-fun e!4643800 () Bool)

(assert (=> b!7857096 (= e!4643801 e!4643800)))

(declare-fun res!3123811 () Bool)

(assert (=> b!7857096 (=> (not res!3123811) (not e!4643800))))

(assert (=> b!7857096 (= res!3123811 call!728431)))

(declare-fun b!7857097 () Bool)

(declare-fun call!728432 () Bool)

(assert (=> b!7857097 (= e!4643800 call!728432)))

(declare-fun b!7857098 () Bool)

(declare-fun e!4643803 () Bool)

(assert (=> b!7857098 (= e!4643803 call!728433)))

(declare-fun bm!728427 () Bool)

(assert (=> bm!728427 (= call!728432 call!728433)))

(declare-fun b!7857099 () Bool)

(declare-fun e!4643802 () Bool)

(assert (=> b!7857099 (= e!4643799 e!4643802)))

(assert (=> b!7857099 (= c!1444054 ((_ is Star!21099) r1!6227))))

(declare-fun bm!728428 () Bool)

(assert (=> bm!728428 (= call!728431 (validRegex!11509 (ite c!1444055 (regTwo!42711 r1!6227) (regOne!42710 r1!6227))))))

(declare-fun b!7857100 () Bool)

(declare-fun res!3123812 () Bool)

(assert (=> b!7857100 (=> (not res!3123812) (not e!4643804))))

(assert (=> b!7857100 (= res!3123812 call!728432)))

(declare-fun e!4643798 () Bool)

(assert (=> b!7857100 (= e!4643798 e!4643804)))

(declare-fun b!7857101 () Bool)

(declare-fun res!3123809 () Bool)

(assert (=> b!7857101 (=> res!3123809 e!4643801)))

(assert (=> b!7857101 (= res!3123809 (not ((_ is Concat!29944) r1!6227)))))

(assert (=> b!7857101 (= e!4643798 e!4643801)))

(declare-fun b!7857102 () Bool)

(assert (=> b!7857102 (= e!4643802 e!4643798)))

(assert (=> b!7857102 (= c!1444055 ((_ is Union!21099) r1!6227))))

(declare-fun b!7857103 () Bool)

(assert (=> b!7857103 (= e!4643802 e!4643803)))

(declare-fun res!3123810 () Bool)

(assert (=> b!7857103 (= res!3123810 (not (nullable!9371 (reg!21428 r1!6227))))))

(assert (=> b!7857103 (=> (not res!3123810) (not e!4643803))))

(assert (= (and d!2354122 (not res!3123813)) b!7857099))

(assert (= (and b!7857099 c!1444054) b!7857103))

(assert (= (and b!7857099 (not c!1444054)) b!7857102))

(assert (= (and b!7857103 res!3123810) b!7857098))

(assert (= (and b!7857102 c!1444055) b!7857100))

(assert (= (and b!7857102 (not c!1444055)) b!7857101))

(assert (= (and b!7857100 res!3123812) b!7857095))

(assert (= (and b!7857101 (not res!3123809)) b!7857096))

(assert (= (and b!7857096 res!3123811) b!7857097))

(assert (= (or b!7857100 b!7857097) bm!728427))

(assert (= (or b!7857095 b!7857096) bm!728428))

(assert (= (or b!7857098 bm!728427) bm!728426))

(declare-fun m!8260920 () Bool)

(assert (=> bm!728426 m!8260920))

(declare-fun m!8260922 () Bool)

(assert (=> bm!728428 m!8260922))

(declare-fun m!8260924 () Bool)

(assert (=> b!7857103 m!8260924))

(assert (=> start!743442 d!2354122))

(declare-fun b!7857174 () Bool)

(declare-fun e!4643844 () Bool)

(declare-fun head!16056 (List!73958) C!42524)

(declare-fun tail!15599 (List!73958) List!73958)

(assert (=> b!7857174 (= e!4643844 (matchR!10535 (derivativeStep!6334 r2!6165 (head!16056 s2!3706)) (tail!15599 s2!3706)))))

(declare-fun b!7857175 () Bool)

(declare-fun res!3123857 () Bool)

(declare-fun e!4643845 () Bool)

(assert (=> b!7857175 (=> res!3123857 e!4643845)))

(declare-fun isEmpty!42345 (List!73958) Bool)

(assert (=> b!7857175 (= res!3123857 (not (isEmpty!42345 (tail!15599 s2!3706))))))

(declare-fun b!7857176 () Bool)

(assert (=> b!7857176 (= e!4643845 (not (= (head!16056 s2!3706) (c!1444041 r2!6165))))))

(declare-fun d!2354128 () Bool)

(declare-fun e!4643846 () Bool)

(assert (=> d!2354128 e!4643846))

(declare-fun c!1444072 () Bool)

(assert (=> d!2354128 (= c!1444072 ((_ is EmptyExpr!21099) r2!6165))))

(declare-fun lt!2680077 () Bool)

(assert (=> d!2354128 (= lt!2680077 e!4643844)))

(declare-fun c!1444071 () Bool)

(assert (=> d!2354128 (= c!1444071 (isEmpty!42345 s2!3706))))

(assert (=> d!2354128 (validRegex!11509 r2!6165)))

(assert (=> d!2354128 (= (matchR!10535 r2!6165 s2!3706) lt!2680077)))

(declare-fun b!7857177 () Bool)

(declare-fun res!3123854 () Bool)

(declare-fun e!4643842 () Bool)

(assert (=> b!7857177 (=> res!3123854 e!4643842)))

(assert (=> b!7857177 (= res!3123854 (not ((_ is ElementMatch!21099) r2!6165)))))

(declare-fun e!4643840 () Bool)

(assert (=> b!7857177 (= e!4643840 e!4643842)))

(declare-fun b!7857178 () Bool)

(assert (=> b!7857178 (= e!4643846 e!4643840)))

(declare-fun c!1444073 () Bool)

(assert (=> b!7857178 (= c!1444073 ((_ is EmptyLang!21099) r2!6165))))

(declare-fun b!7857179 () Bool)

(declare-fun res!3123861 () Bool)

(assert (=> b!7857179 (=> res!3123861 e!4643842)))

(declare-fun e!4643841 () Bool)

(assert (=> b!7857179 (= res!3123861 e!4643841)))

(declare-fun res!3123856 () Bool)

(assert (=> b!7857179 (=> (not res!3123856) (not e!4643841))))

(assert (=> b!7857179 (= res!3123856 lt!2680077)))

(declare-fun b!7857180 () Bool)

(assert (=> b!7857180 (= e!4643841 (= (head!16056 s2!3706) (c!1444041 r2!6165)))))

(declare-fun b!7857181 () Bool)

(declare-fun e!4643843 () Bool)

(assert (=> b!7857181 (= e!4643843 e!4643845)))

(declare-fun res!3123859 () Bool)

(assert (=> b!7857181 (=> res!3123859 e!4643845)))

(declare-fun call!728439 () Bool)

(assert (=> b!7857181 (= res!3123859 call!728439)))

(declare-fun bm!728434 () Bool)

(assert (=> bm!728434 (= call!728439 (isEmpty!42345 s2!3706))))

(declare-fun b!7857182 () Bool)

(declare-fun res!3123860 () Bool)

(assert (=> b!7857182 (=> (not res!3123860) (not e!4643841))))

(assert (=> b!7857182 (= res!3123860 (isEmpty!42345 (tail!15599 s2!3706)))))

(declare-fun b!7857183 () Bool)

(assert (=> b!7857183 (= e!4643846 (= lt!2680077 call!728439))))

(declare-fun b!7857184 () Bool)

(declare-fun res!3123858 () Bool)

(assert (=> b!7857184 (=> (not res!3123858) (not e!4643841))))

(assert (=> b!7857184 (= res!3123858 (not call!728439))))

(declare-fun b!7857185 () Bool)

(assert (=> b!7857185 (= e!4643844 (nullable!9371 r2!6165))))

(declare-fun b!7857186 () Bool)

(assert (=> b!7857186 (= e!4643840 (not lt!2680077))))

(declare-fun b!7857187 () Bool)

(assert (=> b!7857187 (= e!4643842 e!4643843)))

(declare-fun res!3123855 () Bool)

(assert (=> b!7857187 (=> (not res!3123855) (not e!4643843))))

(assert (=> b!7857187 (= res!3123855 (not lt!2680077))))

(assert (= (and d!2354128 c!1444071) b!7857185))

(assert (= (and d!2354128 (not c!1444071)) b!7857174))

(assert (= (and d!2354128 c!1444072) b!7857183))

(assert (= (and d!2354128 (not c!1444072)) b!7857178))

(assert (= (and b!7857178 c!1444073) b!7857186))

(assert (= (and b!7857178 (not c!1444073)) b!7857177))

(assert (= (and b!7857177 (not res!3123854)) b!7857179))

(assert (= (and b!7857179 res!3123856) b!7857184))

(assert (= (and b!7857184 res!3123858) b!7857182))

(assert (= (and b!7857182 res!3123860) b!7857180))

(assert (= (and b!7857179 (not res!3123861)) b!7857187))

(assert (= (and b!7857187 res!3123855) b!7857181))

(assert (= (and b!7857181 (not res!3123859)) b!7857175))

(assert (= (and b!7857175 (not res!3123857)) b!7857176))

(assert (= (or b!7857183 b!7857181 b!7857184) bm!728434))

(declare-fun m!8260938 () Bool)

(assert (=> b!7857180 m!8260938))

(declare-fun m!8260940 () Bool)

(assert (=> b!7857185 m!8260940))

(declare-fun m!8260942 () Bool)

(assert (=> d!2354128 m!8260942))

(assert (=> d!2354128 m!8260896))

(assert (=> b!7857176 m!8260938))

(assert (=> b!7857174 m!8260938))

(assert (=> b!7857174 m!8260938))

(declare-fun m!8260944 () Bool)

(assert (=> b!7857174 m!8260944))

(declare-fun m!8260946 () Bool)

(assert (=> b!7857174 m!8260946))

(assert (=> b!7857174 m!8260944))

(assert (=> b!7857174 m!8260946))

(declare-fun m!8260948 () Bool)

(assert (=> b!7857174 m!8260948))

(assert (=> b!7857175 m!8260946))

(assert (=> b!7857175 m!8260946))

(declare-fun m!8260950 () Bool)

(assert (=> b!7857175 m!8260950))

(assert (=> bm!728434 m!8260942))

(assert (=> b!7857182 m!8260946))

(assert (=> b!7857182 m!8260946))

(assert (=> b!7857182 m!8260950))

(assert (=> b!7857024 d!2354128))

(declare-fun d!2354132 () Bool)

(declare-fun nullableFct!3696 (Regex!21099) Bool)

(assert (=> d!2354132 (= (nullable!9371 r1!6227) (nullableFct!3696 r1!6227))))

(declare-fun bs!1967151 () Bool)

(assert (= bs!1967151 d!2354132))

(declare-fun m!8260952 () Bool)

(assert (=> bs!1967151 m!8260952))

(assert (=> b!7857025 d!2354132))

(declare-fun b!7857275 () Bool)

(declare-fun e!4643897 () Regex!21099)

(assert (=> b!7857275 (= e!4643897 EmptyLang!21099)))

(declare-fun b!7857276 () Bool)

(declare-fun e!4643895 () Regex!21099)

(declare-fun call!728466 () Regex!21099)

(assert (=> b!7857276 (= e!4643895 (Concat!29944 call!728466 r1!6227))))

(declare-fun b!7857277 () Bool)

(declare-fun call!728468 () Regex!21099)

(declare-fun e!4643896 () Regex!21099)

(assert (=> b!7857277 (= e!4643896 (Union!21099 (Concat!29944 call!728466 (regTwo!42710 r1!6227)) call!728468))))

(declare-fun c!1444107 () Bool)

(declare-fun c!1444111 () Bool)

(declare-fun call!728467 () Regex!21099)

(declare-fun bm!728460 () Bool)

(assert (=> bm!728460 (= call!728467 (derivativeStep!6334 (ite c!1444107 (regTwo!42711 r1!6227) (ite c!1444111 (reg!21428 r1!6227) (regOne!42710 r1!6227))) (h!80282 s1!4084)))))

(declare-fun b!7857278 () Bool)

(declare-fun e!4643894 () Regex!21099)

(assert (=> b!7857278 (= e!4643894 e!4643895)))

(assert (=> b!7857278 (= c!1444111 ((_ is Star!21099) r1!6227))))

(declare-fun b!7857279 () Bool)

(assert (=> b!7857279 (= c!1444107 ((_ is Union!21099) r1!6227))))

(declare-fun e!4643893 () Regex!21099)

(assert (=> b!7857279 (= e!4643893 e!4643894)))

(declare-fun b!7857280 () Bool)

(declare-fun c!1444110 () Bool)

(assert (=> b!7857280 (= c!1444110 (nullable!9371 (regOne!42710 r1!6227)))))

(assert (=> b!7857280 (= e!4643895 e!4643896)))

(declare-fun d!2354134 () Bool)

(declare-fun lt!2680085 () Regex!21099)

(assert (=> d!2354134 (validRegex!11509 lt!2680085)))

(assert (=> d!2354134 (= lt!2680085 e!4643897)))

(declare-fun c!1444108 () Bool)

(assert (=> d!2354134 (= c!1444108 (or ((_ is EmptyExpr!21099) r1!6227) ((_ is EmptyLang!21099) r1!6227)))))

(assert (=> d!2354134 (validRegex!11509 r1!6227)))

(assert (=> d!2354134 (= (derivativeStep!6334 r1!6227 (h!80282 s1!4084)) lt!2680085)))

(declare-fun b!7857281 () Bool)

(assert (=> b!7857281 (= e!4643893 (ite (= (h!80282 s1!4084) (c!1444041 r1!6227)) EmptyExpr!21099 EmptyLang!21099))))

(declare-fun bm!728461 () Bool)

(declare-fun call!728465 () Regex!21099)

(assert (=> bm!728461 (= call!728465 (derivativeStep!6334 (ite c!1444107 (regOne!42711 r1!6227) (ite c!1444110 (regTwo!42710 r1!6227) (regOne!42710 r1!6227))) (h!80282 s1!4084)))))

(declare-fun b!7857282 () Bool)

(assert (=> b!7857282 (= e!4643897 e!4643893)))

(declare-fun c!1444109 () Bool)

(assert (=> b!7857282 (= c!1444109 ((_ is ElementMatch!21099) r1!6227))))

(declare-fun bm!728462 () Bool)

(assert (=> bm!728462 (= call!728468 call!728465)))

(declare-fun b!7857283 () Bool)

(assert (=> b!7857283 (= e!4643896 (Union!21099 (Concat!29944 call!728468 (regTwo!42710 r1!6227)) EmptyLang!21099))))

(declare-fun b!7857284 () Bool)

(assert (=> b!7857284 (= e!4643894 (Union!21099 call!728465 call!728467))))

(declare-fun bm!728463 () Bool)

(assert (=> bm!728463 (= call!728466 call!728467)))

(assert (= (and d!2354134 c!1444108) b!7857275))

(assert (= (and d!2354134 (not c!1444108)) b!7857282))

(assert (= (and b!7857282 c!1444109) b!7857281))

(assert (= (and b!7857282 (not c!1444109)) b!7857279))

(assert (= (and b!7857279 c!1444107) b!7857284))

(assert (= (and b!7857279 (not c!1444107)) b!7857278))

(assert (= (and b!7857278 c!1444111) b!7857276))

(assert (= (and b!7857278 (not c!1444111)) b!7857280))

(assert (= (and b!7857280 c!1444110) b!7857277))

(assert (= (and b!7857280 (not c!1444110)) b!7857283))

(assert (= (or b!7857277 b!7857283) bm!728462))

(assert (= (or b!7857276 b!7857277) bm!728463))

(assert (= (or b!7857284 bm!728463) bm!728460))

(assert (= (or b!7857284 bm!728462) bm!728461))

(declare-fun m!8260998 () Bool)

(assert (=> bm!728460 m!8260998))

(declare-fun m!8261000 () Bool)

(assert (=> b!7857280 m!8261000))

(declare-fun m!8261002 () Bool)

(assert (=> d!2354134 m!8261002))

(assert (=> d!2354134 m!8260900))

(declare-fun m!8261004 () Bool)

(assert (=> bm!728461 m!8261004))

(assert (=> b!7857025 d!2354134))

(declare-fun d!2354144 () Bool)

(assert (=> d!2354144 (matchR!10535 (Concat!29944 lt!2680069 r2!6165) (++!18099 (t!388693 s1!4084) s2!3706))))

(declare-fun lt!2680092 () Unit!168924)

(declare-fun choose!59661 (Regex!21099 Regex!21099 List!73958 List!73958) Unit!168924)

(assert (=> d!2354144 (= lt!2680092 (choose!59661 lt!2680069 r2!6165 (t!388693 s1!4084) s2!3706))))

(declare-fun e!4643908 () Bool)

(assert (=> d!2354144 e!4643908))

(declare-fun res!3123888 () Bool)

(assert (=> d!2354144 (=> (not res!3123888) (not e!4643908))))

(assert (=> d!2354144 (= res!3123888 (validRegex!11509 lt!2680069))))

(assert (=> d!2354144 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!458 lt!2680069 r2!6165 (t!388693 s1!4084) s2!3706) lt!2680092)))

(declare-fun b!7857300 () Bool)

(assert (=> b!7857300 (= e!4643908 (validRegex!11509 r2!6165))))

(assert (= (and d!2354144 res!3123888) b!7857300))

(assert (=> d!2354144 m!8260892))

(assert (=> d!2354144 m!8260892))

(declare-fun m!8261022 () Bool)

(assert (=> d!2354144 m!8261022))

(declare-fun m!8261024 () Bool)

(assert (=> d!2354144 m!8261024))

(declare-fun m!8261026 () Bool)

(assert (=> d!2354144 m!8261026))

(assert (=> b!7857300 m!8260896))

(assert (=> b!7857025 d!2354144))

(declare-fun e!4643924 () Bool)

(declare-fun b!7857339 () Bool)

(declare-fun lt!2680098 () List!73958)

(assert (=> b!7857339 (= e!4643924 (or (not (= s2!3706 Nil!73834)) (= lt!2680098 (t!388693 s1!4084))))))

(declare-fun b!7857338 () Bool)

(declare-fun res!3123899 () Bool)

(assert (=> b!7857338 (=> (not res!3123899) (not e!4643924))))

(declare-fun size!42835 (List!73958) Int)

(assert (=> b!7857338 (= res!3123899 (= (size!42835 lt!2680098) (+ (size!42835 (t!388693 s1!4084)) (size!42835 s2!3706))))))

(declare-fun b!7857336 () Bool)

(declare-fun e!4643925 () List!73958)

(assert (=> b!7857336 (= e!4643925 s2!3706)))

(declare-fun b!7857337 () Bool)

(assert (=> b!7857337 (= e!4643925 (Cons!73834 (h!80282 (t!388693 s1!4084)) (++!18099 (t!388693 (t!388693 s1!4084)) s2!3706)))))

(declare-fun d!2354152 () Bool)

(assert (=> d!2354152 e!4643924))

(declare-fun res!3123900 () Bool)

(assert (=> d!2354152 (=> (not res!3123900) (not e!4643924))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15682 (List!73958) (InoxSet C!42524))

(assert (=> d!2354152 (= res!3123900 (= (content!15682 lt!2680098) ((_ map or) (content!15682 (t!388693 s1!4084)) (content!15682 s2!3706))))))

(assert (=> d!2354152 (= lt!2680098 e!4643925)))

(declare-fun c!1444122 () Bool)

(assert (=> d!2354152 (= c!1444122 ((_ is Nil!73834) (t!388693 s1!4084)))))

(assert (=> d!2354152 (= (++!18099 (t!388693 s1!4084) s2!3706) lt!2680098)))

(assert (= (and d!2354152 c!1444122) b!7857336))

(assert (= (and d!2354152 (not c!1444122)) b!7857337))

(assert (= (and d!2354152 res!3123900) b!7857338))

(assert (= (and b!7857338 res!3123899) b!7857339))

(declare-fun m!8261042 () Bool)

(assert (=> b!7857338 m!8261042))

(declare-fun m!8261044 () Bool)

(assert (=> b!7857338 m!8261044))

(declare-fun m!8261046 () Bool)

(assert (=> b!7857338 m!8261046))

(declare-fun m!8261048 () Bool)

(assert (=> b!7857337 m!8261048))

(declare-fun m!8261050 () Bool)

(assert (=> d!2354152 m!8261050))

(declare-fun m!8261052 () Bool)

(assert (=> d!2354152 m!8261052))

(declare-fun m!8261054 () Bool)

(assert (=> d!2354152 m!8261054))

(assert (=> b!7857025 d!2354152))

(declare-fun e!4643932 () Bool)

(declare-fun b!7857348 () Bool)

(assert (=> b!7857348 (= e!4643932 (matchR!10535 (derivativeStep!6334 lt!2680071 (head!16056 (++!18099 (t!388693 s1!4084) s2!3706))) (tail!15599 (++!18099 (t!388693 s1!4084) s2!3706))))))

(declare-fun b!7857349 () Bool)

(declare-fun res!3123904 () Bool)

(declare-fun e!4643933 () Bool)

(assert (=> b!7857349 (=> res!3123904 e!4643933)))

(assert (=> b!7857349 (= res!3123904 (not (isEmpty!42345 (tail!15599 (++!18099 (t!388693 s1!4084) s2!3706)))))))

(declare-fun b!7857350 () Bool)

(assert (=> b!7857350 (= e!4643933 (not (= (head!16056 (++!18099 (t!388693 s1!4084) s2!3706)) (c!1444041 lt!2680071))))))

(declare-fun d!2354154 () Bool)

(declare-fun e!4643934 () Bool)

(assert (=> d!2354154 e!4643934))

(declare-fun c!1444124 () Bool)

(assert (=> d!2354154 (= c!1444124 ((_ is EmptyExpr!21099) lt!2680071))))

(declare-fun lt!2680099 () Bool)

(assert (=> d!2354154 (= lt!2680099 e!4643932)))

(declare-fun c!1444123 () Bool)

(assert (=> d!2354154 (= c!1444123 (isEmpty!42345 (++!18099 (t!388693 s1!4084) s2!3706)))))

(assert (=> d!2354154 (validRegex!11509 lt!2680071)))

(assert (=> d!2354154 (= (matchR!10535 lt!2680071 (++!18099 (t!388693 s1!4084) s2!3706)) lt!2680099)))

(declare-fun b!7857351 () Bool)

(declare-fun res!3123901 () Bool)

(declare-fun e!4643930 () Bool)

(assert (=> b!7857351 (=> res!3123901 e!4643930)))

(assert (=> b!7857351 (= res!3123901 (not ((_ is ElementMatch!21099) lt!2680071)))))

(declare-fun e!4643928 () Bool)

(assert (=> b!7857351 (= e!4643928 e!4643930)))

(declare-fun b!7857352 () Bool)

(assert (=> b!7857352 (= e!4643934 e!4643928)))

(declare-fun c!1444125 () Bool)

(assert (=> b!7857352 (= c!1444125 ((_ is EmptyLang!21099) lt!2680071))))

(declare-fun b!7857353 () Bool)

(declare-fun res!3123908 () Bool)

(assert (=> b!7857353 (=> res!3123908 e!4643930)))

(declare-fun e!4643929 () Bool)

(assert (=> b!7857353 (= res!3123908 e!4643929)))

(declare-fun res!3123903 () Bool)

(assert (=> b!7857353 (=> (not res!3123903) (not e!4643929))))

(assert (=> b!7857353 (= res!3123903 lt!2680099)))

(declare-fun b!7857354 () Bool)

(assert (=> b!7857354 (= e!4643929 (= (head!16056 (++!18099 (t!388693 s1!4084) s2!3706)) (c!1444041 lt!2680071)))))

(declare-fun b!7857355 () Bool)

(declare-fun e!4643931 () Bool)

(assert (=> b!7857355 (= e!4643931 e!4643933)))

(declare-fun res!3123906 () Bool)

(assert (=> b!7857355 (=> res!3123906 e!4643933)))

(declare-fun call!728473 () Bool)

(assert (=> b!7857355 (= res!3123906 call!728473)))

(declare-fun bm!728468 () Bool)

(assert (=> bm!728468 (= call!728473 (isEmpty!42345 (++!18099 (t!388693 s1!4084) s2!3706)))))

(declare-fun b!7857356 () Bool)

(declare-fun res!3123907 () Bool)

(assert (=> b!7857356 (=> (not res!3123907) (not e!4643929))))

(assert (=> b!7857356 (= res!3123907 (isEmpty!42345 (tail!15599 (++!18099 (t!388693 s1!4084) s2!3706))))))

(declare-fun b!7857358 () Bool)

(assert (=> b!7857358 (= e!4643934 (= lt!2680099 call!728473))))

(declare-fun b!7857360 () Bool)

(declare-fun res!3123905 () Bool)

(assert (=> b!7857360 (=> (not res!3123905) (not e!4643929))))

(assert (=> b!7857360 (= res!3123905 (not call!728473))))

(declare-fun b!7857362 () Bool)

(assert (=> b!7857362 (= e!4643932 (nullable!9371 lt!2680071))))

(declare-fun b!7857364 () Bool)

(assert (=> b!7857364 (= e!4643928 (not lt!2680099))))

(declare-fun b!7857365 () Bool)

(assert (=> b!7857365 (= e!4643930 e!4643931)))

(declare-fun res!3123902 () Bool)

(assert (=> b!7857365 (=> (not res!3123902) (not e!4643931))))

(assert (=> b!7857365 (= res!3123902 (not lt!2680099))))

(assert (= (and d!2354154 c!1444123) b!7857362))

(assert (= (and d!2354154 (not c!1444123)) b!7857348))

(assert (= (and d!2354154 c!1444124) b!7857358))

(assert (= (and d!2354154 (not c!1444124)) b!7857352))

(assert (= (and b!7857352 c!1444125) b!7857364))

(assert (= (and b!7857352 (not c!1444125)) b!7857351))

(assert (= (and b!7857351 (not res!3123901)) b!7857353))

(assert (= (and b!7857353 res!3123903) b!7857360))

(assert (= (and b!7857360 res!3123905) b!7857356))

(assert (= (and b!7857356 res!3123907) b!7857354))

(assert (= (and b!7857353 (not res!3123908)) b!7857365))

(assert (= (and b!7857365 res!3123902) b!7857355))

(assert (= (and b!7857355 (not res!3123906)) b!7857349))

(assert (= (and b!7857349 (not res!3123904)) b!7857350))

(assert (= (or b!7857358 b!7857355 b!7857360) bm!728468))

(assert (=> b!7857354 m!8260892))

(declare-fun m!8261056 () Bool)

(assert (=> b!7857354 m!8261056))

(declare-fun m!8261058 () Bool)

(assert (=> b!7857362 m!8261058))

(assert (=> d!2354154 m!8260892))

(declare-fun m!8261060 () Bool)

(assert (=> d!2354154 m!8261060))

(assert (=> d!2354154 m!8260904))

(assert (=> b!7857350 m!8260892))

(assert (=> b!7857350 m!8261056))

(assert (=> b!7857348 m!8260892))

(assert (=> b!7857348 m!8261056))

(assert (=> b!7857348 m!8261056))

(declare-fun m!8261062 () Bool)

(assert (=> b!7857348 m!8261062))

(assert (=> b!7857348 m!8260892))

(declare-fun m!8261064 () Bool)

(assert (=> b!7857348 m!8261064))

(assert (=> b!7857348 m!8261062))

(assert (=> b!7857348 m!8261064))

(declare-fun m!8261066 () Bool)

(assert (=> b!7857348 m!8261066))

(assert (=> b!7857349 m!8260892))

(assert (=> b!7857349 m!8261064))

(assert (=> b!7857349 m!8261064))

(declare-fun m!8261068 () Bool)

(assert (=> b!7857349 m!8261068))

(assert (=> bm!728468 m!8260892))

(assert (=> bm!728468 m!8261060))

(assert (=> b!7857356 m!8260892))

(assert (=> b!7857356 m!8261064))

(assert (=> b!7857356 m!8261064))

(assert (=> b!7857356 m!8261068))

(assert (=> b!7857025 d!2354154))

(declare-fun b!7857395 () Bool)

(declare-fun e!4643948 () Bool)

(assert (=> b!7857395 (= e!4643948 (matchR!10535 (derivativeStep!6334 r1!6227 (head!16056 s1!4084)) (tail!15599 s1!4084)))))

(declare-fun b!7857396 () Bool)

(declare-fun res!3123912 () Bool)

(declare-fun e!4643949 () Bool)

(assert (=> b!7857396 (=> res!3123912 e!4643949)))

(assert (=> b!7857396 (= res!3123912 (not (isEmpty!42345 (tail!15599 s1!4084))))))

(declare-fun b!7857397 () Bool)

(assert (=> b!7857397 (= e!4643949 (not (= (head!16056 s1!4084) (c!1444041 r1!6227))))))

(declare-fun d!2354156 () Bool)

(declare-fun e!4643950 () Bool)

(assert (=> d!2354156 e!4643950))

(declare-fun c!1444127 () Bool)

(assert (=> d!2354156 (= c!1444127 ((_ is EmptyExpr!21099) r1!6227))))

(declare-fun lt!2680100 () Bool)

(assert (=> d!2354156 (= lt!2680100 e!4643948)))

(declare-fun c!1444126 () Bool)

(assert (=> d!2354156 (= c!1444126 (isEmpty!42345 s1!4084))))

(assert (=> d!2354156 (validRegex!11509 r1!6227)))

(assert (=> d!2354156 (= (matchR!10535 r1!6227 s1!4084) lt!2680100)))

(declare-fun b!7857398 () Bool)

(declare-fun res!3123909 () Bool)

(declare-fun e!4643946 () Bool)

(assert (=> b!7857398 (=> res!3123909 e!4643946)))

(assert (=> b!7857398 (= res!3123909 (not ((_ is ElementMatch!21099) r1!6227)))))

(declare-fun e!4643944 () Bool)

(assert (=> b!7857398 (= e!4643944 e!4643946)))

(declare-fun b!7857399 () Bool)

(assert (=> b!7857399 (= e!4643950 e!4643944)))

(declare-fun c!1444128 () Bool)

(assert (=> b!7857399 (= c!1444128 ((_ is EmptyLang!21099) r1!6227))))

(declare-fun b!7857400 () Bool)

(declare-fun res!3123916 () Bool)

(assert (=> b!7857400 (=> res!3123916 e!4643946)))

(declare-fun e!4643945 () Bool)

(assert (=> b!7857400 (= res!3123916 e!4643945)))

(declare-fun res!3123911 () Bool)

(assert (=> b!7857400 (=> (not res!3123911) (not e!4643945))))

(assert (=> b!7857400 (= res!3123911 lt!2680100)))

(declare-fun b!7857401 () Bool)

(assert (=> b!7857401 (= e!4643945 (= (head!16056 s1!4084) (c!1444041 r1!6227)))))

(declare-fun b!7857402 () Bool)

(declare-fun e!4643947 () Bool)

(assert (=> b!7857402 (= e!4643947 e!4643949)))

(declare-fun res!3123914 () Bool)

(assert (=> b!7857402 (=> res!3123914 e!4643949)))

(declare-fun call!728474 () Bool)

(assert (=> b!7857402 (= res!3123914 call!728474)))

(declare-fun bm!728469 () Bool)

(assert (=> bm!728469 (= call!728474 (isEmpty!42345 s1!4084))))

(declare-fun b!7857403 () Bool)

(declare-fun res!3123915 () Bool)

(assert (=> b!7857403 (=> (not res!3123915) (not e!4643945))))

(assert (=> b!7857403 (= res!3123915 (isEmpty!42345 (tail!15599 s1!4084)))))

(declare-fun b!7857404 () Bool)

(assert (=> b!7857404 (= e!4643950 (= lt!2680100 call!728474))))

(declare-fun b!7857405 () Bool)

(declare-fun res!3123913 () Bool)

(assert (=> b!7857405 (=> (not res!3123913) (not e!4643945))))

(assert (=> b!7857405 (= res!3123913 (not call!728474))))

(declare-fun b!7857406 () Bool)

(assert (=> b!7857406 (= e!4643948 (nullable!9371 r1!6227))))

(declare-fun b!7857407 () Bool)

(assert (=> b!7857407 (= e!4643944 (not lt!2680100))))

(declare-fun b!7857408 () Bool)

(assert (=> b!7857408 (= e!4643946 e!4643947)))

(declare-fun res!3123910 () Bool)

(assert (=> b!7857408 (=> (not res!3123910) (not e!4643947))))

(assert (=> b!7857408 (= res!3123910 (not lt!2680100))))

(assert (= (and d!2354156 c!1444126) b!7857406))

(assert (= (and d!2354156 (not c!1444126)) b!7857395))

(assert (= (and d!2354156 c!1444127) b!7857404))

(assert (= (and d!2354156 (not c!1444127)) b!7857399))

(assert (= (and b!7857399 c!1444128) b!7857407))

(assert (= (and b!7857399 (not c!1444128)) b!7857398))

(assert (= (and b!7857398 (not res!3123909)) b!7857400))

(assert (= (and b!7857400 res!3123911) b!7857405))

(assert (= (and b!7857405 res!3123913) b!7857403))

(assert (= (and b!7857403 res!3123915) b!7857401))

(assert (= (and b!7857400 (not res!3123916)) b!7857408))

(assert (= (and b!7857408 res!3123910) b!7857402))

(assert (= (and b!7857402 (not res!3123914)) b!7857396))

(assert (= (and b!7857396 (not res!3123912)) b!7857397))

(assert (= (or b!7857404 b!7857402 b!7857405) bm!728469))

(declare-fun m!8261070 () Bool)

(assert (=> b!7857401 m!8261070))

(assert (=> b!7857406 m!8260886))

(declare-fun m!8261072 () Bool)

(assert (=> d!2354156 m!8261072))

(assert (=> d!2354156 m!8260900))

(assert (=> b!7857397 m!8261070))

(assert (=> b!7857395 m!8261070))

(assert (=> b!7857395 m!8261070))

(declare-fun m!8261074 () Bool)

(assert (=> b!7857395 m!8261074))

(declare-fun m!8261076 () Bool)

(assert (=> b!7857395 m!8261076))

(assert (=> b!7857395 m!8261074))

(assert (=> b!7857395 m!8261076))

(declare-fun m!8261078 () Bool)

(assert (=> b!7857395 m!8261078))

(assert (=> b!7857396 m!8261076))

(assert (=> b!7857396 m!8261076))

(declare-fun m!8261080 () Bool)

(assert (=> b!7857396 m!8261080))

(assert (=> bm!728469 m!8261072))

(assert (=> b!7857403 m!8261076))

(assert (=> b!7857403 m!8261076))

(assert (=> b!7857403 m!8261080))

(assert (=> b!7857036 d!2354156))

(declare-fun b!7857409 () Bool)

(declare-fun e!4643955 () Regex!21099)

(assert (=> b!7857409 (= e!4643955 EmptyLang!21099)))

(declare-fun e!4643953 () Regex!21099)

(declare-fun b!7857410 () Bool)

(declare-fun call!728476 () Regex!21099)

(assert (=> b!7857410 (= e!4643953 (Concat!29944 call!728476 (Concat!29944 r1!6227 r2!6165)))))

(declare-fun e!4643954 () Regex!21099)

(declare-fun call!728478 () Regex!21099)

(declare-fun b!7857411 () Bool)

(assert (=> b!7857411 (= e!4643954 (Union!21099 (Concat!29944 call!728476 (regTwo!42710 (Concat!29944 r1!6227 r2!6165))) call!728478))))

(declare-fun bm!728470 () Bool)

(declare-fun call!728477 () Regex!21099)

(declare-fun c!1444133 () Bool)

(declare-fun c!1444129 () Bool)

(assert (=> bm!728470 (= call!728477 (derivativeStep!6334 (ite c!1444129 (regTwo!42711 (Concat!29944 r1!6227 r2!6165)) (ite c!1444133 (reg!21428 (Concat!29944 r1!6227 r2!6165)) (regOne!42710 (Concat!29944 r1!6227 r2!6165)))) (h!80282 s1!4084)))))

(declare-fun b!7857412 () Bool)

(declare-fun e!4643952 () Regex!21099)

(assert (=> b!7857412 (= e!4643952 e!4643953)))

(assert (=> b!7857412 (= c!1444133 ((_ is Star!21099) (Concat!29944 r1!6227 r2!6165)))))

(declare-fun b!7857413 () Bool)

(assert (=> b!7857413 (= c!1444129 ((_ is Union!21099) (Concat!29944 r1!6227 r2!6165)))))

(declare-fun e!4643951 () Regex!21099)

(assert (=> b!7857413 (= e!4643951 e!4643952)))

(declare-fun b!7857414 () Bool)

(declare-fun c!1444132 () Bool)

(assert (=> b!7857414 (= c!1444132 (nullable!9371 (regOne!42710 (Concat!29944 r1!6227 r2!6165))))))

(assert (=> b!7857414 (= e!4643953 e!4643954)))

(declare-fun d!2354158 () Bool)

(declare-fun lt!2680101 () Regex!21099)

(assert (=> d!2354158 (validRegex!11509 lt!2680101)))

(assert (=> d!2354158 (= lt!2680101 e!4643955)))

(declare-fun c!1444130 () Bool)

(assert (=> d!2354158 (= c!1444130 (or ((_ is EmptyExpr!21099) (Concat!29944 r1!6227 r2!6165)) ((_ is EmptyLang!21099) (Concat!29944 r1!6227 r2!6165))))))

(assert (=> d!2354158 (validRegex!11509 (Concat!29944 r1!6227 r2!6165))))

(assert (=> d!2354158 (= (derivativeStep!6334 (Concat!29944 r1!6227 r2!6165) (h!80282 s1!4084)) lt!2680101)))

(declare-fun b!7857415 () Bool)

(assert (=> b!7857415 (= e!4643951 (ite (= (h!80282 s1!4084) (c!1444041 (Concat!29944 r1!6227 r2!6165))) EmptyExpr!21099 EmptyLang!21099))))

(declare-fun bm!728471 () Bool)

(declare-fun call!728475 () Regex!21099)

(assert (=> bm!728471 (= call!728475 (derivativeStep!6334 (ite c!1444129 (regOne!42711 (Concat!29944 r1!6227 r2!6165)) (ite c!1444132 (regTwo!42710 (Concat!29944 r1!6227 r2!6165)) (regOne!42710 (Concat!29944 r1!6227 r2!6165)))) (h!80282 s1!4084)))))

(declare-fun b!7857416 () Bool)

(assert (=> b!7857416 (= e!4643955 e!4643951)))

(declare-fun c!1444131 () Bool)

(assert (=> b!7857416 (= c!1444131 ((_ is ElementMatch!21099) (Concat!29944 r1!6227 r2!6165)))))

(declare-fun bm!728472 () Bool)

(assert (=> bm!728472 (= call!728478 call!728475)))

(declare-fun b!7857417 () Bool)

(assert (=> b!7857417 (= e!4643954 (Union!21099 (Concat!29944 call!728478 (regTwo!42710 (Concat!29944 r1!6227 r2!6165))) EmptyLang!21099))))

(declare-fun b!7857418 () Bool)

(assert (=> b!7857418 (= e!4643952 (Union!21099 call!728475 call!728477))))

(declare-fun bm!728473 () Bool)

(assert (=> bm!728473 (= call!728476 call!728477)))

(assert (= (and d!2354158 c!1444130) b!7857409))

(assert (= (and d!2354158 (not c!1444130)) b!7857416))

(assert (= (and b!7857416 c!1444131) b!7857415))

(assert (= (and b!7857416 (not c!1444131)) b!7857413))

(assert (= (and b!7857413 c!1444129) b!7857418))

(assert (= (and b!7857413 (not c!1444129)) b!7857412))

(assert (= (and b!7857412 c!1444133) b!7857410))

(assert (= (and b!7857412 (not c!1444133)) b!7857414))

(assert (= (and b!7857414 c!1444132) b!7857411))

(assert (= (and b!7857414 (not c!1444132)) b!7857417))

(assert (= (or b!7857411 b!7857417) bm!728472))

(assert (= (or b!7857410 b!7857411) bm!728473))

(assert (= (or b!7857418 bm!728473) bm!728470))

(assert (= (or b!7857418 bm!728472) bm!728471))

(declare-fun m!8261082 () Bool)

(assert (=> bm!728470 m!8261082))

(declare-fun m!8261084 () Bool)

(assert (=> b!7857414 m!8261084))

(declare-fun m!8261086 () Bool)

(assert (=> d!2354158 m!8261086))

(declare-fun m!8261088 () Bool)

(assert (=> d!2354158 m!8261088))

(declare-fun m!8261090 () Bool)

(assert (=> bm!728471 m!8261090))

(assert (=> b!7857035 d!2354158))

(declare-fun d!2354160 () Bool)

(declare-fun res!3123921 () Bool)

(declare-fun e!4643957 () Bool)

(assert (=> d!2354160 (=> res!3123921 e!4643957)))

(assert (=> d!2354160 (= res!3123921 ((_ is ElementMatch!21099) r2!6165))))

(assert (=> d!2354160 (= (validRegex!11509 r2!6165) e!4643957)))

(declare-fun b!7857419 () Bool)

(declare-fun e!4643962 () Bool)

(declare-fun call!728479 () Bool)

(assert (=> b!7857419 (= e!4643962 call!728479)))

(declare-fun c!1444134 () Bool)

(declare-fun bm!728474 () Bool)

(declare-fun call!728481 () Bool)

(declare-fun c!1444135 () Bool)

(assert (=> bm!728474 (= call!728481 (validRegex!11509 (ite c!1444134 (reg!21428 r2!6165) (ite c!1444135 (regOne!42711 r2!6165) (regTwo!42710 r2!6165)))))))

(declare-fun b!7857420 () Bool)

(declare-fun e!4643959 () Bool)

(declare-fun e!4643958 () Bool)

(assert (=> b!7857420 (= e!4643959 e!4643958)))

(declare-fun res!3123919 () Bool)

(assert (=> b!7857420 (=> (not res!3123919) (not e!4643958))))

(assert (=> b!7857420 (= res!3123919 call!728479)))

(declare-fun b!7857421 () Bool)

(declare-fun call!728480 () Bool)

(assert (=> b!7857421 (= e!4643958 call!728480)))

(declare-fun b!7857422 () Bool)

(declare-fun e!4643961 () Bool)

(assert (=> b!7857422 (= e!4643961 call!728481)))

(declare-fun bm!728475 () Bool)

(assert (=> bm!728475 (= call!728480 call!728481)))

(declare-fun b!7857423 () Bool)

(declare-fun e!4643960 () Bool)

(assert (=> b!7857423 (= e!4643957 e!4643960)))

(assert (=> b!7857423 (= c!1444134 ((_ is Star!21099) r2!6165))))

(declare-fun bm!728476 () Bool)

(assert (=> bm!728476 (= call!728479 (validRegex!11509 (ite c!1444135 (regTwo!42711 r2!6165) (regOne!42710 r2!6165))))))

(declare-fun b!7857424 () Bool)

(declare-fun res!3123920 () Bool)

(assert (=> b!7857424 (=> (not res!3123920) (not e!4643962))))

(assert (=> b!7857424 (= res!3123920 call!728480)))

(declare-fun e!4643956 () Bool)

(assert (=> b!7857424 (= e!4643956 e!4643962)))

(declare-fun b!7857425 () Bool)

(declare-fun res!3123917 () Bool)

(assert (=> b!7857425 (=> res!3123917 e!4643959)))

(assert (=> b!7857425 (= res!3123917 (not ((_ is Concat!29944) r2!6165)))))

(assert (=> b!7857425 (= e!4643956 e!4643959)))

(declare-fun b!7857426 () Bool)

(assert (=> b!7857426 (= e!4643960 e!4643956)))

(assert (=> b!7857426 (= c!1444135 ((_ is Union!21099) r2!6165))))

(declare-fun b!7857427 () Bool)

(assert (=> b!7857427 (= e!4643960 e!4643961)))

(declare-fun res!3123918 () Bool)

(assert (=> b!7857427 (= res!3123918 (not (nullable!9371 (reg!21428 r2!6165))))))

(assert (=> b!7857427 (=> (not res!3123918) (not e!4643961))))

(assert (= (and d!2354160 (not res!3123921)) b!7857423))

(assert (= (and b!7857423 c!1444134) b!7857427))

(assert (= (and b!7857423 (not c!1444134)) b!7857426))

(assert (= (and b!7857427 res!3123918) b!7857422))

(assert (= (and b!7857426 c!1444135) b!7857424))

(assert (= (and b!7857426 (not c!1444135)) b!7857425))

(assert (= (and b!7857424 res!3123920) b!7857419))

(assert (= (and b!7857425 (not res!3123917)) b!7857420))

(assert (= (and b!7857420 res!3123919) b!7857421))

(assert (= (or b!7857424 b!7857421) bm!728475))

(assert (= (or b!7857419 b!7857420) bm!728476))

(assert (= (or b!7857422 bm!728475) bm!728474))

(declare-fun m!8261092 () Bool)

(assert (=> bm!728474 m!8261092))

(declare-fun m!8261094 () Bool)

(assert (=> bm!728476 m!8261094))

(declare-fun m!8261096 () Bool)

(assert (=> b!7857427 m!8261096))

(assert (=> b!7857032 d!2354160))

(declare-fun d!2354162 () Bool)

(declare-fun res!3123926 () Bool)

(declare-fun e!4643964 () Bool)

(assert (=> d!2354162 (=> res!3123926 e!4643964)))

(assert (=> d!2354162 (= res!3123926 ((_ is ElementMatch!21099) lt!2680071))))

(assert (=> d!2354162 (= (validRegex!11509 lt!2680071) e!4643964)))

(declare-fun b!7857428 () Bool)

(declare-fun e!4643969 () Bool)

(declare-fun call!728482 () Bool)

(assert (=> b!7857428 (= e!4643969 call!728482)))

(declare-fun call!728484 () Bool)

(declare-fun bm!728477 () Bool)

(declare-fun c!1444137 () Bool)

(declare-fun c!1444136 () Bool)

(assert (=> bm!728477 (= call!728484 (validRegex!11509 (ite c!1444136 (reg!21428 lt!2680071) (ite c!1444137 (regOne!42711 lt!2680071) (regTwo!42710 lt!2680071)))))))

(declare-fun b!7857429 () Bool)

(declare-fun e!4643966 () Bool)

(declare-fun e!4643965 () Bool)

(assert (=> b!7857429 (= e!4643966 e!4643965)))

(declare-fun res!3123924 () Bool)

(assert (=> b!7857429 (=> (not res!3123924) (not e!4643965))))

(assert (=> b!7857429 (= res!3123924 call!728482)))

(declare-fun b!7857430 () Bool)

(declare-fun call!728483 () Bool)

(assert (=> b!7857430 (= e!4643965 call!728483)))

(declare-fun b!7857431 () Bool)

(declare-fun e!4643968 () Bool)

(assert (=> b!7857431 (= e!4643968 call!728484)))

(declare-fun bm!728478 () Bool)

(assert (=> bm!728478 (= call!728483 call!728484)))

(declare-fun b!7857432 () Bool)

(declare-fun e!4643967 () Bool)

(assert (=> b!7857432 (= e!4643964 e!4643967)))

(assert (=> b!7857432 (= c!1444136 ((_ is Star!21099) lt!2680071))))

(declare-fun bm!728479 () Bool)

(assert (=> bm!728479 (= call!728482 (validRegex!11509 (ite c!1444137 (regTwo!42711 lt!2680071) (regOne!42710 lt!2680071))))))

(declare-fun b!7857433 () Bool)

(declare-fun res!3123925 () Bool)

(assert (=> b!7857433 (=> (not res!3123925) (not e!4643969))))

(assert (=> b!7857433 (= res!3123925 call!728483)))

(declare-fun e!4643963 () Bool)

(assert (=> b!7857433 (= e!4643963 e!4643969)))

(declare-fun b!7857434 () Bool)

(declare-fun res!3123922 () Bool)

(assert (=> b!7857434 (=> res!3123922 e!4643966)))

(assert (=> b!7857434 (= res!3123922 (not ((_ is Concat!29944) lt!2680071)))))

(assert (=> b!7857434 (= e!4643963 e!4643966)))

(declare-fun b!7857435 () Bool)

(assert (=> b!7857435 (= e!4643967 e!4643963)))

(assert (=> b!7857435 (= c!1444137 ((_ is Union!21099) lt!2680071))))

(declare-fun b!7857436 () Bool)

(assert (=> b!7857436 (= e!4643967 e!4643968)))

(declare-fun res!3123923 () Bool)

(assert (=> b!7857436 (= res!3123923 (not (nullable!9371 (reg!21428 lt!2680071))))))

(assert (=> b!7857436 (=> (not res!3123923) (not e!4643968))))

(assert (= (and d!2354162 (not res!3123926)) b!7857432))

(assert (= (and b!7857432 c!1444136) b!7857436))

(assert (= (and b!7857432 (not c!1444136)) b!7857435))

(assert (= (and b!7857436 res!3123923) b!7857431))

(assert (= (and b!7857435 c!1444137) b!7857433))

(assert (= (and b!7857435 (not c!1444137)) b!7857434))

(assert (= (and b!7857433 res!3123925) b!7857428))

(assert (= (and b!7857434 (not res!3123922)) b!7857429))

(assert (= (and b!7857429 res!3123924) b!7857430))

(assert (= (or b!7857433 b!7857430) bm!728478))

(assert (= (or b!7857428 b!7857429) bm!728479))

(assert (= (or b!7857431 bm!728478) bm!728477))

(declare-fun m!8261098 () Bool)

(assert (=> bm!728477 m!8261098))

(declare-fun m!8261100 () Bool)

(assert (=> bm!728479 m!8261100))

(declare-fun m!8261102 () Bool)

(assert (=> b!7857436 m!8261102))

(assert (=> b!7857031 d!2354162))

(declare-fun b!7857450 () Bool)

(declare-fun e!4643972 () Bool)

(declare-fun tp!2327752 () Bool)

(declare-fun tp!2327755 () Bool)

(assert (=> b!7857450 (= e!4643972 (and tp!2327752 tp!2327755))))

(declare-fun b!7857448 () Bool)

(declare-fun tp!2327751 () Bool)

(declare-fun tp!2327754 () Bool)

(assert (=> b!7857448 (= e!4643972 (and tp!2327751 tp!2327754))))

(assert (=> b!7857033 (= tp!2327669 e!4643972)))

(declare-fun b!7857447 () Bool)

(assert (=> b!7857447 (= e!4643972 tp_is_empty!52597)))

(declare-fun b!7857449 () Bool)

(declare-fun tp!2327753 () Bool)

(assert (=> b!7857449 (= e!4643972 tp!2327753)))

(assert (= (and b!7857033 ((_ is ElementMatch!21099) (regOne!42711 r2!6165))) b!7857447))

(assert (= (and b!7857033 ((_ is Concat!29944) (regOne!42711 r2!6165))) b!7857448))

(assert (= (and b!7857033 ((_ is Star!21099) (regOne!42711 r2!6165))) b!7857449))

(assert (= (and b!7857033 ((_ is Union!21099) (regOne!42711 r2!6165))) b!7857450))

(declare-fun b!7857454 () Bool)

(declare-fun e!4643973 () Bool)

(declare-fun tp!2327757 () Bool)

(declare-fun tp!2327760 () Bool)

(assert (=> b!7857454 (= e!4643973 (and tp!2327757 tp!2327760))))

(declare-fun b!7857452 () Bool)

(declare-fun tp!2327756 () Bool)

(declare-fun tp!2327759 () Bool)

(assert (=> b!7857452 (= e!4643973 (and tp!2327756 tp!2327759))))

(assert (=> b!7857033 (= tp!2327665 e!4643973)))

(declare-fun b!7857451 () Bool)

(assert (=> b!7857451 (= e!4643973 tp_is_empty!52597)))

(declare-fun b!7857453 () Bool)

(declare-fun tp!2327758 () Bool)

(assert (=> b!7857453 (= e!4643973 tp!2327758)))

(assert (= (and b!7857033 ((_ is ElementMatch!21099) (regTwo!42711 r2!6165))) b!7857451))

(assert (= (and b!7857033 ((_ is Concat!29944) (regTwo!42711 r2!6165))) b!7857452))

(assert (= (and b!7857033 ((_ is Star!21099) (regTwo!42711 r2!6165))) b!7857453))

(assert (= (and b!7857033 ((_ is Union!21099) (regTwo!42711 r2!6165))) b!7857454))

(declare-fun b!7857458 () Bool)

(declare-fun e!4643974 () Bool)

(declare-fun tp!2327762 () Bool)

(declare-fun tp!2327765 () Bool)

(assert (=> b!7857458 (= e!4643974 (and tp!2327762 tp!2327765))))

(declare-fun b!7857456 () Bool)

(declare-fun tp!2327761 () Bool)

(declare-fun tp!2327764 () Bool)

(assert (=> b!7857456 (= e!4643974 (and tp!2327761 tp!2327764))))

(assert (=> b!7857028 (= tp!2327676 e!4643974)))

(declare-fun b!7857455 () Bool)

(assert (=> b!7857455 (= e!4643974 tp_is_empty!52597)))

(declare-fun b!7857457 () Bool)

(declare-fun tp!2327763 () Bool)

(assert (=> b!7857457 (= e!4643974 tp!2327763)))

(assert (= (and b!7857028 ((_ is ElementMatch!21099) (regOne!42710 r1!6227))) b!7857455))

(assert (= (and b!7857028 ((_ is Concat!29944) (regOne!42710 r1!6227))) b!7857456))

(assert (= (and b!7857028 ((_ is Star!21099) (regOne!42710 r1!6227))) b!7857457))

(assert (= (and b!7857028 ((_ is Union!21099) (regOne!42710 r1!6227))) b!7857458))

(declare-fun b!7857462 () Bool)

(declare-fun e!4643975 () Bool)

(declare-fun tp!2327767 () Bool)

(declare-fun tp!2327770 () Bool)

(assert (=> b!7857462 (= e!4643975 (and tp!2327767 tp!2327770))))

(declare-fun b!7857460 () Bool)

(declare-fun tp!2327766 () Bool)

(declare-fun tp!2327769 () Bool)

(assert (=> b!7857460 (= e!4643975 (and tp!2327766 tp!2327769))))

(assert (=> b!7857028 (= tp!2327673 e!4643975)))

(declare-fun b!7857459 () Bool)

(assert (=> b!7857459 (= e!4643975 tp_is_empty!52597)))

(declare-fun b!7857461 () Bool)

(declare-fun tp!2327768 () Bool)

(assert (=> b!7857461 (= e!4643975 tp!2327768)))

(assert (= (and b!7857028 ((_ is ElementMatch!21099) (regTwo!42710 r1!6227))) b!7857459))

(assert (= (and b!7857028 ((_ is Concat!29944) (regTwo!42710 r1!6227))) b!7857460))

(assert (= (and b!7857028 ((_ is Star!21099) (regTwo!42710 r1!6227))) b!7857461))

(assert (= (and b!7857028 ((_ is Union!21099) (regTwo!42710 r1!6227))) b!7857462))

(declare-fun b!7857467 () Bool)

(declare-fun e!4643978 () Bool)

(declare-fun tp!2327773 () Bool)

(assert (=> b!7857467 (= e!4643978 (and tp_is_empty!52597 tp!2327773))))

(assert (=> b!7857027 (= tp!2327674 e!4643978)))

(assert (= (and b!7857027 ((_ is Cons!73834) (t!388693 s1!4084))) b!7857467))

(declare-fun b!7857471 () Bool)

(declare-fun e!4643979 () Bool)

(declare-fun tp!2327775 () Bool)

(declare-fun tp!2327778 () Bool)

(assert (=> b!7857471 (= e!4643979 (and tp!2327775 tp!2327778))))

(declare-fun b!7857469 () Bool)

(declare-fun tp!2327774 () Bool)

(declare-fun tp!2327777 () Bool)

(assert (=> b!7857469 (= e!4643979 (and tp!2327774 tp!2327777))))

(assert (=> b!7857029 (= tp!2327666 e!4643979)))

(declare-fun b!7857468 () Bool)

(assert (=> b!7857468 (= e!4643979 tp_is_empty!52597)))

(declare-fun b!7857470 () Bool)

(declare-fun tp!2327776 () Bool)

(assert (=> b!7857470 (= e!4643979 tp!2327776)))

(assert (= (and b!7857029 ((_ is ElementMatch!21099) (reg!21428 r2!6165))) b!7857468))

(assert (= (and b!7857029 ((_ is Concat!29944) (reg!21428 r2!6165))) b!7857469))

(assert (= (and b!7857029 ((_ is Star!21099) (reg!21428 r2!6165))) b!7857470))

(assert (= (and b!7857029 ((_ is Union!21099) (reg!21428 r2!6165))) b!7857471))

(declare-fun b!7857475 () Bool)

(declare-fun e!4643980 () Bool)

(declare-fun tp!2327780 () Bool)

(declare-fun tp!2327783 () Bool)

(assert (=> b!7857475 (= e!4643980 (and tp!2327780 tp!2327783))))

(declare-fun b!7857473 () Bool)

(declare-fun tp!2327779 () Bool)

(declare-fun tp!2327782 () Bool)

(assert (=> b!7857473 (= e!4643980 (and tp!2327779 tp!2327782))))

(assert (=> b!7857040 (= tp!2327670 e!4643980)))

(declare-fun b!7857472 () Bool)

(assert (=> b!7857472 (= e!4643980 tp_is_empty!52597)))

(declare-fun b!7857474 () Bool)

(declare-fun tp!2327781 () Bool)

(assert (=> b!7857474 (= e!4643980 tp!2327781)))

(assert (= (and b!7857040 ((_ is ElementMatch!21099) (regOne!42710 r2!6165))) b!7857472))

(assert (= (and b!7857040 ((_ is Concat!29944) (regOne!42710 r2!6165))) b!7857473))

(assert (= (and b!7857040 ((_ is Star!21099) (regOne!42710 r2!6165))) b!7857474))

(assert (= (and b!7857040 ((_ is Union!21099) (regOne!42710 r2!6165))) b!7857475))

(declare-fun b!7857479 () Bool)

(declare-fun e!4643981 () Bool)

(declare-fun tp!2327785 () Bool)

(declare-fun tp!2327788 () Bool)

(assert (=> b!7857479 (= e!4643981 (and tp!2327785 tp!2327788))))

(declare-fun b!7857477 () Bool)

(declare-fun tp!2327784 () Bool)

(declare-fun tp!2327787 () Bool)

(assert (=> b!7857477 (= e!4643981 (and tp!2327784 tp!2327787))))

(assert (=> b!7857040 (= tp!2327672 e!4643981)))

(declare-fun b!7857476 () Bool)

(assert (=> b!7857476 (= e!4643981 tp_is_empty!52597)))

(declare-fun b!7857478 () Bool)

(declare-fun tp!2327786 () Bool)

(assert (=> b!7857478 (= e!4643981 tp!2327786)))

(assert (= (and b!7857040 ((_ is ElementMatch!21099) (regTwo!42710 r2!6165))) b!7857476))

(assert (= (and b!7857040 ((_ is Concat!29944) (regTwo!42710 r2!6165))) b!7857477))

(assert (= (and b!7857040 ((_ is Star!21099) (regTwo!42710 r2!6165))) b!7857478))

(assert (= (and b!7857040 ((_ is Union!21099) (regTwo!42710 r2!6165))) b!7857479))

(declare-fun b!7857483 () Bool)

(declare-fun e!4643982 () Bool)

(declare-fun tp!2327790 () Bool)

(declare-fun tp!2327793 () Bool)

(assert (=> b!7857483 (= e!4643982 (and tp!2327790 tp!2327793))))

(declare-fun b!7857481 () Bool)

(declare-fun tp!2327789 () Bool)

(declare-fun tp!2327792 () Bool)

(assert (=> b!7857481 (= e!4643982 (and tp!2327789 tp!2327792))))

(assert (=> b!7857039 (= tp!2327667 e!4643982)))

(declare-fun b!7857480 () Bool)

(assert (=> b!7857480 (= e!4643982 tp_is_empty!52597)))

(declare-fun b!7857482 () Bool)

(declare-fun tp!2327791 () Bool)

(assert (=> b!7857482 (= e!4643982 tp!2327791)))

(assert (= (and b!7857039 ((_ is ElementMatch!21099) (regOne!42711 r1!6227))) b!7857480))

(assert (= (and b!7857039 ((_ is Concat!29944) (regOne!42711 r1!6227))) b!7857481))

(assert (= (and b!7857039 ((_ is Star!21099) (regOne!42711 r1!6227))) b!7857482))

(assert (= (and b!7857039 ((_ is Union!21099) (regOne!42711 r1!6227))) b!7857483))

(declare-fun b!7857487 () Bool)

(declare-fun e!4643983 () Bool)

(declare-fun tp!2327795 () Bool)

(declare-fun tp!2327798 () Bool)

(assert (=> b!7857487 (= e!4643983 (and tp!2327795 tp!2327798))))

(declare-fun b!7857485 () Bool)

(declare-fun tp!2327794 () Bool)

(declare-fun tp!2327797 () Bool)

(assert (=> b!7857485 (= e!4643983 (and tp!2327794 tp!2327797))))

(assert (=> b!7857039 (= tp!2327668 e!4643983)))

(declare-fun b!7857484 () Bool)

(assert (=> b!7857484 (= e!4643983 tp_is_empty!52597)))

(declare-fun b!7857486 () Bool)

(declare-fun tp!2327796 () Bool)

(assert (=> b!7857486 (= e!4643983 tp!2327796)))

(assert (= (and b!7857039 ((_ is ElementMatch!21099) (regTwo!42711 r1!6227))) b!7857484))

(assert (= (and b!7857039 ((_ is Concat!29944) (regTwo!42711 r1!6227))) b!7857485))

(assert (= (and b!7857039 ((_ is Star!21099) (regTwo!42711 r1!6227))) b!7857486))

(assert (= (and b!7857039 ((_ is Union!21099) (regTwo!42711 r1!6227))) b!7857487))

(declare-fun b!7857488 () Bool)

(declare-fun e!4643984 () Bool)

(declare-fun tp!2327799 () Bool)

(assert (=> b!7857488 (= e!4643984 (and tp_is_empty!52597 tp!2327799))))

(assert (=> b!7857023 (= tp!2327675 e!4643984)))

(assert (= (and b!7857023 ((_ is Cons!73834) (t!388693 s2!3706))) b!7857488))

(declare-fun b!7857492 () Bool)

(declare-fun e!4643985 () Bool)

(declare-fun tp!2327801 () Bool)

(declare-fun tp!2327804 () Bool)

(assert (=> b!7857492 (= e!4643985 (and tp!2327801 tp!2327804))))

(declare-fun b!7857490 () Bool)

(declare-fun tp!2327800 () Bool)

(declare-fun tp!2327803 () Bool)

(assert (=> b!7857490 (= e!4643985 (and tp!2327800 tp!2327803))))

(assert (=> b!7857026 (= tp!2327671 e!4643985)))

(declare-fun b!7857489 () Bool)

(assert (=> b!7857489 (= e!4643985 tp_is_empty!52597)))

(declare-fun b!7857491 () Bool)

(declare-fun tp!2327802 () Bool)

(assert (=> b!7857491 (= e!4643985 tp!2327802)))

(assert (= (and b!7857026 ((_ is ElementMatch!21099) (reg!21428 r1!6227))) b!7857489))

(assert (= (and b!7857026 ((_ is Concat!29944) (reg!21428 r1!6227))) b!7857490))

(assert (= (and b!7857026 ((_ is Star!21099) (reg!21428 r1!6227))) b!7857491))

(assert (= (and b!7857026 ((_ is Union!21099) (reg!21428 r1!6227))) b!7857492))

(check-sat (not b!7857401) (not b!7857300) (not d!2354128) (not b!7857475) (not bm!728460) (not b!7857491) (not b!7857362) (not b!7857103) (not b!7857486) (not b!7857427) (not b!7857492) (not d!2354158) (not b!7857488) (not b!7857356) (not b!7857479) (not b!7857450) (not d!2354156) (not b!7857396) (not b!7857448) (not b!7857487) (not bm!728470) (not d!2354132) (not bm!728474) (not b!7857471) (not bm!728469) (not b!7857436) (not b!7857456) (not b!7857406) (not bm!728479) (not b!7857458) (not d!2354134) (not b!7857397) (not bm!728477) tp_is_empty!52597 (not b!7857467) (not b!7857490) (not b!7857469) (not b!7857454) (not bm!728426) (not d!2354152) (not b!7857449) (not b!7857348) (not b!7857474) (not b!7857478) (not b!7857280) (not b!7857485) (not b!7857460) (not b!7857395) (not b!7857483) (not d!2354154) (not b!7857354) (not b!7857175) (not b!7857482) (not b!7857473) (not bm!728468) (not b!7857453) (not bm!728461) (not b!7857481) (not bm!728434) (not b!7857461) (not b!7857470) (not b!7857185) (not b!7857337) (not b!7857457) (not b!7857174) (not d!2354144) (not b!7857182) (not b!7857452) (not b!7857403) (not b!7857350) (not b!7857176) (not bm!728476) (not b!7857462) (not b!7857477) (not bm!728428) (not b!7857414) (not b!7857349) (not b!7857180) (not b!7857338) (not bm!728471))
(check-sat)
