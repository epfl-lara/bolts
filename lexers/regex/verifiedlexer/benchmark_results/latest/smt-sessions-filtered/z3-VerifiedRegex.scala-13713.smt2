; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733412 () Bool)

(assert start!733412)

(declare-fun b!7610979 () Bool)

(declare-fun e!4526651 () Bool)

(declare-datatypes ((C!40768 0))(
  ( (C!40769 (val!30824 Int)) )
))
(declare-datatypes ((Regex!20221 0))(
  ( (ElementMatch!20221 (c!1403312 C!40768)) (Concat!29066 (regOne!40954 Regex!20221) (regTwo!40954 Regex!20221)) (EmptyExpr!20221) (Star!20221 (reg!20550 Regex!20221)) (EmptyLang!20221) (Union!20221 (regOne!40955 Regex!20221) (regTwo!40955 Regex!20221)) )
))
(declare-fun r!19218 () Regex!20221)

(declare-fun validRegex!10643 (Regex!20221) Bool)

(assert (=> b!7610979 (= e!4526651 (not (validRegex!10643 (regOne!40954 r!19218))))))

(declare-fun b!7610980 () Bool)

(declare-fun e!4526650 () Bool)

(declare-fun tp!2221016 () Bool)

(declare-fun tp!2221017 () Bool)

(assert (=> b!7610980 (= e!4526650 (and tp!2221016 tp!2221017))))

(declare-fun b!7610981 () Bool)

(declare-fun tp!2221019 () Bool)

(declare-fun tp!2221015 () Bool)

(assert (=> b!7610981 (= e!4526650 (and tp!2221019 tp!2221015))))

(declare-fun res!3047166 () Bool)

(assert (=> start!733412 (=> (not res!3047166) (not e!4526651))))

(assert (=> start!733412 (= res!3047166 (validRegex!10643 r!19218))))

(assert (=> start!733412 e!4526651))

(assert (=> start!733412 e!4526650))

(declare-fun b!7610982 () Bool)

(declare-fun res!3047168 () Bool)

(assert (=> b!7610982 (=> (not res!3047168) (not e!4526651))))

(get-info :version)

(assert (=> b!7610982 (= res!3047168 (and (not ((_ is ElementMatch!20221) r!19218)) (not ((_ is Star!20221) r!19218)) (not ((_ is Union!20221) r!19218)) ((_ is Concat!29066) r!19218)))))

(declare-fun b!7610983 () Bool)

(declare-fun res!3047167 () Bool)

(assert (=> b!7610983 (=> (not res!3047167) (not e!4526651))))

(declare-fun nullable!8842 (Regex!20221) Bool)

(assert (=> b!7610983 (= res!3047167 (nullable!8842 r!19218))))

(declare-fun b!7610984 () Bool)

(declare-fun tp!2221018 () Bool)

(assert (=> b!7610984 (= e!4526650 tp!2221018)))

(declare-fun b!7610985 () Bool)

(declare-fun tp_is_empty!50797 () Bool)

(assert (=> b!7610985 (= e!4526650 tp_is_empty!50797)))

(assert (= (and start!733412 res!3047166) b!7610983))

(assert (= (and b!7610983 res!3047167) b!7610982))

(assert (= (and b!7610982 res!3047168) b!7610979))

(assert (= (and start!733412 ((_ is ElementMatch!20221) r!19218)) b!7610985))

(assert (= (and start!733412 ((_ is Concat!29066) r!19218)) b!7610981))

(assert (= (and start!733412 ((_ is Star!20221) r!19218)) b!7610984))

(assert (= (and start!733412 ((_ is Union!20221) r!19218)) b!7610980))

(declare-fun m!8148148 () Bool)

(assert (=> b!7610979 m!8148148))

(declare-fun m!8148150 () Bool)

(assert (=> start!733412 m!8148150))

(declare-fun m!8148152 () Bool)

(assert (=> b!7610983 m!8148152))

(check-sat (not b!7610981) (not b!7610983) tp_is_empty!50797 (not b!7610980) (not b!7610984) (not start!733412) (not b!7610979))
(check-sat)
(get-model)

(declare-fun d!2322300 () Bool)

(declare-fun res!3047193 () Bool)

(declare-fun e!4526686 () Bool)

(assert (=> d!2322300 (=> res!3047193 e!4526686)))

(assert (=> d!2322300 (= res!3047193 ((_ is ElementMatch!20221) (regOne!40954 r!19218)))))

(assert (=> d!2322300 (= (validRegex!10643 (regOne!40954 r!19218)) e!4526686)))

(declare-fun b!7611022 () Bool)

(declare-fun e!4526685 () Bool)

(declare-fun e!4526682 () Bool)

(assert (=> b!7611022 (= e!4526685 e!4526682)))

(declare-fun c!1403321 () Bool)

(assert (=> b!7611022 (= c!1403321 ((_ is Union!20221) (regOne!40954 r!19218)))))

(declare-fun bm!699020 () Bool)

(declare-fun call!699025 () Bool)

(declare-fun call!699027 () Bool)

(assert (=> bm!699020 (= call!699025 call!699027)))

(declare-fun b!7611023 () Bool)

(declare-fun res!3047189 () Bool)

(declare-fun e!4526684 () Bool)

(assert (=> b!7611023 (=> (not res!3047189) (not e!4526684))))

(assert (=> b!7611023 (= res!3047189 call!699025)))

(assert (=> b!7611023 (= e!4526682 e!4526684)))

(declare-fun b!7611024 () Bool)

(assert (=> b!7611024 (= e!4526686 e!4526685)))

(declare-fun c!1403322 () Bool)

(assert (=> b!7611024 (= c!1403322 ((_ is Star!20221) (regOne!40954 r!19218)))))

(declare-fun b!7611025 () Bool)

(declare-fun e!4526681 () Bool)

(declare-fun call!699026 () Bool)

(assert (=> b!7611025 (= e!4526681 call!699026)))

(declare-fun bm!699021 () Bool)

(assert (=> bm!699021 (= call!699027 (validRegex!10643 (ite c!1403322 (reg!20550 (regOne!40954 r!19218)) (ite c!1403321 (regOne!40955 (regOne!40954 r!19218)) (regOne!40954 (regOne!40954 r!19218))))))))

(declare-fun b!7611026 () Bool)

(declare-fun e!4526680 () Bool)

(assert (=> b!7611026 (= e!4526680 call!699027)))

(declare-fun bm!699022 () Bool)

(assert (=> bm!699022 (= call!699026 (validRegex!10643 (ite c!1403321 (regTwo!40955 (regOne!40954 r!19218)) (regTwo!40954 (regOne!40954 r!19218)))))))

(declare-fun b!7611027 () Bool)

(assert (=> b!7611027 (= e!4526684 call!699026)))

(declare-fun b!7611028 () Bool)

(assert (=> b!7611028 (= e!4526685 e!4526680)))

(declare-fun res!3047192 () Bool)

(assert (=> b!7611028 (= res!3047192 (not (nullable!8842 (reg!20550 (regOne!40954 r!19218)))))))

(assert (=> b!7611028 (=> (not res!3047192) (not e!4526680))))

(declare-fun b!7611029 () Bool)

(declare-fun e!4526683 () Bool)

(assert (=> b!7611029 (= e!4526683 e!4526681)))

(declare-fun res!3047191 () Bool)

(assert (=> b!7611029 (=> (not res!3047191) (not e!4526681))))

(assert (=> b!7611029 (= res!3047191 call!699025)))

(declare-fun b!7611030 () Bool)

(declare-fun res!3047190 () Bool)

(assert (=> b!7611030 (=> res!3047190 e!4526683)))

(assert (=> b!7611030 (= res!3047190 (not ((_ is Concat!29066) (regOne!40954 r!19218))))))

(assert (=> b!7611030 (= e!4526682 e!4526683)))

(assert (= (and d!2322300 (not res!3047193)) b!7611024))

(assert (= (and b!7611024 c!1403322) b!7611028))

(assert (= (and b!7611024 (not c!1403322)) b!7611022))

(assert (= (and b!7611028 res!3047192) b!7611026))

(assert (= (and b!7611022 c!1403321) b!7611023))

(assert (= (and b!7611022 (not c!1403321)) b!7611030))

(assert (= (and b!7611023 res!3047189) b!7611027))

(assert (= (and b!7611030 (not res!3047190)) b!7611029))

(assert (= (and b!7611029 res!3047191) b!7611025))

(assert (= (or b!7611023 b!7611029) bm!699020))

(assert (= (or b!7611027 b!7611025) bm!699022))

(assert (= (or b!7611026 bm!699020) bm!699021))

(declare-fun m!8148156 () Bool)

(assert (=> bm!699021 m!8148156))

(declare-fun m!8148158 () Bool)

(assert (=> bm!699022 m!8148158))

(declare-fun m!8148160 () Bool)

(assert (=> b!7611028 m!8148160))

(assert (=> b!7610979 d!2322300))

(declare-fun d!2322304 () Bool)

(declare-fun nullableFct!3526 (Regex!20221) Bool)

(assert (=> d!2322304 (= (nullable!8842 r!19218) (nullableFct!3526 r!19218))))

(declare-fun bs!1942864 () Bool)

(assert (= bs!1942864 d!2322304))

(declare-fun m!8148168 () Bool)

(assert (=> bs!1942864 m!8148168))

(assert (=> b!7610983 d!2322304))

(declare-fun d!2322308 () Bool)

(declare-fun res!3047208 () Bool)

(declare-fun e!4526707 () Bool)

(assert (=> d!2322308 (=> res!3047208 e!4526707)))

(assert (=> d!2322308 (= res!3047208 ((_ is ElementMatch!20221) r!19218))))

(assert (=> d!2322308 (= (validRegex!10643 r!19218) e!4526707)))

(declare-fun b!7611049 () Bool)

(declare-fun e!4526706 () Bool)

(declare-fun e!4526703 () Bool)

(assert (=> b!7611049 (= e!4526706 e!4526703)))

(declare-fun c!1403327 () Bool)

(assert (=> b!7611049 (= c!1403327 ((_ is Union!20221) r!19218))))

(declare-fun bm!699029 () Bool)

(declare-fun call!699034 () Bool)

(declare-fun call!699036 () Bool)

(assert (=> bm!699029 (= call!699034 call!699036)))

(declare-fun b!7611050 () Bool)

(declare-fun res!3047204 () Bool)

(declare-fun e!4526705 () Bool)

(assert (=> b!7611050 (=> (not res!3047204) (not e!4526705))))

(assert (=> b!7611050 (= res!3047204 call!699034)))

(assert (=> b!7611050 (= e!4526703 e!4526705)))

(declare-fun b!7611051 () Bool)

(assert (=> b!7611051 (= e!4526707 e!4526706)))

(declare-fun c!1403328 () Bool)

(assert (=> b!7611051 (= c!1403328 ((_ is Star!20221) r!19218))))

(declare-fun b!7611052 () Bool)

(declare-fun e!4526702 () Bool)

(declare-fun call!699035 () Bool)

(assert (=> b!7611052 (= e!4526702 call!699035)))

(declare-fun bm!699030 () Bool)

(assert (=> bm!699030 (= call!699036 (validRegex!10643 (ite c!1403328 (reg!20550 r!19218) (ite c!1403327 (regOne!40955 r!19218) (regOne!40954 r!19218)))))))

(declare-fun b!7611053 () Bool)

(declare-fun e!4526701 () Bool)

(assert (=> b!7611053 (= e!4526701 call!699036)))

(declare-fun bm!699031 () Bool)

(assert (=> bm!699031 (= call!699035 (validRegex!10643 (ite c!1403327 (regTwo!40955 r!19218) (regTwo!40954 r!19218))))))

(declare-fun b!7611054 () Bool)

(assert (=> b!7611054 (= e!4526705 call!699035)))

(declare-fun b!7611055 () Bool)

(assert (=> b!7611055 (= e!4526706 e!4526701)))

(declare-fun res!3047207 () Bool)

(assert (=> b!7611055 (= res!3047207 (not (nullable!8842 (reg!20550 r!19218))))))

(assert (=> b!7611055 (=> (not res!3047207) (not e!4526701))))

(declare-fun b!7611056 () Bool)

(declare-fun e!4526704 () Bool)

(assert (=> b!7611056 (= e!4526704 e!4526702)))

(declare-fun res!3047206 () Bool)

(assert (=> b!7611056 (=> (not res!3047206) (not e!4526702))))

(assert (=> b!7611056 (= res!3047206 call!699034)))

(declare-fun b!7611057 () Bool)

(declare-fun res!3047205 () Bool)

(assert (=> b!7611057 (=> res!3047205 e!4526704)))

(assert (=> b!7611057 (= res!3047205 (not ((_ is Concat!29066) r!19218)))))

(assert (=> b!7611057 (= e!4526703 e!4526704)))

(assert (= (and d!2322308 (not res!3047208)) b!7611051))

(assert (= (and b!7611051 c!1403328) b!7611055))

(assert (= (and b!7611051 (not c!1403328)) b!7611049))

(assert (= (and b!7611055 res!3047207) b!7611053))

(assert (= (and b!7611049 c!1403327) b!7611050))

(assert (= (and b!7611049 (not c!1403327)) b!7611057))

(assert (= (and b!7611050 res!3047204) b!7611054))

(assert (= (and b!7611057 (not res!3047205)) b!7611056))

(assert (= (and b!7611056 res!3047206) b!7611052))

(assert (= (or b!7611050 b!7611056) bm!699029))

(assert (= (or b!7611054 b!7611052) bm!699031))

(assert (= (or b!7611053 bm!699029) bm!699030))

(declare-fun m!8148176 () Bool)

(assert (=> bm!699030 m!8148176))

(declare-fun m!8148178 () Bool)

(assert (=> bm!699031 m!8148178))

(declare-fun m!8148180 () Bool)

(assert (=> b!7611055 m!8148180))

(assert (=> start!733412 d!2322308))

(declare-fun b!7611090 () Bool)

(declare-fun e!4526715 () Bool)

(assert (=> b!7611090 (= e!4526715 tp_is_empty!50797)))

(declare-fun b!7611092 () Bool)

(declare-fun tp!2221057 () Bool)

(assert (=> b!7611092 (= e!4526715 tp!2221057)))

(declare-fun b!7611093 () Bool)

(declare-fun tp!2221055 () Bool)

(declare-fun tp!2221056 () Bool)

(assert (=> b!7611093 (= e!4526715 (and tp!2221055 tp!2221056))))

(declare-fun b!7611091 () Bool)

(declare-fun tp!2221060 () Bool)

(declare-fun tp!2221058 () Bool)

(assert (=> b!7611091 (= e!4526715 (and tp!2221060 tp!2221058))))

(assert (=> b!7610984 (= tp!2221018 e!4526715)))

(assert (= (and b!7610984 ((_ is ElementMatch!20221) (reg!20550 r!19218))) b!7611090))

(assert (= (and b!7610984 ((_ is Concat!29066) (reg!20550 r!19218))) b!7611091))

(assert (= (and b!7610984 ((_ is Star!20221) (reg!20550 r!19218))) b!7611092))

(assert (= (and b!7610984 ((_ is Union!20221) (reg!20550 r!19218))) b!7611093))

(declare-fun b!7611102 () Bool)

(declare-fun e!4526718 () Bool)

(assert (=> b!7611102 (= e!4526718 tp_is_empty!50797)))

(declare-fun b!7611104 () Bool)

(declare-fun tp!2221072 () Bool)

(assert (=> b!7611104 (= e!4526718 tp!2221072)))

(declare-fun b!7611105 () Bool)

(declare-fun tp!2221070 () Bool)

(declare-fun tp!2221071 () Bool)

(assert (=> b!7611105 (= e!4526718 (and tp!2221070 tp!2221071))))

(declare-fun b!7611103 () Bool)

(declare-fun tp!2221074 () Bool)

(declare-fun tp!2221073 () Bool)

(assert (=> b!7611103 (= e!4526718 (and tp!2221074 tp!2221073))))

(assert (=> b!7610981 (= tp!2221019 e!4526718)))

(assert (= (and b!7610981 ((_ is ElementMatch!20221) (regOne!40954 r!19218))) b!7611102))

(assert (= (and b!7610981 ((_ is Concat!29066) (regOne!40954 r!19218))) b!7611103))

(assert (= (and b!7610981 ((_ is Star!20221) (regOne!40954 r!19218))) b!7611104))

(assert (= (and b!7610981 ((_ is Union!20221) (regOne!40954 r!19218))) b!7611105))

(declare-fun b!7611106 () Bool)

(declare-fun e!4526719 () Bool)

(assert (=> b!7611106 (= e!4526719 tp_is_empty!50797)))

(declare-fun b!7611108 () Bool)

(declare-fun tp!2221077 () Bool)

(assert (=> b!7611108 (= e!4526719 tp!2221077)))

(declare-fun b!7611109 () Bool)

(declare-fun tp!2221075 () Bool)

(declare-fun tp!2221076 () Bool)

(assert (=> b!7611109 (= e!4526719 (and tp!2221075 tp!2221076))))

(declare-fun b!7611107 () Bool)

(declare-fun tp!2221079 () Bool)

(declare-fun tp!2221078 () Bool)

(assert (=> b!7611107 (= e!4526719 (and tp!2221079 tp!2221078))))

(assert (=> b!7610981 (= tp!2221015 e!4526719)))

(assert (= (and b!7610981 ((_ is ElementMatch!20221) (regTwo!40954 r!19218))) b!7611106))

(assert (= (and b!7610981 ((_ is Concat!29066) (regTwo!40954 r!19218))) b!7611107))

(assert (= (and b!7610981 ((_ is Star!20221) (regTwo!40954 r!19218))) b!7611108))

(assert (= (and b!7610981 ((_ is Union!20221) (regTwo!40954 r!19218))) b!7611109))

(declare-fun b!7611110 () Bool)

(declare-fun e!4526720 () Bool)

(assert (=> b!7611110 (= e!4526720 tp_is_empty!50797)))

(declare-fun b!7611112 () Bool)

(declare-fun tp!2221082 () Bool)

(assert (=> b!7611112 (= e!4526720 tp!2221082)))

(declare-fun b!7611113 () Bool)

(declare-fun tp!2221080 () Bool)

(declare-fun tp!2221081 () Bool)

(assert (=> b!7611113 (= e!4526720 (and tp!2221080 tp!2221081))))

(declare-fun b!7611111 () Bool)

(declare-fun tp!2221084 () Bool)

(declare-fun tp!2221083 () Bool)

(assert (=> b!7611111 (= e!4526720 (and tp!2221084 tp!2221083))))

(assert (=> b!7610980 (= tp!2221016 e!4526720)))

(assert (= (and b!7610980 ((_ is ElementMatch!20221) (regOne!40955 r!19218))) b!7611110))

(assert (= (and b!7610980 ((_ is Concat!29066) (regOne!40955 r!19218))) b!7611111))

(assert (= (and b!7610980 ((_ is Star!20221) (regOne!40955 r!19218))) b!7611112))

(assert (= (and b!7610980 ((_ is Union!20221) (regOne!40955 r!19218))) b!7611113))

(declare-fun b!7611114 () Bool)

(declare-fun e!4526721 () Bool)

(assert (=> b!7611114 (= e!4526721 tp_is_empty!50797)))

(declare-fun b!7611116 () Bool)

(declare-fun tp!2221087 () Bool)

(assert (=> b!7611116 (= e!4526721 tp!2221087)))

(declare-fun b!7611117 () Bool)

(declare-fun tp!2221085 () Bool)

(declare-fun tp!2221086 () Bool)

(assert (=> b!7611117 (= e!4526721 (and tp!2221085 tp!2221086))))

(declare-fun b!7611115 () Bool)

(declare-fun tp!2221089 () Bool)

(declare-fun tp!2221088 () Bool)

(assert (=> b!7611115 (= e!4526721 (and tp!2221089 tp!2221088))))

(assert (=> b!7610980 (= tp!2221017 e!4526721)))

(assert (= (and b!7610980 ((_ is ElementMatch!20221) (regTwo!40955 r!19218))) b!7611114))

(assert (= (and b!7610980 ((_ is Concat!29066) (regTwo!40955 r!19218))) b!7611115))

(assert (= (and b!7610980 ((_ is Star!20221) (regTwo!40955 r!19218))) b!7611116))

(assert (= (and b!7610980 ((_ is Union!20221) (regTwo!40955 r!19218))) b!7611117))

(check-sat (not b!7611116) (not b!7611108) (not b!7611093) tp_is_empty!50797 (not b!7611111) (not bm!699021) (not b!7611103) (not d!2322304) (not b!7611117) (not b!7611109) (not b!7611028) (not b!7611055) (not bm!699022) (not b!7611092) (not b!7611091) (not bm!699031) (not b!7611104) (not b!7611113) (not bm!699030) (not b!7611105) (not b!7611115) (not b!7611107) (not b!7611112))
(check-sat)
