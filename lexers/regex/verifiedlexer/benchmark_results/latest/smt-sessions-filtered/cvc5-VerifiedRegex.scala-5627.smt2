; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281600 () Bool)

(assert start!281600)

(declare-fun b!2885019 () Bool)

(declare-fun e!1824559 () Bool)

(declare-fun tp!925284 () Bool)

(declare-fun tp!925281 () Bool)

(assert (=> b!2885019 (= e!1824559 (and tp!925284 tp!925281))))

(declare-fun b!2885020 () Bool)

(declare-fun e!1824561 () Bool)

(declare-fun e!1824558 () Bool)

(assert (=> b!2885020 (= e!1824561 e!1824558)))

(declare-fun res!1195261 () Bool)

(assert (=> b!2885020 (=> (not res!1195261) (not e!1824558))))

(declare-datatypes ((C!17798 0))(
  ( (C!17799 (val!10933 Int)) )
))
(declare-datatypes ((List!34609 0))(
  ( (Nil!34485) (Cons!34485 (h!39905 C!17798) (t!233652 List!34609)) )
))
(declare-datatypes ((Option!6481 0))(
  ( (None!6480) (Some!6480 (v!34606 List!34609)) )
))
(declare-fun lt!1020555 () Option!6481)

(assert (=> b!2885020 (= res!1195261 (is-Some!6480 lt!1020555))))

(declare-datatypes ((Regex!8808 0))(
  ( (ElementMatch!8808 (c!468763 C!17798)) (Concat!14129 (regOne!18128 Regex!8808) (regTwo!18128 Regex!8808)) (EmptyExpr!8808) (Star!8808 (reg!9137 Regex!8808)) (EmptyLang!8808) (Union!8808 (regOne!18129 Regex!8808) (regTwo!18129 Regex!8808)) )
))
(declare-fun r!23079 () Regex!8808)

(declare-fun getLanguageWitness!515 (Regex!8808) Option!6481)

(assert (=> b!2885020 (= lt!1020555 (getLanguageWitness!515 (regTwo!18128 r!23079)))))

(declare-fun b!2885021 () Bool)

(declare-fun e!1824562 () Bool)

(assert (=> b!2885021 (= e!1824558 (not e!1824562))))

(declare-fun res!1195262 () Bool)

(assert (=> b!2885021 (=> res!1195262 e!1824562)))

(declare-fun lt!1020557 () Option!6481)

(declare-fun matchR!3786 (Regex!8808 List!34609) Bool)

(assert (=> b!2885021 (= res!1195262 (not (matchR!3786 (regOne!18128 r!23079) (v!34606 lt!1020557))))))

(declare-fun get!10423 (Option!6481) List!34609)

(assert (=> b!2885021 (matchR!3786 (regTwo!18128 r!23079) (get!10423 lt!1020555))))

(declare-datatypes ((Unit!48077 0))(
  ( (Unit!48078) )
))
(declare-fun lt!1020558 () Unit!48077)

(declare-fun lemmaGetWitnessMatches!93 (Regex!8808) Unit!48077)

(assert (=> b!2885021 (= lt!1020558 (lemmaGetWitnessMatches!93 (regTwo!18128 r!23079)))))

(assert (=> b!2885021 (matchR!3786 (regOne!18128 r!23079) (get!10423 lt!1020557))))

(declare-fun lt!1020556 () Unit!48077)

(assert (=> b!2885021 (= lt!1020556 (lemmaGetWitnessMatches!93 (regOne!18128 r!23079)))))

(declare-fun res!1195260 () Bool)

(declare-fun e!1824560 () Bool)

(assert (=> start!281600 (=> (not res!1195260) (not e!1824560))))

(declare-fun validRegex!3581 (Regex!8808) Bool)

(assert (=> start!281600 (= res!1195260 (validRegex!3581 r!23079))))

(assert (=> start!281600 e!1824560))

(assert (=> start!281600 e!1824559))

(declare-fun b!2885022 () Bool)

(declare-fun res!1195263 () Bool)

(assert (=> b!2885022 (=> (not res!1195263) (not e!1824560))))

(declare-fun isDefined!5045 (Option!6481) Bool)

(assert (=> b!2885022 (= res!1195263 (isDefined!5045 (getLanguageWitness!515 r!23079)))))

(declare-fun b!2885023 () Bool)

(declare-fun res!1195264 () Bool)

(assert (=> b!2885023 (=> (not res!1195264) (not e!1824560))))

(assert (=> b!2885023 (= res!1195264 (and (not (is-EmptyExpr!8808 r!23079)) (not (is-EmptyLang!8808 r!23079)) (not (is-ElementMatch!8808 r!23079)) (not (is-Star!8808 r!23079)) (not (is-Union!8808 r!23079))))))

(declare-fun b!2885024 () Bool)

(assert (=> b!2885024 (= e!1824560 e!1824561)))

(declare-fun res!1195265 () Bool)

(assert (=> b!2885024 (=> (not res!1195265) (not e!1824561))))

(assert (=> b!2885024 (= res!1195265 (is-Some!6480 lt!1020557))))

(assert (=> b!2885024 (= lt!1020557 (getLanguageWitness!515 (regOne!18128 r!23079)))))

(declare-fun b!2885025 () Bool)

(assert (=> b!2885025 (= e!1824562 (matchR!3786 (regTwo!18128 r!23079) (v!34606 lt!1020555)))))

(declare-fun b!2885026 () Bool)

(declare-fun tp!925283 () Bool)

(assert (=> b!2885026 (= e!1824559 tp!925283)))

(declare-fun b!2885027 () Bool)

(declare-fun tp_is_empty!15203 () Bool)

(assert (=> b!2885027 (= e!1824559 tp_is_empty!15203)))

(declare-fun b!2885028 () Bool)

(declare-fun tp!925280 () Bool)

(declare-fun tp!925282 () Bool)

(assert (=> b!2885028 (= e!1824559 (and tp!925280 tp!925282))))

(assert (= (and start!281600 res!1195260) b!2885022))

(assert (= (and b!2885022 res!1195263) b!2885023))

(assert (= (and b!2885023 res!1195264) b!2885024))

(assert (= (and b!2885024 res!1195265) b!2885020))

(assert (= (and b!2885020 res!1195261) b!2885021))

(assert (= (and b!2885021 (not res!1195262)) b!2885025))

(assert (= (and start!281600 (is-ElementMatch!8808 r!23079)) b!2885027))

(assert (= (and start!281600 (is-Concat!14129 r!23079)) b!2885028))

(assert (= (and start!281600 (is-Star!8808 r!23079)) b!2885026))

(assert (= (and start!281600 (is-Union!8808 r!23079)) b!2885019))

(declare-fun m!3300811 () Bool)

(assert (=> start!281600 m!3300811))

(declare-fun m!3300813 () Bool)

(assert (=> b!2885025 m!3300813))

(declare-fun m!3300815 () Bool)

(assert (=> b!2885020 m!3300815))

(declare-fun m!3300817 () Bool)

(assert (=> b!2885021 m!3300817))

(declare-fun m!3300819 () Bool)

(assert (=> b!2885021 m!3300819))

(declare-fun m!3300821 () Bool)

(assert (=> b!2885021 m!3300821))

(assert (=> b!2885021 m!3300817))

(declare-fun m!3300823 () Bool)

(assert (=> b!2885021 m!3300823))

(declare-fun m!3300825 () Bool)

(assert (=> b!2885021 m!3300825))

(declare-fun m!3300827 () Bool)

(assert (=> b!2885021 m!3300827))

(assert (=> b!2885021 m!3300825))

(declare-fun m!3300829 () Bool)

(assert (=> b!2885021 m!3300829))

(declare-fun m!3300831 () Bool)

(assert (=> b!2885024 m!3300831))

(declare-fun m!3300833 () Bool)

(assert (=> b!2885022 m!3300833))

(assert (=> b!2885022 m!3300833))

(declare-fun m!3300835 () Bool)

(assert (=> b!2885022 m!3300835))

(push 1)

(assert (not b!2885024))

(assert (not b!2885019))

(assert (not start!281600))

(assert (not b!2885026))

(assert (not b!2885022))

(assert tp_is_empty!15203)

(assert (not b!2885028))

(assert (not b!2885021))

(assert (not b!2885025))

(assert (not b!2885020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!187064 () Bool)

(declare-fun call!187070 () Option!6481)

(declare-fun c!468782 () Bool)

(assert (=> bm!187064 (= call!187070 (getLanguageWitness!515 (ite c!468782 (regOne!18129 (regOne!18128 r!23079)) (regTwo!18128 (regOne!18128 r!23079)))))))

(declare-fun b!2885092 () Bool)

(declare-fun e!1824600 () Option!6481)

(declare-fun e!1824597 () Option!6481)

(assert (=> b!2885092 (= e!1824600 e!1824597)))

(declare-fun c!468788 () Bool)

(assert (=> b!2885092 (= c!468788 (is-EmptyLang!8808 (regOne!18128 r!23079)))))

(declare-fun b!2885093 () Bool)

(declare-fun c!468783 () Bool)

(assert (=> b!2885093 (= c!468783 (is-ElementMatch!8808 (regOne!18128 r!23079)))))

(declare-fun e!1824594 () Option!6481)

(assert (=> b!2885093 (= e!1824597 e!1824594)))

(declare-fun b!2885094 () Bool)

(assert (=> b!2885094 (= e!1824597 None!6480)))

(declare-fun b!2885095 () Bool)

(declare-fun e!1824598 () Option!6481)

(assert (=> b!2885095 (= e!1824594 e!1824598)))

(declare-fun c!468784 () Bool)

(assert (=> b!2885095 (= c!468784 (is-Star!8808 (regOne!18128 r!23079)))))

(declare-fun b!2885096 () Bool)

(assert (=> b!2885096 (= e!1824594 (Some!6480 (Cons!34485 (c!468763 (regOne!18128 r!23079)) Nil!34485)))))

(declare-fun b!2885097 () Bool)

(declare-fun e!1824596 () Option!6481)

(assert (=> b!2885097 (= e!1824596 None!6480)))

(declare-fun b!2885098 () Bool)

(declare-fun c!468787 () Bool)

(declare-fun lt!1020579 () Option!6481)

(assert (=> b!2885098 (= c!468787 (is-Some!6480 lt!1020579))))

(assert (=> b!2885098 (= lt!1020579 call!187070)))

(declare-fun e!1824599 () Option!6481)

(assert (=> b!2885098 (= e!1824596 e!1824599)))

(declare-fun b!2885099 () Bool)

(assert (=> b!2885099 (= e!1824599 None!6480)))

(declare-fun b!2885100 () Bool)

(declare-fun e!1824601 () Option!6481)

(assert (=> b!2885100 (= e!1824601 e!1824596)))

(declare-fun lt!1020577 () Option!6481)

(declare-fun call!187069 () Option!6481)

(assert (=> b!2885100 (= lt!1020577 call!187069)))

(declare-fun c!468786 () Bool)

(assert (=> b!2885100 (= c!468786 (is-Some!6480 lt!1020577))))

(declare-fun b!2885101 () Bool)

(assert (=> b!2885101 (= c!468782 (is-Union!8808 (regOne!18128 r!23079)))))

(assert (=> b!2885101 (= e!1824598 e!1824601)))

(declare-fun b!2885102 () Bool)

(declare-fun e!1824595 () Option!6481)

(assert (=> b!2885102 (= e!1824595 call!187069)))

(declare-fun bm!187065 () Bool)

(assert (=> bm!187065 (= call!187069 (getLanguageWitness!515 (ite c!468782 (regTwo!18129 (regOne!18128 r!23079)) (regOne!18128 (regOne!18128 r!23079)))))))

(declare-fun d!833872 () Bool)

(declare-fun c!468785 () Bool)

(assert (=> d!833872 (= c!468785 (is-EmptyExpr!8808 (regOne!18128 r!23079)))))

(assert (=> d!833872 (= (getLanguageWitness!515 (regOne!18128 r!23079)) e!1824600)))

(declare-fun b!2885091 () Bool)

(declare-fun ++!8208 (List!34609 List!34609) List!34609)

(assert (=> b!2885091 (= e!1824599 (Some!6480 (++!8208 (v!34606 lt!1020577) (v!34606 lt!1020579))))))

(declare-fun b!2885103 () Bool)

(assert (=> b!2885103 (= e!1824600 (Some!6480 Nil!34485))))

(declare-fun b!2885104 () Bool)

(assert (=> b!2885104 (= e!1824598 (Some!6480 Nil!34485))))

(declare-fun b!2885105 () Bool)

(declare-fun lt!1020578 () Option!6481)

(assert (=> b!2885105 (= e!1824595 lt!1020578)))

(declare-fun b!2885106 () Bool)

(assert (=> b!2885106 (= e!1824601 e!1824595)))

(assert (=> b!2885106 (= lt!1020578 call!187070)))

(declare-fun c!468781 () Bool)

(assert (=> b!2885106 (= c!468781 (is-Some!6480 lt!1020578))))

(assert (= (and d!833872 c!468785) b!2885103))

(assert (= (and d!833872 (not c!468785)) b!2885092))

(assert (= (and b!2885092 c!468788) b!2885094))

(assert (= (and b!2885092 (not c!468788)) b!2885093))

(assert (= (and b!2885093 c!468783) b!2885096))

(assert (= (and b!2885093 (not c!468783)) b!2885095))

(assert (= (and b!2885095 c!468784) b!2885104))

(assert (= (and b!2885095 (not c!468784)) b!2885101))

(assert (= (and b!2885101 c!468782) b!2885106))

(assert (= (and b!2885101 (not c!468782)) b!2885100))

(assert (= (and b!2885106 c!468781) b!2885105))

(assert (= (and b!2885106 (not c!468781)) b!2885102))

(assert (= (and b!2885100 c!468786) b!2885098))

(assert (= (and b!2885100 (not c!468786)) b!2885097))

(assert (= (and b!2885098 c!468787) b!2885091))

(assert (= (and b!2885098 (not c!468787)) b!2885099))

(assert (= (or b!2885102 b!2885100) bm!187065))

(assert (= (or b!2885106 b!2885098) bm!187064))

(declare-fun m!3300863 () Bool)

(assert (=> bm!187064 m!3300863))

(declare-fun m!3300865 () Bool)

(assert (=> bm!187065 m!3300865))

(declare-fun m!3300867 () Bool)

(assert (=> b!2885091 m!3300867))

(assert (=> b!2885024 d!833872))

(declare-fun d!833876 () Bool)

(declare-fun isEmpty!18774 (Option!6481) Bool)

(assert (=> d!833876 (= (isDefined!5045 (getLanguageWitness!515 r!23079)) (not (isEmpty!18774 (getLanguageWitness!515 r!23079))))))

(declare-fun bs!523811 () Bool)

(assert (= bs!523811 d!833876))

(assert (=> bs!523811 m!3300833))

(declare-fun m!3300869 () Bool)

(assert (=> bs!523811 m!3300869))

(assert (=> b!2885022 d!833876))

(declare-fun bm!187066 () Bool)

(declare-fun call!187072 () Option!6481)

(declare-fun c!468790 () Bool)

(assert (=> bm!187066 (= call!187072 (getLanguageWitness!515 (ite c!468790 (regOne!18129 r!23079) (regTwo!18128 r!23079))))))

(declare-fun b!2885108 () Bool)

(declare-fun e!1824608 () Option!6481)

(declare-fun e!1824605 () Option!6481)

(assert (=> b!2885108 (= e!1824608 e!1824605)))

(declare-fun c!468796 () Bool)

(assert (=> b!2885108 (= c!468796 (is-EmptyLang!8808 r!23079))))

(declare-fun b!2885109 () Bool)

(declare-fun c!468791 () Bool)

(assert (=> b!2885109 (= c!468791 (is-ElementMatch!8808 r!23079))))

(declare-fun e!1824602 () Option!6481)

(assert (=> b!2885109 (= e!1824605 e!1824602)))

(declare-fun b!2885110 () Bool)

(assert (=> b!2885110 (= e!1824605 None!6480)))

(declare-fun b!2885111 () Bool)

(declare-fun e!1824606 () Option!6481)

(assert (=> b!2885111 (= e!1824602 e!1824606)))

(declare-fun c!468792 () Bool)

(assert (=> b!2885111 (= c!468792 (is-Star!8808 r!23079))))

(declare-fun b!2885112 () Bool)

(assert (=> b!2885112 (= e!1824602 (Some!6480 (Cons!34485 (c!468763 r!23079) Nil!34485)))))

(declare-fun b!2885113 () Bool)

(declare-fun e!1824604 () Option!6481)

(assert (=> b!2885113 (= e!1824604 None!6480)))

(declare-fun b!2885114 () Bool)

(declare-fun c!468795 () Bool)

(declare-fun lt!1020582 () Option!6481)

(assert (=> b!2885114 (= c!468795 (is-Some!6480 lt!1020582))))

(assert (=> b!2885114 (= lt!1020582 call!187072)))

(declare-fun e!1824607 () Option!6481)

(assert (=> b!2885114 (= e!1824604 e!1824607)))

(declare-fun b!2885115 () Bool)

(assert (=> b!2885115 (= e!1824607 None!6480)))

(declare-fun b!2885116 () Bool)

(declare-fun e!1824609 () Option!6481)

(assert (=> b!2885116 (= e!1824609 e!1824604)))

(declare-fun lt!1020580 () Option!6481)

(declare-fun call!187071 () Option!6481)

(assert (=> b!2885116 (= lt!1020580 call!187071)))

(declare-fun c!468794 () Bool)

(assert (=> b!2885116 (= c!468794 (is-Some!6480 lt!1020580))))

(declare-fun b!2885117 () Bool)

(assert (=> b!2885117 (= c!468790 (is-Union!8808 r!23079))))

(assert (=> b!2885117 (= e!1824606 e!1824609)))

(declare-fun b!2885118 () Bool)

(declare-fun e!1824603 () Option!6481)

(assert (=> b!2885118 (= e!1824603 call!187071)))

(declare-fun bm!187067 () Bool)

(assert (=> bm!187067 (= call!187071 (getLanguageWitness!515 (ite c!468790 (regTwo!18129 r!23079) (regOne!18128 r!23079))))))

(declare-fun d!833878 () Bool)

(declare-fun c!468793 () Bool)

(assert (=> d!833878 (= c!468793 (is-EmptyExpr!8808 r!23079))))

(assert (=> d!833878 (= (getLanguageWitness!515 r!23079) e!1824608)))

(declare-fun b!2885107 () Bool)

(assert (=> b!2885107 (= e!1824607 (Some!6480 (++!8208 (v!34606 lt!1020580) (v!34606 lt!1020582))))))

(declare-fun b!2885119 () Bool)

(assert (=> b!2885119 (= e!1824608 (Some!6480 Nil!34485))))

(declare-fun b!2885120 () Bool)

(assert (=> b!2885120 (= e!1824606 (Some!6480 Nil!34485))))

(declare-fun b!2885121 () Bool)

(declare-fun lt!1020581 () Option!6481)

(assert (=> b!2885121 (= e!1824603 lt!1020581)))

(declare-fun b!2885122 () Bool)

(assert (=> b!2885122 (= e!1824609 e!1824603)))

(assert (=> b!2885122 (= lt!1020581 call!187072)))

(declare-fun c!468789 () Bool)

(assert (=> b!2885122 (= c!468789 (is-Some!6480 lt!1020581))))

(assert (= (and d!833878 c!468793) b!2885119))

(assert (= (and d!833878 (not c!468793)) b!2885108))

(assert (= (and b!2885108 c!468796) b!2885110))

(assert (= (and b!2885108 (not c!468796)) b!2885109))

(assert (= (and b!2885109 c!468791) b!2885112))

(assert (= (and b!2885109 (not c!468791)) b!2885111))

(assert (= (and b!2885111 c!468792) b!2885120))

(assert (= (and b!2885111 (not c!468792)) b!2885117))

(assert (= (and b!2885117 c!468790) b!2885122))

(assert (= (and b!2885117 (not c!468790)) b!2885116))

(assert (= (and b!2885122 c!468789) b!2885121))

(assert (= (and b!2885122 (not c!468789)) b!2885118))

(assert (= (and b!2885116 c!468794) b!2885114))

(assert (= (and b!2885116 (not c!468794)) b!2885113))

(assert (= (and b!2885114 c!468795) b!2885107))

(assert (= (and b!2885114 (not c!468795)) b!2885115))

(assert (= (or b!2885118 b!2885116) bm!187067))

(assert (= (or b!2885122 b!2885114) bm!187066))

(declare-fun m!3300871 () Bool)

(assert (=> bm!187066 m!3300871))

(declare-fun m!3300873 () Bool)

(assert (=> bm!187067 m!3300873))

(declare-fun m!3300875 () Bool)

(assert (=> b!2885107 m!3300875))

(assert (=> b!2885022 d!833878))

(declare-fun b!2885145 () Bool)

(declare-fun e!1824630 () Bool)

(declare-fun e!1824628 () Bool)

(assert (=> b!2885145 (= e!1824630 e!1824628)))

(declare-fun c!468803 () Bool)

(assert (=> b!2885145 (= c!468803 (is-Union!8808 r!23079))))

(declare-fun b!2885146 () Bool)

(declare-fun e!1824629 () Bool)

(declare-fun call!187081 () Bool)

(assert (=> b!2885146 (= e!1824629 call!187081)))

(declare-fun b!2885147 () Bool)

(declare-fun res!1195294 () Bool)

(declare-fun e!1824631 () Bool)

(assert (=> b!2885147 (=> res!1195294 e!1824631)))

(assert (=> b!2885147 (= res!1195294 (not (is-Concat!14129 r!23079)))))

(assert (=> b!2885147 (= e!1824628 e!1824631)))

(declare-fun d!833880 () Bool)

(declare-fun res!1195297 () Bool)

(declare-fun e!1824627 () Bool)

(assert (=> d!833880 (=> res!1195297 e!1824627)))

(assert (=> d!833880 (= res!1195297 (is-ElementMatch!8808 r!23079))))

(assert (=> d!833880 (= (validRegex!3581 r!23079) e!1824627)))

(declare-fun b!2885148 () Bool)

(assert (=> b!2885148 (= e!1824627 e!1824630)))

(declare-fun c!468804 () Bool)

(assert (=> b!2885148 (= c!468804 (is-Star!8808 r!23079))))

(declare-fun b!2885149 () Bool)

(declare-fun e!1824632 () Bool)

(declare-fun call!187080 () Bool)

(assert (=> b!2885149 (= e!1824632 call!187080)))

(declare-fun b!2885150 () Bool)

(assert (=> b!2885150 (= e!1824630 e!1824632)))

(declare-fun res!1195295 () Bool)

(declare-fun nullable!2710 (Regex!8808) Bool)

(assert (=> b!2885150 (= res!1195295 (not (nullable!2710 (reg!9137 r!23079))))))

(assert (=> b!2885150 (=> (not res!1195295) (not e!1824632))))

(declare-fun bm!187074 () Bool)

(declare-fun call!187079 () Bool)

(assert (=> bm!187074 (= call!187079 call!187080)))

(declare-fun b!2885151 () Bool)

(declare-fun res!1195298 () Bool)

(assert (=> b!2885151 (=> (not res!1195298) (not e!1824629))))

(assert (=> b!2885151 (= res!1195298 call!187079)))

(assert (=> b!2885151 (= e!1824628 e!1824629)))

(declare-fun bm!187075 () Bool)

(assert (=> bm!187075 (= call!187081 (validRegex!3581 (ite c!468803 (regTwo!18129 r!23079) (regTwo!18128 r!23079))))))

(declare-fun bm!187076 () Bool)

(assert (=> bm!187076 (= call!187080 (validRegex!3581 (ite c!468804 (reg!9137 r!23079) (ite c!468803 (regOne!18129 r!23079) (regOne!18128 r!23079)))))))

(declare-fun b!2885152 () Bool)

(declare-fun e!1824626 () Bool)

(assert (=> b!2885152 (= e!1824631 e!1824626)))

(declare-fun res!1195296 () Bool)

(assert (=> b!2885152 (=> (not res!1195296) (not e!1824626))))

(assert (=> b!2885152 (= res!1195296 call!187079)))

(declare-fun b!2885153 () Bool)

(assert (=> b!2885153 (= e!1824626 call!187081)))

(assert (= (and d!833880 (not res!1195297)) b!2885148))

(assert (= (and b!2885148 c!468804) b!2885150))

(assert (= (and b!2885148 (not c!468804)) b!2885145))

(assert (= (and b!2885150 res!1195295) b!2885149))

(assert (= (and b!2885145 c!468803) b!2885151))

(assert (= (and b!2885145 (not c!468803)) b!2885147))

(assert (= (and b!2885151 res!1195298) b!2885146))

(assert (= (and b!2885147 (not res!1195294)) b!2885152))

(assert (= (and b!2885152 res!1195296) b!2885153))

(assert (= (or b!2885146 b!2885153) bm!187075))

(assert (= (or b!2885151 b!2885152) bm!187074))

(assert (= (or b!2885149 bm!187074) bm!187076))

(declare-fun m!3300877 () Bool)

(assert (=> b!2885150 m!3300877))

(declare-fun m!3300879 () Bool)

(assert (=> bm!187075 m!3300879))

(declare-fun m!3300881 () Bool)

(assert (=> bm!187076 m!3300881))

(assert (=> start!281600 d!833880))

(declare-fun d!833882 () Bool)

(assert (=> d!833882 (matchR!3786 (regTwo!18128 r!23079) (get!10423 (getLanguageWitness!515 (regTwo!18128 r!23079))))))

(declare-fun lt!1020587 () Unit!48077)

(declare-fun choose!17057 (Regex!8808) Unit!48077)

(assert (=> d!833882 (= lt!1020587 (choose!17057 (regTwo!18128 r!23079)))))

(assert (=> d!833882 (validRegex!3581 (regTwo!18128 r!23079))))

(assert (=> d!833882 (= (lemmaGetWitnessMatches!93 (regTwo!18128 r!23079)) lt!1020587)))

(declare-fun bs!523812 () Bool)

(assert (= bs!523812 d!833882))

(assert (=> bs!523812 m!3300815))

(declare-fun m!3300883 () Bool)

(assert (=> bs!523812 m!3300883))

(assert (=> bs!523812 m!3300815))

(assert (=> bs!523812 m!3300883))

(declare-fun m!3300885 () Bool)

(assert (=> bs!523812 m!3300885))

(declare-fun m!3300887 () Bool)

(assert (=> bs!523812 m!3300887))

(declare-fun m!3300889 () Bool)

(assert (=> bs!523812 m!3300889))

(assert (=> b!2885021 d!833882))

(declare-fun d!833884 () Bool)

(assert (=> d!833884 (= (get!10423 lt!1020555) (v!34606 lt!1020555))))

(assert (=> b!2885021 d!833884))

(declare-fun d!833886 () Bool)

(assert (=> d!833886 (= (get!10423 lt!1020557) (v!34606 lt!1020557))))

(assert (=> b!2885021 d!833886))

(declare-fun d!833888 () Bool)

(assert (=> d!833888 (matchR!3786 (regOne!18128 r!23079) (get!10423 (getLanguageWitness!515 (regOne!18128 r!23079))))))

(declare-fun lt!1020588 () Unit!48077)

(assert (=> d!833888 (= lt!1020588 (choose!17057 (regOne!18128 r!23079)))))

(assert (=> d!833888 (validRegex!3581 (regOne!18128 r!23079))))

(assert (=> d!833888 (= (lemmaGetWitnessMatches!93 (regOne!18128 r!23079)) lt!1020588)))

(declare-fun bs!523813 () Bool)

(assert (= bs!523813 d!833888))

(assert (=> bs!523813 m!3300831))

(declare-fun m!3300891 () Bool)

(assert (=> bs!523813 m!3300891))

(assert (=> bs!523813 m!3300831))

(assert (=> bs!523813 m!3300891))

(declare-fun m!3300893 () Bool)

(assert (=> bs!523813 m!3300893))

(declare-fun m!3300895 () Bool)

(assert (=> bs!523813 m!3300895))

(declare-fun m!3300897 () Bool)

(assert (=> bs!523813 m!3300897))

(assert (=> b!2885021 d!833888))

(declare-fun d!833890 () Bool)

(declare-fun e!1824671 () Bool)

(assert (=> d!833890 e!1824671))

(declare-fun c!468820 () Bool)

(assert (=> d!833890 (= c!468820 (is-EmptyExpr!8808 (regOne!18128 r!23079)))))

(declare-fun lt!1020592 () Bool)

(declare-fun e!1824667 () Bool)

(assert (=> d!833890 (= lt!1020592 e!1824667)))

(declare-fun c!468818 () Bool)

(declare-fun isEmpty!18775 (List!34609) Bool)

(assert (=> d!833890 (= c!468818 (isEmpty!18775 (v!34606 lt!1020557)))))

(assert (=> d!833890 (validRegex!3581 (regOne!18128 r!23079))))

(assert (=> d!833890 (= (matchR!3786 (regOne!18128 r!23079) (v!34606 lt!1020557)) lt!1020592)))

(declare-fun b!2885220 () Bool)

(declare-fun e!1824670 () Bool)

(assert (=> b!2885220 (= e!1824670 (not lt!1020592))))

(declare-fun b!2885221 () Bool)

(assert (=> b!2885221 (= e!1824671 e!1824670)))

(declare-fun c!468819 () Bool)

(assert (=> b!2885221 (= c!468819 (is-EmptyLang!8808 (regOne!18128 r!23079)))))

(declare-fun b!2885222 () Bool)

(declare-fun res!1195342 () Bool)

(declare-fun e!1824668 () Bool)

(assert (=> b!2885222 (=> res!1195342 e!1824668)))

(assert (=> b!2885222 (= res!1195342 (not (is-ElementMatch!8808 (regOne!18128 r!23079))))))

(assert (=> b!2885222 (= e!1824670 e!1824668)))

(declare-fun b!2885223 () Bool)

(declare-fun e!1824672 () Bool)

(declare-fun head!6372 (List!34609) C!17798)

(assert (=> b!2885223 (= e!1824672 (not (= (head!6372 (v!34606 lt!1020557)) (c!468763 (regOne!18128 r!23079)))))))

(declare-fun b!2885224 () Bool)

(declare-fun res!1195340 () Bool)

(declare-fun e!1824666 () Bool)

(assert (=> b!2885224 (=> (not res!1195340) (not e!1824666))))

(declare-fun tail!4597 (List!34609) List!34609)

(assert (=> b!2885224 (= res!1195340 (isEmpty!18775 (tail!4597 (v!34606 lt!1020557))))))

(declare-fun b!2885225 () Bool)

(declare-fun derivativeStep!2343 (Regex!8808 C!17798) Regex!8808)

(assert (=> b!2885225 (= e!1824667 (matchR!3786 (derivativeStep!2343 (regOne!18128 r!23079) (head!6372 (v!34606 lt!1020557))) (tail!4597 (v!34606 lt!1020557))))))

(declare-fun b!2885226 () Bool)

(declare-fun e!1824669 () Bool)

(assert (=> b!2885226 (= e!1824669 e!1824672)))

(declare-fun res!1195343 () Bool)

(assert (=> b!2885226 (=> res!1195343 e!1824672)))

(declare-fun call!187087 () Bool)

(assert (=> b!2885226 (= res!1195343 call!187087)))

(declare-fun bm!187082 () Bool)

(assert (=> bm!187082 (= call!187087 (isEmpty!18775 (v!34606 lt!1020557)))))

(declare-fun b!2885227 () Bool)

(assert (=> b!2885227 (= e!1824666 (= (head!6372 (v!34606 lt!1020557)) (c!468763 (regOne!18128 r!23079))))))

(declare-fun b!2885228 () Bool)

(assert (=> b!2885228 (= e!1824667 (nullable!2710 (regOne!18128 r!23079)))))

(declare-fun b!2885229 () Bool)

(assert (=> b!2885229 (= e!1824671 (= lt!1020592 call!187087))))

(declare-fun b!2885230 () Bool)

(assert (=> b!2885230 (= e!1824668 e!1824669)))

(declare-fun res!1195344 () Bool)

(assert (=> b!2885230 (=> (not res!1195344) (not e!1824669))))

(assert (=> b!2885230 (= res!1195344 (not lt!1020592))))

(declare-fun b!2885231 () Bool)

(declare-fun res!1195339 () Bool)

(assert (=> b!2885231 (=> res!1195339 e!1824672)))

(assert (=> b!2885231 (= res!1195339 (not (isEmpty!18775 (tail!4597 (v!34606 lt!1020557)))))))

(declare-fun b!2885232 () Bool)

(declare-fun res!1195345 () Bool)

(assert (=> b!2885232 (=> res!1195345 e!1824668)))

(assert (=> b!2885232 (= res!1195345 e!1824666)))

(declare-fun res!1195341 () Bool)

(assert (=> b!2885232 (=> (not res!1195341) (not e!1824666))))

(assert (=> b!2885232 (= res!1195341 lt!1020592)))

(declare-fun b!2885233 () Bool)

(declare-fun res!1195346 () Bool)

(assert (=> b!2885233 (=> (not res!1195346) (not e!1824666))))

(assert (=> b!2885233 (= res!1195346 (not call!187087))))

(assert (= (and d!833890 c!468818) b!2885228))

(assert (= (and d!833890 (not c!468818)) b!2885225))

(assert (= (and d!833890 c!468820) b!2885229))

(assert (= (and d!833890 (not c!468820)) b!2885221))

(assert (= (and b!2885221 c!468819) b!2885220))

(assert (= (and b!2885221 (not c!468819)) b!2885222))

(assert (= (and b!2885222 (not res!1195342)) b!2885232))

(assert (= (and b!2885232 res!1195341) b!2885233))

(assert (= (and b!2885233 res!1195346) b!2885224))

(assert (= (and b!2885224 res!1195340) b!2885227))

(assert (= (and b!2885232 (not res!1195345)) b!2885230))

(assert (= (and b!2885230 res!1195344) b!2885226))

(assert (= (and b!2885226 (not res!1195343)) b!2885231))

(assert (= (and b!2885231 (not res!1195339)) b!2885223))

(assert (= (or b!2885229 b!2885226 b!2885233) bm!187082))

(declare-fun m!3300915 () Bool)

(assert (=> b!2885223 m!3300915))

(declare-fun m!3300917 () Bool)

(assert (=> d!833890 m!3300917))

(assert (=> d!833890 m!3300897))

(assert (=> b!2885227 m!3300915))

(assert (=> b!2885225 m!3300915))

(assert (=> b!2885225 m!3300915))

(declare-fun m!3300919 () Bool)

(assert (=> b!2885225 m!3300919))

(declare-fun m!3300921 () Bool)

(assert (=> b!2885225 m!3300921))

(assert (=> b!2885225 m!3300919))

(assert (=> b!2885225 m!3300921))

(declare-fun m!3300923 () Bool)

(assert (=> b!2885225 m!3300923))

(assert (=> b!2885224 m!3300921))

(assert (=> b!2885224 m!3300921))

(declare-fun m!3300925 () Bool)

(assert (=> b!2885224 m!3300925))

(declare-fun m!3300927 () Bool)

(assert (=> b!2885228 m!3300927))

(assert (=> bm!187082 m!3300917))

(assert (=> b!2885231 m!3300921))

(assert (=> b!2885231 m!3300921))

(assert (=> b!2885231 m!3300925))

(assert (=> b!2885021 d!833890))

(declare-fun d!833894 () Bool)

(declare-fun e!1824678 () Bool)

(assert (=> d!833894 e!1824678))

(declare-fun c!468823 () Bool)

(assert (=> d!833894 (= c!468823 (is-EmptyExpr!8808 (regOne!18128 r!23079)))))

(declare-fun lt!1020593 () Bool)

(declare-fun e!1824674 () Bool)

(assert (=> d!833894 (= lt!1020593 e!1824674)))

(declare-fun c!468821 () Bool)

(assert (=> d!833894 (= c!468821 (isEmpty!18775 (get!10423 lt!1020557)))))

(assert (=> d!833894 (validRegex!3581 (regOne!18128 r!23079))))

(assert (=> d!833894 (= (matchR!3786 (regOne!18128 r!23079) (get!10423 lt!1020557)) lt!1020593)))

(declare-fun b!2885234 () Bool)

(declare-fun e!1824677 () Bool)

(assert (=> b!2885234 (= e!1824677 (not lt!1020593))))

(declare-fun b!2885235 () Bool)

(assert (=> b!2885235 (= e!1824678 e!1824677)))

(declare-fun c!468822 () Bool)

(assert (=> b!2885235 (= c!468822 (is-EmptyLang!8808 (regOne!18128 r!23079)))))

(declare-fun b!2885236 () Bool)

(declare-fun res!1195350 () Bool)

(declare-fun e!1824675 () Bool)

(assert (=> b!2885236 (=> res!1195350 e!1824675)))

(assert (=> b!2885236 (= res!1195350 (not (is-ElementMatch!8808 (regOne!18128 r!23079))))))

(assert (=> b!2885236 (= e!1824677 e!1824675)))

(declare-fun b!2885237 () Bool)

(declare-fun e!1824679 () Bool)

(assert (=> b!2885237 (= e!1824679 (not (= (head!6372 (get!10423 lt!1020557)) (c!468763 (regOne!18128 r!23079)))))))

(declare-fun b!2885238 () Bool)

(declare-fun res!1195348 () Bool)

(declare-fun e!1824673 () Bool)

(assert (=> b!2885238 (=> (not res!1195348) (not e!1824673))))

(assert (=> b!2885238 (= res!1195348 (isEmpty!18775 (tail!4597 (get!10423 lt!1020557))))))

(declare-fun b!2885239 () Bool)

(assert (=> b!2885239 (= e!1824674 (matchR!3786 (derivativeStep!2343 (regOne!18128 r!23079) (head!6372 (get!10423 lt!1020557))) (tail!4597 (get!10423 lt!1020557))))))

(declare-fun b!2885240 () Bool)

(declare-fun e!1824676 () Bool)

(assert (=> b!2885240 (= e!1824676 e!1824679)))

(declare-fun res!1195351 () Bool)

(assert (=> b!2885240 (=> res!1195351 e!1824679)))

(declare-fun call!187088 () Bool)

(assert (=> b!2885240 (= res!1195351 call!187088)))

(declare-fun bm!187083 () Bool)

(assert (=> bm!187083 (= call!187088 (isEmpty!18775 (get!10423 lt!1020557)))))

(declare-fun b!2885241 () Bool)

(assert (=> b!2885241 (= e!1824673 (= (head!6372 (get!10423 lt!1020557)) (c!468763 (regOne!18128 r!23079))))))

(declare-fun b!2885242 () Bool)

(assert (=> b!2885242 (= e!1824674 (nullable!2710 (regOne!18128 r!23079)))))

(declare-fun b!2885243 () Bool)

(assert (=> b!2885243 (= e!1824678 (= lt!1020593 call!187088))))

(declare-fun b!2885244 () Bool)

(assert (=> b!2885244 (= e!1824675 e!1824676)))

(declare-fun res!1195352 () Bool)

(assert (=> b!2885244 (=> (not res!1195352) (not e!1824676))))

(assert (=> b!2885244 (= res!1195352 (not lt!1020593))))

(declare-fun b!2885245 () Bool)

(declare-fun res!1195347 () Bool)

(assert (=> b!2885245 (=> res!1195347 e!1824679)))

(assert (=> b!2885245 (= res!1195347 (not (isEmpty!18775 (tail!4597 (get!10423 lt!1020557)))))))

(declare-fun b!2885246 () Bool)

(declare-fun res!1195353 () Bool)

(assert (=> b!2885246 (=> res!1195353 e!1824675)))

(assert (=> b!2885246 (= res!1195353 e!1824673)))

(declare-fun res!1195349 () Bool)

(assert (=> b!2885246 (=> (not res!1195349) (not e!1824673))))

(assert (=> b!2885246 (= res!1195349 lt!1020593)))

(declare-fun b!2885247 () Bool)

(declare-fun res!1195354 () Bool)

(assert (=> b!2885247 (=> (not res!1195354) (not e!1824673))))

(assert (=> b!2885247 (= res!1195354 (not call!187088))))

(assert (= (and d!833894 c!468821) b!2885242))

(assert (= (and d!833894 (not c!468821)) b!2885239))

(assert (= (and d!833894 c!468823) b!2885243))

(assert (= (and d!833894 (not c!468823)) b!2885235))

(assert (= (and b!2885235 c!468822) b!2885234))

(assert (= (and b!2885235 (not c!468822)) b!2885236))

(assert (= (and b!2885236 (not res!1195350)) b!2885246))

(assert (= (and b!2885246 res!1195349) b!2885247))

(assert (= (and b!2885247 res!1195354) b!2885238))

(assert (= (and b!2885238 res!1195348) b!2885241))

(assert (= (and b!2885246 (not res!1195353)) b!2885244))

(assert (= (and b!2885244 res!1195352) b!2885240))

(assert (= (and b!2885240 (not res!1195351)) b!2885245))

(assert (= (and b!2885245 (not res!1195347)) b!2885237))

(assert (= (or b!2885243 b!2885240 b!2885247) bm!187083))

(assert (=> b!2885237 m!3300825))

(declare-fun m!3300929 () Bool)

(assert (=> b!2885237 m!3300929))

(assert (=> d!833894 m!3300825))

(declare-fun m!3300931 () Bool)

(assert (=> d!833894 m!3300931))

(assert (=> d!833894 m!3300897))

(assert (=> b!2885241 m!3300825))

(assert (=> b!2885241 m!3300929))

(assert (=> b!2885239 m!3300825))

(assert (=> b!2885239 m!3300929))

(assert (=> b!2885239 m!3300929))

(declare-fun m!3300933 () Bool)

(assert (=> b!2885239 m!3300933))

(assert (=> b!2885239 m!3300825))

(declare-fun m!3300935 () Bool)

(assert (=> b!2885239 m!3300935))

(assert (=> b!2885239 m!3300933))

(assert (=> b!2885239 m!3300935))

(declare-fun m!3300939 () Bool)

(assert (=> b!2885239 m!3300939))

(assert (=> b!2885238 m!3300825))

(assert (=> b!2885238 m!3300935))

(assert (=> b!2885238 m!3300935))

(declare-fun m!3300941 () Bool)

(assert (=> b!2885238 m!3300941))

(assert (=> b!2885242 m!3300927))

(assert (=> bm!187083 m!3300825))

(assert (=> bm!187083 m!3300931))

(assert (=> b!2885245 m!3300825))

(assert (=> b!2885245 m!3300935))

(assert (=> b!2885245 m!3300935))

(assert (=> b!2885245 m!3300941))

(assert (=> b!2885021 d!833894))

(declare-fun d!833898 () Bool)

(declare-fun e!1824685 () Bool)

(assert (=> d!833898 e!1824685))

(declare-fun c!468826 () Bool)

(assert (=> d!833898 (= c!468826 (is-EmptyExpr!8808 (regTwo!18128 r!23079)))))

(declare-fun lt!1020594 () Bool)

(declare-fun e!1824681 () Bool)

(assert (=> d!833898 (= lt!1020594 e!1824681)))

(declare-fun c!468824 () Bool)

(assert (=> d!833898 (= c!468824 (isEmpty!18775 (get!10423 lt!1020555)))))

(assert (=> d!833898 (validRegex!3581 (regTwo!18128 r!23079))))

(assert (=> d!833898 (= (matchR!3786 (regTwo!18128 r!23079) (get!10423 lt!1020555)) lt!1020594)))

(declare-fun b!2885248 () Bool)

(declare-fun e!1824684 () Bool)

(assert (=> b!2885248 (= e!1824684 (not lt!1020594))))

(declare-fun b!2885249 () Bool)

(assert (=> b!2885249 (= e!1824685 e!1824684)))

(declare-fun c!468825 () Bool)

(assert (=> b!2885249 (= c!468825 (is-EmptyLang!8808 (regTwo!18128 r!23079)))))

(declare-fun b!2885250 () Bool)

(declare-fun res!1195358 () Bool)

(declare-fun e!1824682 () Bool)

(assert (=> b!2885250 (=> res!1195358 e!1824682)))

(assert (=> b!2885250 (= res!1195358 (not (is-ElementMatch!8808 (regTwo!18128 r!23079))))))

(assert (=> b!2885250 (= e!1824684 e!1824682)))

(declare-fun b!2885251 () Bool)

(declare-fun e!1824686 () Bool)

(assert (=> b!2885251 (= e!1824686 (not (= (head!6372 (get!10423 lt!1020555)) (c!468763 (regTwo!18128 r!23079)))))))

(declare-fun b!2885252 () Bool)

(declare-fun res!1195356 () Bool)

(declare-fun e!1824680 () Bool)

(assert (=> b!2885252 (=> (not res!1195356) (not e!1824680))))

(assert (=> b!2885252 (= res!1195356 (isEmpty!18775 (tail!4597 (get!10423 lt!1020555))))))

(declare-fun b!2885253 () Bool)

(assert (=> b!2885253 (= e!1824681 (matchR!3786 (derivativeStep!2343 (regTwo!18128 r!23079) (head!6372 (get!10423 lt!1020555))) (tail!4597 (get!10423 lt!1020555))))))

(declare-fun b!2885254 () Bool)

(declare-fun e!1824683 () Bool)

(assert (=> b!2885254 (= e!1824683 e!1824686)))

(declare-fun res!1195359 () Bool)

(assert (=> b!2885254 (=> res!1195359 e!1824686)))

(declare-fun call!187089 () Bool)

(assert (=> b!2885254 (= res!1195359 call!187089)))

(declare-fun bm!187084 () Bool)

(assert (=> bm!187084 (= call!187089 (isEmpty!18775 (get!10423 lt!1020555)))))

(declare-fun b!2885255 () Bool)

(assert (=> b!2885255 (= e!1824680 (= (head!6372 (get!10423 lt!1020555)) (c!468763 (regTwo!18128 r!23079))))))

(declare-fun b!2885256 () Bool)

(assert (=> b!2885256 (= e!1824681 (nullable!2710 (regTwo!18128 r!23079)))))

(declare-fun b!2885257 () Bool)

(assert (=> b!2885257 (= e!1824685 (= lt!1020594 call!187089))))

(declare-fun b!2885258 () Bool)

(assert (=> b!2885258 (= e!1824682 e!1824683)))

(declare-fun res!1195360 () Bool)

(assert (=> b!2885258 (=> (not res!1195360) (not e!1824683))))

(assert (=> b!2885258 (= res!1195360 (not lt!1020594))))

(declare-fun b!2885259 () Bool)

(declare-fun res!1195355 () Bool)

(assert (=> b!2885259 (=> res!1195355 e!1824686)))

(assert (=> b!2885259 (= res!1195355 (not (isEmpty!18775 (tail!4597 (get!10423 lt!1020555)))))))

(declare-fun b!2885260 () Bool)

(declare-fun res!1195361 () Bool)

(assert (=> b!2885260 (=> res!1195361 e!1824682)))

(assert (=> b!2885260 (= res!1195361 e!1824680)))

(declare-fun res!1195357 () Bool)

(assert (=> b!2885260 (=> (not res!1195357) (not e!1824680))))

(assert (=> b!2885260 (= res!1195357 lt!1020594)))

(declare-fun b!2885261 () Bool)

(declare-fun res!1195362 () Bool)

(assert (=> b!2885261 (=> (not res!1195362) (not e!1824680))))

(assert (=> b!2885261 (= res!1195362 (not call!187089))))

(assert (= (and d!833898 c!468824) b!2885256))

(assert (= (and d!833898 (not c!468824)) b!2885253))

(assert (= (and d!833898 c!468826) b!2885257))

(assert (= (and d!833898 (not c!468826)) b!2885249))

(assert (= (and b!2885249 c!468825) b!2885248))

(assert (= (and b!2885249 (not c!468825)) b!2885250))

(assert (= (and b!2885250 (not res!1195358)) b!2885260))

(assert (= (and b!2885260 res!1195357) b!2885261))

(assert (= (and b!2885261 res!1195362) b!2885252))

(assert (= (and b!2885252 res!1195356) b!2885255))

(assert (= (and b!2885260 (not res!1195361)) b!2885258))

(assert (= (and b!2885258 res!1195360) b!2885254))

(assert (= (and b!2885254 (not res!1195359)) b!2885259))

(assert (= (and b!2885259 (not res!1195355)) b!2885251))

(assert (= (or b!2885257 b!2885254 b!2885261) bm!187084))

(assert (=> b!2885251 m!3300817))

(declare-fun m!3300943 () Bool)

(assert (=> b!2885251 m!3300943))

(assert (=> d!833898 m!3300817))

(declare-fun m!3300945 () Bool)

(assert (=> d!833898 m!3300945))

(assert (=> d!833898 m!3300889))

(assert (=> b!2885255 m!3300817))

(assert (=> b!2885255 m!3300943))

(assert (=> b!2885253 m!3300817))

(assert (=> b!2885253 m!3300943))

(assert (=> b!2885253 m!3300943))

(declare-fun m!3300947 () Bool)

(assert (=> b!2885253 m!3300947))

(assert (=> b!2885253 m!3300817))

(declare-fun m!3300949 () Bool)

(assert (=> b!2885253 m!3300949))

(assert (=> b!2885253 m!3300947))

(assert (=> b!2885253 m!3300949))

(declare-fun m!3300951 () Bool)

(assert (=> b!2885253 m!3300951))

(assert (=> b!2885252 m!3300817))

(assert (=> b!2885252 m!3300949))

(assert (=> b!2885252 m!3300949))

(declare-fun m!3300953 () Bool)

(assert (=> b!2885252 m!3300953))

(declare-fun m!3300955 () Bool)

(assert (=> b!2885256 m!3300955))

(assert (=> bm!187084 m!3300817))

(assert (=> bm!187084 m!3300945))

(assert (=> b!2885259 m!3300817))

(assert (=> b!2885259 m!3300949))

(assert (=> b!2885259 m!3300949))

(assert (=> b!2885259 m!3300953))

(assert (=> b!2885021 d!833898))

(declare-fun bm!187085 () Bool)

(declare-fun call!187091 () Option!6481)

(declare-fun c!468828 () Bool)

(assert (=> bm!187085 (= call!187091 (getLanguageWitness!515 (ite c!468828 (regOne!18129 (regTwo!18128 r!23079)) (regTwo!18128 (regTwo!18128 r!23079)))))))

(declare-fun b!2885263 () Bool)

(declare-fun e!1824693 () Option!6481)

(declare-fun e!1824690 () Option!6481)

(assert (=> b!2885263 (= e!1824693 e!1824690)))

(declare-fun c!468834 () Bool)

(assert (=> b!2885263 (= c!468834 (is-EmptyLang!8808 (regTwo!18128 r!23079)))))

(declare-fun b!2885264 () Bool)

(declare-fun c!468829 () Bool)

(assert (=> b!2885264 (= c!468829 (is-ElementMatch!8808 (regTwo!18128 r!23079)))))

(declare-fun e!1824687 () Option!6481)

(assert (=> b!2885264 (= e!1824690 e!1824687)))

(declare-fun b!2885265 () Bool)

(assert (=> b!2885265 (= e!1824690 None!6480)))

(declare-fun b!2885266 () Bool)

(declare-fun e!1824691 () Option!6481)

(assert (=> b!2885266 (= e!1824687 e!1824691)))

(declare-fun c!468830 () Bool)

(assert (=> b!2885266 (= c!468830 (is-Star!8808 (regTwo!18128 r!23079)))))

(declare-fun b!2885267 () Bool)

(assert (=> b!2885267 (= e!1824687 (Some!6480 (Cons!34485 (c!468763 (regTwo!18128 r!23079)) Nil!34485)))))

(declare-fun b!2885268 () Bool)

(declare-fun e!1824689 () Option!6481)

(assert (=> b!2885268 (= e!1824689 None!6480)))

(declare-fun b!2885269 () Bool)

(declare-fun c!468833 () Bool)

(declare-fun lt!1020597 () Option!6481)

(assert (=> b!2885269 (= c!468833 (is-Some!6480 lt!1020597))))

(assert (=> b!2885269 (= lt!1020597 call!187091)))

(declare-fun e!1824692 () Option!6481)

(assert (=> b!2885269 (= e!1824689 e!1824692)))

(declare-fun b!2885270 () Bool)

(assert (=> b!2885270 (= e!1824692 None!6480)))

(declare-fun b!2885271 () Bool)

(declare-fun e!1824694 () Option!6481)

(assert (=> b!2885271 (= e!1824694 e!1824689)))

(declare-fun lt!1020595 () Option!6481)

(declare-fun call!187090 () Option!6481)

(assert (=> b!2885271 (= lt!1020595 call!187090)))

(declare-fun c!468832 () Bool)

(assert (=> b!2885271 (= c!468832 (is-Some!6480 lt!1020595))))

(declare-fun b!2885272 () Bool)

(assert (=> b!2885272 (= c!468828 (is-Union!8808 (regTwo!18128 r!23079)))))

(assert (=> b!2885272 (= e!1824691 e!1824694)))

(declare-fun b!2885273 () Bool)

(declare-fun e!1824688 () Option!6481)

(assert (=> b!2885273 (= e!1824688 call!187090)))

(declare-fun bm!187086 () Bool)

(assert (=> bm!187086 (= call!187090 (getLanguageWitness!515 (ite c!468828 (regTwo!18129 (regTwo!18128 r!23079)) (regOne!18128 (regTwo!18128 r!23079)))))))

(declare-fun d!833900 () Bool)

(declare-fun c!468831 () Bool)

(assert (=> d!833900 (= c!468831 (is-EmptyExpr!8808 (regTwo!18128 r!23079)))))

(assert (=> d!833900 (= (getLanguageWitness!515 (regTwo!18128 r!23079)) e!1824693)))

(declare-fun b!2885262 () Bool)

(assert (=> b!2885262 (= e!1824692 (Some!6480 (++!8208 (v!34606 lt!1020595) (v!34606 lt!1020597))))))

(declare-fun b!2885274 () Bool)

(assert (=> b!2885274 (= e!1824693 (Some!6480 Nil!34485))))

(declare-fun b!2885275 () Bool)

(assert (=> b!2885275 (= e!1824691 (Some!6480 Nil!34485))))

(declare-fun b!2885276 () Bool)

(declare-fun lt!1020596 () Option!6481)

(assert (=> b!2885276 (= e!1824688 lt!1020596)))

(declare-fun b!2885277 () Bool)

(assert (=> b!2885277 (= e!1824694 e!1824688)))

(assert (=> b!2885277 (= lt!1020596 call!187091)))

(declare-fun c!468827 () Bool)

(assert (=> b!2885277 (= c!468827 (is-Some!6480 lt!1020596))))

(assert (= (and d!833900 c!468831) b!2885274))

(assert (= (and d!833900 (not c!468831)) b!2885263))

(assert (= (and b!2885263 c!468834) b!2885265))

(assert (= (and b!2885263 (not c!468834)) b!2885264))

(assert (= (and b!2885264 c!468829) b!2885267))

(assert (= (and b!2885264 (not c!468829)) b!2885266))

(assert (= (and b!2885266 c!468830) b!2885275))

(assert (= (and b!2885266 (not c!468830)) b!2885272))

(assert (= (and b!2885272 c!468828) b!2885277))

(assert (= (and b!2885272 (not c!468828)) b!2885271))

(assert (= (and b!2885277 c!468827) b!2885276))

(assert (= (and b!2885277 (not c!468827)) b!2885273))

(assert (= (and b!2885271 c!468832) b!2885269))

(assert (= (and b!2885271 (not c!468832)) b!2885268))

(assert (= (and b!2885269 c!468833) b!2885262))

(assert (= (and b!2885269 (not c!468833)) b!2885270))

(assert (= (or b!2885273 b!2885271) bm!187086))

(assert (= (or b!2885277 b!2885269) bm!187085))

(declare-fun m!3300957 () Bool)

(assert (=> bm!187085 m!3300957))

(declare-fun m!3300959 () Bool)

(assert (=> bm!187086 m!3300959))

(declare-fun m!3300961 () Bool)

(assert (=> b!2885262 m!3300961))

(assert (=> b!2885020 d!833900))

(declare-fun d!833902 () Bool)

(declare-fun e!1824700 () Bool)

(assert (=> d!833902 e!1824700))

(declare-fun c!468837 () Bool)

(assert (=> d!833902 (= c!468837 (is-EmptyExpr!8808 (regTwo!18128 r!23079)))))

(declare-fun lt!1020598 () Bool)

(declare-fun e!1824696 () Bool)

(assert (=> d!833902 (= lt!1020598 e!1824696)))

(declare-fun c!468835 () Bool)

(assert (=> d!833902 (= c!468835 (isEmpty!18775 (v!34606 lt!1020555)))))

(assert (=> d!833902 (validRegex!3581 (regTwo!18128 r!23079))))

(assert (=> d!833902 (= (matchR!3786 (regTwo!18128 r!23079) (v!34606 lt!1020555)) lt!1020598)))

(declare-fun b!2885278 () Bool)

(declare-fun e!1824699 () Bool)

(assert (=> b!2885278 (= e!1824699 (not lt!1020598))))

(declare-fun b!2885279 () Bool)

(assert (=> b!2885279 (= e!1824700 e!1824699)))

(declare-fun c!468836 () Bool)

(assert (=> b!2885279 (= c!468836 (is-EmptyLang!8808 (regTwo!18128 r!23079)))))

(declare-fun b!2885280 () Bool)

(declare-fun res!1195366 () Bool)

(declare-fun e!1824697 () Bool)

(assert (=> b!2885280 (=> res!1195366 e!1824697)))

(assert (=> b!2885280 (= res!1195366 (not (is-ElementMatch!8808 (regTwo!18128 r!23079))))))

(assert (=> b!2885280 (= e!1824699 e!1824697)))

(declare-fun b!2885281 () Bool)

(declare-fun e!1824701 () Bool)

(assert (=> b!2885281 (= e!1824701 (not (= (head!6372 (v!34606 lt!1020555)) (c!468763 (regTwo!18128 r!23079)))))))

(declare-fun b!2885282 () Bool)

(declare-fun res!1195364 () Bool)

(declare-fun e!1824695 () Bool)

(assert (=> b!2885282 (=> (not res!1195364) (not e!1824695))))

(assert (=> b!2885282 (= res!1195364 (isEmpty!18775 (tail!4597 (v!34606 lt!1020555))))))

(declare-fun b!2885283 () Bool)

(assert (=> b!2885283 (= e!1824696 (matchR!3786 (derivativeStep!2343 (regTwo!18128 r!23079) (head!6372 (v!34606 lt!1020555))) (tail!4597 (v!34606 lt!1020555))))))

(declare-fun b!2885284 () Bool)

(declare-fun e!1824698 () Bool)

(assert (=> b!2885284 (= e!1824698 e!1824701)))

(declare-fun res!1195367 () Bool)

(assert (=> b!2885284 (=> res!1195367 e!1824701)))

(declare-fun call!187092 () Bool)

(assert (=> b!2885284 (= res!1195367 call!187092)))

(declare-fun bm!187087 () Bool)

(assert (=> bm!187087 (= call!187092 (isEmpty!18775 (v!34606 lt!1020555)))))

(declare-fun b!2885285 () Bool)

(assert (=> b!2885285 (= e!1824695 (= (head!6372 (v!34606 lt!1020555)) (c!468763 (regTwo!18128 r!23079))))))

(declare-fun b!2885286 () Bool)

(assert (=> b!2885286 (= e!1824696 (nullable!2710 (regTwo!18128 r!23079)))))

(declare-fun b!2885287 () Bool)

(assert (=> b!2885287 (= e!1824700 (= lt!1020598 call!187092))))

(declare-fun b!2885288 () Bool)

(assert (=> b!2885288 (= e!1824697 e!1824698)))

(declare-fun res!1195368 () Bool)

(assert (=> b!2885288 (=> (not res!1195368) (not e!1824698))))

(assert (=> b!2885288 (= res!1195368 (not lt!1020598))))

(declare-fun b!2885289 () Bool)

(declare-fun res!1195363 () Bool)

(assert (=> b!2885289 (=> res!1195363 e!1824701)))

(assert (=> b!2885289 (= res!1195363 (not (isEmpty!18775 (tail!4597 (v!34606 lt!1020555)))))))

(declare-fun b!2885290 () Bool)

(declare-fun res!1195369 () Bool)

(assert (=> b!2885290 (=> res!1195369 e!1824697)))

(assert (=> b!2885290 (= res!1195369 e!1824695)))

(declare-fun res!1195365 () Bool)

(assert (=> b!2885290 (=> (not res!1195365) (not e!1824695))))

(assert (=> b!2885290 (= res!1195365 lt!1020598)))

(declare-fun b!2885291 () Bool)

(declare-fun res!1195370 () Bool)

(assert (=> b!2885291 (=> (not res!1195370) (not e!1824695))))

(assert (=> b!2885291 (= res!1195370 (not call!187092))))

(assert (= (and d!833902 c!468835) b!2885286))

(assert (= (and d!833902 (not c!468835)) b!2885283))

(assert (= (and d!833902 c!468837) b!2885287))

(assert (= (and d!833902 (not c!468837)) b!2885279))

(assert (= (and b!2885279 c!468836) b!2885278))

(assert (= (and b!2885279 (not c!468836)) b!2885280))

(assert (= (and b!2885280 (not res!1195366)) b!2885290))

(assert (= (and b!2885290 res!1195365) b!2885291))

(assert (= (and b!2885291 res!1195370) b!2885282))

(assert (= (and b!2885282 res!1195364) b!2885285))

(assert (= (and b!2885290 (not res!1195369)) b!2885288))

(assert (= (and b!2885288 res!1195368) b!2885284))

(assert (= (and b!2885284 (not res!1195367)) b!2885289))

(assert (= (and b!2885289 (not res!1195363)) b!2885281))

(assert (= (or b!2885287 b!2885284 b!2885291) bm!187087))

(declare-fun m!3300963 () Bool)

(assert (=> b!2885281 m!3300963))

(declare-fun m!3300965 () Bool)

(assert (=> d!833902 m!3300965))

(assert (=> d!833902 m!3300889))

(assert (=> b!2885285 m!3300963))

(assert (=> b!2885283 m!3300963))

(assert (=> b!2885283 m!3300963))

(declare-fun m!3300967 () Bool)

(assert (=> b!2885283 m!3300967))

(declare-fun m!3300969 () Bool)

(assert (=> b!2885283 m!3300969))

(assert (=> b!2885283 m!3300967))

(assert (=> b!2885283 m!3300969))

(declare-fun m!3300971 () Bool)

(assert (=> b!2885283 m!3300971))

(assert (=> b!2885282 m!3300969))

(assert (=> b!2885282 m!3300969))

(declare-fun m!3300973 () Bool)

(assert (=> b!2885282 m!3300973))

(assert (=> b!2885286 m!3300955))

(assert (=> bm!187087 m!3300965))

(assert (=> b!2885289 m!3300969))

(assert (=> b!2885289 m!3300969))

(assert (=> b!2885289 m!3300973))

(assert (=> b!2885025 d!833902))

(declare-fun b!2885303 () Bool)

(declare-fun e!1824704 () Bool)

(declare-fun tp!925311 () Bool)

(declare-fun tp!925313 () Bool)

(assert (=> b!2885303 (= e!1824704 (and tp!925311 tp!925313))))

(declare-fun b!2885304 () Bool)

(declare-fun tp!925310 () Bool)

(assert (=> b!2885304 (= e!1824704 tp!925310)))

(declare-fun b!2885305 () Bool)

(declare-fun tp!925312 () Bool)

(declare-fun tp!925314 () Bool)

(assert (=> b!2885305 (= e!1824704 (and tp!925312 tp!925314))))

(declare-fun b!2885302 () Bool)

(assert (=> b!2885302 (= e!1824704 tp_is_empty!15203)))

(assert (=> b!2885028 (= tp!925280 e!1824704)))

(assert (= (and b!2885028 (is-ElementMatch!8808 (regOne!18128 r!23079))) b!2885302))

(assert (= (and b!2885028 (is-Concat!14129 (regOne!18128 r!23079))) b!2885303))

(assert (= (and b!2885028 (is-Star!8808 (regOne!18128 r!23079))) b!2885304))

(assert (= (and b!2885028 (is-Union!8808 (regOne!18128 r!23079))) b!2885305))

(declare-fun b!2885307 () Bool)

(declare-fun e!1824705 () Bool)

(declare-fun tp!925316 () Bool)

(declare-fun tp!925318 () Bool)

(assert (=> b!2885307 (= e!1824705 (and tp!925316 tp!925318))))

(declare-fun b!2885308 () Bool)

(declare-fun tp!925315 () Bool)

(assert (=> b!2885308 (= e!1824705 tp!925315)))

(declare-fun b!2885309 () Bool)

(declare-fun tp!925317 () Bool)

(declare-fun tp!925319 () Bool)

(assert (=> b!2885309 (= e!1824705 (and tp!925317 tp!925319))))

(declare-fun b!2885306 () Bool)

(assert (=> b!2885306 (= e!1824705 tp_is_empty!15203)))

(assert (=> b!2885028 (= tp!925282 e!1824705)))

(assert (= (and b!2885028 (is-ElementMatch!8808 (regTwo!18128 r!23079))) b!2885306))

(assert (= (and b!2885028 (is-Concat!14129 (regTwo!18128 r!23079))) b!2885307))

(assert (= (and b!2885028 (is-Star!8808 (regTwo!18128 r!23079))) b!2885308))

(assert (= (and b!2885028 (is-Union!8808 (regTwo!18128 r!23079))) b!2885309))

(declare-fun b!2885311 () Bool)

(declare-fun e!1824706 () Bool)

(declare-fun tp!925321 () Bool)

(declare-fun tp!925323 () Bool)

(assert (=> b!2885311 (= e!1824706 (and tp!925321 tp!925323))))

(declare-fun b!2885312 () Bool)

(declare-fun tp!925320 () Bool)

(assert (=> b!2885312 (= e!1824706 tp!925320)))

(declare-fun b!2885313 () Bool)

(declare-fun tp!925322 () Bool)

(declare-fun tp!925324 () Bool)

(assert (=> b!2885313 (= e!1824706 (and tp!925322 tp!925324))))

(declare-fun b!2885310 () Bool)

(assert (=> b!2885310 (= e!1824706 tp_is_empty!15203)))

(assert (=> b!2885026 (= tp!925283 e!1824706)))

(assert (= (and b!2885026 (is-ElementMatch!8808 (reg!9137 r!23079))) b!2885310))

(assert (= (and b!2885026 (is-Concat!14129 (reg!9137 r!23079))) b!2885311))

(assert (= (and b!2885026 (is-Star!8808 (reg!9137 r!23079))) b!2885312))

(assert (= (and b!2885026 (is-Union!8808 (reg!9137 r!23079))) b!2885313))

(declare-fun b!2885315 () Bool)

(declare-fun e!1824707 () Bool)

(declare-fun tp!925326 () Bool)

(declare-fun tp!925328 () Bool)

(assert (=> b!2885315 (= e!1824707 (and tp!925326 tp!925328))))

(declare-fun b!2885316 () Bool)

(declare-fun tp!925325 () Bool)

(assert (=> b!2885316 (= e!1824707 tp!925325)))

(declare-fun b!2885317 () Bool)

(declare-fun tp!925327 () Bool)

(declare-fun tp!925329 () Bool)

(assert (=> b!2885317 (= e!1824707 (and tp!925327 tp!925329))))

(declare-fun b!2885314 () Bool)

(assert (=> b!2885314 (= e!1824707 tp_is_empty!15203)))

(assert (=> b!2885019 (= tp!925284 e!1824707)))

(assert (= (and b!2885019 (is-ElementMatch!8808 (regOne!18129 r!23079))) b!2885314))

(assert (= (and b!2885019 (is-Concat!14129 (regOne!18129 r!23079))) b!2885315))

(assert (= (and b!2885019 (is-Star!8808 (regOne!18129 r!23079))) b!2885316))

(assert (= (and b!2885019 (is-Union!8808 (regOne!18129 r!23079))) b!2885317))

(declare-fun b!2885319 () Bool)

(declare-fun e!1824708 () Bool)

(declare-fun tp!925331 () Bool)

(declare-fun tp!925333 () Bool)

(assert (=> b!2885319 (= e!1824708 (and tp!925331 tp!925333))))

(declare-fun b!2885320 () Bool)

(declare-fun tp!925330 () Bool)

(assert (=> b!2885320 (= e!1824708 tp!925330)))

(declare-fun b!2885321 () Bool)

(declare-fun tp!925332 () Bool)

(declare-fun tp!925334 () Bool)

(assert (=> b!2885321 (= e!1824708 (and tp!925332 tp!925334))))

(declare-fun b!2885318 () Bool)

(assert (=> b!2885318 (= e!1824708 tp_is_empty!15203)))

(assert (=> b!2885019 (= tp!925281 e!1824708)))

(assert (= (and b!2885019 (is-ElementMatch!8808 (regTwo!18129 r!23079))) b!2885318))

(assert (= (and b!2885019 (is-Concat!14129 (regTwo!18129 r!23079))) b!2885319))

(assert (= (and b!2885019 (is-Star!8808 (regTwo!18129 r!23079))) b!2885320))

(assert (= (and b!2885019 (is-Union!8808 (regTwo!18129 r!23079))) b!2885321))

(push 1)

(assert (not b!2885223))

(assert (not b!2885256))

(assert (not b!2885107))

(assert (not b!2885304))

(assert (not b!2885241))

(assert (not d!833882))

(assert (not b!2885227))

(assert (not b!2885238))

(assert (not b!2885242))

(assert (not bm!187085))

(assert (not d!833876))

(assert (not b!2885225))

(assert (not b!2885091))

(assert (not bm!187066))

(assert (not bm!187076))

(assert (not b!2885237))

(assert (not bm!187075))

(assert (not b!2885319))

(assert (not b!2885262))

(assert (not d!833894))

(assert (not b!2885283))

(assert (not bm!187087))

(assert (not b!2885316))

(assert (not b!2885317))

(assert (not b!2885311))

(assert (not b!2885259))

(assert (not b!2885251))

(assert (not bm!187083))

(assert (not b!2885150))

(assert (not b!2885245))

(assert (not bm!187084))

(assert (not b!2885309))

(assert (not b!2885228))

(assert (not b!2885224))

(assert (not d!833888))

(assert (not b!2885252))

(assert (not b!2885312))

(assert (not b!2885315))

(assert (not bm!187082))

(assert (not b!2885320))

(assert (not b!2885281))

(assert (not d!833890))

(assert tp_is_empty!15203)

(assert (not bm!187067))

(assert (not d!833902))

(assert (not b!2885282))

(assert (not b!2885313))

(assert (not b!2885307))

(assert (not b!2885303))

(assert (not b!2885239))

(assert (not bm!187065))

(assert (not b!2885231))

(assert (not b!2885286))

(assert (not b!2885308))

(assert (not b!2885255))

(assert (not b!2885305))

(assert (not b!2885285))

(assert (not b!2885253))

(assert (not b!2885289))

(assert (not d!833898))

(assert (not bm!187086))

(assert (not bm!187064))

(assert (not b!2885321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

