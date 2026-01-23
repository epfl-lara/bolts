; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741296 () Bool)

(assert start!741296)

(declare-fun b!7803010 () Bool)

(declare-fun e!4619189 () Bool)

(declare-datatypes ((C!42082 0))(
  ( (C!42083 (val!31481 Int)) )
))
(declare-datatypes ((Regex!20878 0))(
  ( (ElementMatch!20878 (c!1436929 C!42082)) (Concat!29723 (regOne!42268 Regex!20878) (regTwo!42268 Regex!20878)) (EmptyExpr!20878) (Star!20878 (reg!21207 Regex!20878)) (EmptyLang!20878) (Union!20878 (regOne!42269 Regex!20878) (regTwo!42269 Regex!20878)) )
))
(declare-fun lt!2674769 () Regex!20878)

(declare-fun validRegex!11292 (Regex!20878) Bool)

(assert (=> b!7803010 (= e!4619189 (validRegex!11292 lt!2674769))))

(declare-fun b!7803011 () Bool)

(declare-fun e!4619185 () Bool)

(declare-fun tp_is_empty!52111 () Bool)

(declare-fun tp!2298751 () Bool)

(assert (=> b!7803011 (= e!4619185 (and tp_is_empty!52111 tp!2298751))))

(declare-fun b!7803012 () Bool)

(declare-fun e!4619182 () Bool)

(declare-fun e!4619188 () Bool)

(assert (=> b!7803012 (= e!4619182 e!4619188)))

(declare-fun res!3107674 () Bool)

(assert (=> b!7803012 (=> (not res!3107674) (not e!4619188))))

(declare-fun lt!2674767 () Regex!20878)

(declare-fun lt!2674765 () Regex!20878)

(assert (=> b!7803012 (= res!3107674 (= lt!2674767 (Union!20878 lt!2674765 EmptyLang!20878)))))

(declare-fun r2!6217 () Regex!20878)

(assert (=> b!7803012 (= lt!2674765 (Concat!29723 lt!2674769 r2!6217))))

(declare-fun r1!6279 () Regex!20878)

(declare-datatypes ((List!73717 0))(
  ( (Nil!73593) (Cons!73593 (h!80041 C!42082) (t!388452 List!73717)) )
))
(declare-fun s!14292 () List!73717)

(declare-fun derivativeStep!6215 (Regex!20878 C!42082) Regex!20878)

(assert (=> b!7803012 (= lt!2674769 (derivativeStep!6215 r1!6279 (h!80041 s!14292)))))

(declare-fun b!7803013 () Bool)

(declare-fun e!4619183 () Bool)

(declare-fun tp!2298748 () Bool)

(assert (=> b!7803013 (= e!4619183 tp!2298748)))

(declare-fun b!7803014 () Bool)

(declare-fun res!3107672 () Bool)

(assert (=> b!7803014 (=> (not res!3107672) (not e!4619182))))

(declare-fun nullable!9262 (Regex!20878) Bool)

(assert (=> b!7803014 (= res!3107672 (not (nullable!9262 r1!6279)))))

(declare-fun res!3107669 () Bool)

(declare-fun e!4619187 () Bool)

(assert (=> start!741296 (=> (not res!3107669) (not e!4619187))))

(assert (=> start!741296 (= res!3107669 (validRegex!11292 r1!6279))))

(assert (=> start!741296 e!4619187))

(assert (=> start!741296 e!4619183))

(declare-fun e!4619190 () Bool)

(assert (=> start!741296 e!4619190))

(assert (=> start!741296 e!4619185))

(declare-fun b!7803015 () Bool)

(assert (=> b!7803015 (= e!4619188 (not e!4619189))))

(declare-fun res!3107673 () Bool)

(assert (=> b!7803015 (=> res!3107673 e!4619189)))

(declare-fun lt!2674770 () Bool)

(assert (=> b!7803015 (= res!3107673 (not lt!2674770))))

(declare-fun derivative!560 (Regex!20878 List!73717) Regex!20878)

(assert (=> b!7803015 (= (derivative!560 EmptyLang!20878 (t!388452 s!14292)) EmptyLang!20878)))

(declare-datatypes ((Unit!168594 0))(
  ( (Unit!168595) )
))
(declare-fun lt!2674768 () Unit!168594)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!95 (Regex!20878 List!73717) Unit!168594)

(assert (=> b!7803015 (= lt!2674768 (lemmaEmptyLangDerivativeIsAFixPoint!95 EmptyLang!20878 (t!388452 s!14292)))))

(declare-fun e!4619186 () Bool)

(assert (=> b!7803015 e!4619186))

(declare-fun res!3107675 () Bool)

(assert (=> b!7803015 (=> res!3107675 e!4619186)))

(assert (=> b!7803015 (= res!3107675 lt!2674770)))

(declare-fun matchR!10338 (Regex!20878 List!73717) Bool)

(assert (=> b!7803015 (= lt!2674770 (matchR!10338 lt!2674765 (t!388452 s!14292)))))

(declare-fun lt!2674771 () Unit!168594)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!417 (Regex!20878 Regex!20878 List!73717) Unit!168594)

(assert (=> b!7803015 (= lt!2674771 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!417 lt!2674765 EmptyLang!20878 (t!388452 s!14292)))))

(declare-fun b!7803016 () Bool)

(declare-fun e!4619184 () Bool)

(assert (=> b!7803016 (= e!4619187 e!4619184)))

(declare-fun res!3107670 () Bool)

(assert (=> b!7803016 (=> (not res!3107670) (not e!4619184))))

(declare-fun lt!2674766 () Regex!20878)

(assert (=> b!7803016 (= res!3107670 (matchR!10338 lt!2674766 s!14292))))

(assert (=> b!7803016 (= lt!2674766 (Concat!29723 r1!6279 r2!6217))))

(declare-fun b!7803017 () Bool)

(declare-fun tp!2298747 () Bool)

(declare-fun tp!2298750 () Bool)

(assert (=> b!7803017 (= e!4619190 (and tp!2298747 tp!2298750))))

(declare-fun b!7803018 () Bool)

(declare-fun tp!2298754 () Bool)

(declare-fun tp!2298753 () Bool)

(assert (=> b!7803018 (= e!4619190 (and tp!2298754 tp!2298753))))

(declare-fun b!7803019 () Bool)

(declare-fun res!3107677 () Bool)

(assert (=> b!7803019 (=> (not res!3107677) (not e!4619187))))

(assert (=> b!7803019 (= res!3107677 (validRegex!11292 r2!6217))))

(declare-fun b!7803020 () Bool)

(declare-fun tp!2298749 () Bool)

(declare-fun tp!2298744 () Bool)

(assert (=> b!7803020 (= e!4619183 (and tp!2298749 tp!2298744))))

(declare-fun b!7803021 () Bool)

(assert (=> b!7803021 (= e!4619186 (matchR!10338 EmptyLang!20878 (t!388452 s!14292)))))

(declare-fun b!7803022 () Bool)

(assert (=> b!7803022 (= e!4619190 tp_is_empty!52111)))

(declare-fun b!7803023 () Bool)

(assert (=> b!7803023 (= e!4619184 e!4619182)))

(declare-fun res!3107676 () Bool)

(assert (=> b!7803023 (=> (not res!3107676) (not e!4619182))))

(assert (=> b!7803023 (= res!3107676 (matchR!10338 lt!2674767 (t!388452 s!14292)))))

(assert (=> b!7803023 (= lt!2674767 (derivativeStep!6215 lt!2674766 (h!80041 s!14292)))))

(declare-fun b!7803024 () Bool)

(declare-fun tp!2298745 () Bool)

(assert (=> b!7803024 (= e!4619190 tp!2298745)))

(declare-fun b!7803025 () Bool)

(declare-fun tp!2298752 () Bool)

(declare-fun tp!2298746 () Bool)

(assert (=> b!7803025 (= e!4619183 (and tp!2298752 tp!2298746))))

(declare-fun b!7803026 () Bool)

(assert (=> b!7803026 (= e!4619183 tp_is_empty!52111)))

(declare-fun b!7803027 () Bool)

(declare-fun res!3107671 () Bool)

(assert (=> b!7803027 (=> (not res!3107671) (not e!4619184))))

(assert (=> b!7803027 (= res!3107671 (is-Cons!73593 s!14292))))

(assert (= (and start!741296 res!3107669) b!7803019))

(assert (= (and b!7803019 res!3107677) b!7803016))

(assert (= (and b!7803016 res!3107670) b!7803027))

(assert (= (and b!7803027 res!3107671) b!7803023))

(assert (= (and b!7803023 res!3107676) b!7803014))

(assert (= (and b!7803014 res!3107672) b!7803012))

(assert (= (and b!7803012 res!3107674) b!7803015))

(assert (= (and b!7803015 (not res!3107675)) b!7803021))

(assert (= (and b!7803015 (not res!3107673)) b!7803010))

(assert (= (and start!741296 (is-ElementMatch!20878 r1!6279)) b!7803026))

(assert (= (and start!741296 (is-Concat!29723 r1!6279)) b!7803025))

(assert (= (and start!741296 (is-Star!20878 r1!6279)) b!7803013))

(assert (= (and start!741296 (is-Union!20878 r1!6279)) b!7803020))

(assert (= (and start!741296 (is-ElementMatch!20878 r2!6217)) b!7803022))

(assert (= (and start!741296 (is-Concat!29723 r2!6217)) b!7803017))

(assert (= (and start!741296 (is-Star!20878 r2!6217)) b!7803024))

(assert (= (and start!741296 (is-Union!20878 r2!6217)) b!7803018))

(assert (= (and start!741296 (is-Cons!73593 s!14292)) b!7803011))

(declare-fun m!8237922 () Bool)

(assert (=> b!7803010 m!8237922))

(declare-fun m!8237924 () Bool)

(assert (=> b!7803012 m!8237924))

(declare-fun m!8237926 () Bool)

(assert (=> b!7803023 m!8237926))

(declare-fun m!8237928 () Bool)

(assert (=> b!7803023 m!8237928))

(declare-fun m!8237930 () Bool)

(assert (=> b!7803015 m!8237930))

(declare-fun m!8237932 () Bool)

(assert (=> b!7803015 m!8237932))

(declare-fun m!8237934 () Bool)

(assert (=> b!7803015 m!8237934))

(declare-fun m!8237936 () Bool)

(assert (=> b!7803015 m!8237936))

(declare-fun m!8237938 () Bool)

(assert (=> b!7803019 m!8237938))

(declare-fun m!8237940 () Bool)

(assert (=> b!7803021 m!8237940))

(declare-fun m!8237942 () Bool)

(assert (=> start!741296 m!8237942))

(declare-fun m!8237944 () Bool)

(assert (=> b!7803016 m!8237944))

(declare-fun m!8237946 () Bool)

(assert (=> b!7803014 m!8237946))

(push 1)

(assert (not b!7803018))

(assert (not b!7803019))

(assert (not b!7803010))

(assert (not b!7803014))

(assert (not b!7803016))

(assert (not b!7803011))

(assert (not b!7803015))

(assert (not b!7803012))

(assert (not b!7803021))

(assert tp_is_empty!52111)

(assert (not b!7803017))

(assert (not b!7803013))

(assert (not b!7803025))

(assert (not b!7803020))

(assert (not start!741296))

(assert (not b!7803023))

(assert (not b!7803024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2347699 () Bool)

(declare-fun res!3107719 () Bool)

(declare-fun e!4619234 () Bool)

(assert (=> d!2347699 (=> res!3107719 e!4619234)))

(assert (=> d!2347699 (= res!3107719 (is-ElementMatch!20878 r2!6217))))

(assert (=> d!2347699 (= (validRegex!11292 r2!6217) e!4619234)))

(declare-fun b!7803100 () Bool)

(declare-fun e!4619232 () Bool)

(declare-fun e!4619235 () Bool)

(assert (=> b!7803100 (= e!4619232 e!4619235)))

(declare-fun res!3107715 () Bool)

(assert (=> b!7803100 (=> (not res!3107715) (not e!4619235))))

(declare-fun call!723687 () Bool)

(assert (=> b!7803100 (= res!3107715 call!723687)))

(declare-fun bm!723680 () Bool)

(declare-fun c!1436936 () Bool)

(declare-fun call!723685 () Bool)

(declare-fun c!1436935 () Bool)

(assert (=> bm!723680 (= call!723685 (validRegex!11292 (ite c!1436935 (reg!21207 r2!6217) (ite c!1436936 (regTwo!42269 r2!6217) (regTwo!42268 r2!6217)))))))

(declare-fun b!7803101 () Bool)

(declare-fun call!723686 () Bool)

(assert (=> b!7803101 (= e!4619235 call!723686)))

(declare-fun b!7803102 () Bool)

(declare-fun e!4619233 () Bool)

(assert (=> b!7803102 (= e!4619233 call!723686)))

(declare-fun b!7803103 () Bool)

(declare-fun e!4619238 () Bool)

(declare-fun e!4619236 () Bool)

(assert (=> b!7803103 (= e!4619238 e!4619236)))

(assert (=> b!7803103 (= c!1436936 (is-Union!20878 r2!6217))))

(declare-fun b!7803104 () Bool)

(declare-fun res!3107718 () Bool)

(assert (=> b!7803104 (=> res!3107718 e!4619232)))

(assert (=> b!7803104 (= res!3107718 (not (is-Concat!29723 r2!6217)))))

(assert (=> b!7803104 (= e!4619236 e!4619232)))

(declare-fun b!7803105 () Bool)

(declare-fun e!4619237 () Bool)

(assert (=> b!7803105 (= e!4619238 e!4619237)))

(declare-fun res!3107716 () Bool)

(assert (=> b!7803105 (= res!3107716 (not (nullable!9262 (reg!21207 r2!6217))))))

(assert (=> b!7803105 (=> (not res!3107716) (not e!4619237))))

(declare-fun bm!723681 () Bool)

(assert (=> bm!723681 (= call!723686 call!723685)))

(declare-fun bm!723682 () Bool)

(assert (=> bm!723682 (= call!723687 (validRegex!11292 (ite c!1436936 (regOne!42269 r2!6217) (regOne!42268 r2!6217))))))

(declare-fun b!7803106 () Bool)

(declare-fun res!3107717 () Bool)

(assert (=> b!7803106 (=> (not res!3107717) (not e!4619233))))

(assert (=> b!7803106 (= res!3107717 call!723687)))

(assert (=> b!7803106 (= e!4619236 e!4619233)))

(declare-fun b!7803107 () Bool)

(assert (=> b!7803107 (= e!4619234 e!4619238)))

(assert (=> b!7803107 (= c!1436935 (is-Star!20878 r2!6217))))

(declare-fun b!7803108 () Bool)

(assert (=> b!7803108 (= e!4619237 call!723685)))

(assert (= (and d!2347699 (not res!3107719)) b!7803107))

(assert (= (and b!7803107 c!1436935) b!7803105))

(assert (= (and b!7803107 (not c!1436935)) b!7803103))

(assert (= (and b!7803105 res!3107716) b!7803108))

(assert (= (and b!7803103 c!1436936) b!7803106))

(assert (= (and b!7803103 (not c!1436936)) b!7803104))

(assert (= (and b!7803106 res!3107717) b!7803102))

(assert (= (and b!7803104 (not res!3107718)) b!7803100))

(assert (= (and b!7803100 res!3107715) b!7803101))

(assert (= (or b!7803106 b!7803100) bm!723682))

(assert (= (or b!7803102 b!7803101) bm!723681))

(assert (= (or b!7803108 bm!723681) bm!723680))

(declare-fun m!8237976 () Bool)

(assert (=> bm!723680 m!8237976))

(declare-fun m!8237978 () Bool)

(assert (=> b!7803105 m!8237978))

(declare-fun m!8237980 () Bool)

(assert (=> bm!723682 m!8237980))

(assert (=> b!7803019 d!2347699))

(declare-fun d!2347705 () Bool)

(declare-fun nullableFct!3641 (Regex!20878) Bool)

(assert (=> d!2347705 (= (nullable!9262 r1!6279) (nullableFct!3641 r1!6279))))

(declare-fun bs!1966509 () Bool)

(assert (= bs!1966509 d!2347705))

(declare-fun m!8237982 () Bool)

(assert (=> bs!1966509 m!8237982))

(assert (=> b!7803014 d!2347705))

(declare-fun d!2347707 () Bool)

(declare-fun lt!2674795 () Regex!20878)

(assert (=> d!2347707 (validRegex!11292 lt!2674795)))

(declare-fun e!4619241 () Regex!20878)

(assert (=> d!2347707 (= lt!2674795 e!4619241)))

(declare-fun c!1436939 () Bool)

(assert (=> d!2347707 (= c!1436939 (is-Cons!73593 (t!388452 s!14292)))))

(assert (=> d!2347707 (validRegex!11292 EmptyLang!20878)))

(assert (=> d!2347707 (= (derivative!560 EmptyLang!20878 (t!388452 s!14292)) lt!2674795)))

(declare-fun b!7803113 () Bool)

(assert (=> b!7803113 (= e!4619241 (derivative!560 (derivativeStep!6215 EmptyLang!20878 (h!80041 (t!388452 s!14292))) (t!388452 (t!388452 s!14292))))))

(declare-fun b!7803114 () Bool)

(assert (=> b!7803114 (= e!4619241 EmptyLang!20878)))

(assert (= (and d!2347707 c!1436939) b!7803113))

(assert (= (and d!2347707 (not c!1436939)) b!7803114))

(declare-fun m!8237984 () Bool)

(assert (=> d!2347707 m!8237984))

(declare-fun m!8237986 () Bool)

(assert (=> d!2347707 m!8237986))

(declare-fun m!8237988 () Bool)

(assert (=> b!7803113 m!8237988))

(assert (=> b!7803113 m!8237988))

(declare-fun m!8237990 () Bool)

(assert (=> b!7803113 m!8237990))

(assert (=> b!7803015 d!2347707))

(declare-fun d!2347709 () Bool)

(assert (=> d!2347709 (= (derivative!560 EmptyLang!20878 (t!388452 s!14292)) EmptyLang!20878)))

(declare-fun lt!2674798 () Unit!168594)

(declare-fun choose!59542 (Regex!20878 List!73717) Unit!168594)

(assert (=> d!2347709 (= lt!2674798 (choose!59542 EmptyLang!20878 (t!388452 s!14292)))))

(assert (=> d!2347709 (= EmptyLang!20878 EmptyLang!20878)))

(assert (=> d!2347709 (= (lemmaEmptyLangDerivativeIsAFixPoint!95 EmptyLang!20878 (t!388452 s!14292)) lt!2674798)))

(declare-fun bs!1966510 () Bool)

(assert (= bs!1966510 d!2347709))

(assert (=> bs!1966510 m!8237930))

(declare-fun m!8237992 () Bool)

(assert (=> bs!1966510 m!8237992))

(assert (=> b!7803015 d!2347709))

(declare-fun b!7803171 () Bool)

(declare-fun e!4619270 () Bool)

(declare-fun lt!2674803 () Bool)

(declare-fun call!723692 () Bool)

(assert (=> b!7803171 (= e!4619270 (= lt!2674803 call!723692))))

(declare-fun b!7803172 () Bool)

(declare-fun e!4619275 () Bool)

(declare-fun head!15953 (List!73717) C!42082)

(assert (=> b!7803172 (= e!4619275 (not (= (head!15953 (t!388452 s!14292)) (c!1436929 lt!2674765))))))

(declare-fun b!7803173 () Bool)

(declare-fun res!3107754 () Bool)

(declare-fun e!4619274 () Bool)

(assert (=> b!7803173 (=> res!3107754 e!4619274)))

(declare-fun e!4619271 () Bool)

(assert (=> b!7803173 (= res!3107754 e!4619271)))

(declare-fun res!3107753 () Bool)

(assert (=> b!7803173 (=> (not res!3107753) (not e!4619271))))

(assert (=> b!7803173 (= res!3107753 lt!2674803)))

(declare-fun b!7803174 () Bool)

(declare-fun e!4619272 () Bool)

(assert (=> b!7803174 (= e!4619272 (not lt!2674803))))

(declare-fun b!7803175 () Bool)

(declare-fun e!4619273 () Bool)

(declare-fun tail!15494 (List!73717) List!73717)

(assert (=> b!7803175 (= e!4619273 (matchR!10338 (derivativeStep!6215 lt!2674765 (head!15953 (t!388452 s!14292))) (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803176 () Bool)

(declare-fun e!4619276 () Bool)

(assert (=> b!7803176 (= e!4619276 e!4619275)))

(declare-fun res!3107756 () Bool)

(assert (=> b!7803176 (=> res!3107756 e!4619275)))

(assert (=> b!7803176 (= res!3107756 call!723692)))

(declare-fun b!7803177 () Bool)

(assert (=> b!7803177 (= e!4619271 (= (head!15953 (t!388452 s!14292)) (c!1436929 lt!2674765)))))

(declare-fun b!7803178 () Bool)

(declare-fun res!3107755 () Bool)

(assert (=> b!7803178 (=> res!3107755 e!4619274)))

(assert (=> b!7803178 (= res!3107755 (not (is-ElementMatch!20878 lt!2674765)))))

(assert (=> b!7803178 (= e!4619272 e!4619274)))

(declare-fun d!2347711 () Bool)

(assert (=> d!2347711 e!4619270))

(declare-fun c!1436954 () Bool)

(assert (=> d!2347711 (= c!1436954 (is-EmptyExpr!20878 lt!2674765))))

(assert (=> d!2347711 (= lt!2674803 e!4619273)))

(declare-fun c!1436952 () Bool)

(declare-fun isEmpty!42240 (List!73717) Bool)

(assert (=> d!2347711 (= c!1436952 (isEmpty!42240 (t!388452 s!14292)))))

(assert (=> d!2347711 (validRegex!11292 lt!2674765)))

(assert (=> d!2347711 (= (matchR!10338 lt!2674765 (t!388452 s!14292)) lt!2674803)))

(declare-fun b!7803179 () Bool)

(assert (=> b!7803179 (= e!4619273 (nullable!9262 lt!2674765))))

(declare-fun b!7803180 () Bool)

(declare-fun res!3107757 () Bool)

(assert (=> b!7803180 (=> (not res!3107757) (not e!4619271))))

(assert (=> b!7803180 (= res!3107757 (not call!723692))))

(declare-fun b!7803181 () Bool)

(declare-fun res!3107758 () Bool)

(assert (=> b!7803181 (=> (not res!3107758) (not e!4619271))))

(assert (=> b!7803181 (= res!3107758 (isEmpty!42240 (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803182 () Bool)

(declare-fun res!3107752 () Bool)

(assert (=> b!7803182 (=> res!3107752 e!4619275)))

(assert (=> b!7803182 (= res!3107752 (not (isEmpty!42240 (tail!15494 (t!388452 s!14292)))))))

(declare-fun b!7803183 () Bool)

(assert (=> b!7803183 (= e!4619274 e!4619276)))

(declare-fun res!3107759 () Bool)

(assert (=> b!7803183 (=> (not res!3107759) (not e!4619276))))

(assert (=> b!7803183 (= res!3107759 (not lt!2674803))))

(declare-fun bm!723687 () Bool)

(assert (=> bm!723687 (= call!723692 (isEmpty!42240 (t!388452 s!14292)))))

(declare-fun b!7803184 () Bool)

(assert (=> b!7803184 (= e!4619270 e!4619272)))

(declare-fun c!1436953 () Bool)

(assert (=> b!7803184 (= c!1436953 (is-EmptyLang!20878 lt!2674765))))

(assert (= (and d!2347711 c!1436952) b!7803179))

(assert (= (and d!2347711 (not c!1436952)) b!7803175))

(assert (= (and d!2347711 c!1436954) b!7803171))

(assert (= (and d!2347711 (not c!1436954)) b!7803184))

(assert (= (and b!7803184 c!1436953) b!7803174))

(assert (= (and b!7803184 (not c!1436953)) b!7803178))

(assert (= (and b!7803178 (not res!3107755)) b!7803173))

(assert (= (and b!7803173 res!3107753) b!7803180))

(assert (= (and b!7803180 res!3107757) b!7803181))

(assert (= (and b!7803181 res!3107758) b!7803177))

(assert (= (and b!7803173 (not res!3107754)) b!7803183))

(assert (= (and b!7803183 res!3107759) b!7803176))

(assert (= (and b!7803176 (not res!3107756)) b!7803182))

(assert (= (and b!7803182 (not res!3107752)) b!7803172))

(assert (= (or b!7803171 b!7803176 b!7803180) bm!723687))

(declare-fun m!8237994 () Bool)

(assert (=> b!7803181 m!8237994))

(assert (=> b!7803181 m!8237994))

(declare-fun m!8237996 () Bool)

(assert (=> b!7803181 m!8237996))

(declare-fun m!8237998 () Bool)

(assert (=> d!2347711 m!8237998))

(declare-fun m!8238000 () Bool)

(assert (=> d!2347711 m!8238000))

(declare-fun m!8238002 () Bool)

(assert (=> b!7803172 m!8238002))

(assert (=> b!7803182 m!8237994))

(assert (=> b!7803182 m!8237994))

(assert (=> b!7803182 m!8237996))

(assert (=> b!7803177 m!8238002))

(assert (=> b!7803175 m!8238002))

(assert (=> b!7803175 m!8238002))

(declare-fun m!8238004 () Bool)

(assert (=> b!7803175 m!8238004))

(assert (=> b!7803175 m!8237994))

(assert (=> b!7803175 m!8238004))

(assert (=> b!7803175 m!8237994))

(declare-fun m!8238006 () Bool)

(assert (=> b!7803175 m!8238006))

(assert (=> bm!723687 m!8237998))

(declare-fun m!8238008 () Bool)

(assert (=> b!7803179 m!8238008))

(assert (=> b!7803015 d!2347711))

(declare-fun d!2347713 () Bool)

(declare-fun e!4619282 () Bool)

(assert (=> d!2347713 e!4619282))

(declare-fun res!3107764 () Bool)

(assert (=> d!2347713 (=> res!3107764 e!4619282)))

(assert (=> d!2347713 (= res!3107764 (matchR!10338 lt!2674765 (t!388452 s!14292)))))

(declare-fun lt!2674806 () Unit!168594)

(declare-fun choose!59543 (Regex!20878 Regex!20878 List!73717) Unit!168594)

(assert (=> d!2347713 (= lt!2674806 (choose!59543 lt!2674765 EmptyLang!20878 (t!388452 s!14292)))))

(declare-fun e!4619281 () Bool)

(assert (=> d!2347713 e!4619281))

(declare-fun res!3107765 () Bool)

(assert (=> d!2347713 (=> (not res!3107765) (not e!4619281))))

(assert (=> d!2347713 (= res!3107765 (validRegex!11292 lt!2674765))))

(assert (=> d!2347713 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!417 lt!2674765 EmptyLang!20878 (t!388452 s!14292)) lt!2674806)))

(declare-fun b!7803189 () Bool)

(assert (=> b!7803189 (= e!4619281 (validRegex!11292 EmptyLang!20878))))

(declare-fun b!7803190 () Bool)

(assert (=> b!7803190 (= e!4619282 (matchR!10338 EmptyLang!20878 (t!388452 s!14292)))))

(assert (= (and d!2347713 res!3107765) b!7803189))

(assert (= (and d!2347713 (not res!3107764)) b!7803190))

(assert (=> d!2347713 m!8237934))

(declare-fun m!8238010 () Bool)

(assert (=> d!2347713 m!8238010))

(assert (=> d!2347713 m!8238000))

(assert (=> b!7803189 m!8237986))

(assert (=> b!7803190 m!8237940))

(assert (=> b!7803015 d!2347713))

(declare-fun b!7803191 () Bool)

(declare-fun e!4619283 () Bool)

(declare-fun lt!2674807 () Bool)

(declare-fun call!723693 () Bool)

(assert (=> b!7803191 (= e!4619283 (= lt!2674807 call!723693))))

(declare-fun b!7803192 () Bool)

(declare-fun e!4619288 () Bool)

(assert (=> b!7803192 (= e!4619288 (not (= (head!15953 (t!388452 s!14292)) (c!1436929 EmptyLang!20878))))))

(declare-fun b!7803193 () Bool)

(declare-fun res!3107768 () Bool)

(declare-fun e!4619287 () Bool)

(assert (=> b!7803193 (=> res!3107768 e!4619287)))

(declare-fun e!4619284 () Bool)

(assert (=> b!7803193 (= res!3107768 e!4619284)))

(declare-fun res!3107767 () Bool)

(assert (=> b!7803193 (=> (not res!3107767) (not e!4619284))))

(assert (=> b!7803193 (= res!3107767 lt!2674807)))

(declare-fun b!7803194 () Bool)

(declare-fun e!4619285 () Bool)

(assert (=> b!7803194 (= e!4619285 (not lt!2674807))))

(declare-fun b!7803195 () Bool)

(declare-fun e!4619286 () Bool)

(assert (=> b!7803195 (= e!4619286 (matchR!10338 (derivativeStep!6215 EmptyLang!20878 (head!15953 (t!388452 s!14292))) (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803196 () Bool)

(declare-fun e!4619289 () Bool)

(assert (=> b!7803196 (= e!4619289 e!4619288)))

(declare-fun res!3107770 () Bool)

(assert (=> b!7803196 (=> res!3107770 e!4619288)))

(assert (=> b!7803196 (= res!3107770 call!723693)))

(declare-fun b!7803197 () Bool)

(assert (=> b!7803197 (= e!4619284 (= (head!15953 (t!388452 s!14292)) (c!1436929 EmptyLang!20878)))))

(declare-fun b!7803198 () Bool)

(declare-fun res!3107769 () Bool)

(assert (=> b!7803198 (=> res!3107769 e!4619287)))

(assert (=> b!7803198 (= res!3107769 (not (is-ElementMatch!20878 EmptyLang!20878)))))

(assert (=> b!7803198 (= e!4619285 e!4619287)))

(declare-fun d!2347715 () Bool)

(assert (=> d!2347715 e!4619283))

(declare-fun c!1436957 () Bool)

(assert (=> d!2347715 (= c!1436957 (is-EmptyExpr!20878 EmptyLang!20878))))

(assert (=> d!2347715 (= lt!2674807 e!4619286)))

(declare-fun c!1436955 () Bool)

(assert (=> d!2347715 (= c!1436955 (isEmpty!42240 (t!388452 s!14292)))))

(assert (=> d!2347715 (validRegex!11292 EmptyLang!20878)))

(assert (=> d!2347715 (= (matchR!10338 EmptyLang!20878 (t!388452 s!14292)) lt!2674807)))

(declare-fun b!7803199 () Bool)

(assert (=> b!7803199 (= e!4619286 (nullable!9262 EmptyLang!20878))))

(declare-fun b!7803200 () Bool)

(declare-fun res!3107771 () Bool)

(assert (=> b!7803200 (=> (not res!3107771) (not e!4619284))))

(assert (=> b!7803200 (= res!3107771 (not call!723693))))

(declare-fun b!7803201 () Bool)

(declare-fun res!3107772 () Bool)

(assert (=> b!7803201 (=> (not res!3107772) (not e!4619284))))

(assert (=> b!7803201 (= res!3107772 (isEmpty!42240 (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803202 () Bool)

(declare-fun res!3107766 () Bool)

(assert (=> b!7803202 (=> res!3107766 e!4619288)))

(assert (=> b!7803202 (= res!3107766 (not (isEmpty!42240 (tail!15494 (t!388452 s!14292)))))))

(declare-fun b!7803203 () Bool)

(assert (=> b!7803203 (= e!4619287 e!4619289)))

(declare-fun res!3107773 () Bool)

(assert (=> b!7803203 (=> (not res!3107773) (not e!4619289))))

(assert (=> b!7803203 (= res!3107773 (not lt!2674807))))

(declare-fun bm!723688 () Bool)

(assert (=> bm!723688 (= call!723693 (isEmpty!42240 (t!388452 s!14292)))))

(declare-fun b!7803204 () Bool)

(assert (=> b!7803204 (= e!4619283 e!4619285)))

(declare-fun c!1436956 () Bool)

(assert (=> b!7803204 (= c!1436956 (is-EmptyLang!20878 EmptyLang!20878))))

(assert (= (and d!2347715 c!1436955) b!7803199))

(assert (= (and d!2347715 (not c!1436955)) b!7803195))

(assert (= (and d!2347715 c!1436957) b!7803191))

(assert (= (and d!2347715 (not c!1436957)) b!7803204))

(assert (= (and b!7803204 c!1436956) b!7803194))

(assert (= (and b!7803204 (not c!1436956)) b!7803198))

(assert (= (and b!7803198 (not res!3107769)) b!7803193))

(assert (= (and b!7803193 res!3107767) b!7803200))

(assert (= (and b!7803200 res!3107771) b!7803201))

(assert (= (and b!7803201 res!3107772) b!7803197))

(assert (= (and b!7803193 (not res!3107768)) b!7803203))

(assert (= (and b!7803203 res!3107773) b!7803196))

(assert (= (and b!7803196 (not res!3107770)) b!7803202))

(assert (= (and b!7803202 (not res!3107766)) b!7803192))

(assert (= (or b!7803191 b!7803196 b!7803200) bm!723688))

(assert (=> b!7803201 m!8237994))

(assert (=> b!7803201 m!8237994))

(assert (=> b!7803201 m!8237996))

(assert (=> d!2347715 m!8237998))

(assert (=> d!2347715 m!8237986))

(assert (=> b!7803192 m!8238002))

(assert (=> b!7803202 m!8237994))

(assert (=> b!7803202 m!8237994))

(assert (=> b!7803202 m!8237996))

(assert (=> b!7803197 m!8238002))

(assert (=> b!7803195 m!8238002))

(assert (=> b!7803195 m!8238002))

(declare-fun m!8238012 () Bool)

(assert (=> b!7803195 m!8238012))

(assert (=> b!7803195 m!8237994))

(assert (=> b!7803195 m!8238012))

(assert (=> b!7803195 m!8237994))

(declare-fun m!8238014 () Bool)

(assert (=> b!7803195 m!8238014))

(assert (=> bm!723688 m!8237998))

(declare-fun m!8238016 () Bool)

(assert (=> b!7803199 m!8238016))

(assert (=> b!7803021 d!2347715))

(declare-fun d!2347717 () Bool)

(declare-fun res!3107786 () Bool)

(declare-fun e!4619299 () Bool)

(assert (=> d!2347717 (=> res!3107786 e!4619299)))

(assert (=> d!2347717 (= res!3107786 (is-ElementMatch!20878 lt!2674769))))

(assert (=> d!2347717 (= (validRegex!11292 lt!2674769) e!4619299)))

(declare-fun b!7803219 () Bool)

(declare-fun e!4619297 () Bool)

(declare-fun e!4619300 () Bool)

(assert (=> b!7803219 (= e!4619297 e!4619300)))

(declare-fun res!3107782 () Bool)

(assert (=> b!7803219 (=> (not res!3107782) (not e!4619300))))

(declare-fun call!723697 () Bool)

(assert (=> b!7803219 (= res!3107782 call!723697)))

(declare-fun bm!723690 () Bool)

(declare-fun c!1436961 () Bool)

(declare-fun call!723695 () Bool)

(declare-fun c!1436962 () Bool)

(assert (=> bm!723690 (= call!723695 (validRegex!11292 (ite c!1436961 (reg!21207 lt!2674769) (ite c!1436962 (regTwo!42269 lt!2674769) (regTwo!42268 lt!2674769)))))))

(declare-fun b!7803220 () Bool)

(declare-fun call!723696 () Bool)

(assert (=> b!7803220 (= e!4619300 call!723696)))

(declare-fun b!7803221 () Bool)

(declare-fun e!4619298 () Bool)

(assert (=> b!7803221 (= e!4619298 call!723696)))

(declare-fun b!7803222 () Bool)

(declare-fun e!4619303 () Bool)

(declare-fun e!4619301 () Bool)

(assert (=> b!7803222 (= e!4619303 e!4619301)))

(assert (=> b!7803222 (= c!1436962 (is-Union!20878 lt!2674769))))

(declare-fun b!7803223 () Bool)

(declare-fun res!3107785 () Bool)

(assert (=> b!7803223 (=> res!3107785 e!4619297)))

(assert (=> b!7803223 (= res!3107785 (not (is-Concat!29723 lt!2674769)))))

(assert (=> b!7803223 (= e!4619301 e!4619297)))

(declare-fun b!7803224 () Bool)

(declare-fun e!4619302 () Bool)

(assert (=> b!7803224 (= e!4619303 e!4619302)))

(declare-fun res!3107783 () Bool)

(assert (=> b!7803224 (= res!3107783 (not (nullable!9262 (reg!21207 lt!2674769))))))

(assert (=> b!7803224 (=> (not res!3107783) (not e!4619302))))

(declare-fun bm!723691 () Bool)

(assert (=> bm!723691 (= call!723696 call!723695)))

(declare-fun bm!723692 () Bool)

(assert (=> bm!723692 (= call!723697 (validRegex!11292 (ite c!1436962 (regOne!42269 lt!2674769) (regOne!42268 lt!2674769))))))

(declare-fun b!7803225 () Bool)

(declare-fun res!3107784 () Bool)

(assert (=> b!7803225 (=> (not res!3107784) (not e!4619298))))

(assert (=> b!7803225 (= res!3107784 call!723697)))

(assert (=> b!7803225 (= e!4619301 e!4619298)))

(declare-fun b!7803226 () Bool)

(assert (=> b!7803226 (= e!4619299 e!4619303)))

(assert (=> b!7803226 (= c!1436961 (is-Star!20878 lt!2674769))))

(declare-fun b!7803227 () Bool)

(assert (=> b!7803227 (= e!4619302 call!723695)))

(assert (= (and d!2347717 (not res!3107786)) b!7803226))

(assert (= (and b!7803226 c!1436961) b!7803224))

(assert (= (and b!7803226 (not c!1436961)) b!7803222))

(assert (= (and b!7803224 res!3107783) b!7803227))

(assert (= (and b!7803222 c!1436962) b!7803225))

(assert (= (and b!7803222 (not c!1436962)) b!7803223))

(assert (= (and b!7803225 res!3107784) b!7803221))

(assert (= (and b!7803223 (not res!3107785)) b!7803219))

(assert (= (and b!7803219 res!3107782) b!7803220))

(assert (= (or b!7803225 b!7803219) bm!723692))

(assert (= (or b!7803221 b!7803220) bm!723691))

(assert (= (or b!7803227 bm!723691) bm!723690))

(declare-fun m!8238018 () Bool)

(assert (=> bm!723690 m!8238018))

(declare-fun m!8238020 () Bool)

(assert (=> b!7803224 m!8238020))

(declare-fun m!8238022 () Bool)

(assert (=> bm!723692 m!8238022))

(assert (=> b!7803010 d!2347717))

(declare-fun b!7803228 () Bool)

(declare-fun e!4619304 () Bool)

(declare-fun lt!2674809 () Bool)

(declare-fun call!723698 () Bool)

(assert (=> b!7803228 (= e!4619304 (= lt!2674809 call!723698))))

(declare-fun b!7803229 () Bool)

(declare-fun e!4619309 () Bool)

(assert (=> b!7803229 (= e!4619309 (not (= (head!15953 s!14292) (c!1436929 lt!2674766))))))

(declare-fun b!7803230 () Bool)

(declare-fun res!3107789 () Bool)

(declare-fun e!4619308 () Bool)

(assert (=> b!7803230 (=> res!3107789 e!4619308)))

(declare-fun e!4619305 () Bool)

(assert (=> b!7803230 (= res!3107789 e!4619305)))

(declare-fun res!3107788 () Bool)

(assert (=> b!7803230 (=> (not res!3107788) (not e!4619305))))

(assert (=> b!7803230 (= res!3107788 lt!2674809)))

(declare-fun b!7803231 () Bool)

(declare-fun e!4619306 () Bool)

(assert (=> b!7803231 (= e!4619306 (not lt!2674809))))

(declare-fun b!7803232 () Bool)

(declare-fun e!4619307 () Bool)

(assert (=> b!7803232 (= e!4619307 (matchR!10338 (derivativeStep!6215 lt!2674766 (head!15953 s!14292)) (tail!15494 s!14292)))))

(declare-fun b!7803233 () Bool)

(declare-fun e!4619310 () Bool)

(assert (=> b!7803233 (= e!4619310 e!4619309)))

(declare-fun res!3107791 () Bool)

(assert (=> b!7803233 (=> res!3107791 e!4619309)))

(assert (=> b!7803233 (= res!3107791 call!723698)))

(declare-fun b!7803234 () Bool)

(assert (=> b!7803234 (= e!4619305 (= (head!15953 s!14292) (c!1436929 lt!2674766)))))

(declare-fun b!7803235 () Bool)

(declare-fun res!3107790 () Bool)

(assert (=> b!7803235 (=> res!3107790 e!4619308)))

(assert (=> b!7803235 (= res!3107790 (not (is-ElementMatch!20878 lt!2674766)))))

(assert (=> b!7803235 (= e!4619306 e!4619308)))

(declare-fun d!2347719 () Bool)

(assert (=> d!2347719 e!4619304))

(declare-fun c!1436965 () Bool)

(assert (=> d!2347719 (= c!1436965 (is-EmptyExpr!20878 lt!2674766))))

(assert (=> d!2347719 (= lt!2674809 e!4619307)))

(declare-fun c!1436963 () Bool)

(assert (=> d!2347719 (= c!1436963 (isEmpty!42240 s!14292))))

(assert (=> d!2347719 (validRegex!11292 lt!2674766)))

(assert (=> d!2347719 (= (matchR!10338 lt!2674766 s!14292) lt!2674809)))

(declare-fun b!7803236 () Bool)

(assert (=> b!7803236 (= e!4619307 (nullable!9262 lt!2674766))))

(declare-fun b!7803237 () Bool)

(declare-fun res!3107792 () Bool)

(assert (=> b!7803237 (=> (not res!3107792) (not e!4619305))))

(assert (=> b!7803237 (= res!3107792 (not call!723698))))

(declare-fun b!7803238 () Bool)

(declare-fun res!3107793 () Bool)

(assert (=> b!7803238 (=> (not res!3107793) (not e!4619305))))

(assert (=> b!7803238 (= res!3107793 (isEmpty!42240 (tail!15494 s!14292)))))

(declare-fun b!7803239 () Bool)

(declare-fun res!3107787 () Bool)

(assert (=> b!7803239 (=> res!3107787 e!4619309)))

(assert (=> b!7803239 (= res!3107787 (not (isEmpty!42240 (tail!15494 s!14292))))))

(declare-fun b!7803240 () Bool)

(assert (=> b!7803240 (= e!4619308 e!4619310)))

(declare-fun res!3107794 () Bool)

(assert (=> b!7803240 (=> (not res!3107794) (not e!4619310))))

(assert (=> b!7803240 (= res!3107794 (not lt!2674809))))

(declare-fun bm!723693 () Bool)

(assert (=> bm!723693 (= call!723698 (isEmpty!42240 s!14292))))

(declare-fun b!7803241 () Bool)

(assert (=> b!7803241 (= e!4619304 e!4619306)))

(declare-fun c!1436964 () Bool)

(assert (=> b!7803241 (= c!1436964 (is-EmptyLang!20878 lt!2674766))))

(assert (= (and d!2347719 c!1436963) b!7803236))

(assert (= (and d!2347719 (not c!1436963)) b!7803232))

(assert (= (and d!2347719 c!1436965) b!7803228))

(assert (= (and d!2347719 (not c!1436965)) b!7803241))

(assert (= (and b!7803241 c!1436964) b!7803231))

(assert (= (and b!7803241 (not c!1436964)) b!7803235))

(assert (= (and b!7803235 (not res!3107790)) b!7803230))

(assert (= (and b!7803230 res!3107788) b!7803237))

(assert (= (and b!7803237 res!3107792) b!7803238))

(assert (= (and b!7803238 res!3107793) b!7803234))

(assert (= (and b!7803230 (not res!3107789)) b!7803240))

(assert (= (and b!7803240 res!3107794) b!7803233))

(assert (= (and b!7803233 (not res!3107791)) b!7803239))

(assert (= (and b!7803239 (not res!3107787)) b!7803229))

(assert (= (or b!7803228 b!7803233 b!7803237) bm!723693))

(declare-fun m!8238024 () Bool)

(assert (=> b!7803238 m!8238024))

(assert (=> b!7803238 m!8238024))

(declare-fun m!8238026 () Bool)

(assert (=> b!7803238 m!8238026))

(declare-fun m!8238028 () Bool)

(assert (=> d!2347719 m!8238028))

(declare-fun m!8238030 () Bool)

(assert (=> d!2347719 m!8238030))

(declare-fun m!8238032 () Bool)

(assert (=> b!7803229 m!8238032))

(assert (=> b!7803239 m!8238024))

(assert (=> b!7803239 m!8238024))

(assert (=> b!7803239 m!8238026))

(assert (=> b!7803234 m!8238032))

(assert (=> b!7803232 m!8238032))

(assert (=> b!7803232 m!8238032))

(declare-fun m!8238034 () Bool)

(assert (=> b!7803232 m!8238034))

(assert (=> b!7803232 m!8238024))

(assert (=> b!7803232 m!8238034))

(assert (=> b!7803232 m!8238024))

(declare-fun m!8238038 () Bool)

(assert (=> b!7803232 m!8238038))

(assert (=> bm!723693 m!8238028))

(declare-fun m!8238040 () Bool)

(assert (=> b!7803236 m!8238040))

(assert (=> b!7803016 d!2347719))

(declare-fun d!2347721 () Bool)

(declare-fun res!3107799 () Bool)

(declare-fun e!4619313 () Bool)

(assert (=> d!2347721 (=> res!3107799 e!4619313)))

(assert (=> d!2347721 (= res!3107799 (is-ElementMatch!20878 r1!6279))))

(assert (=> d!2347721 (= (validRegex!11292 r1!6279) e!4619313)))

(declare-fun b!7803242 () Bool)

(declare-fun e!4619311 () Bool)

(declare-fun e!4619314 () Bool)

(assert (=> b!7803242 (= e!4619311 e!4619314)))

(declare-fun res!3107795 () Bool)

(assert (=> b!7803242 (=> (not res!3107795) (not e!4619314))))

(declare-fun call!723701 () Bool)

(assert (=> b!7803242 (= res!3107795 call!723701)))

(declare-fun call!723699 () Bool)

(declare-fun c!1436966 () Bool)

(declare-fun bm!723694 () Bool)

(declare-fun c!1436967 () Bool)

(assert (=> bm!723694 (= call!723699 (validRegex!11292 (ite c!1436966 (reg!21207 r1!6279) (ite c!1436967 (regTwo!42269 r1!6279) (regTwo!42268 r1!6279)))))))

(declare-fun b!7803243 () Bool)

(declare-fun call!723700 () Bool)

(assert (=> b!7803243 (= e!4619314 call!723700)))

(declare-fun b!7803244 () Bool)

(declare-fun e!4619312 () Bool)

(assert (=> b!7803244 (= e!4619312 call!723700)))

(declare-fun b!7803245 () Bool)

(declare-fun e!4619317 () Bool)

(declare-fun e!4619315 () Bool)

(assert (=> b!7803245 (= e!4619317 e!4619315)))

(assert (=> b!7803245 (= c!1436967 (is-Union!20878 r1!6279))))

(declare-fun b!7803246 () Bool)

(declare-fun res!3107798 () Bool)

(assert (=> b!7803246 (=> res!3107798 e!4619311)))

(assert (=> b!7803246 (= res!3107798 (not (is-Concat!29723 r1!6279)))))

(assert (=> b!7803246 (= e!4619315 e!4619311)))

(declare-fun b!7803247 () Bool)

(declare-fun e!4619316 () Bool)

(assert (=> b!7803247 (= e!4619317 e!4619316)))

(declare-fun res!3107796 () Bool)

(assert (=> b!7803247 (= res!3107796 (not (nullable!9262 (reg!21207 r1!6279))))))

(assert (=> b!7803247 (=> (not res!3107796) (not e!4619316))))

(declare-fun bm!723695 () Bool)

(assert (=> bm!723695 (= call!723700 call!723699)))

(declare-fun bm!723696 () Bool)

(assert (=> bm!723696 (= call!723701 (validRegex!11292 (ite c!1436967 (regOne!42269 r1!6279) (regOne!42268 r1!6279))))))

(declare-fun b!7803248 () Bool)

(declare-fun res!3107797 () Bool)

(assert (=> b!7803248 (=> (not res!3107797) (not e!4619312))))

(assert (=> b!7803248 (= res!3107797 call!723701)))

(assert (=> b!7803248 (= e!4619315 e!4619312)))

(declare-fun b!7803249 () Bool)

(assert (=> b!7803249 (= e!4619313 e!4619317)))

(assert (=> b!7803249 (= c!1436966 (is-Star!20878 r1!6279))))

(declare-fun b!7803250 () Bool)

(assert (=> b!7803250 (= e!4619316 call!723699)))

(assert (= (and d!2347721 (not res!3107799)) b!7803249))

(assert (= (and b!7803249 c!1436966) b!7803247))

(assert (= (and b!7803249 (not c!1436966)) b!7803245))

(assert (= (and b!7803247 res!3107796) b!7803250))

(assert (= (and b!7803245 c!1436967) b!7803248))

(assert (= (and b!7803245 (not c!1436967)) b!7803246))

(assert (= (and b!7803248 res!3107797) b!7803244))

(assert (= (and b!7803246 (not res!3107798)) b!7803242))

(assert (= (and b!7803242 res!3107795) b!7803243))

(assert (= (or b!7803248 b!7803242) bm!723696))

(assert (= (or b!7803244 b!7803243) bm!723695))

(assert (= (or b!7803250 bm!723695) bm!723694))

(declare-fun m!8238056 () Bool)

(assert (=> bm!723694 m!8238056))

(declare-fun m!8238058 () Bool)

(assert (=> b!7803247 m!8238058))

(declare-fun m!8238060 () Bool)

(assert (=> bm!723696 m!8238060))

(assert (=> start!741296 d!2347721))

(declare-fun b!7803251 () Bool)

(declare-fun e!4619318 () Bool)

(declare-fun lt!2674810 () Bool)

(declare-fun call!723702 () Bool)

(assert (=> b!7803251 (= e!4619318 (= lt!2674810 call!723702))))

(declare-fun b!7803252 () Bool)

(declare-fun e!4619323 () Bool)

(assert (=> b!7803252 (= e!4619323 (not (= (head!15953 (t!388452 s!14292)) (c!1436929 lt!2674767))))))

(declare-fun b!7803253 () Bool)

(declare-fun res!3107802 () Bool)

(declare-fun e!4619322 () Bool)

(assert (=> b!7803253 (=> res!3107802 e!4619322)))

(declare-fun e!4619319 () Bool)

(assert (=> b!7803253 (= res!3107802 e!4619319)))

(declare-fun res!3107801 () Bool)

(assert (=> b!7803253 (=> (not res!3107801) (not e!4619319))))

(assert (=> b!7803253 (= res!3107801 lt!2674810)))

(declare-fun b!7803254 () Bool)

(declare-fun e!4619320 () Bool)

(assert (=> b!7803254 (= e!4619320 (not lt!2674810))))

(declare-fun b!7803255 () Bool)

(declare-fun e!4619321 () Bool)

(assert (=> b!7803255 (= e!4619321 (matchR!10338 (derivativeStep!6215 lt!2674767 (head!15953 (t!388452 s!14292))) (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803256 () Bool)

(declare-fun e!4619324 () Bool)

(assert (=> b!7803256 (= e!4619324 e!4619323)))

(declare-fun res!3107804 () Bool)

(assert (=> b!7803256 (=> res!3107804 e!4619323)))

(assert (=> b!7803256 (= res!3107804 call!723702)))

(declare-fun b!7803257 () Bool)

(assert (=> b!7803257 (= e!4619319 (= (head!15953 (t!388452 s!14292)) (c!1436929 lt!2674767)))))

(declare-fun b!7803258 () Bool)

(declare-fun res!3107803 () Bool)

(assert (=> b!7803258 (=> res!3107803 e!4619322)))

(assert (=> b!7803258 (= res!3107803 (not (is-ElementMatch!20878 lt!2674767)))))

(assert (=> b!7803258 (= e!4619320 e!4619322)))

(declare-fun d!2347725 () Bool)

(assert (=> d!2347725 e!4619318))

(declare-fun c!1436970 () Bool)

(assert (=> d!2347725 (= c!1436970 (is-EmptyExpr!20878 lt!2674767))))

(assert (=> d!2347725 (= lt!2674810 e!4619321)))

(declare-fun c!1436968 () Bool)

(assert (=> d!2347725 (= c!1436968 (isEmpty!42240 (t!388452 s!14292)))))

(assert (=> d!2347725 (validRegex!11292 lt!2674767)))

(assert (=> d!2347725 (= (matchR!10338 lt!2674767 (t!388452 s!14292)) lt!2674810)))

(declare-fun b!7803259 () Bool)

(assert (=> b!7803259 (= e!4619321 (nullable!9262 lt!2674767))))

(declare-fun b!7803260 () Bool)

(declare-fun res!3107805 () Bool)

(assert (=> b!7803260 (=> (not res!3107805) (not e!4619319))))

(assert (=> b!7803260 (= res!3107805 (not call!723702))))

(declare-fun b!7803261 () Bool)

(declare-fun res!3107806 () Bool)

(assert (=> b!7803261 (=> (not res!3107806) (not e!4619319))))

(assert (=> b!7803261 (= res!3107806 (isEmpty!42240 (tail!15494 (t!388452 s!14292))))))

(declare-fun b!7803262 () Bool)

(declare-fun res!3107800 () Bool)

(assert (=> b!7803262 (=> res!3107800 e!4619323)))

(assert (=> b!7803262 (= res!3107800 (not (isEmpty!42240 (tail!15494 (t!388452 s!14292)))))))

(declare-fun b!7803263 () Bool)

(assert (=> b!7803263 (= e!4619322 e!4619324)))

(declare-fun res!3107807 () Bool)

(assert (=> b!7803263 (=> (not res!3107807) (not e!4619324))))

(assert (=> b!7803263 (= res!3107807 (not lt!2674810))))

(declare-fun bm!723697 () Bool)

(assert (=> bm!723697 (= call!723702 (isEmpty!42240 (t!388452 s!14292)))))

(declare-fun b!7803264 () Bool)

(assert (=> b!7803264 (= e!4619318 e!4619320)))

(declare-fun c!1436969 () Bool)

(assert (=> b!7803264 (= c!1436969 (is-EmptyLang!20878 lt!2674767))))

(assert (= (and d!2347725 c!1436968) b!7803259))

(assert (= (and d!2347725 (not c!1436968)) b!7803255))

(assert (= (and d!2347725 c!1436970) b!7803251))

(assert (= (and d!2347725 (not c!1436970)) b!7803264))

(assert (= (and b!7803264 c!1436969) b!7803254))

(assert (= (and b!7803264 (not c!1436969)) b!7803258))

(assert (= (and b!7803258 (not res!3107803)) b!7803253))

(assert (= (and b!7803253 res!3107801) b!7803260))

(assert (= (and b!7803260 res!3107805) b!7803261))

(assert (= (and b!7803261 res!3107806) b!7803257))

(assert (= (and b!7803253 (not res!3107802)) b!7803263))

(assert (= (and b!7803263 res!3107807) b!7803256))

(assert (= (and b!7803256 (not res!3107804)) b!7803262))

(assert (= (and b!7803262 (not res!3107800)) b!7803252))

(assert (= (or b!7803251 b!7803256 b!7803260) bm!723697))

(assert (=> b!7803261 m!8237994))

(assert (=> b!7803261 m!8237994))

(assert (=> b!7803261 m!8237996))

(assert (=> d!2347725 m!8237998))

(declare-fun m!8238062 () Bool)

(assert (=> d!2347725 m!8238062))

(assert (=> b!7803252 m!8238002))

(assert (=> b!7803262 m!8237994))

(assert (=> b!7803262 m!8237994))

(assert (=> b!7803262 m!8237996))

(assert (=> b!7803257 m!8238002))

(assert (=> b!7803255 m!8238002))

(assert (=> b!7803255 m!8238002))

(declare-fun m!8238064 () Bool)

(assert (=> b!7803255 m!8238064))

(assert (=> b!7803255 m!8237994))

(assert (=> b!7803255 m!8238064))

(assert (=> b!7803255 m!8237994))

(declare-fun m!8238066 () Bool)

(assert (=> b!7803255 m!8238066))

(assert (=> bm!723697 m!8237998))

(declare-fun m!8238068 () Bool)

(assert (=> b!7803259 m!8238068))

(assert (=> b!7803023 d!2347725))

(declare-fun call!723711 () Regex!20878)

(declare-fun bm!723706 () Bool)

(declare-fun c!1436989 () Bool)

(declare-fun c!1436986 () Bool)

(assert (=> bm!723706 (= call!723711 (derivativeStep!6215 (ite c!1436989 (regOne!42269 lt!2674766) (ite c!1436986 (regTwo!42268 lt!2674766) (regOne!42268 lt!2674766))) (h!80041 s!14292)))))

(declare-fun bm!723707 () Bool)

(declare-fun call!723712 () Regex!20878)

(assert (=> bm!723707 (= call!723712 call!723711)))

(declare-fun bm!723708 () Bool)

(declare-fun call!723714 () Regex!20878)

(declare-fun call!723713 () Regex!20878)

(assert (=> bm!723708 (= call!723714 call!723713)))

(declare-fun b!7803297 () Bool)

(declare-fun e!4619342 () Regex!20878)

(assert (=> b!7803297 (= e!4619342 (Union!20878 (Concat!29723 call!723712 (regTwo!42268 lt!2674766)) EmptyLang!20878))))

(declare-fun b!7803298 () Bool)

(declare-fun e!4619340 () Regex!20878)

(assert (=> b!7803298 (= e!4619340 (Concat!29723 call!723714 lt!2674766))))

(declare-fun b!7803299 () Bool)

(assert (=> b!7803299 (= e!4619342 (Union!20878 (Concat!29723 call!723714 (regTwo!42268 lt!2674766)) call!723712))))

(declare-fun b!7803300 () Bool)

(assert (=> b!7803300 (= c!1436989 (is-Union!20878 lt!2674766))))

(declare-fun e!4619343 () Regex!20878)

(declare-fun e!4619344 () Regex!20878)

(assert (=> b!7803300 (= e!4619343 e!4619344)))

(declare-fun b!7803301 () Bool)

(assert (=> b!7803301 (= c!1436986 (nullable!9262 (regOne!42268 lt!2674766)))))

(assert (=> b!7803301 (= e!4619340 e!4619342)))

(declare-fun b!7803302 () Bool)

(assert (=> b!7803302 (= e!4619344 (Union!20878 call!723711 call!723713))))

(declare-fun b!7803303 () Bool)

(declare-fun e!4619345 () Regex!20878)

(assert (=> b!7803303 (= e!4619345 EmptyLang!20878)))

(declare-fun bm!723709 () Bool)

(declare-fun c!1436990 () Bool)

(assert (=> bm!723709 (= call!723713 (derivativeStep!6215 (ite c!1436989 (regTwo!42269 lt!2674766) (ite c!1436990 (reg!21207 lt!2674766) (regOne!42268 lt!2674766))) (h!80041 s!14292)))))

(declare-fun d!2347727 () Bool)

(declare-fun lt!2674815 () Regex!20878)

(assert (=> d!2347727 (validRegex!11292 lt!2674815)))

(assert (=> d!2347727 (= lt!2674815 e!4619345)))

(declare-fun c!1436988 () Bool)

(assert (=> d!2347727 (= c!1436988 (or (is-EmptyExpr!20878 lt!2674766) (is-EmptyLang!20878 lt!2674766)))))

(assert (=> d!2347727 (validRegex!11292 lt!2674766)))

(assert (=> d!2347727 (= (derivativeStep!6215 lt!2674766 (h!80041 s!14292)) lt!2674815)))

(declare-fun b!7803304 () Bool)

(assert (=> b!7803304 (= e!4619345 e!4619343)))

(declare-fun c!1436991 () Bool)

(assert (=> b!7803304 (= c!1436991 (is-ElementMatch!20878 lt!2674766))))

(declare-fun b!7803305 () Bool)

(assert (=> b!7803305 (= e!4619344 e!4619340)))

(assert (=> b!7803305 (= c!1436990 (is-Star!20878 lt!2674766))))

(declare-fun b!7803306 () Bool)

(assert (=> b!7803306 (= e!4619343 (ite (= (h!80041 s!14292) (c!1436929 lt!2674766)) EmptyExpr!20878 EmptyLang!20878))))

(assert (= (and d!2347727 c!1436988) b!7803303))

(assert (= (and d!2347727 (not c!1436988)) b!7803304))

(assert (= (and b!7803304 c!1436991) b!7803306))

(assert (= (and b!7803304 (not c!1436991)) b!7803300))

(assert (= (and b!7803300 c!1436989) b!7803302))

(assert (= (and b!7803300 (not c!1436989)) b!7803305))

(assert (= (and b!7803305 c!1436990) b!7803298))

(assert (= (and b!7803305 (not c!1436990)) b!7803301))

(assert (= (and b!7803301 c!1436986) b!7803299))

(assert (= (and b!7803301 (not c!1436986)) b!7803297))

(assert (= (or b!7803299 b!7803297) bm!723707))

(assert (= (or b!7803298 b!7803299) bm!723708))

(assert (= (or b!7803302 bm!723708) bm!723709))

(assert (= (or b!7803302 bm!723707) bm!723706))

(declare-fun m!8238070 () Bool)

(assert (=> bm!723706 m!8238070))

(declare-fun m!8238072 () Bool)

(assert (=> b!7803301 m!8238072))

(declare-fun m!8238074 () Bool)

(assert (=> bm!723709 m!8238074))

(declare-fun m!8238076 () Bool)

(assert (=> d!2347727 m!8238076))

(assert (=> d!2347727 m!8238030))

(assert (=> b!7803023 d!2347727))

(declare-fun call!723717 () Regex!20878)

(declare-fun bm!723712 () Bool)

(declare-fun c!1436998 () Bool)

(declare-fun c!1436996 () Bool)

(assert (=> bm!723712 (= call!723717 (derivativeStep!6215 (ite c!1436998 (regOne!42269 r1!6279) (ite c!1436996 (regTwo!42268 r1!6279) (regOne!42268 r1!6279))) (h!80041 s!14292)))))

(declare-fun bm!723713 () Bool)

(declare-fun call!723718 () Regex!20878)

(assert (=> bm!723713 (= call!723718 call!723717)))

(declare-fun bm!723714 () Bool)

(declare-fun call!723720 () Regex!20878)

(declare-fun call!723719 () Regex!20878)

(assert (=> bm!723714 (= call!723720 call!723719)))

(declare-fun b!7803315 () Bool)

(declare-fun e!4619351 () Regex!20878)

(assert (=> b!7803315 (= e!4619351 (Union!20878 (Concat!29723 call!723718 (regTwo!42268 r1!6279)) EmptyLang!20878))))

(declare-fun b!7803316 () Bool)

(declare-fun e!4619350 () Regex!20878)

(assert (=> b!7803316 (= e!4619350 (Concat!29723 call!723720 r1!6279))))

(declare-fun b!7803317 () Bool)

(assert (=> b!7803317 (= e!4619351 (Union!20878 (Concat!29723 call!723720 (regTwo!42268 r1!6279)) call!723718))))

(declare-fun b!7803318 () Bool)

(assert (=> b!7803318 (= c!1436998 (is-Union!20878 r1!6279))))

(declare-fun e!4619352 () Regex!20878)

(declare-fun e!4619353 () Regex!20878)

(assert (=> b!7803318 (= e!4619352 e!4619353)))

(declare-fun b!7803319 () Bool)

(assert (=> b!7803319 (= c!1436996 (nullable!9262 (regOne!42268 r1!6279)))))

(assert (=> b!7803319 (= e!4619350 e!4619351)))

(declare-fun b!7803320 () Bool)

(assert (=> b!7803320 (= e!4619353 (Union!20878 call!723717 call!723719))))

(declare-fun b!7803321 () Bool)

(declare-fun e!4619354 () Regex!20878)

(assert (=> b!7803321 (= e!4619354 EmptyLang!20878)))

(declare-fun bm!723715 () Bool)

(declare-fun c!1436999 () Bool)

(assert (=> bm!723715 (= call!723719 (derivativeStep!6215 (ite c!1436998 (regTwo!42269 r1!6279) (ite c!1436999 (reg!21207 r1!6279) (regOne!42268 r1!6279))) (h!80041 s!14292)))))

(declare-fun d!2347729 () Bool)

(declare-fun lt!2674816 () Regex!20878)

(assert (=> d!2347729 (validRegex!11292 lt!2674816)))

(assert (=> d!2347729 (= lt!2674816 e!4619354)))

(declare-fun c!1436997 () Bool)

(assert (=> d!2347729 (= c!1436997 (or (is-EmptyExpr!20878 r1!6279) (is-EmptyLang!20878 r1!6279)))))

(assert (=> d!2347729 (validRegex!11292 r1!6279)))

(assert (=> d!2347729 (= (derivativeStep!6215 r1!6279 (h!80041 s!14292)) lt!2674816)))

(declare-fun b!7803322 () Bool)

(assert (=> b!7803322 (= e!4619354 e!4619352)))

(declare-fun c!1437000 () Bool)

(assert (=> b!7803322 (= c!1437000 (is-ElementMatch!20878 r1!6279))))

(declare-fun b!7803323 () Bool)

(assert (=> b!7803323 (= e!4619353 e!4619350)))

(assert (=> b!7803323 (= c!1436999 (is-Star!20878 r1!6279))))

(declare-fun b!7803324 () Bool)

(assert (=> b!7803324 (= e!4619352 (ite (= (h!80041 s!14292) (c!1436929 r1!6279)) EmptyExpr!20878 EmptyLang!20878))))

(assert (= (and d!2347729 c!1436997) b!7803321))

(assert (= (and d!2347729 (not c!1436997)) b!7803322))

(assert (= (and b!7803322 c!1437000) b!7803324))

(assert (= (and b!7803322 (not c!1437000)) b!7803318))

(assert (= (and b!7803318 c!1436998) b!7803320))

(assert (= (and b!7803318 (not c!1436998)) b!7803323))

(assert (= (and b!7803323 c!1436999) b!7803316))

(assert (= (and b!7803323 (not c!1436999)) b!7803319))

(assert (= (and b!7803319 c!1436996) b!7803317))

(assert (= (and b!7803319 (not c!1436996)) b!7803315))

(assert (= (or b!7803317 b!7803315) bm!723713))

(assert (= (or b!7803316 b!7803317) bm!723714))

(assert (= (or b!7803320 bm!723714) bm!723715))

(assert (= (or b!7803320 bm!723713) bm!723712))

(declare-fun m!8238078 () Bool)

(assert (=> bm!723712 m!8238078))

(declare-fun m!8238080 () Bool)

(assert (=> b!7803319 m!8238080))

(declare-fun m!8238082 () Bool)

(assert (=> bm!723715 m!8238082))

(declare-fun m!8238084 () Bool)

(assert (=> d!2347729 m!8238084))

(assert (=> d!2347729 m!8237942))

(assert (=> b!7803012 d!2347729))

(declare-fun e!4619357 () Bool)

(assert (=> b!7803013 (= tp!2298748 e!4619357)))

(declare-fun b!7803335 () Bool)

(assert (=> b!7803335 (= e!4619357 tp_is_empty!52111)))

(declare-fun b!7803337 () Bool)

(declare-fun tp!2298799 () Bool)

(assert (=> b!7803337 (= e!4619357 tp!2298799)))

(declare-fun b!7803338 () Bool)

(declare-fun tp!2298800 () Bool)

(declare-fun tp!2298801 () Bool)

(assert (=> b!7803338 (= e!4619357 (and tp!2298800 tp!2298801))))

(declare-fun b!7803336 () Bool)

(declare-fun tp!2298802 () Bool)

(declare-fun tp!2298798 () Bool)

(assert (=> b!7803336 (= e!4619357 (and tp!2298802 tp!2298798))))

(assert (= (and b!7803013 (is-ElementMatch!20878 (reg!21207 r1!6279))) b!7803335))

(assert (= (and b!7803013 (is-Concat!29723 (reg!21207 r1!6279))) b!7803336))

(assert (= (and b!7803013 (is-Star!20878 (reg!21207 r1!6279))) b!7803337))

(assert (= (and b!7803013 (is-Union!20878 (reg!21207 r1!6279))) b!7803338))

(declare-fun e!4619358 () Bool)

(assert (=> b!7803018 (= tp!2298754 e!4619358)))

(declare-fun b!7803339 () Bool)

(assert (=> b!7803339 (= e!4619358 tp_is_empty!52111)))

(declare-fun b!7803341 () Bool)

(declare-fun tp!2298804 () Bool)

(assert (=> b!7803341 (= e!4619358 tp!2298804)))

(declare-fun b!7803342 () Bool)

(declare-fun tp!2298805 () Bool)

(declare-fun tp!2298806 () Bool)

(assert (=> b!7803342 (= e!4619358 (and tp!2298805 tp!2298806))))

(declare-fun b!7803340 () Bool)

(declare-fun tp!2298807 () Bool)

(declare-fun tp!2298803 () Bool)

(assert (=> b!7803340 (= e!4619358 (and tp!2298807 tp!2298803))))

(assert (= (and b!7803018 (is-ElementMatch!20878 (regOne!42269 r2!6217))) b!7803339))

(assert (= (and b!7803018 (is-Concat!29723 (regOne!42269 r2!6217))) b!7803340))

(assert (= (and b!7803018 (is-Star!20878 (regOne!42269 r2!6217))) b!7803341))

(assert (= (and b!7803018 (is-Union!20878 (regOne!42269 r2!6217))) b!7803342))

(declare-fun e!4619359 () Bool)

(assert (=> b!7803018 (= tp!2298753 e!4619359)))

(declare-fun b!7803343 () Bool)

(assert (=> b!7803343 (= e!4619359 tp_is_empty!52111)))

(declare-fun b!7803345 () Bool)

(declare-fun tp!2298809 () Bool)

(assert (=> b!7803345 (= e!4619359 tp!2298809)))

(declare-fun b!7803346 () Bool)

(declare-fun tp!2298810 () Bool)

(declare-fun tp!2298811 () Bool)

(assert (=> b!7803346 (= e!4619359 (and tp!2298810 tp!2298811))))

(declare-fun b!7803344 () Bool)

(declare-fun tp!2298812 () Bool)

(declare-fun tp!2298808 () Bool)

(assert (=> b!7803344 (= e!4619359 (and tp!2298812 tp!2298808))))

(assert (= (and b!7803018 (is-ElementMatch!20878 (regTwo!42269 r2!6217))) b!7803343))

(assert (= (and b!7803018 (is-Concat!29723 (regTwo!42269 r2!6217))) b!7803344))

(assert (= (and b!7803018 (is-Star!20878 (regTwo!42269 r2!6217))) b!7803345))

(assert (= (and b!7803018 (is-Union!20878 (regTwo!42269 r2!6217))) b!7803346))

(declare-fun e!4619360 () Bool)

(assert (=> b!7803024 (= tp!2298745 e!4619360)))

(declare-fun b!7803347 () Bool)

(assert (=> b!7803347 (= e!4619360 tp_is_empty!52111)))

(declare-fun b!7803349 () Bool)

(declare-fun tp!2298814 () Bool)

(assert (=> b!7803349 (= e!4619360 tp!2298814)))

(declare-fun b!7803350 () Bool)

(declare-fun tp!2298815 () Bool)

(declare-fun tp!2298816 () Bool)

(assert (=> b!7803350 (= e!4619360 (and tp!2298815 tp!2298816))))

(declare-fun b!7803348 () Bool)

(declare-fun tp!2298817 () Bool)

(declare-fun tp!2298813 () Bool)

(assert (=> b!7803348 (= e!4619360 (and tp!2298817 tp!2298813))))

(assert (= (and b!7803024 (is-ElementMatch!20878 (reg!21207 r2!6217))) b!7803347))

(assert (= (and b!7803024 (is-Concat!29723 (reg!21207 r2!6217))) b!7803348))

(assert (= (and b!7803024 (is-Star!20878 (reg!21207 r2!6217))) b!7803349))

(assert (= (and b!7803024 (is-Union!20878 (reg!21207 r2!6217))) b!7803350))

(declare-fun e!4619361 () Bool)

(assert (=> b!7803025 (= tp!2298752 e!4619361)))

(declare-fun b!7803351 () Bool)

(assert (=> b!7803351 (= e!4619361 tp_is_empty!52111)))

(declare-fun b!7803353 () Bool)

(declare-fun tp!2298819 () Bool)

(assert (=> b!7803353 (= e!4619361 tp!2298819)))

(declare-fun b!7803354 () Bool)

(declare-fun tp!2298820 () Bool)

(declare-fun tp!2298821 () Bool)

(assert (=> b!7803354 (= e!4619361 (and tp!2298820 tp!2298821))))

(declare-fun b!7803352 () Bool)

(declare-fun tp!2298822 () Bool)

(declare-fun tp!2298818 () Bool)

(assert (=> b!7803352 (= e!4619361 (and tp!2298822 tp!2298818))))

(assert (= (and b!7803025 (is-ElementMatch!20878 (regOne!42268 r1!6279))) b!7803351))

(assert (= (and b!7803025 (is-Concat!29723 (regOne!42268 r1!6279))) b!7803352))

(assert (= (and b!7803025 (is-Star!20878 (regOne!42268 r1!6279))) b!7803353))

(assert (= (and b!7803025 (is-Union!20878 (regOne!42268 r1!6279))) b!7803354))

(declare-fun e!4619362 () Bool)

(assert (=> b!7803025 (= tp!2298746 e!4619362)))

(declare-fun b!7803355 () Bool)

(assert (=> b!7803355 (= e!4619362 tp_is_empty!52111)))

(declare-fun b!7803357 () Bool)

(declare-fun tp!2298824 () Bool)

(assert (=> b!7803357 (= e!4619362 tp!2298824)))

(declare-fun b!7803358 () Bool)

(declare-fun tp!2298825 () Bool)

(declare-fun tp!2298826 () Bool)

(assert (=> b!7803358 (= e!4619362 (and tp!2298825 tp!2298826))))

(declare-fun b!7803356 () Bool)

(declare-fun tp!2298827 () Bool)

(declare-fun tp!2298823 () Bool)

(assert (=> b!7803356 (= e!4619362 (and tp!2298827 tp!2298823))))

(assert (= (and b!7803025 (is-ElementMatch!20878 (regTwo!42268 r1!6279))) b!7803355))

(assert (= (and b!7803025 (is-Concat!29723 (regTwo!42268 r1!6279))) b!7803356))

(assert (= (and b!7803025 (is-Star!20878 (regTwo!42268 r1!6279))) b!7803357))

(assert (= (and b!7803025 (is-Union!20878 (regTwo!42268 r1!6279))) b!7803358))

(declare-fun e!4619363 () Bool)

(assert (=> b!7803020 (= tp!2298749 e!4619363)))

(declare-fun b!7803359 () Bool)

(assert (=> b!7803359 (= e!4619363 tp_is_empty!52111)))

(declare-fun b!7803361 () Bool)

(declare-fun tp!2298829 () Bool)

(assert (=> b!7803361 (= e!4619363 tp!2298829)))

(declare-fun b!7803362 () Bool)

(declare-fun tp!2298830 () Bool)

(declare-fun tp!2298831 () Bool)

(assert (=> b!7803362 (= e!4619363 (and tp!2298830 tp!2298831))))

(declare-fun b!7803360 () Bool)

(declare-fun tp!2298832 () Bool)

(declare-fun tp!2298828 () Bool)

(assert (=> b!7803360 (= e!4619363 (and tp!2298832 tp!2298828))))

(assert (= (and b!7803020 (is-ElementMatch!20878 (regOne!42269 r1!6279))) b!7803359))

(assert (= (and b!7803020 (is-Concat!29723 (regOne!42269 r1!6279))) b!7803360))

(assert (= (and b!7803020 (is-Star!20878 (regOne!42269 r1!6279))) b!7803361))

(assert (= (and b!7803020 (is-Union!20878 (regOne!42269 r1!6279))) b!7803362))

(declare-fun e!4619364 () Bool)

(assert (=> b!7803020 (= tp!2298744 e!4619364)))

(declare-fun b!7803363 () Bool)

(assert (=> b!7803363 (= e!4619364 tp_is_empty!52111)))

(declare-fun b!7803365 () Bool)

(declare-fun tp!2298834 () Bool)

(assert (=> b!7803365 (= e!4619364 tp!2298834)))

(declare-fun b!7803366 () Bool)

(declare-fun tp!2298835 () Bool)

(declare-fun tp!2298836 () Bool)

(assert (=> b!7803366 (= e!4619364 (and tp!2298835 tp!2298836))))

(declare-fun b!7803364 () Bool)

(declare-fun tp!2298837 () Bool)

(declare-fun tp!2298833 () Bool)

(assert (=> b!7803364 (= e!4619364 (and tp!2298837 tp!2298833))))

(assert (= (and b!7803020 (is-ElementMatch!20878 (regTwo!42269 r1!6279))) b!7803363))

(assert (= (and b!7803020 (is-Concat!29723 (regTwo!42269 r1!6279))) b!7803364))

(assert (= (and b!7803020 (is-Star!20878 (regTwo!42269 r1!6279))) b!7803365))

(assert (= (and b!7803020 (is-Union!20878 (regTwo!42269 r1!6279))) b!7803366))

(declare-fun b!7803371 () Bool)

(declare-fun e!4619367 () Bool)

(declare-fun tp!2298840 () Bool)

(assert (=> b!7803371 (= e!4619367 (and tp_is_empty!52111 tp!2298840))))

(assert (=> b!7803011 (= tp!2298751 e!4619367)))

(assert (= (and b!7803011 (is-Cons!73593 (t!388452 s!14292))) b!7803371))

(declare-fun e!4619368 () Bool)

(assert (=> b!7803017 (= tp!2298747 e!4619368)))

(declare-fun b!7803372 () Bool)

(assert (=> b!7803372 (= e!4619368 tp_is_empty!52111)))

(declare-fun b!7803374 () Bool)

(declare-fun tp!2298842 () Bool)

(assert (=> b!7803374 (= e!4619368 tp!2298842)))

(declare-fun b!7803375 () Bool)

(declare-fun tp!2298843 () Bool)

(declare-fun tp!2298844 () Bool)

(assert (=> b!7803375 (= e!4619368 (and tp!2298843 tp!2298844))))

(declare-fun b!7803373 () Bool)

(declare-fun tp!2298845 () Bool)

(declare-fun tp!2298841 () Bool)

(assert (=> b!7803373 (= e!4619368 (and tp!2298845 tp!2298841))))

(assert (= (and b!7803017 (is-ElementMatch!20878 (regOne!42268 r2!6217))) b!7803372))

(assert (= (and b!7803017 (is-Concat!29723 (regOne!42268 r2!6217))) b!7803373))

(assert (= (and b!7803017 (is-Star!20878 (regOne!42268 r2!6217))) b!7803374))

(assert (= (and b!7803017 (is-Union!20878 (regOne!42268 r2!6217))) b!7803375))

(declare-fun e!4619369 () Bool)

(assert (=> b!7803017 (= tp!2298750 e!4619369)))

(declare-fun b!7803376 () Bool)

(assert (=> b!7803376 (= e!4619369 tp_is_empty!52111)))

(declare-fun b!7803378 () Bool)

(declare-fun tp!2298847 () Bool)

(assert (=> b!7803378 (= e!4619369 tp!2298847)))

(declare-fun b!7803379 () Bool)

(declare-fun tp!2298848 () Bool)

(declare-fun tp!2298849 () Bool)

(assert (=> b!7803379 (= e!4619369 (and tp!2298848 tp!2298849))))

(declare-fun b!7803377 () Bool)

(declare-fun tp!2298850 () Bool)

(declare-fun tp!2298846 () Bool)

(assert (=> b!7803377 (= e!4619369 (and tp!2298850 tp!2298846))))

(assert (= (and b!7803017 (is-ElementMatch!20878 (regTwo!42268 r2!6217))) b!7803376))

(assert (= (and b!7803017 (is-Concat!29723 (regTwo!42268 r2!6217))) b!7803377))

(assert (= (and b!7803017 (is-Star!20878 (regTwo!42268 r2!6217))) b!7803378))

(assert (= (and b!7803017 (is-Union!20878 (regTwo!42268 r2!6217))) b!7803379))

(push 1)

(assert (not bm!723687))

(assert (not b!7803257))

(assert (not b!7803358))

(assert (not b!7803195))

(assert (not bm!723709))

(assert (not b!7803357))

(assert (not b!7803190))

(assert (not bm!723706))

(assert (not b!7803348))

(assert (not b!7803202))

(assert (not b!7803261))

(assert (not b!7803345))

(assert (not b!7803362))

(assert (not b!7803113))

(assert (not b!7803361))

(assert (not b!7803354))

(assert (not d!2347713))

(assert (not b!7803177))

(assert (not b!7803192))

(assert (not b!7803338))

(assert (not b!7803360))

(assert (not bm!723696))

(assert (not b!7803189))

(assert (not b!7803364))

(assert (not bm!723693))

(assert (not b!7803105))

(assert (not b!7803197))

(assert (not b!7803262))

(assert (not b!7803366))

(assert (not bm!723692))

(assert (not b!7803229))

(assert (not b!7803252))

(assert (not d!2347725))

(assert (not bm!723697))

(assert (not b!7803350))

(assert (not b!7803337))

(assert (not b!7803346))

(assert (not bm!723690))

(assert tp_is_empty!52111)

(assert (not bm!723680))

(assert (not b!7803336))

(assert (not b!7803175))

(assert (not d!2347727))

(assert (not b!7803375))

(assert (not d!2347719))

(assert (not b!7803238))

(assert (not bm!723715))

(assert (not b!7803255))

(assert (not b!7803379))

(assert (not bm!723688))

(assert (not b!7803371))

(assert (not bm!723682))

(assert (not b!7803341))

(assert (not b!7803247))

(assert (not b!7803377))

(assert (not b!7803179))

(assert (not b!7803239))

(assert (not b!7803374))

(assert (not b!7803201))

(assert (not b!7803224))

(assert (not b!7803319))

(assert (not b!7803365))

(assert (not b!7803301))

(assert (not b!7803340))

(assert (not b!7803236))

(assert (not b!7803234))

(assert (not b!7803182))

(assert (not b!7803344))

(assert (not b!7803172))

(assert (not d!2347715))

(assert (not d!2347705))

(assert (not b!7803373))

(assert (not b!7803352))

(assert (not b!7803353))

(assert (not b!7803181))

(assert (not b!7803356))

(assert (not d!2347729))

(assert (not b!7803342))

(assert (not b!7803378))

(assert (not bm!723694))

(assert (not b!7803232))

(assert (not d!2347709))

(assert (not d!2347707))

(assert (not b!7803259))

(assert (not d!2347711))

(assert (not b!7803199))

(assert (not bm!723712))

(assert (not b!7803349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

