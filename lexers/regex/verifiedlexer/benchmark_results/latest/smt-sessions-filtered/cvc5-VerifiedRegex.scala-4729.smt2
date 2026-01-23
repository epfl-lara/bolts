; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244582 () Bool)

(assert start!244582)

(declare-fun b!2506713 () Bool)

(declare-fun e!1589242 () Bool)

(declare-fun tp_is_empty!12719 () Bool)

(assert (=> b!2506713 (= e!1589242 tp_is_empty!12719)))

(declare-fun b!2506714 () Bool)

(declare-fun tp!801897 () Bool)

(declare-fun tp!801898 () Bool)

(assert (=> b!2506714 (= e!1589242 (and tp!801897 tp!801898))))

(declare-fun b!2506715 () Bool)

(declare-fun res!1059808 () Bool)

(declare-fun e!1589245 () Bool)

(assert (=> b!2506715 (=> res!1059808 e!1589245)))

(declare-datatypes ((C!15022 0))(
  ( (C!15023 (val!9163 Int)) )
))
(declare-datatypes ((Regex!7432 0))(
  ( (ElementMatch!7432 (c!399174 C!15022)) (Concat!12128 (regOne!15376 Regex!7432) (regTwo!15376 Regex!7432)) (EmptyExpr!7432) (Star!7432 (reg!7761 Regex!7432)) (EmptyLang!7432) (Union!7432 (regOne!15377 Regex!7432) (regTwo!15377 Regex!7432)) )
))
(declare-fun r!27340 () Regex!7432)

(declare-datatypes ((List!29497 0))(
  ( (Nil!29397) (Cons!29397 (h!34817 C!15022) (t!211196 List!29497)) )
))
(declare-datatypes ((tuple2!29442 0))(
  ( (tuple2!29443 (_1!17263 List!29497) (_2!17263 List!29497)) )
))
(declare-fun lt!896841 () tuple2!29442)

(declare-fun matchR!3435 (Regex!7432 List!29497) Bool)

(assert (=> b!2506715 (= res!1059808 (not (matchR!3435 (regTwo!15376 r!27340) (_2!17263 lt!896841))))))

(declare-fun b!2506716 () Bool)

(declare-fun res!1059801 () Bool)

(assert (=> b!2506716 (=> res!1059801 e!1589245)))

(declare-fun lt!896844 () Regex!7432)

(assert (=> b!2506716 (= res!1059801 (not (matchR!3435 lt!896844 (_1!17263 lt!896841))))))

(declare-fun b!2506717 () Bool)

(declare-fun res!1059807 () Bool)

(declare-fun e!1589246 () Bool)

(assert (=> b!2506717 (=> (not res!1059807) (not e!1589246))))

(assert (=> b!2506717 (= res!1059807 (and (not (is-EmptyExpr!7432 r!27340)) (not (is-EmptyLang!7432 r!27340)) (not (is-ElementMatch!7432 r!27340)) (not (is-Union!7432 r!27340)) (not (is-Star!7432 r!27340))))))

(declare-fun b!2506718 () Bool)

(declare-fun tp!801896 () Bool)

(assert (=> b!2506718 (= e!1589242 tp!801896)))

(declare-fun b!2506719 () Bool)

(declare-fun e!1589244 () Bool)

(declare-fun lt!896840 () Regex!7432)

(declare-fun tl!4068 () List!29497)

(assert (=> b!2506719 (= e!1589244 (matchR!3435 lt!896840 tl!4068))))

(declare-fun b!2506720 () Bool)

(declare-fun e!1589241 () Bool)

(declare-fun tp!801895 () Bool)

(assert (=> b!2506720 (= e!1589241 (and tp_is_empty!12719 tp!801895))))

(declare-fun b!2506721 () Bool)

(declare-fun validRegex!3058 (Regex!7432) Bool)

(assert (=> b!2506721 (= e!1589245 (validRegex!3058 (regOne!15376 r!27340)))))

(declare-fun b!2506722 () Bool)

(declare-fun e!1589243 () Bool)

(assert (=> b!2506722 (= e!1589243 e!1589245)))

(declare-fun res!1059802 () Bool)

(assert (=> b!2506722 (=> res!1059802 e!1589245)))

(declare-fun ++!7192 (List!29497 List!29497) List!29497)

(assert (=> b!2506722 (= res!1059802 (not (= (++!7192 (_1!17263 lt!896841) (_2!17263 lt!896841)) tl!4068)))))

(declare-datatypes ((Option!5841 0))(
  ( (None!5840) (Some!5840 (v!31771 tuple2!29442)) )
))
(declare-fun lt!896842 () Option!5841)

(declare-fun get!9138 (Option!5841) tuple2!29442)

(assert (=> b!2506722 (= lt!896841 (get!9138 lt!896842))))

(declare-fun isDefined!4663 (Option!5841) Bool)

(assert (=> b!2506722 (isDefined!4663 lt!896842)))

(declare-fun findConcatSeparation!863 (Regex!7432 Regex!7432 List!29497 List!29497 List!29497) Option!5841)

(assert (=> b!2506722 (= lt!896842 (findConcatSeparation!863 lt!896844 (regTwo!15376 r!27340) Nil!29397 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43121 0))(
  ( (Unit!43122) )
))
(declare-fun lt!896846 () Unit!43121)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!145 (Regex!7432 Regex!7432 List!29497) Unit!43121)

(assert (=> b!2506722 (= lt!896846 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!145 lt!896844 (regTwo!15376 r!27340) tl!4068))))

(declare-fun b!2506723 () Bool)

(declare-fun tp!801900 () Bool)

(declare-fun tp!801899 () Bool)

(assert (=> b!2506723 (= e!1589242 (and tp!801900 tp!801899))))

(declare-fun b!2506725 () Bool)

(declare-fun res!1059809 () Bool)

(assert (=> b!2506725 (=> (not res!1059809) (not e!1589246))))

(declare-fun nullable!2349 (Regex!7432) Bool)

(assert (=> b!2506725 (= res!1059809 (nullable!2349 (regOne!15376 r!27340)))))

(declare-fun res!1059805 () Bool)

(assert (=> start!244582 (=> (not res!1059805) (not e!1589246))))

(assert (=> start!244582 (= res!1059805 (validRegex!3058 r!27340))))

(assert (=> start!244582 e!1589246))

(assert (=> start!244582 e!1589242))

(assert (=> start!244582 tp_is_empty!12719))

(assert (=> start!244582 e!1589241))

(declare-fun b!2506724 () Bool)

(declare-fun res!1059806 () Bool)

(assert (=> b!2506724 (=> (not res!1059806) (not e!1589246))))

(declare-fun c!14016 () C!15022)

(declare-fun derivative!127 (Regex!7432 List!29497) Regex!7432)

(declare-fun derivativeStep!2001 (Regex!7432 C!15022) Regex!7432)

(assert (=> b!2506724 (= res!1059806 (nullable!2349 (derivative!127 (derivativeStep!2001 r!27340 c!14016) tl!4068)))))

(declare-fun b!2506726 () Bool)

(assert (=> b!2506726 (= e!1589246 (not e!1589243))))

(declare-fun res!1059803 () Bool)

(assert (=> b!2506726 (=> res!1059803 e!1589243)))

(declare-fun lt!896845 () Bool)

(assert (=> b!2506726 (= res!1059803 (not lt!896845))))

(assert (=> b!2506726 e!1589244))

(declare-fun res!1059804 () Bool)

(assert (=> b!2506726 (=> res!1059804 e!1589244)))

(assert (=> b!2506726 (= res!1059804 lt!896845)))

(declare-fun lt!896843 () Regex!7432)

(assert (=> b!2506726 (= lt!896845 (matchR!3435 lt!896843 tl!4068))))

(declare-fun lt!896848 () Unit!43121)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!127 (Regex!7432 Regex!7432 List!29497) Unit!43121)

(assert (=> b!2506726 (= lt!896848 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!127 lt!896843 lt!896840 tl!4068))))

(declare-fun lt!896847 () Regex!7432)

(assert (=> b!2506726 (= (matchR!3435 lt!896847 tl!4068) (matchR!3435 (derivative!127 lt!896847 tl!4068) Nil!29397))))

(declare-fun lt!896839 () Unit!43121)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!81 (Regex!7432 List!29497) Unit!43121)

(assert (=> b!2506726 (= lt!896839 (lemmaMatchRIsSameAsWholeDerivativeAndNil!81 lt!896847 tl!4068))))

(assert (=> b!2506726 (= lt!896847 (Union!7432 lt!896843 lt!896840))))

(assert (=> b!2506726 (= lt!896840 (derivativeStep!2001 (regTwo!15376 r!27340) c!14016))))

(assert (=> b!2506726 (= lt!896843 (Concat!12128 lt!896844 (regTwo!15376 r!27340)))))

(assert (=> b!2506726 (= lt!896844 (derivativeStep!2001 (regOne!15376 r!27340) c!14016))))

(declare-fun b!2506727 () Bool)

(declare-fun res!1059810 () Bool)

(assert (=> b!2506727 (=> res!1059810 e!1589245)))

(assert (=> b!2506727 (= res!1059810 (not (matchR!3435 (regOne!15376 r!27340) (Cons!29397 c!14016 (_1!17263 lt!896841)))))))

(assert (= (and start!244582 res!1059805) b!2506724))

(assert (= (and b!2506724 res!1059806) b!2506717))

(assert (= (and b!2506717 res!1059807) b!2506725))

(assert (= (and b!2506725 res!1059809) b!2506726))

(assert (= (and b!2506726 (not res!1059804)) b!2506719))

(assert (= (and b!2506726 (not res!1059803)) b!2506722))

(assert (= (and b!2506722 (not res!1059802)) b!2506716))

(assert (= (and b!2506716 (not res!1059801)) b!2506715))

(assert (= (and b!2506715 (not res!1059808)) b!2506727))

(assert (= (and b!2506727 (not res!1059810)) b!2506721))

(assert (= (and start!244582 (is-ElementMatch!7432 r!27340)) b!2506713))

(assert (= (and start!244582 (is-Concat!12128 r!27340)) b!2506723))

(assert (= (and start!244582 (is-Star!7432 r!27340)) b!2506718))

(assert (= (and start!244582 (is-Union!7432 r!27340)) b!2506714))

(assert (= (and start!244582 (is-Cons!29397 tl!4068)) b!2506720))

(declare-fun m!2867073 () Bool)

(assert (=> b!2506719 m!2867073))

(declare-fun m!2867075 () Bool)

(assert (=> b!2506727 m!2867075))

(declare-fun m!2867077 () Bool)

(assert (=> start!244582 m!2867077))

(declare-fun m!2867079 () Bool)

(assert (=> b!2506725 m!2867079))

(declare-fun m!2867081 () Bool)

(assert (=> b!2506722 m!2867081))

(declare-fun m!2867083 () Bool)

(assert (=> b!2506722 m!2867083))

(declare-fun m!2867085 () Bool)

(assert (=> b!2506722 m!2867085))

(declare-fun m!2867087 () Bool)

(assert (=> b!2506722 m!2867087))

(declare-fun m!2867089 () Bool)

(assert (=> b!2506722 m!2867089))

(declare-fun m!2867091 () Bool)

(assert (=> b!2506726 m!2867091))

(declare-fun m!2867093 () Bool)

(assert (=> b!2506726 m!2867093))

(declare-fun m!2867095 () Bool)

(assert (=> b!2506726 m!2867095))

(declare-fun m!2867097 () Bool)

(assert (=> b!2506726 m!2867097))

(declare-fun m!2867099 () Bool)

(assert (=> b!2506726 m!2867099))

(declare-fun m!2867101 () Bool)

(assert (=> b!2506726 m!2867101))

(assert (=> b!2506726 m!2867097))

(declare-fun m!2867103 () Bool)

(assert (=> b!2506726 m!2867103))

(declare-fun m!2867105 () Bool)

(assert (=> b!2506726 m!2867105))

(declare-fun m!2867107 () Bool)

(assert (=> b!2506715 m!2867107))

(declare-fun m!2867109 () Bool)

(assert (=> b!2506724 m!2867109))

(assert (=> b!2506724 m!2867109))

(declare-fun m!2867111 () Bool)

(assert (=> b!2506724 m!2867111))

(assert (=> b!2506724 m!2867111))

(declare-fun m!2867113 () Bool)

(assert (=> b!2506724 m!2867113))

(declare-fun m!2867115 () Bool)

(assert (=> b!2506716 m!2867115))

(declare-fun m!2867117 () Bool)

(assert (=> b!2506721 m!2867117))

(push 1)

(assert tp_is_empty!12719)

(assert (not b!2506715))

(assert (not b!2506716))

(assert (not b!2506724))

(assert (not b!2506721))

(assert (not b!2506725))

(assert (not b!2506720))

(assert (not b!2506719))

(assert (not b!2506722))

(assert (not start!244582))

(assert (not b!2506727))

(assert (not b!2506714))

(assert (not b!2506718))

(assert (not b!2506726))

(assert (not b!2506723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!716174 () Bool)

(declare-fun nullableFct!613 (Regex!7432) Bool)

(assert (=> d!716174 (= (nullable!2349 (derivative!127 (derivativeStep!2001 r!27340 c!14016) tl!4068)) (nullableFct!613 (derivative!127 (derivativeStep!2001 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468684 () Bool)

(assert (= bs!468684 d!716174))

(assert (=> bs!468684 m!2867111))

(declare-fun m!2867165 () Bool)

(assert (=> bs!468684 m!2867165))

(assert (=> b!2506724 d!716174))

(declare-fun d!716176 () Bool)

(declare-fun lt!896881 () Regex!7432)

(assert (=> d!716176 (validRegex!3058 lt!896881)))

(declare-fun e!1589267 () Regex!7432)

(assert (=> d!716176 (= lt!896881 e!1589267)))

(declare-fun c!399178 () Bool)

(assert (=> d!716176 (= c!399178 (is-Cons!29397 tl!4068))))

(assert (=> d!716176 (validRegex!3058 (derivativeStep!2001 r!27340 c!14016))))

(assert (=> d!716176 (= (derivative!127 (derivativeStep!2001 r!27340 c!14016) tl!4068) lt!896881)))

(declare-fun b!2506777 () Bool)

(assert (=> b!2506777 (= e!1589267 (derivative!127 (derivativeStep!2001 (derivativeStep!2001 r!27340 c!14016) (h!34817 tl!4068)) (t!211196 tl!4068)))))

(declare-fun b!2506778 () Bool)

(assert (=> b!2506778 (= e!1589267 (derivativeStep!2001 r!27340 c!14016))))

(assert (= (and d!716176 c!399178) b!2506777))

(assert (= (and d!716176 (not c!399178)) b!2506778))

(declare-fun m!2867167 () Bool)

(assert (=> d!716176 m!2867167))

(assert (=> d!716176 m!2867109))

(declare-fun m!2867169 () Bool)

(assert (=> d!716176 m!2867169))

(assert (=> b!2506777 m!2867109))

(declare-fun m!2867171 () Bool)

(assert (=> b!2506777 m!2867171))

(assert (=> b!2506777 m!2867171))

(declare-fun m!2867173 () Bool)

(assert (=> b!2506777 m!2867173))

(assert (=> b!2506724 d!716176))

(declare-fun b!2506811 () Bool)

(declare-fun e!1589285 () Regex!7432)

(declare-fun e!1589287 () Regex!7432)

(assert (=> b!2506811 (= e!1589285 e!1589287)))

(declare-fun c!399196 () Bool)

(assert (=> b!2506811 (= c!399196 (is-ElementMatch!7432 r!27340))))

(declare-fun call!155238 () Regex!7432)

(declare-fun c!399193 () Bool)

(declare-fun bm!155233 () Bool)

(declare-fun c!399195 () Bool)

(assert (=> bm!155233 (= call!155238 (derivativeStep!2001 (ite c!399195 (regOne!15377 r!27340) (ite c!399193 (reg!7761 r!27340) (regOne!15376 r!27340))) c!14016))))

(declare-fun e!1589286 () Regex!7432)

(declare-fun call!155241 () Regex!7432)

(declare-fun b!2506812 () Bool)

(declare-fun call!155239 () Regex!7432)

(assert (=> b!2506812 (= e!1589286 (Union!7432 (Concat!12128 call!155241 (regTwo!15376 r!27340)) call!155239))))

(declare-fun b!2506813 () Bool)

(declare-fun c!399194 () Bool)

(assert (=> b!2506813 (= c!399194 (nullable!2349 (regOne!15376 r!27340)))))

(declare-fun e!1589288 () Regex!7432)

(assert (=> b!2506813 (= e!1589288 e!1589286)))

(declare-fun bm!155234 () Bool)

(declare-fun call!155240 () Regex!7432)

(assert (=> bm!155234 (= call!155240 call!155238)))

(declare-fun b!2506814 () Bool)

(assert (=> b!2506814 (= e!1589288 (Concat!12128 call!155240 r!27340))))

(declare-fun bm!155236 () Bool)

(assert (=> bm!155236 (= call!155239 (derivativeStep!2001 (ite c!399195 (regTwo!15377 r!27340) (regTwo!15376 r!27340)) c!14016))))

(declare-fun b!2506815 () Bool)

(assert (=> b!2506815 (= e!1589287 (ite (= c!14016 (c!399174 r!27340)) EmptyExpr!7432 EmptyLang!7432))))

(declare-fun b!2506816 () Bool)

(declare-fun e!1589284 () Regex!7432)

(assert (=> b!2506816 (= e!1589284 e!1589288)))

(assert (=> b!2506816 (= c!399193 (is-Star!7432 r!27340))))

(declare-fun b!2506817 () Bool)

(assert (=> b!2506817 (= e!1589284 (Union!7432 call!155238 call!155239))))

(declare-fun b!2506818 () Bool)

(assert (=> b!2506818 (= c!399195 (is-Union!7432 r!27340))))

(assert (=> b!2506818 (= e!1589287 e!1589284)))

(declare-fun b!2506819 () Bool)

(assert (=> b!2506819 (= e!1589285 EmptyLang!7432)))

(declare-fun b!2506820 () Bool)

(assert (=> b!2506820 (= e!1589286 (Union!7432 (Concat!12128 call!155241 (regTwo!15376 r!27340)) EmptyLang!7432))))

(declare-fun d!716180 () Bool)

(declare-fun lt!896887 () Regex!7432)

(assert (=> d!716180 (validRegex!3058 lt!896887)))

(assert (=> d!716180 (= lt!896887 e!1589285)))

(declare-fun c!399192 () Bool)

(assert (=> d!716180 (= c!399192 (or (is-EmptyExpr!7432 r!27340) (is-EmptyLang!7432 r!27340)))))

(assert (=> d!716180 (validRegex!3058 r!27340)))

(assert (=> d!716180 (= (derivativeStep!2001 r!27340 c!14016) lt!896887)))

(declare-fun bm!155235 () Bool)

(assert (=> bm!155235 (= call!155241 call!155240)))

(assert (= (and d!716180 c!399192) b!2506819))

(assert (= (and d!716180 (not c!399192)) b!2506811))

(assert (= (and b!2506811 c!399196) b!2506815))

(assert (= (and b!2506811 (not c!399196)) b!2506818))

(assert (= (and b!2506818 c!399195) b!2506817))

(assert (= (and b!2506818 (not c!399195)) b!2506816))

(assert (= (and b!2506816 c!399193) b!2506814))

(assert (= (and b!2506816 (not c!399193)) b!2506813))

(assert (= (and b!2506813 c!399194) b!2506812))

(assert (= (and b!2506813 (not c!399194)) b!2506820))

(assert (= (or b!2506812 b!2506820) bm!155235))

(assert (= (or b!2506814 bm!155235) bm!155234))

(assert (= (or b!2506817 b!2506812) bm!155236))

(assert (= (or b!2506817 bm!155234) bm!155233))

(declare-fun m!2867191 () Bool)

(assert (=> bm!155233 m!2867191))

(assert (=> b!2506813 m!2867079))

(declare-fun m!2867193 () Bool)

(assert (=> bm!155236 m!2867193))

(declare-fun m!2867195 () Bool)

(assert (=> d!716180 m!2867195))

(assert (=> d!716180 m!2867077))

(assert (=> b!2506724 d!716180))

(declare-fun b!2506867 () Bool)

(declare-fun e!1589317 () Bool)

(declare-fun e!1589316 () Bool)

(assert (=> b!2506867 (= e!1589317 e!1589316)))

(declare-fun res!1059877 () Bool)

(assert (=> b!2506867 (=> res!1059877 e!1589316)))

(declare-fun call!155244 () Bool)

(assert (=> b!2506867 (= res!1059877 call!155244)))

(declare-fun b!2506868 () Bool)

(declare-fun res!1059873 () Bool)

(declare-fun e!1589314 () Bool)

(assert (=> b!2506868 (=> (not res!1059873) (not e!1589314))))

(declare-fun isEmpty!16869 (List!29497) Bool)

(declare-fun tail!3994 (List!29497) List!29497)

(assert (=> b!2506868 (= res!1059873 (isEmpty!16869 (tail!3994 tl!4068)))))

(declare-fun b!2506869 () Bool)

(declare-fun res!1059876 () Bool)

(assert (=> b!2506869 (=> (not res!1059876) (not e!1589314))))

(assert (=> b!2506869 (= res!1059876 (not call!155244))))

(declare-fun b!2506870 () Bool)

(declare-fun head!5717 (List!29497) C!15022)

(assert (=> b!2506870 (= e!1589314 (= (head!5717 tl!4068) (c!399174 lt!896840)))))

(declare-fun b!2506871 () Bool)

(declare-fun e!1589315 () Bool)

(declare-fun lt!896896 () Bool)

(assert (=> b!2506871 (= e!1589315 (= lt!896896 call!155244))))

(declare-fun b!2506872 () Bool)

(declare-fun e!1589318 () Bool)

(assert (=> b!2506872 (= e!1589318 e!1589317)))

(declare-fun res!1059879 () Bool)

(assert (=> b!2506872 (=> (not res!1059879) (not e!1589317))))

(assert (=> b!2506872 (= res!1059879 (not lt!896896))))

(declare-fun b!2506873 () Bool)

(declare-fun e!1589319 () Bool)

(assert (=> b!2506873 (= e!1589315 e!1589319)))

(declare-fun c!399209 () Bool)

(assert (=> b!2506873 (= c!399209 (is-EmptyLang!7432 lt!896840))))

(declare-fun b!2506874 () Bool)

(declare-fun res!1059875 () Bool)

(assert (=> b!2506874 (=> res!1059875 e!1589316)))

(assert (=> b!2506874 (= res!1059875 (not (isEmpty!16869 (tail!3994 tl!4068))))))

(declare-fun d!716188 () Bool)

(assert (=> d!716188 e!1589315))

(declare-fun c!399208 () Bool)

(assert (=> d!716188 (= c!399208 (is-EmptyExpr!7432 lt!896840))))

(declare-fun e!1589313 () Bool)

(assert (=> d!716188 (= lt!896896 e!1589313)))

(declare-fun c!399207 () Bool)

(assert (=> d!716188 (= c!399207 (isEmpty!16869 tl!4068))))

(assert (=> d!716188 (validRegex!3058 lt!896840)))

(assert (=> d!716188 (= (matchR!3435 lt!896840 tl!4068) lt!896896)))

(declare-fun b!2506875 () Bool)

(declare-fun res!1059880 () Bool)

(assert (=> b!2506875 (=> res!1059880 e!1589318)))

(assert (=> b!2506875 (= res!1059880 e!1589314)))

(declare-fun res!1059874 () Bool)

(assert (=> b!2506875 (=> (not res!1059874) (not e!1589314))))

(assert (=> b!2506875 (= res!1059874 lt!896896)))

(declare-fun b!2506876 () Bool)

(declare-fun res!1059878 () Bool)

(assert (=> b!2506876 (=> res!1059878 e!1589318)))

(assert (=> b!2506876 (= res!1059878 (not (is-ElementMatch!7432 lt!896840)))))

(assert (=> b!2506876 (= e!1589319 e!1589318)))

(declare-fun b!2506877 () Bool)

(assert (=> b!2506877 (= e!1589316 (not (= (head!5717 tl!4068) (c!399174 lt!896840))))))

(declare-fun bm!155239 () Bool)

(assert (=> bm!155239 (= call!155244 (isEmpty!16869 tl!4068))))

(declare-fun b!2506878 () Bool)

(assert (=> b!2506878 (= e!1589319 (not lt!896896))))

(declare-fun b!2506879 () Bool)

(assert (=> b!2506879 (= e!1589313 (matchR!3435 (derivativeStep!2001 lt!896840 (head!5717 tl!4068)) (tail!3994 tl!4068)))))

(declare-fun b!2506880 () Bool)

(assert (=> b!2506880 (= e!1589313 (nullable!2349 lt!896840))))

(assert (= (and d!716188 c!399207) b!2506880))

(assert (= (and d!716188 (not c!399207)) b!2506879))

(assert (= (and d!716188 c!399208) b!2506871))

(assert (= (and d!716188 (not c!399208)) b!2506873))

(assert (= (and b!2506873 c!399209) b!2506878))

(assert (= (and b!2506873 (not c!399209)) b!2506876))

(assert (= (and b!2506876 (not res!1059878)) b!2506875))

(assert (= (and b!2506875 res!1059874) b!2506869))

(assert (= (and b!2506869 res!1059876) b!2506868))

(assert (= (and b!2506868 res!1059873) b!2506870))

(assert (= (and b!2506875 (not res!1059880)) b!2506872))

(assert (= (and b!2506872 res!1059879) b!2506867))

(assert (= (and b!2506867 (not res!1059877)) b!2506874))

(assert (= (and b!2506874 (not res!1059875)) b!2506877))

(assert (= (or b!2506871 b!2506867 b!2506869) bm!155239))

(declare-fun m!2867197 () Bool)

(assert (=> b!2506879 m!2867197))

(assert (=> b!2506879 m!2867197))

(declare-fun m!2867199 () Bool)

(assert (=> b!2506879 m!2867199))

(declare-fun m!2867201 () Bool)

(assert (=> b!2506879 m!2867201))

(assert (=> b!2506879 m!2867199))

(assert (=> b!2506879 m!2867201))

(declare-fun m!2867203 () Bool)

(assert (=> b!2506879 m!2867203))

(assert (=> b!2506870 m!2867197))

(declare-fun m!2867205 () Bool)

(assert (=> b!2506880 m!2867205))

(assert (=> b!2506877 m!2867197))

(assert (=> b!2506874 m!2867201))

(assert (=> b!2506874 m!2867201))

(declare-fun m!2867207 () Bool)

(assert (=> b!2506874 m!2867207))

(declare-fun m!2867209 () Bool)

(assert (=> d!716188 m!2867209))

(declare-fun m!2867211 () Bool)

(assert (=> d!716188 m!2867211))

(assert (=> b!2506868 m!2867201))

(assert (=> b!2506868 m!2867201))

(assert (=> b!2506868 m!2867207))

(assert (=> bm!155239 m!2867209))

(assert (=> b!2506719 d!716188))

(declare-fun b!2506908 () Bool)

(declare-fun e!1589344 () Bool)

(declare-fun e!1589343 () Bool)

(assert (=> b!2506908 (= e!1589344 e!1589343)))

(declare-fun c!399216 () Bool)

(assert (=> b!2506908 (= c!399216 (is-Star!7432 r!27340))))

(declare-fun bm!155246 () Bool)

(declare-fun call!155253 () Bool)

(declare-fun call!155251 () Bool)

(assert (=> bm!155246 (= call!155253 call!155251)))

(declare-fun b!2506909 () Bool)

(declare-fun res!1059897 () Bool)

(declare-fun e!1589339 () Bool)

(assert (=> b!2506909 (=> res!1059897 e!1589339)))

(assert (=> b!2506909 (= res!1059897 (not (is-Concat!12128 r!27340)))))

(declare-fun e!1589340 () Bool)

(assert (=> b!2506909 (= e!1589340 e!1589339)))

(declare-fun c!399217 () Bool)

(declare-fun bm!155247 () Bool)

(assert (=> bm!155247 (= call!155251 (validRegex!3058 (ite c!399216 (reg!7761 r!27340) (ite c!399217 (regOne!15377 r!27340) (regTwo!15376 r!27340)))))))

(declare-fun bm!155248 () Bool)

(declare-fun call!155252 () Bool)

(assert (=> bm!155248 (= call!155252 (validRegex!3058 (ite c!399217 (regTwo!15377 r!27340) (regOne!15376 r!27340))))))

(declare-fun b!2506910 () Bool)

(declare-fun e!1589342 () Bool)

(assert (=> b!2506910 (= e!1589343 e!1589342)))

(declare-fun res!1059898 () Bool)

(assert (=> b!2506910 (= res!1059898 (not (nullable!2349 (reg!7761 r!27340))))))

(assert (=> b!2506910 (=> (not res!1059898) (not e!1589342))))

(declare-fun b!2506911 () Bool)

(declare-fun e!1589345 () Bool)

(assert (=> b!2506911 (= e!1589345 call!155253)))

(declare-fun b!2506912 () Bool)

(assert (=> b!2506912 (= e!1589339 e!1589345)))

(declare-fun res!1059900 () Bool)

(assert (=> b!2506912 (=> (not res!1059900) (not e!1589345))))

(assert (=> b!2506912 (= res!1059900 call!155252)))

(declare-fun b!2506913 () Bool)

(declare-fun e!1589341 () Bool)

(assert (=> b!2506913 (= e!1589341 call!155252)))

(declare-fun d!716190 () Bool)

(declare-fun res!1059896 () Bool)

(assert (=> d!716190 (=> res!1059896 e!1589344)))

(assert (=> d!716190 (= res!1059896 (is-ElementMatch!7432 r!27340))))

(assert (=> d!716190 (= (validRegex!3058 r!27340) e!1589344)))

(declare-fun b!2506914 () Bool)

(declare-fun res!1059899 () Bool)

(assert (=> b!2506914 (=> (not res!1059899) (not e!1589341))))

(assert (=> b!2506914 (= res!1059899 call!155253)))

(assert (=> b!2506914 (= e!1589340 e!1589341)))

(declare-fun b!2506915 () Bool)

(assert (=> b!2506915 (= e!1589342 call!155251)))

(declare-fun b!2506916 () Bool)

(assert (=> b!2506916 (= e!1589343 e!1589340)))

(assert (=> b!2506916 (= c!399217 (is-Union!7432 r!27340))))

(assert (= (and d!716190 (not res!1059896)) b!2506908))

(assert (= (and b!2506908 c!399216) b!2506910))

(assert (= (and b!2506908 (not c!399216)) b!2506916))

(assert (= (and b!2506910 res!1059898) b!2506915))

(assert (= (and b!2506916 c!399217) b!2506914))

(assert (= (and b!2506916 (not c!399217)) b!2506909))

(assert (= (and b!2506914 res!1059899) b!2506913))

(assert (= (and b!2506909 (not res!1059897)) b!2506912))

(assert (= (and b!2506912 res!1059900) b!2506911))

(assert (= (or b!2506914 b!2506911) bm!155246))

(assert (= (or b!2506913 b!2506912) bm!155248))

(assert (= (or b!2506915 bm!155246) bm!155247))

(declare-fun m!2867237 () Bool)

(assert (=> bm!155247 m!2867237))

(declare-fun m!2867239 () Bool)

(assert (=> bm!155248 m!2867239))

(declare-fun m!2867241 () Bool)

(assert (=> b!2506910 m!2867241))

(assert (=> start!244582 d!716190))

(declare-fun b!2506927 () Bool)

(declare-fun res!1059905 () Bool)

(declare-fun e!1589351 () Bool)

(assert (=> b!2506927 (=> (not res!1059905) (not e!1589351))))

(declare-fun lt!896905 () List!29497)

(declare-fun size!22897 (List!29497) Int)

(assert (=> b!2506927 (= res!1059905 (= (size!22897 lt!896905) (+ (size!22897 (_1!17263 lt!896841)) (size!22897 (_2!17263 lt!896841)))))))

(declare-fun b!2506926 () Bool)

(declare-fun e!1589350 () List!29497)

(assert (=> b!2506926 (= e!1589350 (Cons!29397 (h!34817 (_1!17263 lt!896841)) (++!7192 (t!211196 (_1!17263 lt!896841)) (_2!17263 lt!896841))))))

(declare-fun b!2506928 () Bool)

(assert (=> b!2506928 (= e!1589351 (or (not (= (_2!17263 lt!896841) Nil!29397)) (= lt!896905 (_1!17263 lt!896841))))))

(declare-fun b!2506925 () Bool)

(assert (=> b!2506925 (= e!1589350 (_2!17263 lt!896841))))

(declare-fun d!716194 () Bool)

(assert (=> d!716194 e!1589351))

(declare-fun res!1059906 () Bool)

(assert (=> d!716194 (=> (not res!1059906) (not e!1589351))))

(declare-fun content!4013 (List!29497) (Set C!15022))

(assert (=> d!716194 (= res!1059906 (= (content!4013 lt!896905) (set.union (content!4013 (_1!17263 lt!896841)) (content!4013 (_2!17263 lt!896841)))))))

(assert (=> d!716194 (= lt!896905 e!1589350)))

(declare-fun c!399220 () Bool)

(assert (=> d!716194 (= c!399220 (is-Nil!29397 (_1!17263 lt!896841)))))

(assert (=> d!716194 (= (++!7192 (_1!17263 lt!896841) (_2!17263 lt!896841)) lt!896905)))

(assert (= (and d!716194 c!399220) b!2506925))

(assert (= (and d!716194 (not c!399220)) b!2506926))

(assert (= (and d!716194 res!1059906) b!2506927))

(assert (= (and b!2506927 res!1059905) b!2506928))

(declare-fun m!2867247 () Bool)

(assert (=> b!2506927 m!2867247))

(declare-fun m!2867249 () Bool)

(assert (=> b!2506927 m!2867249))

(declare-fun m!2867251 () Bool)

(assert (=> b!2506927 m!2867251))

(declare-fun m!2867253 () Bool)

(assert (=> b!2506926 m!2867253))

(declare-fun m!2867255 () Bool)

(assert (=> d!716194 m!2867255))

(declare-fun m!2867257 () Bool)

(assert (=> d!716194 m!2867257))

(declare-fun m!2867259 () Bool)

(assert (=> d!716194 m!2867259))

(assert (=> b!2506722 d!716194))

(declare-fun d!716198 () Bool)

(assert (=> d!716198 (= (get!9138 lt!896842) (v!31771 lt!896842))))

(assert (=> b!2506722 d!716198))

(declare-fun b!2506989 () Bool)

(declare-fun e!1589384 () Bool)

(declare-fun lt!896915 () Option!5841)

(assert (=> b!2506989 (= e!1589384 (= (++!7192 (_1!17263 (get!9138 lt!896915)) (_2!17263 (get!9138 lt!896915))) tl!4068))))

(declare-fun b!2506990 () Bool)

(declare-fun e!1589383 () Bool)

(assert (=> b!2506990 (= e!1589383 (not (isDefined!4663 lt!896915)))))

(declare-fun b!2506991 () Bool)

(declare-fun res!1059942 () Bool)

(assert (=> b!2506991 (=> (not res!1059942) (not e!1589384))))

(assert (=> b!2506991 (= res!1059942 (matchR!3435 lt!896844 (_1!17263 (get!9138 lt!896915))))))

(declare-fun b!2506992 () Bool)

(declare-fun e!1589386 () Option!5841)

(declare-fun e!1589387 () Option!5841)

(assert (=> b!2506992 (= e!1589386 e!1589387)))

(declare-fun c!399235 () Bool)

(assert (=> b!2506992 (= c!399235 (is-Nil!29397 tl!4068))))

(declare-fun b!2506993 () Bool)

(assert (=> b!2506993 (= e!1589387 None!5840)))

(declare-fun b!2506994 () Bool)

(declare-fun lt!896916 () Unit!43121)

(declare-fun lt!896917 () Unit!43121)

(assert (=> b!2506994 (= lt!896916 lt!896917)))

(assert (=> b!2506994 (= (++!7192 (++!7192 Nil!29397 (Cons!29397 (h!34817 tl!4068) Nil!29397)) (t!211196 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!742 (List!29497 C!15022 List!29497 List!29497) Unit!43121)

(assert (=> b!2506994 (= lt!896917 (lemmaMoveElementToOtherListKeepsConcatEq!742 Nil!29397 (h!34817 tl!4068) (t!211196 tl!4068) tl!4068))))

(assert (=> b!2506994 (= e!1589387 (findConcatSeparation!863 lt!896844 (regTwo!15376 r!27340) (++!7192 Nil!29397 (Cons!29397 (h!34817 tl!4068) Nil!29397)) (t!211196 tl!4068) tl!4068))))

(declare-fun b!2506995 () Bool)

(assert (=> b!2506995 (= e!1589386 (Some!5840 (tuple2!29443 Nil!29397 tl!4068)))))

(declare-fun b!2506996 () Bool)

(declare-fun res!1059944 () Bool)

(assert (=> b!2506996 (=> (not res!1059944) (not e!1589384))))

(assert (=> b!2506996 (= res!1059944 (matchR!3435 (regTwo!15376 r!27340) (_2!17263 (get!9138 lt!896915))))))

(declare-fun d!716200 () Bool)

(assert (=> d!716200 e!1589383))

(declare-fun res!1059943 () Bool)

(assert (=> d!716200 (=> res!1059943 e!1589383)))

(assert (=> d!716200 (= res!1059943 e!1589384)))

(declare-fun res!1059945 () Bool)

(assert (=> d!716200 (=> (not res!1059945) (not e!1589384))))

(assert (=> d!716200 (= res!1059945 (isDefined!4663 lt!896915))))

(assert (=> d!716200 (= lt!896915 e!1589386)))

(declare-fun c!399234 () Bool)

(declare-fun e!1589385 () Bool)

(assert (=> d!716200 (= c!399234 e!1589385)))

(declare-fun res!1059941 () Bool)

(assert (=> d!716200 (=> (not res!1059941) (not e!1589385))))

(assert (=> d!716200 (= res!1059941 (matchR!3435 lt!896844 Nil!29397))))

(assert (=> d!716200 (validRegex!3058 lt!896844)))

(assert (=> d!716200 (= (findConcatSeparation!863 lt!896844 (regTwo!15376 r!27340) Nil!29397 tl!4068 tl!4068) lt!896915)))

(declare-fun b!2506997 () Bool)

(assert (=> b!2506997 (= e!1589385 (matchR!3435 (regTwo!15376 r!27340) tl!4068))))

(assert (= (and d!716200 res!1059941) b!2506997))

(assert (= (and d!716200 c!399234) b!2506995))

(assert (= (and d!716200 (not c!399234)) b!2506992))

(assert (= (and b!2506992 c!399235) b!2506993))

(assert (= (and b!2506992 (not c!399235)) b!2506994))

(assert (= (and d!716200 res!1059945) b!2506991))

(assert (= (and b!2506991 res!1059942) b!2506996))

(assert (= (and b!2506996 res!1059944) b!2506989))

(assert (= (and d!716200 (not res!1059943)) b!2506990))

(declare-fun m!2867261 () Bool)

(assert (=> b!2506997 m!2867261))

(declare-fun m!2867263 () Bool)

(assert (=> b!2506991 m!2867263))

(declare-fun m!2867267 () Bool)

(assert (=> b!2506991 m!2867267))

(assert (=> b!2506989 m!2867263))

(declare-fun m!2867269 () Bool)

(assert (=> b!2506989 m!2867269))

(assert (=> b!2506996 m!2867263))

(declare-fun m!2867273 () Bool)

(assert (=> b!2506996 m!2867273))

(declare-fun m!2867275 () Bool)

(assert (=> d!716200 m!2867275))

(declare-fun m!2867279 () Bool)

(assert (=> d!716200 m!2867279))

(declare-fun m!2867281 () Bool)

(assert (=> d!716200 m!2867281))

(assert (=> b!2506990 m!2867275))

(declare-fun m!2867283 () Bool)

(assert (=> b!2506994 m!2867283))

(assert (=> b!2506994 m!2867283))

(declare-fun m!2867285 () Bool)

(assert (=> b!2506994 m!2867285))

(declare-fun m!2867287 () Bool)

(assert (=> b!2506994 m!2867287))

(assert (=> b!2506994 m!2867283))

(declare-fun m!2867291 () Bool)

(assert (=> b!2506994 m!2867291))

(assert (=> b!2506722 d!716200))

(declare-fun d!716202 () Bool)

(assert (=> d!716202 (isDefined!4663 (findConcatSeparation!863 lt!896844 (regTwo!15376 r!27340) Nil!29397 tl!4068 tl!4068))))

(declare-fun lt!896920 () Unit!43121)

(declare-fun choose!14821 (Regex!7432 Regex!7432 List!29497) Unit!43121)

(assert (=> d!716202 (= lt!896920 (choose!14821 lt!896844 (regTwo!15376 r!27340) tl!4068))))

(assert (=> d!716202 (validRegex!3058 lt!896844)))

(assert (=> d!716202 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!145 lt!896844 (regTwo!15376 r!27340) tl!4068) lt!896920)))

(declare-fun bs!468687 () Bool)

(assert (= bs!468687 d!716202))

(assert (=> bs!468687 m!2867087))

(assert (=> bs!468687 m!2867087))

(declare-fun m!2867297 () Bool)

(assert (=> bs!468687 m!2867297))

(declare-fun m!2867299 () Bool)

(assert (=> bs!468687 m!2867299))

(assert (=> bs!468687 m!2867281))

(assert (=> b!2506722 d!716202))

(declare-fun d!716206 () Bool)

(declare-fun isEmpty!16870 (Option!5841) Bool)

(assert (=> d!716206 (= (isDefined!4663 lt!896842) (not (isEmpty!16870 lt!896842)))))

(declare-fun bs!468688 () Bool)

(assert (= bs!468688 d!716206))

(declare-fun m!2867301 () Bool)

(assert (=> bs!468688 m!2867301))

(assert (=> b!2506722 d!716206))

(declare-fun b!2506998 () Bool)

(declare-fun e!1589392 () Bool)

(declare-fun e!1589391 () Bool)

(assert (=> b!2506998 (= e!1589392 e!1589391)))

(declare-fun res!1059950 () Bool)

(assert (=> b!2506998 (=> res!1059950 e!1589391)))

(declare-fun call!155257 () Bool)

(assert (=> b!2506998 (= res!1059950 call!155257)))

(declare-fun b!2506999 () Bool)

(declare-fun res!1059946 () Bool)

(declare-fun e!1589389 () Bool)

(assert (=> b!2506999 (=> (not res!1059946) (not e!1589389))))

(assert (=> b!2506999 (= res!1059946 (isEmpty!16869 (tail!3994 (_1!17263 lt!896841))))))

(declare-fun b!2507000 () Bool)

(declare-fun res!1059949 () Bool)

(assert (=> b!2507000 (=> (not res!1059949) (not e!1589389))))

(assert (=> b!2507000 (= res!1059949 (not call!155257))))

(declare-fun b!2507001 () Bool)

(assert (=> b!2507001 (= e!1589389 (= (head!5717 (_1!17263 lt!896841)) (c!399174 lt!896844)))))

(declare-fun b!2507002 () Bool)

(declare-fun e!1589390 () Bool)

(declare-fun lt!896921 () Bool)

(assert (=> b!2507002 (= e!1589390 (= lt!896921 call!155257))))

(declare-fun b!2507003 () Bool)

(declare-fun e!1589393 () Bool)

(assert (=> b!2507003 (= e!1589393 e!1589392)))

(declare-fun res!1059952 () Bool)

(assert (=> b!2507003 (=> (not res!1059952) (not e!1589392))))

(assert (=> b!2507003 (= res!1059952 (not lt!896921))))

(declare-fun b!2507004 () Bool)

(declare-fun e!1589394 () Bool)

(assert (=> b!2507004 (= e!1589390 e!1589394)))

(declare-fun c!399238 () Bool)

(assert (=> b!2507004 (= c!399238 (is-EmptyLang!7432 lt!896844))))

(declare-fun b!2507005 () Bool)

(declare-fun res!1059948 () Bool)

(assert (=> b!2507005 (=> res!1059948 e!1589391)))

(assert (=> b!2507005 (= res!1059948 (not (isEmpty!16869 (tail!3994 (_1!17263 lt!896841)))))))

(declare-fun d!716208 () Bool)

(assert (=> d!716208 e!1589390))

(declare-fun c!399237 () Bool)

(assert (=> d!716208 (= c!399237 (is-EmptyExpr!7432 lt!896844))))

(declare-fun e!1589388 () Bool)

(assert (=> d!716208 (= lt!896921 e!1589388)))

(declare-fun c!399236 () Bool)

(assert (=> d!716208 (= c!399236 (isEmpty!16869 (_1!17263 lt!896841)))))

(assert (=> d!716208 (validRegex!3058 lt!896844)))

(assert (=> d!716208 (= (matchR!3435 lt!896844 (_1!17263 lt!896841)) lt!896921)))

(declare-fun b!2507006 () Bool)

(declare-fun res!1059953 () Bool)

(assert (=> b!2507006 (=> res!1059953 e!1589393)))

(assert (=> b!2507006 (= res!1059953 e!1589389)))

(declare-fun res!1059947 () Bool)

(assert (=> b!2507006 (=> (not res!1059947) (not e!1589389))))

(assert (=> b!2507006 (= res!1059947 lt!896921)))

(declare-fun b!2507007 () Bool)

(declare-fun res!1059951 () Bool)

(assert (=> b!2507007 (=> res!1059951 e!1589393)))

(assert (=> b!2507007 (= res!1059951 (not (is-ElementMatch!7432 lt!896844)))))

(assert (=> b!2507007 (= e!1589394 e!1589393)))

(declare-fun b!2507008 () Bool)

(assert (=> b!2507008 (= e!1589391 (not (= (head!5717 (_1!17263 lt!896841)) (c!399174 lt!896844))))))

(declare-fun bm!155252 () Bool)

(assert (=> bm!155252 (= call!155257 (isEmpty!16869 (_1!17263 lt!896841)))))

(declare-fun b!2507009 () Bool)

(assert (=> b!2507009 (= e!1589394 (not lt!896921))))

(declare-fun b!2507010 () Bool)

(assert (=> b!2507010 (= e!1589388 (matchR!3435 (derivativeStep!2001 lt!896844 (head!5717 (_1!17263 lt!896841))) (tail!3994 (_1!17263 lt!896841))))))

(declare-fun b!2507011 () Bool)

(assert (=> b!2507011 (= e!1589388 (nullable!2349 lt!896844))))

(assert (= (and d!716208 c!399236) b!2507011))

(assert (= (and d!716208 (not c!399236)) b!2507010))

(assert (= (and d!716208 c!399237) b!2507002))

(assert (= (and d!716208 (not c!399237)) b!2507004))

(assert (= (and b!2507004 c!399238) b!2507009))

(assert (= (and b!2507004 (not c!399238)) b!2507007))

(assert (= (and b!2507007 (not res!1059951)) b!2507006))

(assert (= (and b!2507006 res!1059947) b!2507000))

(assert (= (and b!2507000 res!1059949) b!2506999))

(assert (= (and b!2506999 res!1059946) b!2507001))

(assert (= (and b!2507006 (not res!1059953)) b!2507003))

(assert (= (and b!2507003 res!1059952) b!2506998))

(assert (= (and b!2506998 (not res!1059950)) b!2507005))

(assert (= (and b!2507005 (not res!1059948)) b!2507008))

(assert (= (or b!2507002 b!2506998 b!2507000) bm!155252))

(declare-fun m!2867303 () Bool)

(assert (=> b!2507010 m!2867303))

(assert (=> b!2507010 m!2867303))

(declare-fun m!2867305 () Bool)

(assert (=> b!2507010 m!2867305))

(declare-fun m!2867307 () Bool)

(assert (=> b!2507010 m!2867307))

(assert (=> b!2507010 m!2867305))

(assert (=> b!2507010 m!2867307))

(declare-fun m!2867309 () Bool)

(assert (=> b!2507010 m!2867309))

(assert (=> b!2507001 m!2867303))

(declare-fun m!2867311 () Bool)

(assert (=> b!2507011 m!2867311))

(assert (=> b!2507008 m!2867303))

(assert (=> b!2507005 m!2867307))

(assert (=> b!2507005 m!2867307))

(declare-fun m!2867313 () Bool)

(assert (=> b!2507005 m!2867313))

(declare-fun m!2867315 () Bool)

(assert (=> d!716208 m!2867315))

(assert (=> d!716208 m!2867281))

(assert (=> b!2506999 m!2867307))

(assert (=> b!2506999 m!2867307))

(assert (=> b!2506999 m!2867313))

(assert (=> bm!155252 m!2867315))

(assert (=> b!2506716 d!716208))

(declare-fun b!2507016 () Bool)

(declare-fun e!1589401 () Bool)

(declare-fun e!1589400 () Bool)

(assert (=> b!2507016 (= e!1589401 e!1589400)))

(declare-fun res!1059958 () Bool)

(assert (=> b!2507016 (=> res!1059958 e!1589400)))

(declare-fun call!155258 () Bool)

(assert (=> b!2507016 (= res!1059958 call!155258)))

(declare-fun b!2507017 () Bool)

(declare-fun res!1059954 () Bool)

(declare-fun e!1589398 () Bool)

(assert (=> b!2507017 (=> (not res!1059954) (not e!1589398))))

(assert (=> b!2507017 (= res!1059954 (isEmpty!16869 (tail!3994 (Cons!29397 c!14016 (_1!17263 lt!896841)))))))

(declare-fun b!2507018 () Bool)

(declare-fun res!1059957 () Bool)

(assert (=> b!2507018 (=> (not res!1059957) (not e!1589398))))

(assert (=> b!2507018 (= res!1059957 (not call!155258))))

(declare-fun b!2507019 () Bool)

(assert (=> b!2507019 (= e!1589398 (= (head!5717 (Cons!29397 c!14016 (_1!17263 lt!896841))) (c!399174 (regOne!15376 r!27340))))))

(declare-fun b!2507020 () Bool)

(declare-fun e!1589399 () Bool)

(declare-fun lt!896924 () Bool)

(assert (=> b!2507020 (= e!1589399 (= lt!896924 call!155258))))

(declare-fun b!2507021 () Bool)

(declare-fun e!1589402 () Bool)

(assert (=> b!2507021 (= e!1589402 e!1589401)))

(declare-fun res!1059960 () Bool)

(assert (=> b!2507021 (=> (not res!1059960) (not e!1589401))))

(assert (=> b!2507021 (= res!1059960 (not lt!896924))))

(declare-fun b!2507022 () Bool)

(declare-fun e!1589403 () Bool)

(assert (=> b!2507022 (= e!1589399 e!1589403)))

(declare-fun c!399243 () Bool)

(assert (=> b!2507022 (= c!399243 (is-EmptyLang!7432 (regOne!15376 r!27340)))))

(declare-fun b!2507023 () Bool)

(declare-fun res!1059956 () Bool)

(assert (=> b!2507023 (=> res!1059956 e!1589400)))

(assert (=> b!2507023 (= res!1059956 (not (isEmpty!16869 (tail!3994 (Cons!29397 c!14016 (_1!17263 lt!896841))))))))

(declare-fun d!716210 () Bool)

(assert (=> d!716210 e!1589399))

(declare-fun c!399242 () Bool)

(assert (=> d!716210 (= c!399242 (is-EmptyExpr!7432 (regOne!15376 r!27340)))))

(declare-fun e!1589397 () Bool)

(assert (=> d!716210 (= lt!896924 e!1589397)))

(declare-fun c!399241 () Bool)

(assert (=> d!716210 (= c!399241 (isEmpty!16869 (Cons!29397 c!14016 (_1!17263 lt!896841))))))

(assert (=> d!716210 (validRegex!3058 (regOne!15376 r!27340))))

(assert (=> d!716210 (= (matchR!3435 (regOne!15376 r!27340) (Cons!29397 c!14016 (_1!17263 lt!896841))) lt!896924)))

(declare-fun b!2507024 () Bool)

(declare-fun res!1059961 () Bool)

(assert (=> b!2507024 (=> res!1059961 e!1589402)))

(assert (=> b!2507024 (= res!1059961 e!1589398)))

(declare-fun res!1059955 () Bool)

(assert (=> b!2507024 (=> (not res!1059955) (not e!1589398))))

(assert (=> b!2507024 (= res!1059955 lt!896924)))

(declare-fun b!2507025 () Bool)

(declare-fun res!1059959 () Bool)

(assert (=> b!2507025 (=> res!1059959 e!1589402)))

(assert (=> b!2507025 (= res!1059959 (not (is-ElementMatch!7432 (regOne!15376 r!27340))))))

(assert (=> b!2507025 (= e!1589403 e!1589402)))

(declare-fun b!2507026 () Bool)

(assert (=> b!2507026 (= e!1589400 (not (= (head!5717 (Cons!29397 c!14016 (_1!17263 lt!896841))) (c!399174 (regOne!15376 r!27340)))))))

(declare-fun bm!155253 () Bool)

(assert (=> bm!155253 (= call!155258 (isEmpty!16869 (Cons!29397 c!14016 (_1!17263 lt!896841))))))

(declare-fun b!2507027 () Bool)

(assert (=> b!2507027 (= e!1589403 (not lt!896924))))

(declare-fun b!2507028 () Bool)

(assert (=> b!2507028 (= e!1589397 (matchR!3435 (derivativeStep!2001 (regOne!15376 r!27340) (head!5717 (Cons!29397 c!14016 (_1!17263 lt!896841)))) (tail!3994 (Cons!29397 c!14016 (_1!17263 lt!896841)))))))

(declare-fun b!2507029 () Bool)

(assert (=> b!2507029 (= e!1589397 (nullable!2349 (regOne!15376 r!27340)))))

(assert (= (and d!716210 c!399241) b!2507029))

(assert (= (and d!716210 (not c!399241)) b!2507028))

(assert (= (and d!716210 c!399242) b!2507020))

(assert (= (and d!716210 (not c!399242)) b!2507022))

(assert (= (and b!2507022 c!399243) b!2507027))

(assert (= (and b!2507022 (not c!399243)) b!2507025))

(assert (= (and b!2507025 (not res!1059959)) b!2507024))

(assert (= (and b!2507024 res!1059955) b!2507018))

(assert (= (and b!2507018 res!1059957) b!2507017))

(assert (= (and b!2507017 res!1059954) b!2507019))

(assert (= (and b!2507024 (not res!1059961)) b!2507021))

(assert (= (and b!2507021 res!1059960) b!2507016))

(assert (= (and b!2507016 (not res!1059958)) b!2507023))

(assert (= (and b!2507023 (not res!1059956)) b!2507026))

(assert (= (or b!2507020 b!2507016 b!2507018) bm!155253))

(declare-fun m!2867317 () Bool)

(assert (=> b!2507028 m!2867317))

(assert (=> b!2507028 m!2867317))

(declare-fun m!2867319 () Bool)

(assert (=> b!2507028 m!2867319))

(declare-fun m!2867321 () Bool)

(assert (=> b!2507028 m!2867321))

(assert (=> b!2507028 m!2867319))

(assert (=> b!2507028 m!2867321))

(declare-fun m!2867323 () Bool)

(assert (=> b!2507028 m!2867323))

(assert (=> b!2507019 m!2867317))

(assert (=> b!2507029 m!2867079))

(assert (=> b!2507026 m!2867317))

(assert (=> b!2507023 m!2867321))

(assert (=> b!2507023 m!2867321))

(declare-fun m!2867325 () Bool)

(assert (=> b!2507023 m!2867325))

(declare-fun m!2867327 () Bool)

(assert (=> d!716210 m!2867327))

(assert (=> d!716210 m!2867117))

(assert (=> b!2507017 m!2867321))

(assert (=> b!2507017 m!2867321))

(assert (=> b!2507017 m!2867325))

(assert (=> bm!155253 m!2867327))

(assert (=> b!2506727 d!716210))

(declare-fun d!716212 () Bool)

(declare-fun lt!896925 () Regex!7432)

(assert (=> d!716212 (validRegex!3058 lt!896925)))

(declare-fun e!1589404 () Regex!7432)

(assert (=> d!716212 (= lt!896925 e!1589404)))

(declare-fun c!399244 () Bool)

(assert (=> d!716212 (= c!399244 (is-Cons!29397 tl!4068))))

(assert (=> d!716212 (validRegex!3058 lt!896847)))

(assert (=> d!716212 (= (derivative!127 lt!896847 tl!4068) lt!896925)))

(declare-fun b!2507030 () Bool)

(assert (=> b!2507030 (= e!1589404 (derivative!127 (derivativeStep!2001 lt!896847 (h!34817 tl!4068)) (t!211196 tl!4068)))))

(declare-fun b!2507031 () Bool)

(assert (=> b!2507031 (= e!1589404 lt!896847)))

(assert (= (and d!716212 c!399244) b!2507030))

(assert (= (and d!716212 (not c!399244)) b!2507031))

(declare-fun m!2867329 () Bool)

(assert (=> d!716212 m!2867329))

(declare-fun m!2867331 () Bool)

(assert (=> d!716212 m!2867331))

(declare-fun m!2867333 () Bool)

(assert (=> b!2507030 m!2867333))

(assert (=> b!2507030 m!2867333))

(declare-fun m!2867335 () Bool)

(assert (=> b!2507030 m!2867335))

(assert (=> b!2506726 d!716212))

(declare-fun d!716214 () Bool)

(declare-fun e!1589418 () Bool)

(assert (=> d!716214 e!1589418))

(declare-fun res!1059974 () Bool)

(assert (=> d!716214 (=> res!1059974 e!1589418)))

(assert (=> d!716214 (= res!1059974 (matchR!3435 lt!896843 tl!4068))))

(declare-fun lt!896930 () Unit!43121)

(declare-fun choose!14823 (Regex!7432 Regex!7432 List!29497) Unit!43121)

(assert (=> d!716214 (= lt!896930 (choose!14823 lt!896843 lt!896840 tl!4068))))

(declare-fun e!1589417 () Bool)

(assert (=> d!716214 e!1589417))

(declare-fun res!1059975 () Bool)

(assert (=> d!716214 (=> (not res!1059975) (not e!1589417))))

(assert (=> d!716214 (= res!1059975 (validRegex!3058 lt!896843))))

(assert (=> d!716214 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!127 lt!896843 lt!896840 tl!4068) lt!896930)))

(declare-fun b!2507052 () Bool)

(assert (=> b!2507052 (= e!1589417 (validRegex!3058 lt!896840))))

(declare-fun b!2507053 () Bool)

(assert (=> b!2507053 (= e!1589418 (matchR!3435 lt!896840 tl!4068))))

(assert (= (and d!716214 res!1059975) b!2507052))

(assert (= (and d!716214 (not res!1059974)) b!2507053))

(assert (=> d!716214 m!2867091))

(declare-fun m!2867361 () Bool)

(assert (=> d!716214 m!2867361))

(declare-fun m!2867363 () Bool)

(assert (=> d!716214 m!2867363))

(assert (=> b!2507052 m!2867211))

(assert (=> b!2507053 m!2867073))

(assert (=> b!2506726 d!716214))

(declare-fun b!2507068 () Bool)

(declare-fun e!1589430 () Bool)

(declare-fun e!1589429 () Bool)

(assert (=> b!2507068 (= e!1589430 e!1589429)))

(declare-fun res!1059988 () Bool)

(assert (=> b!2507068 (=> res!1059988 e!1589429)))

(declare-fun call!155261 () Bool)

(assert (=> b!2507068 (= res!1059988 call!155261)))

(declare-fun b!2507069 () Bool)

(declare-fun res!1059984 () Bool)

(declare-fun e!1589427 () Bool)

(assert (=> b!2507069 (=> (not res!1059984) (not e!1589427))))

(assert (=> b!2507069 (= res!1059984 (isEmpty!16869 (tail!3994 tl!4068)))))

(declare-fun b!2507070 () Bool)

(declare-fun res!1059987 () Bool)

(assert (=> b!2507070 (=> (not res!1059987) (not e!1589427))))

(assert (=> b!2507070 (= res!1059987 (not call!155261))))

(declare-fun b!2507071 () Bool)

(assert (=> b!2507071 (= e!1589427 (= (head!5717 tl!4068) (c!399174 lt!896843)))))

(declare-fun b!2507072 () Bool)

(declare-fun e!1589428 () Bool)

(declare-fun lt!896932 () Bool)

(assert (=> b!2507072 (= e!1589428 (= lt!896932 call!155261))))

(declare-fun b!2507073 () Bool)

(declare-fun e!1589431 () Bool)

(assert (=> b!2507073 (= e!1589431 e!1589430)))

(declare-fun res!1059990 () Bool)

(assert (=> b!2507073 (=> (not res!1059990) (not e!1589430))))

(assert (=> b!2507073 (= res!1059990 (not lt!896932))))

(declare-fun b!2507074 () Bool)

(declare-fun e!1589432 () Bool)

(assert (=> b!2507074 (= e!1589428 e!1589432)))

(declare-fun c!399254 () Bool)

(assert (=> b!2507074 (= c!399254 (is-EmptyLang!7432 lt!896843))))

(declare-fun b!2507075 () Bool)

(declare-fun res!1059986 () Bool)

(assert (=> b!2507075 (=> res!1059986 e!1589429)))

(assert (=> b!2507075 (= res!1059986 (not (isEmpty!16869 (tail!3994 tl!4068))))))

(declare-fun d!716220 () Bool)

(assert (=> d!716220 e!1589428))

(declare-fun c!399253 () Bool)

(assert (=> d!716220 (= c!399253 (is-EmptyExpr!7432 lt!896843))))

(declare-fun e!1589426 () Bool)

(assert (=> d!716220 (= lt!896932 e!1589426)))

(declare-fun c!399252 () Bool)

(assert (=> d!716220 (= c!399252 (isEmpty!16869 tl!4068))))

(assert (=> d!716220 (validRegex!3058 lt!896843)))

(assert (=> d!716220 (= (matchR!3435 lt!896843 tl!4068) lt!896932)))

(declare-fun b!2507076 () Bool)

(declare-fun res!1059991 () Bool)

(assert (=> b!2507076 (=> res!1059991 e!1589431)))

(assert (=> b!2507076 (= res!1059991 e!1589427)))

(declare-fun res!1059985 () Bool)

(assert (=> b!2507076 (=> (not res!1059985) (not e!1589427))))

(assert (=> b!2507076 (= res!1059985 lt!896932)))

(declare-fun b!2507077 () Bool)

(declare-fun res!1059989 () Bool)

(assert (=> b!2507077 (=> res!1059989 e!1589431)))

(assert (=> b!2507077 (= res!1059989 (not (is-ElementMatch!7432 lt!896843)))))

(assert (=> b!2507077 (= e!1589432 e!1589431)))

(declare-fun b!2507078 () Bool)

(assert (=> b!2507078 (= e!1589429 (not (= (head!5717 tl!4068) (c!399174 lt!896843))))))

(declare-fun bm!155256 () Bool)

(assert (=> bm!155256 (= call!155261 (isEmpty!16869 tl!4068))))

(declare-fun b!2507079 () Bool)

(assert (=> b!2507079 (= e!1589432 (not lt!896932))))

(declare-fun b!2507080 () Bool)

(assert (=> b!2507080 (= e!1589426 (matchR!3435 (derivativeStep!2001 lt!896843 (head!5717 tl!4068)) (tail!3994 tl!4068)))))

(declare-fun b!2507081 () Bool)

(assert (=> b!2507081 (= e!1589426 (nullable!2349 lt!896843))))

(assert (= (and d!716220 c!399252) b!2507081))

(assert (= (and d!716220 (not c!399252)) b!2507080))

(assert (= (and d!716220 c!399253) b!2507072))

(assert (= (and d!716220 (not c!399253)) b!2507074))

(assert (= (and b!2507074 c!399254) b!2507079))

(assert (= (and b!2507074 (not c!399254)) b!2507077))

(assert (= (and b!2507077 (not res!1059989)) b!2507076))

(assert (= (and b!2507076 res!1059985) b!2507070))

(assert (= (and b!2507070 res!1059987) b!2507069))

(assert (= (and b!2507069 res!1059984) b!2507071))

(assert (= (and b!2507076 (not res!1059991)) b!2507073))

(assert (= (and b!2507073 res!1059990) b!2507068))

(assert (= (and b!2507068 (not res!1059988)) b!2507075))

(assert (= (and b!2507075 (not res!1059986)) b!2507078))

(assert (= (or b!2507072 b!2507068 b!2507070) bm!155256))

(assert (=> b!2507080 m!2867197))

(assert (=> b!2507080 m!2867197))

(declare-fun m!2867365 () Bool)

(assert (=> b!2507080 m!2867365))

(assert (=> b!2507080 m!2867201))

(assert (=> b!2507080 m!2867365))

(assert (=> b!2507080 m!2867201))

(declare-fun m!2867367 () Bool)

(assert (=> b!2507080 m!2867367))

(assert (=> b!2507071 m!2867197))

(declare-fun m!2867369 () Bool)

(assert (=> b!2507081 m!2867369))

(assert (=> b!2507078 m!2867197))

(assert (=> b!2507075 m!2867201))

(assert (=> b!2507075 m!2867201))

(assert (=> b!2507075 m!2867207))

(assert (=> d!716220 m!2867209))

(assert (=> d!716220 m!2867363))

(assert (=> b!2507069 m!2867201))

(assert (=> b!2507069 m!2867201))

(assert (=> b!2507069 m!2867207))

(assert (=> bm!155256 m!2867209))

(assert (=> b!2506726 d!716220))

(declare-fun b!2507082 () Bool)

(declare-fun e!1589437 () Bool)

(declare-fun e!1589436 () Bool)

(assert (=> b!2507082 (= e!1589437 e!1589436)))

(declare-fun res!1059996 () Bool)

(assert (=> b!2507082 (=> res!1059996 e!1589436)))

(declare-fun call!155262 () Bool)

(assert (=> b!2507082 (= res!1059996 call!155262)))

(declare-fun b!2507083 () Bool)

(declare-fun res!1059992 () Bool)

(declare-fun e!1589434 () Bool)

(assert (=> b!2507083 (=> (not res!1059992) (not e!1589434))))

(assert (=> b!2507083 (= res!1059992 (isEmpty!16869 (tail!3994 tl!4068)))))

(declare-fun b!2507084 () Bool)

(declare-fun res!1059995 () Bool)

(assert (=> b!2507084 (=> (not res!1059995) (not e!1589434))))

(assert (=> b!2507084 (= res!1059995 (not call!155262))))

(declare-fun b!2507085 () Bool)

(assert (=> b!2507085 (= e!1589434 (= (head!5717 tl!4068) (c!399174 lt!896847)))))

(declare-fun b!2507086 () Bool)

(declare-fun e!1589435 () Bool)

(declare-fun lt!896933 () Bool)

(assert (=> b!2507086 (= e!1589435 (= lt!896933 call!155262))))

(declare-fun b!2507087 () Bool)

(declare-fun e!1589438 () Bool)

(assert (=> b!2507087 (= e!1589438 e!1589437)))

(declare-fun res!1059998 () Bool)

(assert (=> b!2507087 (=> (not res!1059998) (not e!1589437))))

(assert (=> b!2507087 (= res!1059998 (not lt!896933))))

(declare-fun b!2507088 () Bool)

(declare-fun e!1589439 () Bool)

(assert (=> b!2507088 (= e!1589435 e!1589439)))

(declare-fun c!399257 () Bool)

(assert (=> b!2507088 (= c!399257 (is-EmptyLang!7432 lt!896847))))

(declare-fun b!2507089 () Bool)

(declare-fun res!1059994 () Bool)

(assert (=> b!2507089 (=> res!1059994 e!1589436)))

(assert (=> b!2507089 (= res!1059994 (not (isEmpty!16869 (tail!3994 tl!4068))))))

(declare-fun d!716222 () Bool)

(assert (=> d!716222 e!1589435))

(declare-fun c!399256 () Bool)

(assert (=> d!716222 (= c!399256 (is-EmptyExpr!7432 lt!896847))))

(declare-fun e!1589433 () Bool)

(assert (=> d!716222 (= lt!896933 e!1589433)))

(declare-fun c!399255 () Bool)

(assert (=> d!716222 (= c!399255 (isEmpty!16869 tl!4068))))

(assert (=> d!716222 (validRegex!3058 lt!896847)))

(assert (=> d!716222 (= (matchR!3435 lt!896847 tl!4068) lt!896933)))

(declare-fun b!2507090 () Bool)

(declare-fun res!1059999 () Bool)

(assert (=> b!2507090 (=> res!1059999 e!1589438)))

(assert (=> b!2507090 (= res!1059999 e!1589434)))

(declare-fun res!1059993 () Bool)

(assert (=> b!2507090 (=> (not res!1059993) (not e!1589434))))

(assert (=> b!2507090 (= res!1059993 lt!896933)))

(declare-fun b!2507091 () Bool)

(declare-fun res!1059997 () Bool)

(assert (=> b!2507091 (=> res!1059997 e!1589438)))

(assert (=> b!2507091 (= res!1059997 (not (is-ElementMatch!7432 lt!896847)))))

(assert (=> b!2507091 (= e!1589439 e!1589438)))

(declare-fun b!2507092 () Bool)

(assert (=> b!2507092 (= e!1589436 (not (= (head!5717 tl!4068) (c!399174 lt!896847))))))

(declare-fun bm!155257 () Bool)

(assert (=> bm!155257 (= call!155262 (isEmpty!16869 tl!4068))))

(declare-fun b!2507093 () Bool)

(assert (=> b!2507093 (= e!1589439 (not lt!896933))))

(declare-fun b!2507094 () Bool)

(assert (=> b!2507094 (= e!1589433 (matchR!3435 (derivativeStep!2001 lt!896847 (head!5717 tl!4068)) (tail!3994 tl!4068)))))

(declare-fun b!2507095 () Bool)

(assert (=> b!2507095 (= e!1589433 (nullable!2349 lt!896847))))

(assert (= (and d!716222 c!399255) b!2507095))

(assert (= (and d!716222 (not c!399255)) b!2507094))

(assert (= (and d!716222 c!399256) b!2507086))

(assert (= (and d!716222 (not c!399256)) b!2507088))

(assert (= (and b!2507088 c!399257) b!2507093))

(assert (= (and b!2507088 (not c!399257)) b!2507091))

(assert (= (and b!2507091 (not res!1059997)) b!2507090))

(assert (= (and b!2507090 res!1059993) b!2507084))

(assert (= (and b!2507084 res!1059995) b!2507083))

(assert (= (and b!2507083 res!1059992) b!2507085))

(assert (= (and b!2507090 (not res!1059999)) b!2507087))

(assert (= (and b!2507087 res!1059998) b!2507082))

(assert (= (and b!2507082 (not res!1059996)) b!2507089))

(assert (= (and b!2507089 (not res!1059994)) b!2507092))

(assert (= (or b!2507086 b!2507082 b!2507084) bm!155257))

(assert (=> b!2507094 m!2867197))

(assert (=> b!2507094 m!2867197))

(declare-fun m!2867377 () Bool)

(assert (=> b!2507094 m!2867377))

(assert (=> b!2507094 m!2867201))

(assert (=> b!2507094 m!2867377))

(assert (=> b!2507094 m!2867201))

(declare-fun m!2867381 () Bool)

(assert (=> b!2507094 m!2867381))

(assert (=> b!2507085 m!2867197))

(declare-fun m!2867383 () Bool)

(assert (=> b!2507095 m!2867383))

(assert (=> b!2507092 m!2867197))

(assert (=> b!2507089 m!2867201))

(assert (=> b!2507089 m!2867201))

(assert (=> b!2507089 m!2867207))

(assert (=> d!716222 m!2867209))

(assert (=> d!716222 m!2867331))

(assert (=> b!2507083 m!2867201))

(assert (=> b!2507083 m!2867201))

(assert (=> b!2507083 m!2867207))

(assert (=> bm!155257 m!2867209))

(assert (=> b!2506726 d!716222))

(declare-fun d!716224 () Bool)

(assert (=> d!716224 (= (matchR!3435 lt!896847 tl!4068) (matchR!3435 (derivative!127 lt!896847 tl!4068) Nil!29397))))

(declare-fun lt!896936 () Unit!43121)

(declare-fun choose!14824 (Regex!7432 List!29497) Unit!43121)

(assert (=> d!716224 (= lt!896936 (choose!14824 lt!896847 tl!4068))))

(assert (=> d!716224 (validRegex!3058 lt!896847)))

(assert (=> d!716224 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!81 lt!896847 tl!4068) lt!896936)))

(declare-fun bs!468689 () Bool)

(assert (= bs!468689 d!716224))

(assert (=> bs!468689 m!2867331))

(declare-fun m!2867393 () Bool)

(assert (=> bs!468689 m!2867393))

(assert (=> bs!468689 m!2867097))

(assert (=> bs!468689 m!2867103))

(assert (=> bs!468689 m!2867099))

(assert (=> bs!468689 m!2867097))

(assert (=> b!2506726 d!716224))

(declare-fun b!2507096 () Bool)

(declare-fun e!1589444 () Bool)

(declare-fun e!1589443 () Bool)

(assert (=> b!2507096 (= e!1589444 e!1589443)))

(declare-fun res!1060004 () Bool)

(assert (=> b!2507096 (=> res!1060004 e!1589443)))

(declare-fun call!155263 () Bool)

(assert (=> b!2507096 (= res!1060004 call!155263)))

(declare-fun b!2507097 () Bool)

(declare-fun res!1060000 () Bool)

(declare-fun e!1589441 () Bool)

(assert (=> b!2507097 (=> (not res!1060000) (not e!1589441))))

(assert (=> b!2507097 (= res!1060000 (isEmpty!16869 (tail!3994 Nil!29397)))))

(declare-fun b!2507098 () Bool)

(declare-fun res!1060003 () Bool)

(assert (=> b!2507098 (=> (not res!1060003) (not e!1589441))))

(assert (=> b!2507098 (= res!1060003 (not call!155263))))

(declare-fun b!2507099 () Bool)

(assert (=> b!2507099 (= e!1589441 (= (head!5717 Nil!29397) (c!399174 (derivative!127 lt!896847 tl!4068))))))

(declare-fun b!2507100 () Bool)

(declare-fun e!1589442 () Bool)

(declare-fun lt!896937 () Bool)

(assert (=> b!2507100 (= e!1589442 (= lt!896937 call!155263))))

(declare-fun b!2507101 () Bool)

(declare-fun e!1589445 () Bool)

(assert (=> b!2507101 (= e!1589445 e!1589444)))

(declare-fun res!1060006 () Bool)

(assert (=> b!2507101 (=> (not res!1060006) (not e!1589444))))

(assert (=> b!2507101 (= res!1060006 (not lt!896937))))

(declare-fun b!2507102 () Bool)

(declare-fun e!1589446 () Bool)

(assert (=> b!2507102 (= e!1589442 e!1589446)))

(declare-fun c!399260 () Bool)

(assert (=> b!2507102 (= c!399260 (is-EmptyLang!7432 (derivative!127 lt!896847 tl!4068)))))

(declare-fun b!2507103 () Bool)

(declare-fun res!1060002 () Bool)

(assert (=> b!2507103 (=> res!1060002 e!1589443)))

(assert (=> b!2507103 (= res!1060002 (not (isEmpty!16869 (tail!3994 Nil!29397))))))

(declare-fun d!716228 () Bool)

(assert (=> d!716228 e!1589442))

(declare-fun c!399259 () Bool)

(assert (=> d!716228 (= c!399259 (is-EmptyExpr!7432 (derivative!127 lt!896847 tl!4068)))))

(declare-fun e!1589440 () Bool)

(assert (=> d!716228 (= lt!896937 e!1589440)))

(declare-fun c!399258 () Bool)

(assert (=> d!716228 (= c!399258 (isEmpty!16869 Nil!29397))))

(assert (=> d!716228 (validRegex!3058 (derivative!127 lt!896847 tl!4068))))

(assert (=> d!716228 (= (matchR!3435 (derivative!127 lt!896847 tl!4068) Nil!29397) lt!896937)))

(declare-fun b!2507104 () Bool)

(declare-fun res!1060007 () Bool)

(assert (=> b!2507104 (=> res!1060007 e!1589445)))

(assert (=> b!2507104 (= res!1060007 e!1589441)))

(declare-fun res!1060001 () Bool)

(assert (=> b!2507104 (=> (not res!1060001) (not e!1589441))))

(assert (=> b!2507104 (= res!1060001 lt!896937)))

(declare-fun b!2507105 () Bool)

(declare-fun res!1060005 () Bool)

(assert (=> b!2507105 (=> res!1060005 e!1589445)))

(assert (=> b!2507105 (= res!1060005 (not (is-ElementMatch!7432 (derivative!127 lt!896847 tl!4068))))))

(assert (=> b!2507105 (= e!1589446 e!1589445)))

(declare-fun b!2507106 () Bool)

(assert (=> b!2507106 (= e!1589443 (not (= (head!5717 Nil!29397) (c!399174 (derivative!127 lt!896847 tl!4068)))))))

(declare-fun bm!155258 () Bool)

(assert (=> bm!155258 (= call!155263 (isEmpty!16869 Nil!29397))))

(declare-fun b!2507107 () Bool)

(assert (=> b!2507107 (= e!1589446 (not lt!896937))))

(declare-fun b!2507108 () Bool)

(assert (=> b!2507108 (= e!1589440 (matchR!3435 (derivativeStep!2001 (derivative!127 lt!896847 tl!4068) (head!5717 Nil!29397)) (tail!3994 Nil!29397)))))

(declare-fun b!2507109 () Bool)

(assert (=> b!2507109 (= e!1589440 (nullable!2349 (derivative!127 lt!896847 tl!4068)))))

(assert (= (and d!716228 c!399258) b!2507109))

(assert (= (and d!716228 (not c!399258)) b!2507108))

(assert (= (and d!716228 c!399259) b!2507100))

(assert (= (and d!716228 (not c!399259)) b!2507102))

(assert (= (and b!2507102 c!399260) b!2507107))

(assert (= (and b!2507102 (not c!399260)) b!2507105))

(assert (= (and b!2507105 (not res!1060005)) b!2507104))

(assert (= (and b!2507104 res!1060001) b!2507098))

(assert (= (and b!2507098 res!1060003) b!2507097))

(assert (= (and b!2507097 res!1060000) b!2507099))

(assert (= (and b!2507104 (not res!1060007)) b!2507101))

(assert (= (and b!2507101 res!1060006) b!2507096))

(assert (= (and b!2507096 (not res!1060004)) b!2507103))

(assert (= (and b!2507103 (not res!1060002)) b!2507106))

(assert (= (or b!2507100 b!2507096 b!2507098) bm!155258))

(declare-fun m!2867395 () Bool)

(assert (=> b!2507108 m!2867395))

(assert (=> b!2507108 m!2867097))

(assert (=> b!2507108 m!2867395))

(declare-fun m!2867397 () Bool)

(assert (=> b!2507108 m!2867397))

(declare-fun m!2867399 () Bool)

(assert (=> b!2507108 m!2867399))

(assert (=> b!2507108 m!2867397))

(assert (=> b!2507108 m!2867399))

(declare-fun m!2867401 () Bool)

(assert (=> b!2507108 m!2867401))

(assert (=> b!2507099 m!2867395))

(assert (=> b!2507109 m!2867097))

(declare-fun m!2867403 () Bool)

(assert (=> b!2507109 m!2867403))

(assert (=> b!2507106 m!2867395))

(assert (=> b!2507103 m!2867399))

(assert (=> b!2507103 m!2867399))

(declare-fun m!2867405 () Bool)

(assert (=> b!2507103 m!2867405))

(declare-fun m!2867407 () Bool)

(assert (=> d!716228 m!2867407))

(assert (=> d!716228 m!2867097))

(declare-fun m!2867409 () Bool)

(assert (=> d!716228 m!2867409))

(assert (=> b!2507097 m!2867399))

(assert (=> b!2507097 m!2867399))

(assert (=> b!2507097 m!2867405))

(assert (=> bm!155258 m!2867407))

(assert (=> b!2506726 d!716228))

(declare-fun b!2507110 () Bool)

(declare-fun e!1589448 () Regex!7432)

(declare-fun e!1589450 () Regex!7432)

(assert (=> b!2507110 (= e!1589448 e!1589450)))

(declare-fun c!399265 () Bool)

(assert (=> b!2507110 (= c!399265 (is-ElementMatch!7432 (regTwo!15376 r!27340)))))

(declare-fun c!399264 () Bool)

(declare-fun c!399262 () Bool)

(declare-fun call!155264 () Regex!7432)

(declare-fun bm!155259 () Bool)

(assert (=> bm!155259 (= call!155264 (derivativeStep!2001 (ite c!399264 (regOne!15377 (regTwo!15376 r!27340)) (ite c!399262 (reg!7761 (regTwo!15376 r!27340)) (regOne!15376 (regTwo!15376 r!27340)))) c!14016))))

(declare-fun call!155267 () Regex!7432)

(declare-fun call!155265 () Regex!7432)

(declare-fun e!1589449 () Regex!7432)

(declare-fun b!2507111 () Bool)

(assert (=> b!2507111 (= e!1589449 (Union!7432 (Concat!12128 call!155267 (regTwo!15376 (regTwo!15376 r!27340))) call!155265))))

(declare-fun b!2507112 () Bool)

(declare-fun c!399263 () Bool)

(assert (=> b!2507112 (= c!399263 (nullable!2349 (regOne!15376 (regTwo!15376 r!27340))))))

(declare-fun e!1589451 () Regex!7432)

(assert (=> b!2507112 (= e!1589451 e!1589449)))

(declare-fun bm!155260 () Bool)

(declare-fun call!155266 () Regex!7432)

(assert (=> bm!155260 (= call!155266 call!155264)))

(declare-fun b!2507113 () Bool)

(assert (=> b!2507113 (= e!1589451 (Concat!12128 call!155266 (regTwo!15376 r!27340)))))

(declare-fun bm!155262 () Bool)

(assert (=> bm!155262 (= call!155265 (derivativeStep!2001 (ite c!399264 (regTwo!15377 (regTwo!15376 r!27340)) (regTwo!15376 (regTwo!15376 r!27340))) c!14016))))

(declare-fun b!2507114 () Bool)

(assert (=> b!2507114 (= e!1589450 (ite (= c!14016 (c!399174 (regTwo!15376 r!27340))) EmptyExpr!7432 EmptyLang!7432))))

(declare-fun b!2507115 () Bool)

(declare-fun e!1589447 () Regex!7432)

(assert (=> b!2507115 (= e!1589447 e!1589451)))

(assert (=> b!2507115 (= c!399262 (is-Star!7432 (regTwo!15376 r!27340)))))

(declare-fun b!2507116 () Bool)

(assert (=> b!2507116 (= e!1589447 (Union!7432 call!155264 call!155265))))

(declare-fun b!2507117 () Bool)

(assert (=> b!2507117 (= c!399264 (is-Union!7432 (regTwo!15376 r!27340)))))

(assert (=> b!2507117 (= e!1589450 e!1589447)))

(declare-fun b!2507118 () Bool)

(assert (=> b!2507118 (= e!1589448 EmptyLang!7432)))

(declare-fun b!2507119 () Bool)

(assert (=> b!2507119 (= e!1589449 (Union!7432 (Concat!12128 call!155267 (regTwo!15376 (regTwo!15376 r!27340))) EmptyLang!7432))))

(declare-fun d!716230 () Bool)

(declare-fun lt!896938 () Regex!7432)

(assert (=> d!716230 (validRegex!3058 lt!896938)))

(assert (=> d!716230 (= lt!896938 e!1589448)))

(declare-fun c!399261 () Bool)

(assert (=> d!716230 (= c!399261 (or (is-EmptyExpr!7432 (regTwo!15376 r!27340)) (is-EmptyLang!7432 (regTwo!15376 r!27340))))))

(assert (=> d!716230 (validRegex!3058 (regTwo!15376 r!27340))))

(assert (=> d!716230 (= (derivativeStep!2001 (regTwo!15376 r!27340) c!14016) lt!896938)))

(declare-fun bm!155261 () Bool)

(assert (=> bm!155261 (= call!155267 call!155266)))

(assert (= (and d!716230 c!399261) b!2507118))

(assert (= (and d!716230 (not c!399261)) b!2507110))

(assert (= (and b!2507110 c!399265) b!2507114))

(assert (= (and b!2507110 (not c!399265)) b!2507117))

(assert (= (and b!2507117 c!399264) b!2507116))

(assert (= (and b!2507117 (not c!399264)) b!2507115))

(assert (= (and b!2507115 c!399262) b!2507113))

(assert (= (and b!2507115 (not c!399262)) b!2507112))

(assert (= (and b!2507112 c!399263) b!2507111))

(assert (= (and b!2507112 (not c!399263)) b!2507119))

(assert (= (or b!2507111 b!2507119) bm!155261))

(assert (= (or b!2507113 bm!155261) bm!155260))

(assert (= (or b!2507116 b!2507111) bm!155262))

(assert (= (or b!2507116 bm!155260) bm!155259))

(declare-fun m!2867411 () Bool)

(assert (=> bm!155259 m!2867411))

(declare-fun m!2867413 () Bool)

(assert (=> b!2507112 m!2867413))

(declare-fun m!2867415 () Bool)

(assert (=> bm!155262 m!2867415))

(declare-fun m!2867417 () Bool)

(assert (=> d!716230 m!2867417))

(declare-fun m!2867419 () Bool)

(assert (=> d!716230 m!2867419))

(assert (=> b!2506726 d!716230))

(declare-fun b!2507120 () Bool)

(declare-fun e!1589453 () Regex!7432)

(declare-fun e!1589455 () Regex!7432)

(assert (=> b!2507120 (= e!1589453 e!1589455)))

(declare-fun c!399270 () Bool)

(assert (=> b!2507120 (= c!399270 (is-ElementMatch!7432 (regOne!15376 r!27340)))))

(declare-fun c!399269 () Bool)

(declare-fun bm!155263 () Bool)

(declare-fun c!399267 () Bool)

(declare-fun call!155268 () Regex!7432)

(assert (=> bm!155263 (= call!155268 (derivativeStep!2001 (ite c!399269 (regOne!15377 (regOne!15376 r!27340)) (ite c!399267 (reg!7761 (regOne!15376 r!27340)) (regOne!15376 (regOne!15376 r!27340)))) c!14016))))

(declare-fun call!155271 () Regex!7432)

(declare-fun b!2507121 () Bool)

(declare-fun e!1589454 () Regex!7432)

(declare-fun call!155269 () Regex!7432)

(assert (=> b!2507121 (= e!1589454 (Union!7432 (Concat!12128 call!155271 (regTwo!15376 (regOne!15376 r!27340))) call!155269))))

(declare-fun b!2507122 () Bool)

(declare-fun c!399268 () Bool)

(assert (=> b!2507122 (= c!399268 (nullable!2349 (regOne!15376 (regOne!15376 r!27340))))))

(declare-fun e!1589456 () Regex!7432)

(assert (=> b!2507122 (= e!1589456 e!1589454)))

(declare-fun bm!155264 () Bool)

(declare-fun call!155270 () Regex!7432)

(assert (=> bm!155264 (= call!155270 call!155268)))

(declare-fun b!2507123 () Bool)

(assert (=> b!2507123 (= e!1589456 (Concat!12128 call!155270 (regOne!15376 r!27340)))))

(declare-fun bm!155266 () Bool)

(assert (=> bm!155266 (= call!155269 (derivativeStep!2001 (ite c!399269 (regTwo!15377 (regOne!15376 r!27340)) (regTwo!15376 (regOne!15376 r!27340))) c!14016))))

(declare-fun b!2507124 () Bool)

(assert (=> b!2507124 (= e!1589455 (ite (= c!14016 (c!399174 (regOne!15376 r!27340))) EmptyExpr!7432 EmptyLang!7432))))

(declare-fun b!2507125 () Bool)

(declare-fun e!1589452 () Regex!7432)

(assert (=> b!2507125 (= e!1589452 e!1589456)))

(assert (=> b!2507125 (= c!399267 (is-Star!7432 (regOne!15376 r!27340)))))

(declare-fun b!2507126 () Bool)

(assert (=> b!2507126 (= e!1589452 (Union!7432 call!155268 call!155269))))

(declare-fun b!2507127 () Bool)

(assert (=> b!2507127 (= c!399269 (is-Union!7432 (regOne!15376 r!27340)))))

(assert (=> b!2507127 (= e!1589455 e!1589452)))

(declare-fun b!2507128 () Bool)

(assert (=> b!2507128 (= e!1589453 EmptyLang!7432)))

(declare-fun b!2507129 () Bool)

(assert (=> b!2507129 (= e!1589454 (Union!7432 (Concat!12128 call!155271 (regTwo!15376 (regOne!15376 r!27340))) EmptyLang!7432))))

(declare-fun d!716232 () Bool)

(declare-fun lt!896939 () Regex!7432)

(assert (=> d!716232 (validRegex!3058 lt!896939)))

(assert (=> d!716232 (= lt!896939 e!1589453)))

(declare-fun c!399266 () Bool)

(assert (=> d!716232 (= c!399266 (or (is-EmptyExpr!7432 (regOne!15376 r!27340)) (is-EmptyLang!7432 (regOne!15376 r!27340))))))

(assert (=> d!716232 (validRegex!3058 (regOne!15376 r!27340))))

(assert (=> d!716232 (= (derivativeStep!2001 (regOne!15376 r!27340) c!14016) lt!896939)))

(declare-fun bm!155265 () Bool)

(assert (=> bm!155265 (= call!155271 call!155270)))

(assert (= (and d!716232 c!399266) b!2507128))

(assert (= (and d!716232 (not c!399266)) b!2507120))

(assert (= (and b!2507120 c!399270) b!2507124))

(assert (= (and b!2507120 (not c!399270)) b!2507127))

(assert (= (and b!2507127 c!399269) b!2507126))

(assert (= (and b!2507127 (not c!399269)) b!2507125))

(assert (= (and b!2507125 c!399267) b!2507123))

(assert (= (and b!2507125 (not c!399267)) b!2507122))

(assert (= (and b!2507122 c!399268) b!2507121))

(assert (= (and b!2507122 (not c!399268)) b!2507129))

(assert (= (or b!2507121 b!2507129) bm!155265))

(assert (= (or b!2507123 bm!155265) bm!155264))

(assert (= (or b!2507126 b!2507121) bm!155266))

(assert (= (or b!2507126 bm!155264) bm!155263))

(declare-fun m!2867421 () Bool)

(assert (=> bm!155263 m!2867421))

(declare-fun m!2867423 () Bool)

(assert (=> b!2507122 m!2867423))

(declare-fun m!2867425 () Bool)

(assert (=> bm!155266 m!2867425))

(declare-fun m!2867427 () Bool)

(assert (=> d!716232 m!2867427))

(assert (=> d!716232 m!2867117))

(assert (=> b!2506726 d!716232))

(declare-fun b!2507130 () Bool)

(declare-fun e!1589462 () Bool)

(declare-fun e!1589461 () Bool)

(assert (=> b!2507130 (= e!1589462 e!1589461)))

(declare-fun c!399271 () Bool)

(assert (=> b!2507130 (= c!399271 (is-Star!7432 (regOne!15376 r!27340)))))

(declare-fun bm!155267 () Bool)

(declare-fun call!155274 () Bool)

(declare-fun call!155272 () Bool)

(assert (=> bm!155267 (= call!155274 call!155272)))

(declare-fun b!2507131 () Bool)

(declare-fun res!1060009 () Bool)

(declare-fun e!1589457 () Bool)

(assert (=> b!2507131 (=> res!1060009 e!1589457)))

(assert (=> b!2507131 (= res!1060009 (not (is-Concat!12128 (regOne!15376 r!27340))))))

(declare-fun e!1589458 () Bool)

(assert (=> b!2507131 (= e!1589458 e!1589457)))

(declare-fun c!399272 () Bool)

(declare-fun bm!155268 () Bool)

(assert (=> bm!155268 (= call!155272 (validRegex!3058 (ite c!399271 (reg!7761 (regOne!15376 r!27340)) (ite c!399272 (regOne!15377 (regOne!15376 r!27340)) (regTwo!15376 (regOne!15376 r!27340))))))))

(declare-fun bm!155269 () Bool)

(declare-fun call!155273 () Bool)

(assert (=> bm!155269 (= call!155273 (validRegex!3058 (ite c!399272 (regTwo!15377 (regOne!15376 r!27340)) (regOne!15376 (regOne!15376 r!27340)))))))

(declare-fun b!2507132 () Bool)

(declare-fun e!1589460 () Bool)

(assert (=> b!2507132 (= e!1589461 e!1589460)))

(declare-fun res!1060010 () Bool)

(assert (=> b!2507132 (= res!1060010 (not (nullable!2349 (reg!7761 (regOne!15376 r!27340)))))))

(assert (=> b!2507132 (=> (not res!1060010) (not e!1589460))))

(declare-fun b!2507133 () Bool)

(declare-fun e!1589463 () Bool)

(assert (=> b!2507133 (= e!1589463 call!155274)))

(declare-fun b!2507134 () Bool)

(assert (=> b!2507134 (= e!1589457 e!1589463)))

(declare-fun res!1060012 () Bool)

(assert (=> b!2507134 (=> (not res!1060012) (not e!1589463))))

(assert (=> b!2507134 (= res!1060012 call!155273)))

(declare-fun b!2507135 () Bool)

(declare-fun e!1589459 () Bool)

(assert (=> b!2507135 (= e!1589459 call!155273)))

(declare-fun d!716234 () Bool)

(declare-fun res!1060008 () Bool)

(assert (=> d!716234 (=> res!1060008 e!1589462)))

(assert (=> d!716234 (= res!1060008 (is-ElementMatch!7432 (regOne!15376 r!27340)))))

(assert (=> d!716234 (= (validRegex!3058 (regOne!15376 r!27340)) e!1589462)))

(declare-fun b!2507136 () Bool)

(declare-fun res!1060011 () Bool)

(assert (=> b!2507136 (=> (not res!1060011) (not e!1589459))))

(assert (=> b!2507136 (= res!1060011 call!155274)))

(assert (=> b!2507136 (= e!1589458 e!1589459)))

(declare-fun b!2507137 () Bool)

(assert (=> b!2507137 (= e!1589460 call!155272)))

(declare-fun b!2507138 () Bool)

(assert (=> b!2507138 (= e!1589461 e!1589458)))

(assert (=> b!2507138 (= c!399272 (is-Union!7432 (regOne!15376 r!27340)))))

(assert (= (and d!716234 (not res!1060008)) b!2507130))

(assert (= (and b!2507130 c!399271) b!2507132))

(assert (= (and b!2507130 (not c!399271)) b!2507138))

(assert (= (and b!2507132 res!1060010) b!2507137))

(assert (= (and b!2507138 c!399272) b!2507136))

(assert (= (and b!2507138 (not c!399272)) b!2507131))

(assert (= (and b!2507136 res!1060011) b!2507135))

(assert (= (and b!2507131 (not res!1060009)) b!2507134))

(assert (= (and b!2507134 res!1060012) b!2507133))

(assert (= (or b!2507136 b!2507133) bm!155267))

(assert (= (or b!2507135 b!2507134) bm!155269))

(assert (= (or b!2507137 bm!155267) bm!155268))

(declare-fun m!2867429 () Bool)

(assert (=> bm!155268 m!2867429))

(declare-fun m!2867431 () Bool)

(assert (=> bm!155269 m!2867431))

(declare-fun m!2867433 () Bool)

(assert (=> b!2507132 m!2867433))

(assert (=> b!2506721 d!716234))

(declare-fun b!2507139 () Bool)

(declare-fun e!1589468 () Bool)

(declare-fun e!1589467 () Bool)

(assert (=> b!2507139 (= e!1589468 e!1589467)))

(declare-fun res!1060017 () Bool)

(assert (=> b!2507139 (=> res!1060017 e!1589467)))

(declare-fun call!155275 () Bool)

(assert (=> b!2507139 (= res!1060017 call!155275)))

(declare-fun b!2507140 () Bool)

(declare-fun res!1060013 () Bool)

(declare-fun e!1589465 () Bool)

(assert (=> b!2507140 (=> (not res!1060013) (not e!1589465))))

(assert (=> b!2507140 (= res!1060013 (isEmpty!16869 (tail!3994 (_2!17263 lt!896841))))))

(declare-fun b!2507141 () Bool)

(declare-fun res!1060016 () Bool)

(assert (=> b!2507141 (=> (not res!1060016) (not e!1589465))))

(assert (=> b!2507141 (= res!1060016 (not call!155275))))

(declare-fun b!2507142 () Bool)

(assert (=> b!2507142 (= e!1589465 (= (head!5717 (_2!17263 lt!896841)) (c!399174 (regTwo!15376 r!27340))))))

(declare-fun b!2507143 () Bool)

(declare-fun e!1589466 () Bool)

(declare-fun lt!896942 () Bool)

(assert (=> b!2507143 (= e!1589466 (= lt!896942 call!155275))))

(declare-fun b!2507144 () Bool)

(declare-fun e!1589469 () Bool)

(assert (=> b!2507144 (= e!1589469 e!1589468)))

(declare-fun res!1060019 () Bool)

(assert (=> b!2507144 (=> (not res!1060019) (not e!1589468))))

(assert (=> b!2507144 (= res!1060019 (not lt!896942))))

(declare-fun b!2507145 () Bool)

(declare-fun e!1589470 () Bool)

(assert (=> b!2507145 (= e!1589466 e!1589470)))

(declare-fun c!399275 () Bool)

(assert (=> b!2507145 (= c!399275 (is-EmptyLang!7432 (regTwo!15376 r!27340)))))

(declare-fun b!2507146 () Bool)

(declare-fun res!1060015 () Bool)

(assert (=> b!2507146 (=> res!1060015 e!1589467)))

(assert (=> b!2507146 (= res!1060015 (not (isEmpty!16869 (tail!3994 (_2!17263 lt!896841)))))))

(declare-fun d!716236 () Bool)

(assert (=> d!716236 e!1589466))

(declare-fun c!399274 () Bool)

(assert (=> d!716236 (= c!399274 (is-EmptyExpr!7432 (regTwo!15376 r!27340)))))

(declare-fun e!1589464 () Bool)

(assert (=> d!716236 (= lt!896942 e!1589464)))

(declare-fun c!399273 () Bool)

(assert (=> d!716236 (= c!399273 (isEmpty!16869 (_2!17263 lt!896841)))))

(assert (=> d!716236 (validRegex!3058 (regTwo!15376 r!27340))))

(assert (=> d!716236 (= (matchR!3435 (regTwo!15376 r!27340) (_2!17263 lt!896841)) lt!896942)))

(declare-fun b!2507147 () Bool)

(declare-fun res!1060020 () Bool)

(assert (=> b!2507147 (=> res!1060020 e!1589469)))

(assert (=> b!2507147 (= res!1060020 e!1589465)))

(declare-fun res!1060014 () Bool)

(assert (=> b!2507147 (=> (not res!1060014) (not e!1589465))))

(assert (=> b!2507147 (= res!1060014 lt!896942)))

(declare-fun b!2507148 () Bool)

(declare-fun res!1060018 () Bool)

(assert (=> b!2507148 (=> res!1060018 e!1589469)))

(assert (=> b!2507148 (= res!1060018 (not (is-ElementMatch!7432 (regTwo!15376 r!27340))))))

(assert (=> b!2507148 (= e!1589470 e!1589469)))

(declare-fun b!2507149 () Bool)

(assert (=> b!2507149 (= e!1589467 (not (= (head!5717 (_2!17263 lt!896841)) (c!399174 (regTwo!15376 r!27340)))))))

(declare-fun bm!155270 () Bool)

(assert (=> bm!155270 (= call!155275 (isEmpty!16869 (_2!17263 lt!896841)))))

(declare-fun b!2507150 () Bool)

(assert (=> b!2507150 (= e!1589470 (not lt!896942))))

(declare-fun b!2507151 () Bool)

(assert (=> b!2507151 (= e!1589464 (matchR!3435 (derivativeStep!2001 (regTwo!15376 r!27340) (head!5717 (_2!17263 lt!896841))) (tail!3994 (_2!17263 lt!896841))))))

(declare-fun b!2507152 () Bool)

(assert (=> b!2507152 (= e!1589464 (nullable!2349 (regTwo!15376 r!27340)))))

(assert (= (and d!716236 c!399273) b!2507152))

(assert (= (and d!716236 (not c!399273)) b!2507151))

(assert (= (and d!716236 c!399274) b!2507143))

(assert (= (and d!716236 (not c!399274)) b!2507145))

(assert (= (and b!2507145 c!399275) b!2507150))

(assert (= (and b!2507145 (not c!399275)) b!2507148))

(assert (= (and b!2507148 (not res!1060018)) b!2507147))

(assert (= (and b!2507147 res!1060014) b!2507141))

(assert (= (and b!2507141 res!1060016) b!2507140))

(assert (= (and b!2507140 res!1060013) b!2507142))

(assert (= (and b!2507147 (not res!1060020)) b!2507144))

(assert (= (and b!2507144 res!1060019) b!2507139))

(assert (= (and b!2507139 (not res!1060017)) b!2507146))

(assert (= (and b!2507146 (not res!1060015)) b!2507149))

(assert (= (or b!2507143 b!2507139 b!2507141) bm!155270))

(declare-fun m!2867437 () Bool)

(assert (=> b!2507151 m!2867437))

(assert (=> b!2507151 m!2867437))

(declare-fun m!2867439 () Bool)

(assert (=> b!2507151 m!2867439))

(declare-fun m!2867441 () Bool)

(assert (=> b!2507151 m!2867441))

(assert (=> b!2507151 m!2867439))

(assert (=> b!2507151 m!2867441))

(declare-fun m!2867443 () Bool)

(assert (=> b!2507151 m!2867443))

(assert (=> b!2507142 m!2867437))

(declare-fun m!2867445 () Bool)

(assert (=> b!2507152 m!2867445))

(assert (=> b!2507149 m!2867437))

(assert (=> b!2507146 m!2867441))

(assert (=> b!2507146 m!2867441))

(declare-fun m!2867447 () Bool)

(assert (=> b!2507146 m!2867447))

(declare-fun m!2867449 () Bool)

(assert (=> d!716236 m!2867449))

(assert (=> d!716236 m!2867419))

(assert (=> b!2507140 m!2867441))

(assert (=> b!2507140 m!2867441))

(assert (=> b!2507140 m!2867447))

(assert (=> bm!155270 m!2867449))

(assert (=> b!2506715 d!716236))

(declare-fun d!716240 () Bool)

(assert (=> d!716240 (= (nullable!2349 (regOne!15376 r!27340)) (nullableFct!613 (regOne!15376 r!27340)))))

(declare-fun bs!468691 () Bool)

(assert (= bs!468691 d!716240))

(declare-fun m!2867451 () Bool)

(assert (=> bs!468691 m!2867451))

(assert (=> b!2506725 d!716240))

(declare-fun b!2507165 () Bool)

(declare-fun e!1589473 () Bool)

(declare-fun tp!801932 () Bool)

(assert (=> b!2507165 (= e!1589473 tp!801932)))

(assert (=> b!2506718 (= tp!801896 e!1589473)))

(declare-fun b!2507163 () Bool)

(assert (=> b!2507163 (= e!1589473 tp_is_empty!12719)))

(declare-fun b!2507164 () Bool)

(declare-fun tp!801930 () Bool)

(declare-fun tp!801933 () Bool)

(assert (=> b!2507164 (= e!1589473 (and tp!801930 tp!801933))))

(declare-fun b!2507166 () Bool)

(declare-fun tp!801929 () Bool)

(declare-fun tp!801931 () Bool)

(assert (=> b!2507166 (= e!1589473 (and tp!801929 tp!801931))))

(assert (= (and b!2506718 (is-ElementMatch!7432 (reg!7761 r!27340))) b!2507163))

(assert (= (and b!2506718 (is-Concat!12128 (reg!7761 r!27340))) b!2507164))

(assert (= (and b!2506718 (is-Star!7432 (reg!7761 r!27340))) b!2507165))

(assert (= (and b!2506718 (is-Union!7432 (reg!7761 r!27340))) b!2507166))

(declare-fun b!2507169 () Bool)

(declare-fun e!1589474 () Bool)

(declare-fun tp!801937 () Bool)

(assert (=> b!2507169 (= e!1589474 tp!801937)))

(assert (=> b!2506723 (= tp!801900 e!1589474)))

(declare-fun b!2507167 () Bool)

(assert (=> b!2507167 (= e!1589474 tp_is_empty!12719)))

(declare-fun b!2507168 () Bool)

(declare-fun tp!801935 () Bool)

(declare-fun tp!801938 () Bool)

(assert (=> b!2507168 (= e!1589474 (and tp!801935 tp!801938))))

(declare-fun b!2507170 () Bool)

(declare-fun tp!801934 () Bool)

(declare-fun tp!801936 () Bool)

(assert (=> b!2507170 (= e!1589474 (and tp!801934 tp!801936))))

(assert (= (and b!2506723 (is-ElementMatch!7432 (regOne!15376 r!27340))) b!2507167))

(assert (= (and b!2506723 (is-Concat!12128 (regOne!15376 r!27340))) b!2507168))

(assert (= (and b!2506723 (is-Star!7432 (regOne!15376 r!27340))) b!2507169))

(assert (= (and b!2506723 (is-Union!7432 (regOne!15376 r!27340))) b!2507170))

(declare-fun b!2507173 () Bool)

(declare-fun e!1589475 () Bool)

(declare-fun tp!801942 () Bool)

(assert (=> b!2507173 (= e!1589475 tp!801942)))

(assert (=> b!2506723 (= tp!801899 e!1589475)))

(declare-fun b!2507171 () Bool)

(assert (=> b!2507171 (= e!1589475 tp_is_empty!12719)))

(declare-fun b!2507172 () Bool)

(declare-fun tp!801940 () Bool)

(declare-fun tp!801943 () Bool)

(assert (=> b!2507172 (= e!1589475 (and tp!801940 tp!801943))))

(declare-fun b!2507174 () Bool)

(declare-fun tp!801939 () Bool)

(declare-fun tp!801941 () Bool)

(assert (=> b!2507174 (= e!1589475 (and tp!801939 tp!801941))))

(assert (= (and b!2506723 (is-ElementMatch!7432 (regTwo!15376 r!27340))) b!2507171))

(assert (= (and b!2506723 (is-Concat!12128 (regTwo!15376 r!27340))) b!2507172))

(assert (= (and b!2506723 (is-Star!7432 (regTwo!15376 r!27340))) b!2507173))

(assert (= (and b!2506723 (is-Union!7432 (regTwo!15376 r!27340))) b!2507174))

(declare-fun b!2507179 () Bool)

(declare-fun e!1589478 () Bool)

(declare-fun tp!801946 () Bool)

(assert (=> b!2507179 (= e!1589478 (and tp_is_empty!12719 tp!801946))))

(assert (=> b!2506720 (= tp!801895 e!1589478)))

(assert (= (and b!2506720 (is-Cons!29397 (t!211196 tl!4068))) b!2507179))

(declare-fun b!2507182 () Bool)

(declare-fun e!1589479 () Bool)

(declare-fun tp!801950 () Bool)

(assert (=> b!2507182 (= e!1589479 tp!801950)))

(assert (=> b!2506714 (= tp!801897 e!1589479)))

(declare-fun b!2507180 () Bool)

(assert (=> b!2507180 (= e!1589479 tp_is_empty!12719)))

(declare-fun b!2507181 () Bool)

(declare-fun tp!801948 () Bool)

(declare-fun tp!801951 () Bool)

(assert (=> b!2507181 (= e!1589479 (and tp!801948 tp!801951))))

(declare-fun b!2507183 () Bool)

(declare-fun tp!801947 () Bool)

(declare-fun tp!801949 () Bool)

(assert (=> b!2507183 (= e!1589479 (and tp!801947 tp!801949))))

(assert (= (and b!2506714 (is-ElementMatch!7432 (regOne!15377 r!27340))) b!2507180))

(assert (= (and b!2506714 (is-Concat!12128 (regOne!15377 r!27340))) b!2507181))

(assert (= (and b!2506714 (is-Star!7432 (regOne!15377 r!27340))) b!2507182))

(assert (= (and b!2506714 (is-Union!7432 (regOne!15377 r!27340))) b!2507183))

(declare-fun b!2507186 () Bool)

(declare-fun e!1589480 () Bool)

(declare-fun tp!801955 () Bool)

(assert (=> b!2507186 (= e!1589480 tp!801955)))

(assert (=> b!2506714 (= tp!801898 e!1589480)))

(declare-fun b!2507184 () Bool)

(assert (=> b!2507184 (= e!1589480 tp_is_empty!12719)))

(declare-fun b!2507185 () Bool)

(declare-fun tp!801953 () Bool)

(declare-fun tp!801956 () Bool)

(assert (=> b!2507185 (= e!1589480 (and tp!801953 tp!801956))))

(declare-fun b!2507187 () Bool)

(declare-fun tp!801952 () Bool)

(declare-fun tp!801954 () Bool)

(assert (=> b!2507187 (= e!1589480 (and tp!801952 tp!801954))))

(assert (= (and b!2506714 (is-ElementMatch!7432 (regTwo!15377 r!27340))) b!2507184))

(assert (= (and b!2506714 (is-Concat!12128 (regTwo!15377 r!27340))) b!2507185))

(assert (= (and b!2506714 (is-Star!7432 (regTwo!15377 r!27340))) b!2507186))

(assert (= (and b!2506714 (is-Union!7432 (regTwo!15377 r!27340))) b!2507187))

(push 1)

(assert (not b!2507151))

(assert (not d!716232))

(assert (not b!2507109))

(assert (not b!2507172))

(assert (not bm!155253))

(assert (not b!2507092))

(assert (not b!2507106))

(assert tp_is_empty!12719)

(assert (not b!2507132))

(assert (not b!2507146))

(assert (not b!2506927))

(assert (not bm!155247))

(assert (not b!2507053))

(assert (not d!716174))

(assert (not b!2507019))

(assert (not bm!155258))

(assert (not d!716224))

(assert (not d!716214))

(assert (not bm!155270))

(assert (not b!2507005))

(assert (not d!716236))

(assert (not b!2507142))

(assert (not d!716220))

(assert (not b!2506880))

(assert (not b!2507179))

(assert (not b!2506999))

(assert (not d!716212))

(assert (not bm!155259))

(assert (not d!716222))

(assert (not b!2506868))

(assert (not b!2507010))

(assert (not b!2507030))

(assert (not b!2507108))

(assert (not bm!155236))

(assert (not b!2507008))

(assert (not b!2507094))

(assert (not b!2507182))

(assert (not b!2506994))

(assert (not b!2506991))

(assert (not b!2507152))

(assert (not d!716210))

(assert (not b!2507164))

(assert (not b!2506989))

(assert (not b!2507083))

(assert (not b!2507122))

(assert (not d!716188))

(assert (not bm!155248))

(assert (not b!2507097))

(assert (not d!716228))

(assert (not b!2507187))

(assert (not b!2507186))

(assert (not bm!155239))

(assert (not b!2507078))

(assert (not b!2507149))

(assert (not b!2507089))

(assert (not bm!155268))

(assert (not bm!155263))

(assert (not b!2506910))

(assert (not b!2506990))

(assert (not d!716200))

(assert (not d!716202))

(assert (not b!2506870))

(assert (not d!716230))

(assert (not d!716194))

(assert (not b!2507168))

(assert (not bm!155266))

(assert (not b!2507069))

(assert (not b!2506926))

(assert (not b!2507029))

(assert (not b!2507017))

(assert (not b!2507165))

(assert (not b!2506996))

(assert (not b!2507075))

(assert (not d!716240))

(assert (not b!2506874))

(assert (not b!2507181))

(assert (not d!716180))

(assert (not b!2507052))

(assert (not b!2507166))

(assert (not bm!155257))

(assert (not b!2507011))

(assert (not b!2507023))

(assert (not d!716206))

(assert (not b!2507112))

(assert (not b!2507174))

(assert (not bm!155233))

(assert (not b!2506813))

(assert (not b!2507183))

(assert (not b!2506997))

(assert (not b!2507001))

(assert (not d!716176))

(assert (not b!2506879))

(assert (not b!2507095))

(assert (not b!2507185))

(assert (not d!716208))

(assert (not bm!155269))

(assert (not b!2507170))

(assert (not b!2507085))

(assert (not bm!155256))

(assert (not bm!155262))

(assert (not b!2507140))

(assert (not b!2507169))

(assert (not b!2507026))

(assert (not bm!155252))

(assert (not b!2507071))

(assert (not b!2507103))

(assert (not b!2507099))

(assert (not b!2507028))

(assert (not b!2507080))

(assert (not b!2506877))

(assert (not b!2507173))

(assert (not b!2507081))

(assert (not b!2506777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

