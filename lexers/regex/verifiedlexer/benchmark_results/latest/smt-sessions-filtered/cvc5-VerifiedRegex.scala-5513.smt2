; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278008 () Bool)

(assert start!278008)

(declare-fun b!2856027 () Bool)

(assert (=> b!2856027 true))

(assert (=> b!2856027 true))

(declare-fun res!1186525 () Bool)

(declare-fun e!1808855 () Bool)

(assert (=> start!278008 (=> (not res!1186525) (not e!1808855))))

(declare-datatypes ((C!17342 0))(
  ( (C!17343 (val!10705 Int)) )
))
(declare-datatypes ((Regex!8580 0))(
  ( (ElementMatch!8580 (c!460237 C!17342)) (Concat!13901 (regOne!17672 Regex!8580) (regTwo!17672 Regex!8580)) (EmptyExpr!8580) (Star!8580 (reg!8909 Regex!8580)) (EmptyLang!8580) (Union!8580 (regOne!17673 Regex!8580) (regTwo!17673 Regex!8580)) )
))
(declare-fun r!23423 () Regex!8580)

(declare-fun validRegex!3450 (Regex!8580) Bool)

(assert (=> start!278008 (= res!1186525 (validRegex!3450 r!23423))))

(assert (=> start!278008 e!1808855))

(declare-fun e!1808853 () Bool)

(assert (=> start!278008 e!1808853))

(declare-fun e!1808854 () Bool)

(assert (=> start!278008 e!1808854))

(declare-fun b!2856025 () Bool)

(declare-fun res!1186523 () Bool)

(assert (=> b!2856025 (=> (not res!1186523) (not e!1808855))))

(declare-datatypes ((List!34177 0))(
  ( (Nil!34053) (Cons!34053 (h!39473 C!17342) (t!233208 List!34177)) )
))
(declare-fun prefix!1470 () List!34177)

(assert (=> b!2856025 (= res!1186523 (not (is-Nil!34053 prefix!1470)))))

(declare-fun b!2856026 () Bool)

(declare-fun tp!919115 () Bool)

(assert (=> b!2856026 (= e!1808853 tp!919115)))

(declare-fun lt!1013969 () Regex!8580)

(assert (=> b!2856027 (= e!1808855 (not (validRegex!3450 lt!1013969)))))

(declare-fun lambda!105024 () Int)

(declare-fun Exists!1286 (Int) Bool)

(assert (=> b!2856027 (Exists!1286 lambda!105024)))

(declare-datatypes ((Unit!47703 0))(
  ( (Unit!47704) )
))
(declare-fun lt!1013968 () Unit!47703)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!334 (Regex!8580 List!34177) Unit!47703)

(assert (=> b!2856027 (= lt!1013968 (lemmaPrefixMatchThenExistsStringThatMatches!334 lt!1013969 (t!233208 prefix!1470)))))

(declare-fun derivativeStep!2269 (Regex!8580 C!17342) Regex!8580)

(assert (=> b!2856027 (= lt!1013969 (derivativeStep!2269 r!23423 (h!39473 prefix!1470)))))

(declare-fun b!2856028 () Bool)

(declare-fun tp_is_empty!14897 () Bool)

(assert (=> b!2856028 (= e!1808853 tp_is_empty!14897)))

(declare-fun b!2856029 () Bool)

(declare-fun res!1186524 () Bool)

(assert (=> b!2856029 (=> (not res!1186524) (not e!1808855))))

(declare-fun prefixMatch!888 (Regex!8580 List!34177) Bool)

(assert (=> b!2856029 (= res!1186524 (prefixMatch!888 r!23423 prefix!1470))))

(declare-fun b!2856030 () Bool)

(declare-fun tp!919113 () Bool)

(assert (=> b!2856030 (= e!1808854 (and tp_is_empty!14897 tp!919113))))

(declare-fun b!2856031 () Bool)

(declare-fun tp!919116 () Bool)

(declare-fun tp!919117 () Bool)

(assert (=> b!2856031 (= e!1808853 (and tp!919116 tp!919117))))

(declare-fun b!2856032 () Bool)

(declare-fun tp!919118 () Bool)

(declare-fun tp!919114 () Bool)

(assert (=> b!2856032 (= e!1808853 (and tp!919118 tp!919114))))

(assert (= (and start!278008 res!1186525) b!2856029))

(assert (= (and b!2856029 res!1186524) b!2856025))

(assert (= (and b!2856025 res!1186523) b!2856027))

(assert (= (and start!278008 (is-ElementMatch!8580 r!23423)) b!2856028))

(assert (= (and start!278008 (is-Concat!13901 r!23423)) b!2856032))

(assert (= (and start!278008 (is-Star!8580 r!23423)) b!2856026))

(assert (= (and start!278008 (is-Union!8580 r!23423)) b!2856031))

(assert (= (and start!278008 (is-Cons!34053 prefix!1470)) b!2856030))

(declare-fun m!3278753 () Bool)

(assert (=> start!278008 m!3278753))

(declare-fun m!3278755 () Bool)

(assert (=> b!2856027 m!3278755))

(declare-fun m!3278757 () Bool)

(assert (=> b!2856027 m!3278757))

(declare-fun m!3278759 () Bool)

(assert (=> b!2856027 m!3278759))

(declare-fun m!3278761 () Bool)

(assert (=> b!2856027 m!3278761))

(declare-fun m!3278763 () Bool)

(assert (=> b!2856029 m!3278763))

(push 1)

(assert tp_is_empty!14897)

(assert (not b!2856027))

(assert (not b!2856032))

(assert (not b!2856029))

(assert (not b!2856031))

(assert (not b!2856026))

(assert (not start!278008))

(assert (not b!2856030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826450 () Bool)

(declare-fun c!460241 () Bool)

(declare-fun isEmpty!18596 (List!34177) Bool)

(assert (=> d!826450 (= c!460241 (isEmpty!18596 prefix!1470))))

(declare-fun e!1808869 () Bool)

(assert (=> d!826450 (= (prefixMatch!888 r!23423 prefix!1470) e!1808869)))

(declare-fun b!2856071 () Bool)

(declare-fun lostCause!742 (Regex!8580) Bool)

(assert (=> b!2856071 (= e!1808869 (not (lostCause!742 r!23423)))))

(declare-fun b!2856072 () Bool)

(declare-fun head!6271 (List!34177) C!17342)

(declare-fun tail!4496 (List!34177) List!34177)

(assert (=> b!2856072 (= e!1808869 (prefixMatch!888 (derivativeStep!2269 r!23423 (head!6271 prefix!1470)) (tail!4496 prefix!1470)))))

(assert (= (and d!826450 c!460241) b!2856071))

(assert (= (and d!826450 (not c!460241)) b!2856072))

(declare-fun m!3278777 () Bool)

(assert (=> d!826450 m!3278777))

(declare-fun m!3278779 () Bool)

(assert (=> b!2856071 m!3278779))

(declare-fun m!3278781 () Bool)

(assert (=> b!2856072 m!3278781))

(assert (=> b!2856072 m!3278781))

(declare-fun m!3278783 () Bool)

(assert (=> b!2856072 m!3278783))

(declare-fun m!3278785 () Bool)

(assert (=> b!2856072 m!3278785))

(assert (=> b!2856072 m!3278783))

(assert (=> b!2856072 m!3278785))

(declare-fun m!3278787 () Bool)

(assert (=> b!2856072 m!3278787))

(assert (=> b!2856029 d!826450))

(declare-fun d!826452 () Bool)

(declare-fun res!1186549 () Bool)

(declare-fun e!1808887 () Bool)

(assert (=> d!826452 (=> res!1186549 e!1808887)))

(assert (=> d!826452 (= res!1186549 (is-ElementMatch!8580 r!23423))))

(assert (=> d!826452 (= (validRegex!3450 r!23423) e!1808887)))

(declare-fun b!2856091 () Bool)

(declare-fun e!1808890 () Bool)

(assert (=> b!2856091 (= e!1808887 e!1808890)))

(declare-fun c!460246 () Bool)

(assert (=> b!2856091 (= c!460246 (is-Star!8580 r!23423))))

(declare-fun bm!183938 () Bool)

(declare-fun call!183944 () Bool)

(declare-fun c!460247 () Bool)

(assert (=> bm!183938 (= call!183944 (validRegex!3450 (ite c!460246 (reg!8909 r!23423) (ite c!460247 (regTwo!17673 r!23423) (regTwo!17672 r!23423)))))))

(declare-fun b!2856092 () Bool)

(declare-fun res!1186548 () Bool)

(declare-fun e!1808888 () Bool)

(assert (=> b!2856092 (=> (not res!1186548) (not e!1808888))))

(declare-fun call!183943 () Bool)

(assert (=> b!2856092 (= res!1186548 call!183943)))

(declare-fun e!1808886 () Bool)

(assert (=> b!2856092 (= e!1808886 e!1808888)))

(declare-fun bm!183939 () Bool)

(declare-fun call!183945 () Bool)

(assert (=> bm!183939 (= call!183945 call!183944)))

(declare-fun bm!183940 () Bool)

(assert (=> bm!183940 (= call!183943 (validRegex!3450 (ite c!460247 (regOne!17673 r!23423) (regOne!17672 r!23423))))))

(declare-fun b!2856093 () Bool)

(assert (=> b!2856093 (= e!1808890 e!1808886)))

(assert (=> b!2856093 (= c!460247 (is-Union!8580 r!23423))))

(declare-fun b!2856094 () Bool)

(declare-fun e!1808889 () Bool)

(assert (=> b!2856094 (= e!1808889 call!183944)))

(declare-fun b!2856095 () Bool)

(assert (=> b!2856095 (= e!1808888 call!183945)))

(declare-fun b!2856096 () Bool)

(declare-fun e!1808885 () Bool)

(declare-fun e!1808884 () Bool)

(assert (=> b!2856096 (= e!1808885 e!1808884)))

(declare-fun res!1186550 () Bool)

(assert (=> b!2856096 (=> (not res!1186550) (not e!1808884))))

(assert (=> b!2856096 (= res!1186550 call!183943)))

(declare-fun b!2856097 () Bool)

(declare-fun res!1186551 () Bool)

(assert (=> b!2856097 (=> res!1186551 e!1808885)))

(assert (=> b!2856097 (= res!1186551 (not (is-Concat!13901 r!23423)))))

(assert (=> b!2856097 (= e!1808886 e!1808885)))

(declare-fun b!2856098 () Bool)

(assert (=> b!2856098 (= e!1808884 call!183945)))

(declare-fun b!2856099 () Bool)

(assert (=> b!2856099 (= e!1808890 e!1808889)))

(declare-fun res!1186547 () Bool)

(declare-fun nullable!2643 (Regex!8580) Bool)

(assert (=> b!2856099 (= res!1186547 (not (nullable!2643 (reg!8909 r!23423))))))

(assert (=> b!2856099 (=> (not res!1186547) (not e!1808889))))

(assert (= (and d!826452 (not res!1186549)) b!2856091))

(assert (= (and b!2856091 c!460246) b!2856099))

(assert (= (and b!2856091 (not c!460246)) b!2856093))

(assert (= (and b!2856099 res!1186547) b!2856094))

(assert (= (and b!2856093 c!460247) b!2856092))

(assert (= (and b!2856093 (not c!460247)) b!2856097))

(assert (= (and b!2856092 res!1186548) b!2856095))

(assert (= (and b!2856097 (not res!1186551)) b!2856096))

(assert (= (and b!2856096 res!1186550) b!2856098))

(assert (= (or b!2856095 b!2856098) bm!183939))

(assert (= (or b!2856092 b!2856096) bm!183940))

(assert (= (or b!2856094 bm!183939) bm!183938))

(declare-fun m!3278789 () Bool)

(assert (=> bm!183938 m!3278789))

(declare-fun m!3278791 () Bool)

(assert (=> bm!183940 m!3278791))

(declare-fun m!3278793 () Bool)

(assert (=> b!2856099 m!3278793))

(assert (=> start!278008 d!826452))

(declare-fun d!826456 () Bool)

(declare-fun res!1186554 () Bool)

(declare-fun e!1808894 () Bool)

(assert (=> d!826456 (=> res!1186554 e!1808894)))

(assert (=> d!826456 (= res!1186554 (is-ElementMatch!8580 lt!1013969))))

(assert (=> d!826456 (= (validRegex!3450 lt!1013969) e!1808894)))

(declare-fun b!2856100 () Bool)

(declare-fun e!1808897 () Bool)

(assert (=> b!2856100 (= e!1808894 e!1808897)))

(declare-fun c!460248 () Bool)

(assert (=> b!2856100 (= c!460248 (is-Star!8580 lt!1013969))))

(declare-fun c!460249 () Bool)

(declare-fun call!183947 () Bool)

(declare-fun bm!183941 () Bool)

(assert (=> bm!183941 (= call!183947 (validRegex!3450 (ite c!460248 (reg!8909 lt!1013969) (ite c!460249 (regTwo!17673 lt!1013969) (regTwo!17672 lt!1013969)))))))

(declare-fun b!2856101 () Bool)

(declare-fun res!1186553 () Bool)

(declare-fun e!1808895 () Bool)

(assert (=> b!2856101 (=> (not res!1186553) (not e!1808895))))

(declare-fun call!183946 () Bool)

(assert (=> b!2856101 (= res!1186553 call!183946)))

(declare-fun e!1808893 () Bool)

(assert (=> b!2856101 (= e!1808893 e!1808895)))

(declare-fun bm!183942 () Bool)

(declare-fun call!183948 () Bool)

(assert (=> bm!183942 (= call!183948 call!183947)))

(declare-fun bm!183943 () Bool)

(assert (=> bm!183943 (= call!183946 (validRegex!3450 (ite c!460249 (regOne!17673 lt!1013969) (regOne!17672 lt!1013969))))))

(declare-fun b!2856102 () Bool)

(assert (=> b!2856102 (= e!1808897 e!1808893)))

(assert (=> b!2856102 (= c!460249 (is-Union!8580 lt!1013969))))

(declare-fun b!2856103 () Bool)

(declare-fun e!1808896 () Bool)

(assert (=> b!2856103 (= e!1808896 call!183947)))

(declare-fun b!2856104 () Bool)

(assert (=> b!2856104 (= e!1808895 call!183948)))

(declare-fun b!2856105 () Bool)

(declare-fun e!1808892 () Bool)

(declare-fun e!1808891 () Bool)

(assert (=> b!2856105 (= e!1808892 e!1808891)))

(declare-fun res!1186555 () Bool)

(assert (=> b!2856105 (=> (not res!1186555) (not e!1808891))))

(assert (=> b!2856105 (= res!1186555 call!183946)))

(declare-fun b!2856106 () Bool)

(declare-fun res!1186556 () Bool)

(assert (=> b!2856106 (=> res!1186556 e!1808892)))

(assert (=> b!2856106 (= res!1186556 (not (is-Concat!13901 lt!1013969)))))

(assert (=> b!2856106 (= e!1808893 e!1808892)))

(declare-fun b!2856107 () Bool)

(assert (=> b!2856107 (= e!1808891 call!183948)))

(declare-fun b!2856108 () Bool)

(assert (=> b!2856108 (= e!1808897 e!1808896)))

(declare-fun res!1186552 () Bool)

(assert (=> b!2856108 (= res!1186552 (not (nullable!2643 (reg!8909 lt!1013969))))))

(assert (=> b!2856108 (=> (not res!1186552) (not e!1808896))))

(assert (= (and d!826456 (not res!1186554)) b!2856100))

(assert (= (and b!2856100 c!460248) b!2856108))

(assert (= (and b!2856100 (not c!460248)) b!2856102))

(assert (= (and b!2856108 res!1186552) b!2856103))

(assert (= (and b!2856102 c!460249) b!2856101))

(assert (= (and b!2856102 (not c!460249)) b!2856106))

(assert (= (and b!2856101 res!1186553) b!2856104))

(assert (= (and b!2856106 (not res!1186556)) b!2856105))

(assert (= (and b!2856105 res!1186555) b!2856107))

(assert (= (or b!2856104 b!2856107) bm!183942))

(assert (= (or b!2856101 b!2856105) bm!183943))

(assert (= (or b!2856103 bm!183942) bm!183941))

(declare-fun m!3278795 () Bool)

(assert (=> bm!183941 m!3278795))

(declare-fun m!3278797 () Bool)

(assert (=> bm!183943 m!3278797))

(declare-fun m!3278799 () Bool)

(assert (=> b!2856108 m!3278799))

(assert (=> b!2856027 d!826456))

(declare-fun d!826458 () Bool)

(declare-fun choose!16794 (Int) Bool)

(assert (=> d!826458 (= (Exists!1286 lambda!105024) (choose!16794 lambda!105024))))

(declare-fun bs!520257 () Bool)

(assert (= bs!520257 d!826458))

(declare-fun m!3278801 () Bool)

(assert (=> bs!520257 m!3278801))

(assert (=> b!2856027 d!826458))

(declare-fun bs!520258 () Bool)

(declare-fun d!826460 () Bool)

(assert (= bs!520258 (and d!826460 b!2856027)))

(declare-fun lambda!105030 () Int)

(assert (=> bs!520258 (= lambda!105030 lambda!105024)))

(assert (=> d!826460 true))

(assert (=> d!826460 true))

(assert (=> d!826460 (Exists!1286 lambda!105030)))

(declare-fun lt!1013978 () Unit!47703)

(declare-fun choose!16795 (Regex!8580 List!34177) Unit!47703)

(assert (=> d!826460 (= lt!1013978 (choose!16795 lt!1013969 (t!233208 prefix!1470)))))

(assert (=> d!826460 (validRegex!3450 lt!1013969)))

(assert (=> d!826460 (= (lemmaPrefixMatchThenExistsStringThatMatches!334 lt!1013969 (t!233208 prefix!1470)) lt!1013978)))

(declare-fun bs!520259 () Bool)

(assert (= bs!520259 d!826460))

(declare-fun m!3278815 () Bool)

(assert (=> bs!520259 m!3278815))

(declare-fun m!3278817 () Bool)

(assert (=> bs!520259 m!3278817))

(assert (=> bs!520259 m!3278755))

(assert (=> b!2856027 d!826460))

(declare-fun bm!183958 () Bool)

(declare-fun call!183964 () Regex!8580)

(declare-fun c!460267 () Bool)

(assert (=> bm!183958 (= call!183964 (derivativeStep!2269 (ite c!460267 (regOne!17673 r!23423) (regOne!17672 r!23423)) (h!39473 prefix!1470)))))

(declare-fun bm!183959 () Bool)

(declare-fun call!183963 () Regex!8580)

(declare-fun call!183966 () Regex!8580)

(assert (=> bm!183959 (= call!183963 call!183966)))

(declare-fun b!2856155 () Bool)

(assert (=> b!2856155 (= c!460267 (is-Union!8580 r!23423))))

(declare-fun e!1808928 () Regex!8580)

(declare-fun e!1808930 () Regex!8580)

(assert (=> b!2856155 (= e!1808928 e!1808930)))

(declare-fun d!826464 () Bool)

(declare-fun lt!1013981 () Regex!8580)

(assert (=> d!826464 (validRegex!3450 lt!1013981)))

(declare-fun e!1808929 () Regex!8580)

(assert (=> d!826464 (= lt!1013981 e!1808929)))

(declare-fun c!460271 () Bool)

(assert (=> d!826464 (= c!460271 (or (is-EmptyExpr!8580 r!23423) (is-EmptyLang!8580 r!23423)))))

(assert (=> d!826464 (validRegex!3450 r!23423)))

(assert (=> d!826464 (= (derivativeStep!2269 r!23423 (h!39473 prefix!1470)) lt!1013981)))

(declare-fun c!460268 () Bool)

(declare-fun c!460269 () Bool)

(declare-fun bm!183960 () Bool)

(assert (=> bm!183960 (= call!183966 (derivativeStep!2269 (ite c!460267 (regTwo!17673 r!23423) (ite c!460269 (reg!8909 r!23423) (ite c!460268 (regTwo!17672 r!23423) (regOne!17672 r!23423)))) (h!39473 prefix!1470)))))

(declare-fun b!2856156 () Bool)

(assert (=> b!2856156 (= e!1808929 e!1808928)))

(declare-fun c!460270 () Bool)

(assert (=> b!2856156 (= c!460270 (is-ElementMatch!8580 r!23423))))

(declare-fun b!2856157 () Bool)

(assert (=> b!2856157 (= e!1808929 EmptyLang!8580)))

(declare-fun b!2856158 () Bool)

(assert (=> b!2856158 (= e!1808930 (Union!8580 call!183964 call!183966))))

(declare-fun e!1808931 () Regex!8580)

(declare-fun call!183965 () Regex!8580)

(declare-fun b!2856159 () Bool)

(assert (=> b!2856159 (= e!1808931 (Union!8580 (Concat!13901 call!183964 (regTwo!17672 r!23423)) call!183965))))

(declare-fun b!2856160 () Bool)

(declare-fun e!1808927 () Regex!8580)

(assert (=> b!2856160 (= e!1808930 e!1808927)))

(assert (=> b!2856160 (= c!460269 (is-Star!8580 r!23423))))

(declare-fun b!2856161 () Bool)

(assert (=> b!2856161 (= c!460268 (nullable!2643 (regOne!17672 r!23423)))))

(assert (=> b!2856161 (= e!1808927 e!1808931)))

(declare-fun b!2856162 () Bool)

(assert (=> b!2856162 (= e!1808928 (ite (= (h!39473 prefix!1470) (c!460237 r!23423)) EmptyExpr!8580 EmptyLang!8580))))

(declare-fun bm!183961 () Bool)

(assert (=> bm!183961 (= call!183965 call!183963)))

(declare-fun b!2856163 () Bool)

(assert (=> b!2856163 (= e!1808927 (Concat!13901 call!183963 r!23423))))

(declare-fun b!2856164 () Bool)

(assert (=> b!2856164 (= e!1808931 (Union!8580 (Concat!13901 call!183965 (regTwo!17672 r!23423)) EmptyLang!8580))))

(assert (= (and d!826464 c!460271) b!2856157))

(assert (= (and d!826464 (not c!460271)) b!2856156))

(assert (= (and b!2856156 c!460270) b!2856162))

(assert (= (and b!2856156 (not c!460270)) b!2856155))

(assert (= (and b!2856155 c!460267) b!2856158))

(assert (= (and b!2856155 (not c!460267)) b!2856160))

(assert (= (and b!2856160 c!460269) b!2856163))

(assert (= (and b!2856160 (not c!460269)) b!2856161))

(assert (= (and b!2856161 c!460268) b!2856159))

(assert (= (and b!2856161 (not c!460268)) b!2856164))

(assert (= (or b!2856159 b!2856164) bm!183961))

(assert (= (or b!2856163 bm!183961) bm!183959))

(assert (= (or b!2856158 bm!183959) bm!183960))

(assert (= (or b!2856158 b!2856159) bm!183958))

(declare-fun m!3278819 () Bool)

(assert (=> bm!183958 m!3278819))

(declare-fun m!3278821 () Bool)

(assert (=> d!826464 m!3278821))

(assert (=> d!826464 m!3278753))

(declare-fun m!3278823 () Bool)

(assert (=> bm!183960 m!3278823))

(declare-fun m!3278825 () Bool)

(assert (=> b!2856161 m!3278825))

(assert (=> b!2856027 d!826464))

(declare-fun b!2856175 () Bool)

(declare-fun e!1808934 () Bool)

(assert (=> b!2856175 (= e!1808934 tp_is_empty!14897)))

(assert (=> b!2856031 (= tp!919116 e!1808934)))

(declare-fun b!2856177 () Bool)

(declare-fun tp!919148 () Bool)

(assert (=> b!2856177 (= e!1808934 tp!919148)))

(declare-fun b!2856176 () Bool)

(declare-fun tp!919150 () Bool)

(declare-fun tp!919149 () Bool)

(assert (=> b!2856176 (= e!1808934 (and tp!919150 tp!919149))))

(declare-fun b!2856178 () Bool)

(declare-fun tp!919147 () Bool)

(declare-fun tp!919151 () Bool)

(assert (=> b!2856178 (= e!1808934 (and tp!919147 tp!919151))))

(assert (= (and b!2856031 (is-ElementMatch!8580 (regOne!17673 r!23423))) b!2856175))

(assert (= (and b!2856031 (is-Concat!13901 (regOne!17673 r!23423))) b!2856176))

(assert (= (and b!2856031 (is-Star!8580 (regOne!17673 r!23423))) b!2856177))

(assert (= (and b!2856031 (is-Union!8580 (regOne!17673 r!23423))) b!2856178))

(declare-fun b!2856179 () Bool)

(declare-fun e!1808935 () Bool)

(assert (=> b!2856179 (= e!1808935 tp_is_empty!14897)))

(assert (=> b!2856031 (= tp!919117 e!1808935)))

(declare-fun b!2856181 () Bool)

(declare-fun tp!919153 () Bool)

(assert (=> b!2856181 (= e!1808935 tp!919153)))

(declare-fun b!2856180 () Bool)

(declare-fun tp!919155 () Bool)

(declare-fun tp!919154 () Bool)

(assert (=> b!2856180 (= e!1808935 (and tp!919155 tp!919154))))

(declare-fun b!2856182 () Bool)

(declare-fun tp!919152 () Bool)

(declare-fun tp!919156 () Bool)

(assert (=> b!2856182 (= e!1808935 (and tp!919152 tp!919156))))

(assert (= (and b!2856031 (is-ElementMatch!8580 (regTwo!17673 r!23423))) b!2856179))

(assert (= (and b!2856031 (is-Concat!13901 (regTwo!17673 r!23423))) b!2856180))

(assert (= (and b!2856031 (is-Star!8580 (regTwo!17673 r!23423))) b!2856181))

(assert (= (and b!2856031 (is-Union!8580 (regTwo!17673 r!23423))) b!2856182))

(declare-fun b!2856183 () Bool)

(declare-fun e!1808936 () Bool)

(assert (=> b!2856183 (= e!1808936 tp_is_empty!14897)))

(assert (=> b!2856026 (= tp!919115 e!1808936)))

(declare-fun b!2856185 () Bool)

(declare-fun tp!919158 () Bool)

(assert (=> b!2856185 (= e!1808936 tp!919158)))

(declare-fun b!2856184 () Bool)

(declare-fun tp!919160 () Bool)

(declare-fun tp!919159 () Bool)

(assert (=> b!2856184 (= e!1808936 (and tp!919160 tp!919159))))

(declare-fun b!2856186 () Bool)

(declare-fun tp!919157 () Bool)

(declare-fun tp!919161 () Bool)

(assert (=> b!2856186 (= e!1808936 (and tp!919157 tp!919161))))

(assert (= (and b!2856026 (is-ElementMatch!8580 (reg!8909 r!23423))) b!2856183))

(assert (= (and b!2856026 (is-Concat!13901 (reg!8909 r!23423))) b!2856184))

(assert (= (and b!2856026 (is-Star!8580 (reg!8909 r!23423))) b!2856185))

(assert (= (and b!2856026 (is-Union!8580 (reg!8909 r!23423))) b!2856186))

(declare-fun b!2856191 () Bool)

(declare-fun e!1808939 () Bool)

(declare-fun tp!919164 () Bool)

(assert (=> b!2856191 (= e!1808939 (and tp_is_empty!14897 tp!919164))))

(assert (=> b!2856030 (= tp!919113 e!1808939)))

(assert (= (and b!2856030 (is-Cons!34053 (t!233208 prefix!1470))) b!2856191))

(declare-fun b!2856196 () Bool)

(declare-fun e!1808947 () Bool)

(assert (=> b!2856196 (= e!1808947 tp_is_empty!14897)))

(assert (=> b!2856032 (= tp!919118 e!1808947)))

(declare-fun b!2856200 () Bool)

(declare-fun tp!919166 () Bool)

(assert (=> b!2856200 (= e!1808947 tp!919166)))

(declare-fun b!2856198 () Bool)

(declare-fun tp!919168 () Bool)

(declare-fun tp!919167 () Bool)

(assert (=> b!2856198 (= e!1808947 (and tp!919168 tp!919167))))

(declare-fun b!2856202 () Bool)

(declare-fun tp!919165 () Bool)

(declare-fun tp!919169 () Bool)

(assert (=> b!2856202 (= e!1808947 (and tp!919165 tp!919169))))

(assert (= (and b!2856032 (is-ElementMatch!8580 (regOne!17672 r!23423))) b!2856196))

(assert (= (and b!2856032 (is-Concat!13901 (regOne!17672 r!23423))) b!2856198))

(assert (= (and b!2856032 (is-Star!8580 (regOne!17672 r!23423))) b!2856200))

(assert (= (and b!2856032 (is-Union!8580 (regOne!17672 r!23423))) b!2856202))

(declare-fun b!2856205 () Bool)

(declare-fun e!1808948 () Bool)

(assert (=> b!2856205 (= e!1808948 tp_is_empty!14897)))

(assert (=> b!2856032 (= tp!919114 e!1808948)))

(declare-fun b!2856207 () Bool)

(declare-fun tp!919171 () Bool)

(assert (=> b!2856207 (= e!1808948 tp!919171)))

(declare-fun b!2856206 () Bool)

(declare-fun tp!919173 () Bool)

(declare-fun tp!919172 () Bool)

(assert (=> b!2856206 (= e!1808948 (and tp!919173 tp!919172))))

(declare-fun b!2856208 () Bool)

(declare-fun tp!919170 () Bool)

(declare-fun tp!919174 () Bool)

(assert (=> b!2856208 (= e!1808948 (and tp!919170 tp!919174))))

(assert (= (and b!2856032 (is-ElementMatch!8580 (regTwo!17672 r!23423))) b!2856205))

(assert (= (and b!2856032 (is-Concat!13901 (regTwo!17672 r!23423))) b!2856206))

(assert (= (and b!2856032 (is-Star!8580 (regTwo!17672 r!23423))) b!2856207))

(assert (= (and b!2856032 (is-Union!8580 (regTwo!17672 r!23423))) b!2856208))

(push 1)

(assert tp_is_empty!14897)

(assert (not b!2856185))

(assert (not b!2856200))

(assert (not b!2856099))

(assert (not d!826458))

(assert (not bm!183958))

(assert (not b!2856198))

(assert (not b!2856176))

(assert (not b!2856178))

(assert (not b!2856206))

(assert (not b!2856207))

(assert (not b!2856184))

(assert (not b!2856072))

(assert (not b!2856071))

(assert (not b!2856191))

(assert (not b!2856202))

(assert (not b!2856177))

(assert (not b!2856161))

(assert (not b!2856181))

(assert (not d!826464))

(assert (not b!2856182))

(assert (not b!2856180))

(assert (not bm!183940))

(assert (not bm!183941))

(assert (not d!826460))

(assert (not b!2856108))

(assert (not bm!183943))

(assert (not b!2856186))

(assert (not bm!183938))

(assert (not bm!183960))

(assert (not b!2856208))

(assert (not d!826450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

