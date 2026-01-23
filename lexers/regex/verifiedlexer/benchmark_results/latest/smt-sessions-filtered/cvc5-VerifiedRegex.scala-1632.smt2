; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83280 () Bool)

(assert start!83280)

(declare-fun b!930090 () Bool)

(declare-fun e!604585 () Bool)

(declare-fun tp!288849 () Bool)

(declare-fun tp!288850 () Bool)

(assert (=> b!930090 (= e!604585 (and tp!288849 tp!288850))))

(declare-fun b!930091 () Bool)

(declare-fun e!604580 () Bool)

(declare-datatypes ((C!5614 0))(
  ( (C!5615 (val!3055 Int)) )
))
(declare-datatypes ((Regex!2522 0))(
  ( (ElementMatch!2522 (c!151143 C!5614)) (Concat!4355 (regOne!5556 Regex!2522) (regTwo!5556 Regex!2522)) (EmptyExpr!2522) (Star!2522 (reg!2851 Regex!2522)) (EmptyLang!2522) (Union!2522 (regOne!5557 Regex!2522) (regTwo!5557 Regex!2522)) )
))
(declare-fun r!15766 () Regex!2522)

(declare-fun validRegex!991 (Regex!2522) Bool)

(assert (=> b!930091 (= e!604580 (validRegex!991 (regOne!5557 r!15766)))))

(declare-fun e!604583 () Bool)

(assert (=> b!930091 e!604583))

(declare-fun res!422558 () Bool)

(assert (=> b!930091 (=> res!422558 e!604583)))

(declare-fun lt!340092 () Regex!2522)

(declare-datatypes ((List!9752 0))(
  ( (Nil!9736) (Cons!9736 (h!15137 C!5614) (t!100798 List!9752)) )
))
(declare-fun s!10566 () List!9752)

(declare-fun matchR!1060 (Regex!2522 List!9752) Bool)

(assert (=> b!930091 (= res!422558 (matchR!1060 lt!340092 s!10566))))

(declare-datatypes ((Unit!14663 0))(
  ( (Unit!14664) )
))
(declare-fun lt!340091 () Unit!14663)

(declare-fun lt!340087 () Regex!2522)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!39 (Regex!2522 Regex!2522 List!9752) Unit!14663)

(assert (=> b!930091 (= lt!340091 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!39 lt!340092 lt!340087 s!10566))))

(declare-fun lt!340088 () Regex!2522)

(declare-fun matchRSpec!323 (Regex!2522 List!9752) Bool)

(assert (=> b!930091 (matchRSpec!323 lt!340088 s!10566)))

(declare-fun lt!340090 () Unit!14663)

(declare-fun mainMatchTheorem!323 (Regex!2522 List!9752) Unit!14663)

(assert (=> b!930091 (= lt!340090 (mainMatchTheorem!323 lt!340088 s!10566))))

(declare-fun b!930092 () Bool)

(declare-fun tp_is_empty!4687 () Bool)

(assert (=> b!930092 (= e!604585 tp_is_empty!4687)))

(declare-fun b!930093 () Bool)

(declare-fun e!604584 () Bool)

(declare-fun tp!288846 () Bool)

(assert (=> b!930093 (= e!604584 (and tp_is_empty!4687 tp!288846))))

(declare-fun b!930094 () Bool)

(declare-fun e!604582 () Bool)

(declare-fun e!604581 () Bool)

(assert (=> b!930094 (= e!604582 (not e!604581))))

(declare-fun res!422557 () Bool)

(assert (=> b!930094 (=> res!422557 e!604581)))

(declare-fun lt!340089 () Bool)

(assert (=> b!930094 (= res!422557 (or lt!340089 (and (is-Concat!4355 r!15766) (is-EmptyExpr!2522 (regOne!5556 r!15766))) (and (is-Concat!4355 r!15766) (is-EmptyExpr!2522 (regTwo!5556 r!15766))) (is-Concat!4355 r!15766) (not (is-Union!2522 r!15766))))))

(assert (=> b!930094 (= lt!340089 (matchRSpec!323 r!15766 s!10566))))

(assert (=> b!930094 (= lt!340089 (matchR!1060 r!15766 s!10566))))

(declare-fun lt!340086 () Unit!14663)

(assert (=> b!930094 (= lt!340086 (mainMatchTheorem!323 r!15766 s!10566))))

(declare-fun res!422555 () Bool)

(assert (=> start!83280 (=> (not res!422555) (not e!604582))))

(assert (=> start!83280 (= res!422555 (validRegex!991 r!15766))))

(assert (=> start!83280 e!604582))

(assert (=> start!83280 e!604585))

(assert (=> start!83280 e!604584))

(declare-fun b!930095 () Bool)

(declare-fun tp!288845 () Bool)

(declare-fun tp!288848 () Bool)

(assert (=> b!930095 (= e!604585 (and tp!288845 tp!288848))))

(declare-fun b!930096 () Bool)

(assert (=> b!930096 (= e!604583 (matchR!1060 lt!340087 s!10566))))

(declare-fun b!930097 () Bool)

(assert (=> b!930097 (= e!604581 e!604580)))

(declare-fun res!422556 () Bool)

(assert (=> b!930097 (=> res!422556 e!604580)))

(assert (=> b!930097 (= res!422556 (not (matchR!1060 lt!340088 s!10566)))))

(assert (=> b!930097 (= lt!340088 (Union!2522 lt!340092 lt!340087))))

(declare-fun removeUselessConcat!197 (Regex!2522) Regex!2522)

(assert (=> b!930097 (= lt!340087 (removeUselessConcat!197 (regTwo!5557 r!15766)))))

(assert (=> b!930097 (= lt!340092 (removeUselessConcat!197 (regOne!5557 r!15766)))))

(declare-fun b!930098 () Bool)

(declare-fun tp!288847 () Bool)

(assert (=> b!930098 (= e!604585 tp!288847)))

(assert (= (and start!83280 res!422555) b!930094))

(assert (= (and b!930094 (not res!422557)) b!930097))

(assert (= (and b!930097 (not res!422556)) b!930091))

(assert (= (and b!930091 (not res!422558)) b!930096))

(assert (= (and start!83280 (is-ElementMatch!2522 r!15766)) b!930092))

(assert (= (and start!83280 (is-Concat!4355 r!15766)) b!930090))

(assert (= (and start!83280 (is-Star!2522 r!15766)) b!930098))

(assert (= (and start!83280 (is-Union!2522 r!15766)) b!930095))

(assert (= (and start!83280 (is-Cons!9736 s!10566)) b!930093))

(declare-fun m!1152805 () Bool)

(assert (=> b!930096 m!1152805))

(declare-fun m!1152807 () Bool)

(assert (=> start!83280 m!1152807))

(declare-fun m!1152809 () Bool)

(assert (=> b!930091 m!1152809))

(declare-fun m!1152811 () Bool)

(assert (=> b!930091 m!1152811))

(declare-fun m!1152813 () Bool)

(assert (=> b!930091 m!1152813))

(declare-fun m!1152815 () Bool)

(assert (=> b!930091 m!1152815))

(declare-fun m!1152817 () Bool)

(assert (=> b!930091 m!1152817))

(declare-fun m!1152819 () Bool)

(assert (=> b!930097 m!1152819))

(declare-fun m!1152821 () Bool)

(assert (=> b!930097 m!1152821))

(declare-fun m!1152823 () Bool)

(assert (=> b!930097 m!1152823))

(declare-fun m!1152825 () Bool)

(assert (=> b!930094 m!1152825))

(declare-fun m!1152827 () Bool)

(assert (=> b!930094 m!1152827))

(declare-fun m!1152829 () Bool)

(assert (=> b!930094 m!1152829))

(push 1)

(assert (not b!930096))

(assert (not start!83280))

(assert (not b!930093))

(assert tp_is_empty!4687)

(assert (not b!930095))

(assert (not b!930090))

(assert (not b!930098))

(assert (not b!930091))

(assert (not b!930094))

(assert (not b!930097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!930154 () Bool)

(declare-fun e!604618 () Bool)

(declare-fun nullable!718 (Regex!2522) Bool)

(assert (=> b!930154 (= e!604618 (nullable!718 lt!340088))))

(declare-fun b!930155 () Bool)

(declare-fun res!422587 () Bool)

(declare-fun e!604623 () Bool)

(assert (=> b!930155 (=> res!422587 e!604623)))

(assert (=> b!930155 (= res!422587 (not (is-ElementMatch!2522 lt!340088)))))

(declare-fun e!604619 () Bool)

(assert (=> b!930155 (= e!604619 e!604623)))

(declare-fun b!930156 () Bool)

(declare-fun e!604624 () Bool)

(declare-fun head!1681 (List!9752) C!5614)

(assert (=> b!930156 (= e!604624 (not (= (head!1681 s!10566) (c!151143 lt!340088))))))

(declare-fun b!930157 () Bool)

(declare-fun e!604622 () Bool)

(assert (=> b!930157 (= e!604623 e!604622)))

(declare-fun res!422590 () Bool)

(assert (=> b!930157 (=> (not res!422590) (not e!604622))))

(declare-fun lt!340116 () Bool)

(assert (=> b!930157 (= res!422590 (not lt!340116))))

(declare-fun b!930158 () Bool)

(declare-fun e!604621 () Bool)

(assert (=> b!930158 (= e!604621 e!604619)))

(declare-fun c!151152 () Bool)

(assert (=> b!930158 (= c!151152 (is-EmptyLang!2522 lt!340088))))

(declare-fun b!930159 () Bool)

(declare-fun e!604620 () Bool)

(assert (=> b!930159 (= e!604620 (= (head!1681 s!10566) (c!151143 lt!340088)))))

(declare-fun b!930160 () Bool)

(declare-fun res!422589 () Bool)

(assert (=> b!930160 (=> (not res!422589) (not e!604620))))

(declare-fun call!57254 () Bool)

(assert (=> b!930160 (= res!422589 (not call!57254))))

(declare-fun b!930161 () Bool)

(declare-fun res!422593 () Bool)

(assert (=> b!930161 (=> (not res!422593) (not e!604620))))

(declare-fun isEmpty!5991 (List!9752) Bool)

(declare-fun tail!1243 (List!9752) List!9752)

(assert (=> b!930161 (= res!422593 (isEmpty!5991 (tail!1243 s!10566)))))

(declare-fun b!930162 () Bool)

(assert (=> b!930162 (= e!604619 (not lt!340116))))

(declare-fun b!930163 () Bool)

(declare-fun res!422594 () Bool)

(assert (=> b!930163 (=> res!422594 e!604623)))

(assert (=> b!930163 (= res!422594 e!604620)))

(declare-fun res!422592 () Bool)

(assert (=> b!930163 (=> (not res!422592) (not e!604620))))

(assert (=> b!930163 (= res!422592 lt!340116)))

(declare-fun b!930164 () Bool)

(assert (=> b!930164 (= e!604621 (= lt!340116 call!57254))))

(declare-fun b!930165 () Bool)

(declare-fun res!422588 () Bool)

(assert (=> b!930165 (=> res!422588 e!604624)))

(assert (=> b!930165 (= res!422588 (not (isEmpty!5991 (tail!1243 s!10566))))))

(declare-fun b!930166 () Bool)

(declare-fun derivativeStep!528 (Regex!2522 C!5614) Regex!2522)

(assert (=> b!930166 (= e!604618 (matchR!1060 (derivativeStep!528 lt!340088 (head!1681 s!10566)) (tail!1243 s!10566)))))

(declare-fun d!281363 () Bool)

(assert (=> d!281363 e!604621))

(declare-fun c!151153 () Bool)

(assert (=> d!281363 (= c!151153 (is-EmptyExpr!2522 lt!340088))))

(assert (=> d!281363 (= lt!340116 e!604618)))

(declare-fun c!151151 () Bool)

(assert (=> d!281363 (= c!151151 (isEmpty!5991 s!10566))))

(assert (=> d!281363 (validRegex!991 lt!340088)))

(assert (=> d!281363 (= (matchR!1060 lt!340088 s!10566) lt!340116)))

(declare-fun bm!57249 () Bool)

(assert (=> bm!57249 (= call!57254 (isEmpty!5991 s!10566))))

(declare-fun b!930167 () Bool)

(assert (=> b!930167 (= e!604622 e!604624)))

(declare-fun res!422591 () Bool)

(assert (=> b!930167 (=> res!422591 e!604624)))

(assert (=> b!930167 (= res!422591 call!57254)))

(assert (= (and d!281363 c!151151) b!930154))

(assert (= (and d!281363 (not c!151151)) b!930166))

(assert (= (and d!281363 c!151153) b!930164))

(assert (= (and d!281363 (not c!151153)) b!930158))

(assert (= (and b!930158 c!151152) b!930162))

(assert (= (and b!930158 (not c!151152)) b!930155))

(assert (= (and b!930155 (not res!422587)) b!930163))

(assert (= (and b!930163 res!422592) b!930160))

(assert (= (and b!930160 res!422589) b!930161))

(assert (= (and b!930161 res!422593) b!930159))

(assert (= (and b!930163 (not res!422594)) b!930157))

(assert (= (and b!930157 res!422590) b!930167))

(assert (= (and b!930167 (not res!422591)) b!930165))

(assert (= (and b!930165 (not res!422588)) b!930156))

(assert (= (or b!930164 b!930160 b!930167) bm!57249))

(declare-fun m!1152857 () Bool)

(assert (=> b!930156 m!1152857))

(declare-fun m!1152859 () Bool)

(assert (=> b!930161 m!1152859))

(assert (=> b!930161 m!1152859))

(declare-fun m!1152861 () Bool)

(assert (=> b!930161 m!1152861))

(declare-fun m!1152863 () Bool)

(assert (=> b!930154 m!1152863))

(assert (=> b!930165 m!1152859))

(assert (=> b!930165 m!1152859))

(assert (=> b!930165 m!1152861))

(declare-fun m!1152865 () Bool)

(assert (=> bm!57249 m!1152865))

(assert (=> b!930159 m!1152857))

(assert (=> d!281363 m!1152865))

(declare-fun m!1152867 () Bool)

(assert (=> d!281363 m!1152867))

(assert (=> b!930166 m!1152857))

(assert (=> b!930166 m!1152857))

(declare-fun m!1152869 () Bool)

(assert (=> b!930166 m!1152869))

(assert (=> b!930166 m!1152859))

(assert (=> b!930166 m!1152869))

(assert (=> b!930166 m!1152859))

(declare-fun m!1152871 () Bool)

(assert (=> b!930166 m!1152871))

(assert (=> b!930097 d!281363))

(declare-fun b!930212 () Bool)

(declare-fun e!604652 () Bool)

(declare-fun lt!340119 () Regex!2522)

(assert (=> b!930212 (= e!604652 (= (nullable!718 lt!340119) (nullable!718 (regTwo!5557 r!15766))))))

(declare-fun bm!57260 () Bool)

(declare-fun call!57268 () Regex!2522)

(declare-fun call!57265 () Regex!2522)

(assert (=> bm!57260 (= call!57268 call!57265)))

(declare-fun bm!57261 () Bool)

(declare-fun call!57269 () Regex!2522)

(assert (=> bm!57261 (= call!57269 call!57268)))

(declare-fun c!151173 () Bool)

(declare-fun c!151175 () Bool)

(declare-fun c!151174 () Bool)

(declare-fun c!151172 () Bool)

(declare-fun bm!57262 () Bool)

(assert (=> bm!57262 (= call!57265 (removeUselessConcat!197 (ite c!151174 (regTwo!5556 (regTwo!5557 r!15766)) (ite c!151172 (regOne!5556 (regTwo!5557 r!15766)) (ite c!151173 (regTwo!5556 (regTwo!5557 r!15766)) (ite c!151175 (regTwo!5557 (regTwo!5557 r!15766)) (reg!2851 (regTwo!5557 r!15766))))))))))

(declare-fun b!930213 () Bool)

(declare-fun e!604655 () Regex!2522)

(declare-fun call!57266 () Regex!2522)

(assert (=> b!930213 (= e!604655 (Concat!4355 call!57266 call!57269))))

(declare-fun b!930215 () Bool)

(declare-fun e!604654 () Regex!2522)

(assert (=> b!930215 (= e!604655 e!604654)))

(assert (=> b!930215 (= c!151175 (is-Union!2522 (regTwo!5557 r!15766)))))

(declare-fun b!930216 () Bool)

(declare-fun e!604653 () Regex!2522)

(assert (=> b!930216 (= e!604653 call!57268)))

(declare-fun b!930217 () Bool)

(declare-fun e!604651 () Regex!2522)

(assert (=> b!930217 (= e!604651 e!604653)))

(assert (=> b!930217 (= c!151172 (and (is-Concat!4355 (regTwo!5557 r!15766)) (is-EmptyExpr!2522 (regTwo!5556 (regTwo!5557 r!15766)))))))

(declare-fun b!930218 () Bool)

(declare-fun call!57267 () Regex!2522)

(assert (=> b!930218 (= e!604654 (Union!2522 call!57266 call!57267))))

(declare-fun b!930219 () Bool)

(declare-fun e!604656 () Regex!2522)

(assert (=> b!930219 (= e!604656 (regTwo!5557 r!15766))))

(declare-fun b!930220 () Bool)

(assert (=> b!930220 (= c!151173 (is-Concat!4355 (regTwo!5557 r!15766)))))

(assert (=> b!930220 (= e!604653 e!604655)))

(declare-fun bm!57263 () Bool)

(assert (=> bm!57263 (= call!57267 call!57269)))

(declare-fun b!930214 () Bool)

(assert (=> b!930214 (= e!604656 (Star!2522 call!57267))))

(declare-fun d!281365 () Bool)

(assert (=> d!281365 e!604652))

(declare-fun res!422603 () Bool)

(assert (=> d!281365 (=> (not res!422603) (not e!604652))))

(assert (=> d!281365 (= res!422603 (validRegex!991 lt!340119))))

(assert (=> d!281365 (= lt!340119 e!604651)))

(assert (=> d!281365 (= c!151174 (and (is-Concat!4355 (regTwo!5557 r!15766)) (is-EmptyExpr!2522 (regOne!5556 (regTwo!5557 r!15766)))))))

(assert (=> d!281365 (validRegex!991 (regTwo!5557 r!15766))))

(assert (=> d!281365 (= (removeUselessConcat!197 (regTwo!5557 r!15766)) lt!340119)))

(declare-fun b!930221 () Bool)

(assert (=> b!930221 (= e!604651 call!57265)))

(declare-fun b!930222 () Bool)

(declare-fun c!151176 () Bool)

(assert (=> b!930222 (= c!151176 (is-Star!2522 (regTwo!5557 r!15766)))))

(assert (=> b!930222 (= e!604654 e!604656)))

(declare-fun bm!57264 () Bool)

(assert (=> bm!57264 (= call!57266 (removeUselessConcat!197 (ite c!151173 (regOne!5556 (regTwo!5557 r!15766)) (regOne!5557 (regTwo!5557 r!15766)))))))

(assert (= (and d!281365 c!151174) b!930221))

(assert (= (and d!281365 (not c!151174)) b!930217))

(assert (= (and b!930217 c!151172) b!930216))

(assert (= (and b!930217 (not c!151172)) b!930220))

(assert (= (and b!930220 c!151173) b!930213))

(assert (= (and b!930220 (not c!151173)) b!930215))

(assert (= (and b!930215 c!151175) b!930218))

(assert (= (and b!930215 (not c!151175)) b!930222))

(assert (= (and b!930222 c!151176) b!930214))

(assert (= (and b!930222 (not c!151176)) b!930219))

(assert (= (or b!930218 b!930214) bm!57263))

(assert (= (or b!930213 bm!57263) bm!57261))

(assert (= (or b!930213 b!930218) bm!57264))

(assert (= (or b!930216 bm!57261) bm!57260))

(assert (= (or b!930221 bm!57260) bm!57262))

(assert (= (and d!281365 res!422603) b!930212))

(declare-fun m!1152873 () Bool)

(assert (=> b!930212 m!1152873))

(declare-fun m!1152875 () Bool)

(assert (=> b!930212 m!1152875))

(declare-fun m!1152877 () Bool)

(assert (=> bm!57262 m!1152877))

(declare-fun m!1152879 () Bool)

(assert (=> d!281365 m!1152879))

(declare-fun m!1152881 () Bool)

(assert (=> d!281365 m!1152881))

(declare-fun m!1152883 () Bool)

(assert (=> bm!57264 m!1152883))

(assert (=> b!930097 d!281365))

(declare-fun b!930223 () Bool)

(declare-fun e!604658 () Bool)

(declare-fun lt!340120 () Regex!2522)

(assert (=> b!930223 (= e!604658 (= (nullable!718 lt!340120) (nullable!718 (regOne!5557 r!15766))))))

(declare-fun bm!57265 () Bool)

(declare-fun call!57273 () Regex!2522)

(declare-fun call!57270 () Regex!2522)

(assert (=> bm!57265 (= call!57273 call!57270)))

(declare-fun bm!57266 () Bool)

(declare-fun call!57274 () Regex!2522)

(assert (=> bm!57266 (= call!57274 call!57273)))

(declare-fun bm!57267 () Bool)

(declare-fun c!151178 () Bool)

(declare-fun c!151179 () Bool)

(declare-fun c!151177 () Bool)

(declare-fun c!151180 () Bool)

(assert (=> bm!57267 (= call!57270 (removeUselessConcat!197 (ite c!151179 (regTwo!5556 (regOne!5557 r!15766)) (ite c!151177 (regOne!5556 (regOne!5557 r!15766)) (ite c!151178 (regTwo!5556 (regOne!5557 r!15766)) (ite c!151180 (regTwo!5557 (regOne!5557 r!15766)) (reg!2851 (regOne!5557 r!15766))))))))))

(declare-fun b!930224 () Bool)

(declare-fun e!604661 () Regex!2522)

(declare-fun call!57271 () Regex!2522)

(assert (=> b!930224 (= e!604661 (Concat!4355 call!57271 call!57274))))

(declare-fun b!930226 () Bool)

(declare-fun e!604660 () Regex!2522)

(assert (=> b!930226 (= e!604661 e!604660)))

(assert (=> b!930226 (= c!151180 (is-Union!2522 (regOne!5557 r!15766)))))

(declare-fun b!930227 () Bool)

(declare-fun e!604659 () Regex!2522)

(assert (=> b!930227 (= e!604659 call!57273)))

(declare-fun b!930228 () Bool)

(declare-fun e!604657 () Regex!2522)

(assert (=> b!930228 (= e!604657 e!604659)))

(assert (=> b!930228 (= c!151177 (and (is-Concat!4355 (regOne!5557 r!15766)) (is-EmptyExpr!2522 (regTwo!5556 (regOne!5557 r!15766)))))))

(declare-fun b!930229 () Bool)

(declare-fun call!57272 () Regex!2522)

(assert (=> b!930229 (= e!604660 (Union!2522 call!57271 call!57272))))

(declare-fun b!930230 () Bool)

(declare-fun e!604662 () Regex!2522)

(assert (=> b!930230 (= e!604662 (regOne!5557 r!15766))))

(declare-fun b!930231 () Bool)

(assert (=> b!930231 (= c!151178 (is-Concat!4355 (regOne!5557 r!15766)))))

(assert (=> b!930231 (= e!604659 e!604661)))

(declare-fun bm!57268 () Bool)

(assert (=> bm!57268 (= call!57272 call!57274)))

(declare-fun b!930225 () Bool)

(assert (=> b!930225 (= e!604662 (Star!2522 call!57272))))

(declare-fun d!281367 () Bool)

(assert (=> d!281367 e!604658))

(declare-fun res!422604 () Bool)

(assert (=> d!281367 (=> (not res!422604) (not e!604658))))

(assert (=> d!281367 (= res!422604 (validRegex!991 lt!340120))))

(assert (=> d!281367 (= lt!340120 e!604657)))

(assert (=> d!281367 (= c!151179 (and (is-Concat!4355 (regOne!5557 r!15766)) (is-EmptyExpr!2522 (regOne!5556 (regOne!5557 r!15766)))))))

(assert (=> d!281367 (validRegex!991 (regOne!5557 r!15766))))

(assert (=> d!281367 (= (removeUselessConcat!197 (regOne!5557 r!15766)) lt!340120)))

(declare-fun b!930232 () Bool)

(assert (=> b!930232 (= e!604657 call!57270)))

(declare-fun b!930233 () Bool)

(declare-fun c!151181 () Bool)

(assert (=> b!930233 (= c!151181 (is-Star!2522 (regOne!5557 r!15766)))))

(assert (=> b!930233 (= e!604660 e!604662)))

(declare-fun bm!57269 () Bool)

(assert (=> bm!57269 (= call!57271 (removeUselessConcat!197 (ite c!151178 (regOne!5556 (regOne!5557 r!15766)) (regOne!5557 (regOne!5557 r!15766)))))))

(assert (= (and d!281367 c!151179) b!930232))

(assert (= (and d!281367 (not c!151179)) b!930228))

(assert (= (and b!930228 c!151177) b!930227))

(assert (= (and b!930228 (not c!151177)) b!930231))

(assert (= (and b!930231 c!151178) b!930224))

(assert (= (and b!930231 (not c!151178)) b!930226))

(assert (= (and b!930226 c!151180) b!930229))

(assert (= (and b!930226 (not c!151180)) b!930233))

(assert (= (and b!930233 c!151181) b!930225))

(assert (= (and b!930233 (not c!151181)) b!930230))

(assert (= (or b!930229 b!930225) bm!57268))

(assert (= (or b!930224 bm!57268) bm!57266))

(assert (= (or b!930224 b!930229) bm!57269))

(assert (= (or b!930227 bm!57266) bm!57265))

(assert (= (or b!930232 bm!57265) bm!57267))

(assert (= (and d!281367 res!422604) b!930223))

(declare-fun m!1152885 () Bool)

(assert (=> b!930223 m!1152885))

(declare-fun m!1152887 () Bool)

(assert (=> b!930223 m!1152887))

(declare-fun m!1152889 () Bool)

(assert (=> bm!57267 m!1152889))

(declare-fun m!1152891 () Bool)

(assert (=> d!281367 m!1152891))

(assert (=> d!281367 m!1152813))

(declare-fun m!1152893 () Bool)

(assert (=> bm!57269 m!1152893))

(assert (=> b!930097 d!281367))

(declare-fun b!930276 () Bool)

(assert (=> b!930276 true))

(assert (=> b!930276 true))

(declare-fun bs!237658 () Bool)

(declare-fun b!930268 () Bool)

(assert (= bs!237658 (and b!930268 b!930276)))

(declare-fun lambda!30778 () Int)

(declare-fun lambda!30777 () Int)

(assert (=> bs!237658 (not (= lambda!30778 lambda!30777))))

(assert (=> b!930268 true))

(assert (=> b!930268 true))

(declare-fun d!281369 () Bool)

(declare-fun c!151192 () Bool)

(assert (=> d!281369 (= c!151192 (is-EmptyExpr!2522 r!15766))))

(declare-fun e!604684 () Bool)

(assert (=> d!281369 (= (matchRSpec!323 r!15766 s!10566) e!604684)))

(declare-fun b!930266 () Bool)

(declare-fun e!604683 () Bool)

(assert (=> b!930266 (= e!604684 e!604683)))

(declare-fun res!422623 () Bool)

(assert (=> b!930266 (= res!422623 (not (is-EmptyLang!2522 r!15766)))))

(assert (=> b!930266 (=> (not res!422623) (not e!604683))))

(declare-fun b!930267 () Bool)

(declare-fun e!604685 () Bool)

(declare-fun e!604681 () Bool)

(assert (=> b!930267 (= e!604685 e!604681)))

(declare-fun c!151193 () Bool)

(assert (=> b!930267 (= c!151193 (is-Star!2522 r!15766))))

(declare-fun call!57280 () Bool)

(assert (=> b!930268 (= e!604681 call!57280)))

(declare-fun b!930269 () Bool)

(declare-fun res!422621 () Bool)

(declare-fun e!604686 () Bool)

(assert (=> b!930269 (=> res!422621 e!604686)))

(declare-fun call!57279 () Bool)

(assert (=> b!930269 (= res!422621 call!57279)))

(assert (=> b!930269 (= e!604681 e!604686)))

(declare-fun b!930270 () Bool)

(declare-fun e!604682 () Bool)

(assert (=> b!930270 (= e!604685 e!604682)))

(declare-fun res!422622 () Bool)

(assert (=> b!930270 (= res!422622 (matchRSpec!323 (regOne!5557 r!15766) s!10566))))

(assert (=> b!930270 (=> res!422622 e!604682)))

(declare-fun b!930271 () Bool)

(assert (=> b!930271 (= e!604682 (matchRSpec!323 (regTwo!5557 r!15766) s!10566))))

(declare-fun b!930272 () Bool)

(declare-fun c!151191 () Bool)

(assert (=> b!930272 (= c!151191 (is-ElementMatch!2522 r!15766))))

(declare-fun e!604687 () Bool)

(assert (=> b!930272 (= e!604683 e!604687)))

(declare-fun b!930273 () Bool)

(assert (=> b!930273 (= e!604684 call!57279)))

(declare-fun b!930274 () Bool)

(declare-fun c!151190 () Bool)

(assert (=> b!930274 (= c!151190 (is-Union!2522 r!15766))))

(assert (=> b!930274 (= e!604687 e!604685)))

(declare-fun bm!57274 () Bool)

(assert (=> bm!57274 (= call!57279 (isEmpty!5991 s!10566))))

(declare-fun b!930275 () Bool)

(assert (=> b!930275 (= e!604687 (= s!10566 (Cons!9736 (c!151143 r!15766) Nil!9736)))))

(declare-fun bm!57275 () Bool)

(declare-fun Exists!289 (Int) Bool)

(assert (=> bm!57275 (= call!57280 (Exists!289 (ite c!151193 lambda!30777 lambda!30778)))))

(assert (=> b!930276 (= e!604686 call!57280)))

(assert (= (and d!281369 c!151192) b!930273))

(assert (= (and d!281369 (not c!151192)) b!930266))

(assert (= (and b!930266 res!422623) b!930272))

(assert (= (and b!930272 c!151191) b!930275))

(assert (= (and b!930272 (not c!151191)) b!930274))

(assert (= (and b!930274 c!151190) b!930270))

(assert (= (and b!930274 (not c!151190)) b!930267))

(assert (= (and b!930270 (not res!422622)) b!930271))

(assert (= (and b!930267 c!151193) b!930269))

(assert (= (and b!930267 (not c!151193)) b!930268))

(assert (= (and b!930269 (not res!422621)) b!930276))

(assert (= (or b!930276 b!930268) bm!57275))

(assert (= (or b!930273 b!930269) bm!57274))

(declare-fun m!1152895 () Bool)

(assert (=> b!930270 m!1152895))

(declare-fun m!1152897 () Bool)

(assert (=> b!930271 m!1152897))

(assert (=> bm!57274 m!1152865))

(declare-fun m!1152899 () Bool)

(assert (=> bm!57275 m!1152899))

(assert (=> b!930094 d!281369))

(declare-fun b!930281 () Bool)

(declare-fun e!604688 () Bool)

(assert (=> b!930281 (= e!604688 (nullable!718 r!15766))))

(declare-fun b!930282 () Bool)

(declare-fun res!422624 () Bool)

(declare-fun e!604693 () Bool)

(assert (=> b!930282 (=> res!422624 e!604693)))

(assert (=> b!930282 (= res!422624 (not (is-ElementMatch!2522 r!15766)))))

(declare-fun e!604689 () Bool)

(assert (=> b!930282 (= e!604689 e!604693)))

(declare-fun b!930283 () Bool)

(declare-fun e!604694 () Bool)

(assert (=> b!930283 (= e!604694 (not (= (head!1681 s!10566) (c!151143 r!15766))))))

(declare-fun b!930284 () Bool)

(declare-fun e!604692 () Bool)

(assert (=> b!930284 (= e!604693 e!604692)))

(declare-fun res!422627 () Bool)

(assert (=> b!930284 (=> (not res!422627) (not e!604692))))

(declare-fun lt!340121 () Bool)

(assert (=> b!930284 (= res!422627 (not lt!340121))))

(declare-fun b!930285 () Bool)

(declare-fun e!604691 () Bool)

(assert (=> b!930285 (= e!604691 e!604689)))

(declare-fun c!151195 () Bool)

(assert (=> b!930285 (= c!151195 (is-EmptyLang!2522 r!15766))))

(declare-fun b!930286 () Bool)

(declare-fun e!604690 () Bool)

(assert (=> b!930286 (= e!604690 (= (head!1681 s!10566) (c!151143 r!15766)))))

(declare-fun b!930287 () Bool)

(declare-fun res!422626 () Bool)

(assert (=> b!930287 (=> (not res!422626) (not e!604690))))

(declare-fun call!57281 () Bool)

(assert (=> b!930287 (= res!422626 (not call!57281))))

(declare-fun b!930288 () Bool)

(declare-fun res!422630 () Bool)

(assert (=> b!930288 (=> (not res!422630) (not e!604690))))

(assert (=> b!930288 (= res!422630 (isEmpty!5991 (tail!1243 s!10566)))))

(declare-fun b!930289 () Bool)

(assert (=> b!930289 (= e!604689 (not lt!340121))))

(declare-fun b!930290 () Bool)

(declare-fun res!422631 () Bool)

(assert (=> b!930290 (=> res!422631 e!604693)))

(assert (=> b!930290 (= res!422631 e!604690)))

(declare-fun res!422629 () Bool)

(assert (=> b!930290 (=> (not res!422629) (not e!604690))))

(assert (=> b!930290 (= res!422629 lt!340121)))

(declare-fun b!930291 () Bool)

(assert (=> b!930291 (= e!604691 (= lt!340121 call!57281))))

(declare-fun b!930292 () Bool)

(declare-fun res!422625 () Bool)

(assert (=> b!930292 (=> res!422625 e!604694)))

(assert (=> b!930292 (= res!422625 (not (isEmpty!5991 (tail!1243 s!10566))))))

(declare-fun b!930293 () Bool)

(assert (=> b!930293 (= e!604688 (matchR!1060 (derivativeStep!528 r!15766 (head!1681 s!10566)) (tail!1243 s!10566)))))

(declare-fun d!281371 () Bool)

(assert (=> d!281371 e!604691))

(declare-fun c!151196 () Bool)

(assert (=> d!281371 (= c!151196 (is-EmptyExpr!2522 r!15766))))

(assert (=> d!281371 (= lt!340121 e!604688)))

(declare-fun c!151194 () Bool)

(assert (=> d!281371 (= c!151194 (isEmpty!5991 s!10566))))

(assert (=> d!281371 (validRegex!991 r!15766)))

(assert (=> d!281371 (= (matchR!1060 r!15766 s!10566) lt!340121)))

(declare-fun bm!57276 () Bool)

(assert (=> bm!57276 (= call!57281 (isEmpty!5991 s!10566))))

(declare-fun b!930294 () Bool)

(assert (=> b!930294 (= e!604692 e!604694)))

(declare-fun res!422628 () Bool)

(assert (=> b!930294 (=> res!422628 e!604694)))

(assert (=> b!930294 (= res!422628 call!57281)))

(assert (= (and d!281371 c!151194) b!930281))

(assert (= (and d!281371 (not c!151194)) b!930293))

(assert (= (and d!281371 c!151196) b!930291))

(assert (= (and d!281371 (not c!151196)) b!930285))

(assert (= (and b!930285 c!151195) b!930289))

(assert (= (and b!930285 (not c!151195)) b!930282))

(assert (= (and b!930282 (not res!422624)) b!930290))

(assert (= (and b!930290 res!422629) b!930287))

(assert (= (and b!930287 res!422626) b!930288))

(assert (= (and b!930288 res!422630) b!930286))

(assert (= (and b!930290 (not res!422631)) b!930284))

(assert (= (and b!930284 res!422627) b!930294))

(assert (= (and b!930294 (not res!422628)) b!930292))

(assert (= (and b!930292 (not res!422625)) b!930283))

(assert (= (or b!930291 b!930287 b!930294) bm!57276))

(assert (=> b!930283 m!1152857))

(assert (=> b!930288 m!1152859))

(assert (=> b!930288 m!1152859))

(assert (=> b!930288 m!1152861))

(declare-fun m!1152901 () Bool)

(assert (=> b!930281 m!1152901))

(assert (=> b!930292 m!1152859))

(assert (=> b!930292 m!1152859))

(assert (=> b!930292 m!1152861))

(assert (=> bm!57276 m!1152865))

(assert (=> b!930286 m!1152857))

(assert (=> d!281371 m!1152865))

(assert (=> d!281371 m!1152807))

(assert (=> b!930293 m!1152857))

(assert (=> b!930293 m!1152857))

(declare-fun m!1152903 () Bool)

(assert (=> b!930293 m!1152903))

(assert (=> b!930293 m!1152859))

(assert (=> b!930293 m!1152903))

(assert (=> b!930293 m!1152859))

(declare-fun m!1152905 () Bool)

(assert (=> b!930293 m!1152905))

(assert (=> b!930094 d!281371))

(declare-fun d!281373 () Bool)

(assert (=> d!281373 (= (matchR!1060 r!15766 s!10566) (matchRSpec!323 r!15766 s!10566))))

(declare-fun lt!340124 () Unit!14663)

(declare-fun choose!5718 (Regex!2522 List!9752) Unit!14663)

(assert (=> d!281373 (= lt!340124 (choose!5718 r!15766 s!10566))))

(assert (=> d!281373 (validRegex!991 r!15766)))

(assert (=> d!281373 (= (mainMatchTheorem!323 r!15766 s!10566) lt!340124)))

(declare-fun bs!237659 () Bool)

(assert (= bs!237659 d!281373))

(assert (=> bs!237659 m!1152827))

(assert (=> bs!237659 m!1152825))

(declare-fun m!1152907 () Bool)

(assert (=> bs!237659 m!1152907))

(assert (=> bs!237659 m!1152807))

(assert (=> b!930094 d!281373))

(declare-fun b!930295 () Bool)

(declare-fun e!604695 () Bool)

(assert (=> b!930295 (= e!604695 (nullable!718 lt!340087))))

(declare-fun b!930296 () Bool)

(declare-fun res!422632 () Bool)

(declare-fun e!604700 () Bool)

(assert (=> b!930296 (=> res!422632 e!604700)))

(assert (=> b!930296 (= res!422632 (not (is-ElementMatch!2522 lt!340087)))))

(declare-fun e!604696 () Bool)

(assert (=> b!930296 (= e!604696 e!604700)))

(declare-fun b!930297 () Bool)

(declare-fun e!604701 () Bool)

(assert (=> b!930297 (= e!604701 (not (= (head!1681 s!10566) (c!151143 lt!340087))))))

(declare-fun b!930298 () Bool)

(declare-fun e!604699 () Bool)

(assert (=> b!930298 (= e!604700 e!604699)))

(declare-fun res!422635 () Bool)

(assert (=> b!930298 (=> (not res!422635) (not e!604699))))

(declare-fun lt!340125 () Bool)

(assert (=> b!930298 (= res!422635 (not lt!340125))))

(declare-fun b!930299 () Bool)

(declare-fun e!604698 () Bool)

(assert (=> b!930299 (= e!604698 e!604696)))

(declare-fun c!151198 () Bool)

(assert (=> b!930299 (= c!151198 (is-EmptyLang!2522 lt!340087))))

(declare-fun b!930300 () Bool)

(declare-fun e!604697 () Bool)

(assert (=> b!930300 (= e!604697 (= (head!1681 s!10566) (c!151143 lt!340087)))))

(declare-fun b!930301 () Bool)

(declare-fun res!422634 () Bool)

(assert (=> b!930301 (=> (not res!422634) (not e!604697))))

(declare-fun call!57282 () Bool)

(assert (=> b!930301 (= res!422634 (not call!57282))))

(declare-fun b!930302 () Bool)

(declare-fun res!422638 () Bool)

(assert (=> b!930302 (=> (not res!422638) (not e!604697))))

(assert (=> b!930302 (= res!422638 (isEmpty!5991 (tail!1243 s!10566)))))

(declare-fun b!930303 () Bool)

(assert (=> b!930303 (= e!604696 (not lt!340125))))

(declare-fun b!930304 () Bool)

(declare-fun res!422639 () Bool)

(assert (=> b!930304 (=> res!422639 e!604700)))

(assert (=> b!930304 (= res!422639 e!604697)))

(declare-fun res!422637 () Bool)

(assert (=> b!930304 (=> (not res!422637) (not e!604697))))

(assert (=> b!930304 (= res!422637 lt!340125)))

(declare-fun b!930305 () Bool)

(assert (=> b!930305 (= e!604698 (= lt!340125 call!57282))))

(declare-fun b!930306 () Bool)

(declare-fun res!422633 () Bool)

(assert (=> b!930306 (=> res!422633 e!604701)))

(assert (=> b!930306 (= res!422633 (not (isEmpty!5991 (tail!1243 s!10566))))))

(declare-fun b!930307 () Bool)

(assert (=> b!930307 (= e!604695 (matchR!1060 (derivativeStep!528 lt!340087 (head!1681 s!10566)) (tail!1243 s!10566)))))

(declare-fun d!281375 () Bool)

(assert (=> d!281375 e!604698))

(declare-fun c!151199 () Bool)

(assert (=> d!281375 (= c!151199 (is-EmptyExpr!2522 lt!340087))))

(assert (=> d!281375 (= lt!340125 e!604695)))

(declare-fun c!151197 () Bool)

(assert (=> d!281375 (= c!151197 (isEmpty!5991 s!10566))))

(assert (=> d!281375 (validRegex!991 lt!340087)))

(assert (=> d!281375 (= (matchR!1060 lt!340087 s!10566) lt!340125)))

(declare-fun bm!57277 () Bool)

(assert (=> bm!57277 (= call!57282 (isEmpty!5991 s!10566))))

(declare-fun b!930308 () Bool)

(assert (=> b!930308 (= e!604699 e!604701)))

(declare-fun res!422636 () Bool)

(assert (=> b!930308 (=> res!422636 e!604701)))

(assert (=> b!930308 (= res!422636 call!57282)))

(assert (= (and d!281375 c!151197) b!930295))

(assert (= (and d!281375 (not c!151197)) b!930307))

(assert (= (and d!281375 c!151199) b!930305))

(assert (= (and d!281375 (not c!151199)) b!930299))

(assert (= (and b!930299 c!151198) b!930303))

(assert (= (and b!930299 (not c!151198)) b!930296))

(assert (= (and b!930296 (not res!422632)) b!930304))

(assert (= (and b!930304 res!422637) b!930301))

(assert (= (and b!930301 res!422634) b!930302))

(assert (= (and b!930302 res!422638) b!930300))

(assert (= (and b!930304 (not res!422639)) b!930298))

(assert (= (and b!930298 res!422635) b!930308))

(assert (= (and b!930308 (not res!422636)) b!930306))

(assert (= (and b!930306 (not res!422633)) b!930297))

(assert (= (or b!930305 b!930301 b!930308) bm!57277))

(assert (=> b!930297 m!1152857))

(assert (=> b!930302 m!1152859))

(assert (=> b!930302 m!1152859))

(assert (=> b!930302 m!1152861))

(declare-fun m!1152909 () Bool)

(assert (=> b!930295 m!1152909))

(assert (=> b!930306 m!1152859))

(assert (=> b!930306 m!1152859))

(assert (=> b!930306 m!1152861))

(assert (=> bm!57277 m!1152865))

(assert (=> b!930300 m!1152857))

(assert (=> d!281375 m!1152865))

(declare-fun m!1152911 () Bool)

(assert (=> d!281375 m!1152911))

(assert (=> b!930307 m!1152857))

(assert (=> b!930307 m!1152857))

(declare-fun m!1152913 () Bool)

(assert (=> b!930307 m!1152913))

(assert (=> b!930307 m!1152859))

(assert (=> b!930307 m!1152913))

(assert (=> b!930307 m!1152859))

(declare-fun m!1152915 () Bool)

(assert (=> b!930307 m!1152915))

(assert (=> b!930096 d!281375))

(declare-fun b!930327 () Bool)

(declare-fun res!422650 () Bool)

(declare-fun e!604717 () Bool)

(assert (=> b!930327 (=> res!422650 e!604717)))

(assert (=> b!930327 (= res!422650 (not (is-Concat!4355 r!15766)))))

(declare-fun e!604718 () Bool)

(assert (=> b!930327 (= e!604718 e!604717)))

(declare-fun bm!57284 () Bool)

(declare-fun call!57290 () Bool)

(declare-fun call!57289 () Bool)

(assert (=> bm!57284 (= call!57290 call!57289)))

(declare-fun b!930328 () Bool)

(declare-fun e!604722 () Bool)

(assert (=> b!930328 (= e!604717 e!604722)))

(declare-fun res!422651 () Bool)

(assert (=> b!930328 (=> (not res!422651) (not e!604722))))

(declare-fun call!57291 () Bool)

(assert (=> b!930328 (= res!422651 call!57291)))

(declare-fun b!930329 () Bool)

(declare-fun e!604716 () Bool)

(declare-fun e!604721 () Bool)

(assert (=> b!930329 (= e!604716 e!604721)))

(declare-fun res!422653 () Bool)

(assert (=> b!930329 (= res!422653 (not (nullable!718 (reg!2851 r!15766))))))

(assert (=> b!930329 (=> (not res!422653) (not e!604721))))

(declare-fun b!930330 () Bool)

(declare-fun res!422654 () Bool)

(declare-fun e!604720 () Bool)

(assert (=> b!930330 (=> (not res!422654) (not e!604720))))

(assert (=> b!930330 (= res!422654 call!57291)))

(assert (=> b!930330 (= e!604718 e!604720)))

(declare-fun b!930331 () Bool)

(assert (=> b!930331 (= e!604720 call!57290)))

(declare-fun b!930332 () Bool)

(assert (=> b!930332 (= e!604722 call!57290)))

(declare-fun b!930333 () Bool)

(assert (=> b!930333 (= e!604716 e!604718)))

(declare-fun c!151205 () Bool)

(assert (=> b!930333 (= c!151205 (is-Union!2522 r!15766))))

(declare-fun b!930334 () Bool)

(declare-fun e!604719 () Bool)

(assert (=> b!930334 (= e!604719 e!604716)))

(declare-fun c!151204 () Bool)

(assert (=> b!930334 (= c!151204 (is-Star!2522 r!15766))))

(declare-fun d!281377 () Bool)

(declare-fun res!422652 () Bool)

(assert (=> d!281377 (=> res!422652 e!604719)))

(assert (=> d!281377 (= res!422652 (is-ElementMatch!2522 r!15766))))

(assert (=> d!281377 (= (validRegex!991 r!15766) e!604719)))

(declare-fun bm!57285 () Bool)

(assert (=> bm!57285 (= call!57291 (validRegex!991 (ite c!151205 (regOne!5557 r!15766) (regOne!5556 r!15766))))))

(declare-fun bm!57286 () Bool)

(assert (=> bm!57286 (= call!57289 (validRegex!991 (ite c!151204 (reg!2851 r!15766) (ite c!151205 (regTwo!5557 r!15766) (regTwo!5556 r!15766)))))))

(declare-fun b!930335 () Bool)

(assert (=> b!930335 (= e!604721 call!57289)))

(assert (= (and d!281377 (not res!422652)) b!930334))

(assert (= (and b!930334 c!151204) b!930329))

(assert (= (and b!930334 (not c!151204)) b!930333))

(assert (= (and b!930329 res!422653) b!930335))

(assert (= (and b!930333 c!151205) b!930330))

(assert (= (and b!930333 (not c!151205)) b!930327))

(assert (= (and b!930330 res!422654) b!930331))

(assert (= (and b!930327 (not res!422650)) b!930328))

(assert (= (and b!930328 res!422651) b!930332))

(assert (= (or b!930331 b!930332) bm!57284))

(assert (= (or b!930330 b!930328) bm!57285))

(assert (= (or b!930335 bm!57284) bm!57286))

(declare-fun m!1152917 () Bool)

(assert (=> b!930329 m!1152917))

(declare-fun m!1152919 () Bool)

(assert (=> bm!57285 m!1152919))

(declare-fun m!1152921 () Bool)

(assert (=> bm!57286 m!1152921))

(assert (=> start!83280 d!281377))

(declare-fun d!281379 () Bool)

(declare-fun e!604728 () Bool)

(assert (=> d!281379 e!604728))

(declare-fun res!422659 () Bool)

(assert (=> d!281379 (=> res!422659 e!604728)))

(assert (=> d!281379 (= res!422659 (matchR!1060 lt!340092 s!10566))))

(declare-fun lt!340128 () Unit!14663)

(declare-fun choose!5719 (Regex!2522 Regex!2522 List!9752) Unit!14663)

(assert (=> d!281379 (= lt!340128 (choose!5719 lt!340092 lt!340087 s!10566))))

(declare-fun e!604727 () Bool)

(assert (=> d!281379 e!604727))

(declare-fun res!422660 () Bool)

(assert (=> d!281379 (=> (not res!422660) (not e!604727))))

(assert (=> d!281379 (= res!422660 (validRegex!991 lt!340092))))

(assert (=> d!281379 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!39 lt!340092 lt!340087 s!10566) lt!340128)))

(declare-fun b!930340 () Bool)

(assert (=> b!930340 (= e!604727 (validRegex!991 lt!340087))))

(declare-fun b!930341 () Bool)

(assert (=> b!930341 (= e!604728 (matchR!1060 lt!340087 s!10566))))

(assert (= (and d!281379 res!422660) b!930340))

(assert (= (and d!281379 (not res!422659)) b!930341))

(assert (=> d!281379 m!1152809))

(declare-fun m!1152923 () Bool)

(assert (=> d!281379 m!1152923))

(declare-fun m!1152925 () Bool)

(assert (=> d!281379 m!1152925))

(assert (=> b!930340 m!1152911))

(assert (=> b!930341 m!1152805))

(assert (=> b!930091 d!281379))

(declare-fun b!930342 () Bool)

(declare-fun res!422661 () Bool)

(declare-fun e!604730 () Bool)

(assert (=> b!930342 (=> res!422661 e!604730)))

(assert (=> b!930342 (= res!422661 (not (is-Concat!4355 (regOne!5557 r!15766))))))

(declare-fun e!604731 () Bool)

(assert (=> b!930342 (= e!604731 e!604730)))

(declare-fun bm!57287 () Bool)

(declare-fun call!57293 () Bool)

(declare-fun call!57292 () Bool)

(assert (=> bm!57287 (= call!57293 call!57292)))

(declare-fun b!930343 () Bool)

(declare-fun e!604735 () Bool)

(assert (=> b!930343 (= e!604730 e!604735)))

(declare-fun res!422662 () Bool)

(assert (=> b!930343 (=> (not res!422662) (not e!604735))))

(declare-fun call!57294 () Bool)

(assert (=> b!930343 (= res!422662 call!57294)))

(declare-fun b!930344 () Bool)

(declare-fun e!604729 () Bool)

(declare-fun e!604734 () Bool)

(assert (=> b!930344 (= e!604729 e!604734)))

(declare-fun res!422664 () Bool)

(assert (=> b!930344 (= res!422664 (not (nullable!718 (reg!2851 (regOne!5557 r!15766)))))))

(assert (=> b!930344 (=> (not res!422664) (not e!604734))))

(declare-fun b!930345 () Bool)

(declare-fun res!422665 () Bool)

(declare-fun e!604733 () Bool)

(assert (=> b!930345 (=> (not res!422665) (not e!604733))))

(assert (=> b!930345 (= res!422665 call!57294)))

(assert (=> b!930345 (= e!604731 e!604733)))

(declare-fun b!930346 () Bool)

(assert (=> b!930346 (= e!604733 call!57293)))

(declare-fun b!930347 () Bool)

(assert (=> b!930347 (= e!604735 call!57293)))

(declare-fun b!930348 () Bool)

(assert (=> b!930348 (= e!604729 e!604731)))

(declare-fun c!151207 () Bool)

(assert (=> b!930348 (= c!151207 (is-Union!2522 (regOne!5557 r!15766)))))

(declare-fun b!930349 () Bool)

(declare-fun e!604732 () Bool)

(assert (=> b!930349 (= e!604732 e!604729)))

(declare-fun c!151206 () Bool)

(assert (=> b!930349 (= c!151206 (is-Star!2522 (regOne!5557 r!15766)))))

(declare-fun d!281381 () Bool)

(declare-fun res!422663 () Bool)

(assert (=> d!281381 (=> res!422663 e!604732)))

(assert (=> d!281381 (= res!422663 (is-ElementMatch!2522 (regOne!5557 r!15766)))))

(assert (=> d!281381 (= (validRegex!991 (regOne!5557 r!15766)) e!604732)))

(declare-fun bm!57288 () Bool)

(assert (=> bm!57288 (= call!57294 (validRegex!991 (ite c!151207 (regOne!5557 (regOne!5557 r!15766)) (regOne!5556 (regOne!5557 r!15766)))))))

(declare-fun bm!57289 () Bool)

(assert (=> bm!57289 (= call!57292 (validRegex!991 (ite c!151206 (reg!2851 (regOne!5557 r!15766)) (ite c!151207 (regTwo!5557 (regOne!5557 r!15766)) (regTwo!5556 (regOne!5557 r!15766))))))))

(declare-fun b!930350 () Bool)

(assert (=> b!930350 (= e!604734 call!57292)))

(assert (= (and d!281381 (not res!422663)) b!930349))

(assert (= (and b!930349 c!151206) b!930344))

(assert (= (and b!930349 (not c!151206)) b!930348))

(assert (= (and b!930344 res!422664) b!930350))

(assert (= (and b!930348 c!151207) b!930345))

(assert (= (and b!930348 (not c!151207)) b!930342))

(assert (= (and b!930345 res!422665) b!930346))

(assert (= (and b!930342 (not res!422661)) b!930343))

(assert (= (and b!930343 res!422662) b!930347))

(assert (= (or b!930346 b!930347) bm!57287))

(assert (= (or b!930345 b!930343) bm!57288))

(assert (= (or b!930350 bm!57287) bm!57289))

(declare-fun m!1152927 () Bool)

(assert (=> b!930344 m!1152927))

(declare-fun m!1152929 () Bool)

(assert (=> bm!57288 m!1152929))

(declare-fun m!1152931 () Bool)

(assert (=> bm!57289 m!1152931))

(assert (=> b!930091 d!281381))

(declare-fun bs!237660 () Bool)

(declare-fun b!930361 () Bool)

(assert (= bs!237660 (and b!930361 b!930276)))

(declare-fun lambda!30779 () Int)

(assert (=> bs!237660 (= (and (= (reg!2851 lt!340088) (reg!2851 r!15766)) (= lt!340088 r!15766)) (= lambda!30779 lambda!30777))))

(declare-fun bs!237661 () Bool)

(assert (= bs!237661 (and b!930361 b!930268)))

(assert (=> bs!237661 (not (= lambda!30779 lambda!30778))))

(assert (=> b!930361 true))

(assert (=> b!930361 true))

(declare-fun bs!237662 () Bool)

(declare-fun b!930353 () Bool)

(assert (= bs!237662 (and b!930353 b!930276)))

(declare-fun lambda!30780 () Int)

(assert (=> bs!237662 (not (= lambda!30780 lambda!30777))))

(declare-fun bs!237663 () Bool)

(assert (= bs!237663 (and b!930353 b!930268)))

(assert (=> bs!237663 (= (and (= (regOne!5556 lt!340088) (regOne!5556 r!15766)) (= (regTwo!5556 lt!340088) (regTwo!5556 r!15766))) (= lambda!30780 lambda!30778))))

(declare-fun bs!237664 () Bool)

(assert (= bs!237664 (and b!930353 b!930361)))

(assert (=> bs!237664 (not (= lambda!30780 lambda!30779))))

(assert (=> b!930353 true))

(assert (=> b!930353 true))

(declare-fun d!281383 () Bool)

(declare-fun c!151210 () Bool)

(assert (=> d!281383 (= c!151210 (is-EmptyExpr!2522 lt!340088))))

(declare-fun e!604739 () Bool)

(assert (=> d!281383 (= (matchRSpec!323 lt!340088 s!10566) e!604739)))

(declare-fun b!930351 () Bool)

(declare-fun e!604738 () Bool)

(assert (=> b!930351 (= e!604739 e!604738)))

(declare-fun res!422668 () Bool)

(assert (=> b!930351 (= res!422668 (not (is-EmptyLang!2522 lt!340088)))))

(assert (=> b!930351 (=> (not res!422668) (not e!604738))))

(declare-fun b!930352 () Bool)

(declare-fun e!604740 () Bool)

(declare-fun e!604736 () Bool)

(assert (=> b!930352 (= e!604740 e!604736)))

(declare-fun c!151211 () Bool)

(assert (=> b!930352 (= c!151211 (is-Star!2522 lt!340088))))

(declare-fun call!57296 () Bool)

(assert (=> b!930353 (= e!604736 call!57296)))

(declare-fun b!930354 () Bool)

(declare-fun res!422666 () Bool)

(declare-fun e!604741 () Bool)

(assert (=> b!930354 (=> res!422666 e!604741)))

(declare-fun call!57295 () Bool)

(assert (=> b!930354 (= res!422666 call!57295)))

(assert (=> b!930354 (= e!604736 e!604741)))

(declare-fun b!930355 () Bool)

(declare-fun e!604737 () Bool)

(assert (=> b!930355 (= e!604740 e!604737)))

(declare-fun res!422667 () Bool)

(assert (=> b!930355 (= res!422667 (matchRSpec!323 (regOne!5557 lt!340088) s!10566))))

(assert (=> b!930355 (=> res!422667 e!604737)))

(declare-fun b!930356 () Bool)

(assert (=> b!930356 (= e!604737 (matchRSpec!323 (regTwo!5557 lt!340088) s!10566))))

(declare-fun b!930357 () Bool)

(declare-fun c!151209 () Bool)

(assert (=> b!930357 (= c!151209 (is-ElementMatch!2522 lt!340088))))

(declare-fun e!604742 () Bool)

(assert (=> b!930357 (= e!604738 e!604742)))

(declare-fun b!930358 () Bool)

(assert (=> b!930358 (= e!604739 call!57295)))

(declare-fun b!930359 () Bool)

(declare-fun c!151208 () Bool)

(assert (=> b!930359 (= c!151208 (is-Union!2522 lt!340088))))

(assert (=> b!930359 (= e!604742 e!604740)))

(declare-fun bm!57290 () Bool)

(assert (=> bm!57290 (= call!57295 (isEmpty!5991 s!10566))))

(declare-fun b!930360 () Bool)

(assert (=> b!930360 (= e!604742 (= s!10566 (Cons!9736 (c!151143 lt!340088) Nil!9736)))))

(declare-fun bm!57291 () Bool)

(assert (=> bm!57291 (= call!57296 (Exists!289 (ite c!151211 lambda!30779 lambda!30780)))))

(assert (=> b!930361 (= e!604741 call!57296)))

(assert (= (and d!281383 c!151210) b!930358))

(assert (= (and d!281383 (not c!151210)) b!930351))

(assert (= (and b!930351 res!422668) b!930357))

(assert (= (and b!930357 c!151209) b!930360))

(assert (= (and b!930357 (not c!151209)) b!930359))

(assert (= (and b!930359 c!151208) b!930355))

(assert (= (and b!930359 (not c!151208)) b!930352))

(assert (= (and b!930355 (not res!422667)) b!930356))

(assert (= (and b!930352 c!151211) b!930354))

(assert (= (and b!930352 (not c!151211)) b!930353))

(assert (= (and b!930354 (not res!422666)) b!930361))

(assert (= (or b!930361 b!930353) bm!57291))

(assert (= (or b!930358 b!930354) bm!57290))

(declare-fun m!1152933 () Bool)

(assert (=> b!930355 m!1152933))

(declare-fun m!1152935 () Bool)

(assert (=> b!930356 m!1152935))

(assert (=> bm!57290 m!1152865))

(declare-fun m!1152937 () Bool)

(assert (=> bm!57291 m!1152937))

(assert (=> b!930091 d!281383))

(declare-fun b!930362 () Bool)

(declare-fun e!604743 () Bool)

(assert (=> b!930362 (= e!604743 (nullable!718 lt!340092))))

(declare-fun b!930363 () Bool)

(declare-fun res!422669 () Bool)

(declare-fun e!604748 () Bool)

(assert (=> b!930363 (=> res!422669 e!604748)))

(assert (=> b!930363 (= res!422669 (not (is-ElementMatch!2522 lt!340092)))))

(declare-fun e!604744 () Bool)

(assert (=> b!930363 (= e!604744 e!604748)))

(declare-fun b!930364 () Bool)

(declare-fun e!604749 () Bool)

(assert (=> b!930364 (= e!604749 (not (= (head!1681 s!10566) (c!151143 lt!340092))))))

(declare-fun b!930365 () Bool)

(declare-fun e!604747 () Bool)

(assert (=> b!930365 (= e!604748 e!604747)))

(declare-fun res!422672 () Bool)

(assert (=> b!930365 (=> (not res!422672) (not e!604747))))

(declare-fun lt!340129 () Bool)

(assert (=> b!930365 (= res!422672 (not lt!340129))))

(declare-fun b!930366 () Bool)

(declare-fun e!604746 () Bool)

(assert (=> b!930366 (= e!604746 e!604744)))

(declare-fun c!151213 () Bool)

(assert (=> b!930366 (= c!151213 (is-EmptyLang!2522 lt!340092))))

(declare-fun b!930367 () Bool)

(declare-fun e!604745 () Bool)

(assert (=> b!930367 (= e!604745 (= (head!1681 s!10566) (c!151143 lt!340092)))))

(declare-fun b!930368 () Bool)

(declare-fun res!422671 () Bool)

(assert (=> b!930368 (=> (not res!422671) (not e!604745))))

(declare-fun call!57297 () Bool)

(assert (=> b!930368 (= res!422671 (not call!57297))))

(declare-fun b!930369 () Bool)

(declare-fun res!422675 () Bool)

(assert (=> b!930369 (=> (not res!422675) (not e!604745))))

(assert (=> b!930369 (= res!422675 (isEmpty!5991 (tail!1243 s!10566)))))

(declare-fun b!930370 () Bool)

(assert (=> b!930370 (= e!604744 (not lt!340129))))

(declare-fun b!930371 () Bool)

(declare-fun res!422676 () Bool)

(assert (=> b!930371 (=> res!422676 e!604748)))

(assert (=> b!930371 (= res!422676 e!604745)))

(declare-fun res!422674 () Bool)

(assert (=> b!930371 (=> (not res!422674) (not e!604745))))

(assert (=> b!930371 (= res!422674 lt!340129)))

(declare-fun b!930372 () Bool)

(assert (=> b!930372 (= e!604746 (= lt!340129 call!57297))))

(declare-fun b!930373 () Bool)

(declare-fun res!422670 () Bool)

(assert (=> b!930373 (=> res!422670 e!604749)))

(assert (=> b!930373 (= res!422670 (not (isEmpty!5991 (tail!1243 s!10566))))))

(declare-fun b!930374 () Bool)

(assert (=> b!930374 (= e!604743 (matchR!1060 (derivativeStep!528 lt!340092 (head!1681 s!10566)) (tail!1243 s!10566)))))

(declare-fun d!281385 () Bool)

(assert (=> d!281385 e!604746))

(declare-fun c!151214 () Bool)

(assert (=> d!281385 (= c!151214 (is-EmptyExpr!2522 lt!340092))))

(assert (=> d!281385 (= lt!340129 e!604743)))

(declare-fun c!151212 () Bool)

(assert (=> d!281385 (= c!151212 (isEmpty!5991 s!10566))))

(assert (=> d!281385 (validRegex!991 lt!340092)))

(assert (=> d!281385 (= (matchR!1060 lt!340092 s!10566) lt!340129)))

(declare-fun bm!57292 () Bool)

(assert (=> bm!57292 (= call!57297 (isEmpty!5991 s!10566))))

(declare-fun b!930375 () Bool)

(assert (=> b!930375 (= e!604747 e!604749)))

(declare-fun res!422673 () Bool)

(assert (=> b!930375 (=> res!422673 e!604749)))

(assert (=> b!930375 (= res!422673 call!57297)))

(assert (= (and d!281385 c!151212) b!930362))

(assert (= (and d!281385 (not c!151212)) b!930374))

(assert (= (and d!281385 c!151214) b!930372))

(assert (= (and d!281385 (not c!151214)) b!930366))

(assert (= (and b!930366 c!151213) b!930370))

(assert (= (and b!930366 (not c!151213)) b!930363))

(assert (= (and b!930363 (not res!422669)) b!930371))

(assert (= (and b!930371 res!422674) b!930368))

(assert (= (and b!930368 res!422671) b!930369))

(assert (= (and b!930369 res!422675) b!930367))

(assert (= (and b!930371 (not res!422676)) b!930365))

(assert (= (and b!930365 res!422672) b!930375))

(assert (= (and b!930375 (not res!422673)) b!930373))

(assert (= (and b!930373 (not res!422670)) b!930364))

(assert (= (or b!930372 b!930368 b!930375) bm!57292))

(assert (=> b!930364 m!1152857))

(assert (=> b!930369 m!1152859))

(assert (=> b!930369 m!1152859))

(assert (=> b!930369 m!1152861))

(declare-fun m!1152939 () Bool)

(assert (=> b!930362 m!1152939))

(assert (=> b!930373 m!1152859))

(assert (=> b!930373 m!1152859))

(assert (=> b!930373 m!1152861))

(assert (=> bm!57292 m!1152865))

(assert (=> b!930367 m!1152857))

(assert (=> d!281385 m!1152865))

(assert (=> d!281385 m!1152925))

(assert (=> b!930374 m!1152857))

(assert (=> b!930374 m!1152857))

(declare-fun m!1152941 () Bool)

(assert (=> b!930374 m!1152941))

(assert (=> b!930374 m!1152859))

(assert (=> b!930374 m!1152941))

(assert (=> b!930374 m!1152859))

(declare-fun m!1152943 () Bool)

(assert (=> b!930374 m!1152943))

(assert (=> b!930091 d!281385))

(declare-fun d!281387 () Bool)

(assert (=> d!281387 (= (matchR!1060 lt!340088 s!10566) (matchRSpec!323 lt!340088 s!10566))))

(declare-fun lt!340130 () Unit!14663)

(assert (=> d!281387 (= lt!340130 (choose!5718 lt!340088 s!10566))))

(assert (=> d!281387 (validRegex!991 lt!340088)))

(assert (=> d!281387 (= (mainMatchTheorem!323 lt!340088 s!10566) lt!340130)))

(declare-fun bs!237665 () Bool)

(assert (= bs!237665 d!281387))

(assert (=> bs!237665 m!1152819))

(assert (=> bs!237665 m!1152811))

(declare-fun m!1152945 () Bool)

(assert (=> bs!237665 m!1152945))

(assert (=> bs!237665 m!1152867))

(assert (=> b!930091 d!281387))

(declare-fun b!930388 () Bool)

(declare-fun e!604752 () Bool)

(declare-fun tp!288880 () Bool)

(assert (=> b!930388 (= e!604752 tp!288880)))

(declare-fun b!930387 () Bool)

(declare-fun tp!288881 () Bool)

(declare-fun tp!288883 () Bool)

(assert (=> b!930387 (= e!604752 (and tp!288881 tp!288883))))

(assert (=> b!930098 (= tp!288847 e!604752)))

(declare-fun b!930389 () Bool)

(declare-fun tp!288882 () Bool)

(declare-fun tp!288879 () Bool)

(assert (=> b!930389 (= e!604752 (and tp!288882 tp!288879))))

(declare-fun b!930386 () Bool)

(assert (=> b!930386 (= e!604752 tp_is_empty!4687)))

(assert (= (and b!930098 (is-ElementMatch!2522 (reg!2851 r!15766))) b!930386))

(assert (= (and b!930098 (is-Concat!4355 (reg!2851 r!15766))) b!930387))

(assert (= (and b!930098 (is-Star!2522 (reg!2851 r!15766))) b!930388))

(assert (= (and b!930098 (is-Union!2522 (reg!2851 r!15766))) b!930389))

(declare-fun b!930394 () Bool)

(declare-fun e!604755 () Bool)

(declare-fun tp!288886 () Bool)

(assert (=> b!930394 (= e!604755 (and tp_is_empty!4687 tp!288886))))

(assert (=> b!930093 (= tp!288846 e!604755)))

(assert (= (and b!930093 (is-Cons!9736 (t!100798 s!10566))) b!930394))

(declare-fun b!930397 () Bool)

(declare-fun e!604756 () Bool)

(declare-fun tp!288888 () Bool)

(assert (=> b!930397 (= e!604756 tp!288888)))

(declare-fun b!930396 () Bool)

(declare-fun tp!288889 () Bool)

(declare-fun tp!288891 () Bool)

(assert (=> b!930396 (= e!604756 (and tp!288889 tp!288891))))

(assert (=> b!930090 (= tp!288849 e!604756)))

(declare-fun b!930398 () Bool)

(declare-fun tp!288890 () Bool)

(declare-fun tp!288887 () Bool)

(assert (=> b!930398 (= e!604756 (and tp!288890 tp!288887))))

(declare-fun b!930395 () Bool)

(assert (=> b!930395 (= e!604756 tp_is_empty!4687)))

(assert (= (and b!930090 (is-ElementMatch!2522 (regOne!5556 r!15766))) b!930395))

(assert (= (and b!930090 (is-Concat!4355 (regOne!5556 r!15766))) b!930396))

(assert (= (and b!930090 (is-Star!2522 (regOne!5556 r!15766))) b!930397))

(assert (= (and b!930090 (is-Union!2522 (regOne!5556 r!15766))) b!930398))

(declare-fun b!930401 () Bool)

(declare-fun e!604757 () Bool)

(declare-fun tp!288893 () Bool)

(assert (=> b!930401 (= e!604757 tp!288893)))

(declare-fun b!930400 () Bool)

(declare-fun tp!288894 () Bool)

(declare-fun tp!288896 () Bool)

(assert (=> b!930400 (= e!604757 (and tp!288894 tp!288896))))

(assert (=> b!930090 (= tp!288850 e!604757)))

(declare-fun b!930402 () Bool)

(declare-fun tp!288895 () Bool)

(declare-fun tp!288892 () Bool)

(assert (=> b!930402 (= e!604757 (and tp!288895 tp!288892))))

(declare-fun b!930399 () Bool)

(assert (=> b!930399 (= e!604757 tp_is_empty!4687)))

(assert (= (and b!930090 (is-ElementMatch!2522 (regTwo!5556 r!15766))) b!930399))

(assert (= (and b!930090 (is-Concat!4355 (regTwo!5556 r!15766))) b!930400))

(assert (= (and b!930090 (is-Star!2522 (regTwo!5556 r!15766))) b!930401))

(assert (= (and b!930090 (is-Union!2522 (regTwo!5556 r!15766))) b!930402))

(declare-fun b!930405 () Bool)

(declare-fun e!604758 () Bool)

(declare-fun tp!288898 () Bool)

(assert (=> b!930405 (= e!604758 tp!288898)))

(declare-fun b!930404 () Bool)

(declare-fun tp!288899 () Bool)

(declare-fun tp!288901 () Bool)

(assert (=> b!930404 (= e!604758 (and tp!288899 tp!288901))))

(assert (=> b!930095 (= tp!288845 e!604758)))

(declare-fun b!930406 () Bool)

(declare-fun tp!288900 () Bool)

(declare-fun tp!288897 () Bool)

(assert (=> b!930406 (= e!604758 (and tp!288900 tp!288897))))

(declare-fun b!930403 () Bool)

(assert (=> b!930403 (= e!604758 tp_is_empty!4687)))

(assert (= (and b!930095 (is-ElementMatch!2522 (regOne!5557 r!15766))) b!930403))

(assert (= (and b!930095 (is-Concat!4355 (regOne!5557 r!15766))) b!930404))

(assert (= (and b!930095 (is-Star!2522 (regOne!5557 r!15766))) b!930405))

(assert (= (and b!930095 (is-Union!2522 (regOne!5557 r!15766))) b!930406))

(declare-fun b!930409 () Bool)

(declare-fun e!604759 () Bool)

(declare-fun tp!288903 () Bool)

(assert (=> b!930409 (= e!604759 tp!288903)))

(declare-fun b!930408 () Bool)

(declare-fun tp!288904 () Bool)

(declare-fun tp!288906 () Bool)

(assert (=> b!930408 (= e!604759 (and tp!288904 tp!288906))))

(assert (=> b!930095 (= tp!288848 e!604759)))

(declare-fun b!930410 () Bool)

(declare-fun tp!288905 () Bool)

(declare-fun tp!288902 () Bool)

(assert (=> b!930410 (= e!604759 (and tp!288905 tp!288902))))

(declare-fun b!930407 () Bool)

(assert (=> b!930407 (= e!604759 tp_is_empty!4687)))

(assert (= (and b!930095 (is-ElementMatch!2522 (regTwo!5557 r!15766))) b!930407))

(assert (= (and b!930095 (is-Concat!4355 (regTwo!5557 r!15766))) b!930408))

(assert (= (and b!930095 (is-Star!2522 (regTwo!5557 r!15766))) b!930409))

(assert (= (and b!930095 (is-Union!2522 (regTwo!5557 r!15766))) b!930410))

(push 1)

(assert (not b!930356))

(assert (not b!930402))

(assert (not bm!57264))

(assert (not b!930165))

(assert (not b!930271))

(assert (not bm!57249))

(assert (not b!930400))

(assert (not b!930410))

(assert (not d!281373))

(assert (not b!930292))

(assert (not bm!57269))

(assert (not d!281379))

(assert (not bm!57291))

(assert (not b!930401))

(assert (not bm!57289))

(assert (not b!930295))

(assert (not d!281375))

(assert (not d!281371))

(assert (not b!930159))

(assert (not b!930409))

(assert (not b!930364))

(assert (not bm!57292))

(assert (not b!930374))

(assert (not b!930369))

(assert (not b!930270))

(assert (not b!930341))

(assert (not b!930394))

(assert (not b!930302))

(assert (not d!281387))

(assert (not bm!57277))

(assert (not d!281367))

(assert (not b!930405))

(assert (not bm!57267))

(assert (not b!930306))

(assert (not b!930166))

(assert (not b!930161))

(assert (not b!930156))

(assert (not b!930154))

(assert (not b!930297))

(assert (not b!930389))

(assert (not b!930300))

(assert (not b!930223))

(assert (not bm!57275))

(assert tp_is_empty!4687)

(assert (not d!281365))

(assert (not bm!57262))

(assert (not d!281385))

(assert (not b!930212))

(assert (not bm!57286))

(assert (not bm!57288))

(assert (not b!930283))

(assert (not b!930307))

(assert (not b!930404))

(assert (not b!930388))

(assert (not b!930408))

(assert (not bm!57274))

(assert (not b!930406))

(assert (not b!930286))

(assert (not b!930355))

(assert (not b!930396))

(assert (not b!930397))

(assert (not bm!57290))

(assert (not b!930373))

(assert (not bm!57276))

(assert (not b!930288))

(assert (not b!930281))

(assert (not b!930387))

(assert (not b!930398))

(assert (not b!930362))

(assert (not b!930367))

(assert (not d!281363))

(assert (not b!930344))

(assert (not bm!57285))

(assert (not b!930329))

(assert (not b!930340))

(assert (not b!930293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

