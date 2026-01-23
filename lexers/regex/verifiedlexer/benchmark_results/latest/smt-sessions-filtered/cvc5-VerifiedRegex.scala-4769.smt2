; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245858 () Bool)

(assert start!245858)

(declare-fun b!2522917 () Bool)

(declare-fun res!1065822 () Bool)

(declare-fun e!1597504 () Bool)

(assert (=> b!2522917 (=> res!1065822 e!1597504)))

(declare-datatypes ((C!15182 0))(
  ( (C!15183 (val!9243 Int)) )
))
(declare-datatypes ((Regex!7512 0))(
  ( (ElementMatch!7512 (c!402532 C!15182)) (Concat!12208 (regOne!15536 Regex!7512) (regTwo!15536 Regex!7512)) (EmptyExpr!7512) (Star!7512 (reg!7841 Regex!7512)) (EmptyLang!7512) (Union!7512 (regOne!15537 Regex!7512) (regTwo!15537 Regex!7512)) )
))
(declare-fun lt!899981 () Regex!7512)

(declare-datatypes ((List!29577 0))(
  ( (Nil!29477) (Cons!29477 (h!34897 C!15182) (t!211276 List!29577)) )
))
(declare-datatypes ((tuple2!29526 0))(
  ( (tuple2!29527 (_1!17305 List!29577) (_2!17305 List!29577)) )
))
(declare-fun lt!899989 () tuple2!29526)

(declare-fun matchR!3499 (Regex!7512 List!29577) Bool)

(assert (=> b!2522917 (= res!1065822 (not (matchR!3499 lt!899981 (_1!17305 lt!899989))))))

(declare-fun b!2522918 () Bool)

(declare-fun res!1065821 () Bool)

(declare-fun e!1597506 () Bool)

(assert (=> b!2522918 (=> (not res!1065821) (not e!1597506))))

(declare-fun r!27340 () Regex!7512)

(assert (=> b!2522918 (= res!1065821 (and (not (is-EmptyExpr!7512 r!27340)) (not (is-EmptyLang!7512 r!27340)) (not (is-ElementMatch!7512 r!27340)) (not (is-Union!7512 r!27340)) (not (is-Star!7512 r!27340))))))

(declare-fun b!2522919 () Bool)

(declare-fun res!1065815 () Bool)

(assert (=> b!2522919 (=> (not res!1065815) (not e!1597506))))

(declare-fun nullable!2429 (Regex!7512) Bool)

(assert (=> b!2522919 (= res!1065815 (nullable!2429 (regOne!15536 r!27340)))))

(declare-fun b!2522920 () Bool)

(declare-fun res!1065818 () Bool)

(assert (=> b!2522920 (=> (not res!1065818) (not e!1597506))))

(declare-fun tl!4068 () List!29577)

(declare-fun c!14016 () C!15182)

(declare-fun derivative!207 (Regex!7512 List!29577) Regex!7512)

(declare-fun derivativeStep!2081 (Regex!7512 C!15182) Regex!7512)

(assert (=> b!2522920 (= res!1065818 (nullable!2429 (derivative!207 (derivativeStep!2081 r!27340 c!14016) tl!4068)))))

(declare-fun b!2522921 () Bool)

(declare-fun e!1597502 () Bool)

(assert (=> b!2522921 (= e!1597506 (not e!1597502))))

(declare-fun res!1065816 () Bool)

(assert (=> b!2522921 (=> res!1065816 e!1597502)))

(declare-fun lt!899990 () Bool)

(assert (=> b!2522921 (= res!1065816 (not lt!899990))))

(declare-fun e!1597503 () Bool)

(assert (=> b!2522921 e!1597503))

(declare-fun res!1065820 () Bool)

(assert (=> b!2522921 (=> res!1065820 e!1597503)))

(assert (=> b!2522921 (= res!1065820 lt!899990)))

(declare-fun lt!899987 () Regex!7512)

(assert (=> b!2522921 (= lt!899990 (matchR!3499 lt!899987 tl!4068))))

(declare-fun lt!899982 () Regex!7512)

(declare-datatypes ((Unit!43249 0))(
  ( (Unit!43250) )
))
(declare-fun lt!899984 () Unit!43249)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!177 (Regex!7512 Regex!7512 List!29577) Unit!43249)

(assert (=> b!2522921 (= lt!899984 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!177 lt!899987 lt!899982 tl!4068))))

(declare-fun lt!899983 () Regex!7512)

(assert (=> b!2522921 (= (matchR!3499 lt!899983 tl!4068) (matchR!3499 (derivative!207 lt!899983 tl!4068) Nil!29477))))

(declare-fun lt!899986 () Unit!43249)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!145 (Regex!7512 List!29577) Unit!43249)

(assert (=> b!2522921 (= lt!899986 (lemmaMatchRIsSameAsWholeDerivativeAndNil!145 lt!899983 tl!4068))))

(assert (=> b!2522921 (= lt!899983 (Union!7512 lt!899987 lt!899982))))

(assert (=> b!2522921 (= lt!899982 (derivativeStep!2081 (regTwo!15536 r!27340) c!14016))))

(assert (=> b!2522921 (= lt!899987 (Concat!12208 lt!899981 (regTwo!15536 r!27340)))))

(assert (=> b!2522921 (= lt!899981 (derivativeStep!2081 (regOne!15536 r!27340) c!14016))))

(declare-fun b!2522922 () Bool)

(assert (=> b!2522922 (= e!1597504 (matchR!3499 (regTwo!15536 r!27340) (_2!17305 lt!899989)))))

(declare-fun b!2522923 () Bool)

(assert (=> b!2522923 (= e!1597503 (matchR!3499 lt!899982 tl!4068))))

(declare-fun b!2522924 () Bool)

(declare-fun e!1597505 () Bool)

(declare-fun tp!806044 () Bool)

(assert (=> b!2522924 (= e!1597505 tp!806044)))

(declare-fun b!2522925 () Bool)

(assert (=> b!2522925 (= e!1597502 e!1597504)))

(declare-fun res!1065819 () Bool)

(assert (=> b!2522925 (=> res!1065819 e!1597504)))

(declare-fun ++!7233 (List!29577 List!29577) List!29577)

(assert (=> b!2522925 (= res!1065819 (not (= (++!7233 (_1!17305 lt!899989) (_2!17305 lt!899989)) tl!4068)))))

(declare-datatypes ((Option!5883 0))(
  ( (None!5882) (Some!5882 (v!31815 tuple2!29526)) )
))
(declare-fun lt!899988 () Option!5883)

(declare-fun get!9218 (Option!5883) tuple2!29526)

(assert (=> b!2522925 (= lt!899989 (get!9218 lt!899988))))

(declare-fun isDefined!4705 (Option!5883) Bool)

(assert (=> b!2522925 (isDefined!4705 lt!899988)))

(declare-fun findConcatSeparation!905 (Regex!7512 Regex!7512 List!29577 List!29577 List!29577) Option!5883)

(assert (=> b!2522925 (= lt!899988 (findConcatSeparation!905 lt!899981 (regTwo!15536 r!27340) Nil!29477 tl!4068 tl!4068))))

(declare-fun lt!899985 () Unit!43249)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!187 (Regex!7512 Regex!7512 List!29577) Unit!43249)

(assert (=> b!2522925 (= lt!899985 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!187 lt!899981 (regTwo!15536 r!27340) tl!4068))))

(declare-fun b!2522926 () Bool)

(declare-fun tp!806046 () Bool)

(declare-fun tp!806045 () Bool)

(assert (=> b!2522926 (= e!1597505 (and tp!806046 tp!806045))))

(declare-fun b!2522927 () Bool)

(declare-fun tp_is_empty!12879 () Bool)

(assert (=> b!2522927 (= e!1597505 tp_is_empty!12879)))

(declare-fun b!2522928 () Bool)

(declare-fun tp!806043 () Bool)

(declare-fun tp!806048 () Bool)

(assert (=> b!2522928 (= e!1597505 (and tp!806043 tp!806048))))

(declare-fun res!1065817 () Bool)

(assert (=> start!245858 (=> (not res!1065817) (not e!1597506))))

(declare-fun validRegex!3138 (Regex!7512) Bool)

(assert (=> start!245858 (= res!1065817 (validRegex!3138 r!27340))))

(assert (=> start!245858 e!1597506))

(assert (=> start!245858 e!1597505))

(assert (=> start!245858 tp_is_empty!12879))

(declare-fun e!1597501 () Bool)

(assert (=> start!245858 e!1597501))

(declare-fun b!2522929 () Bool)

(declare-fun tp!806047 () Bool)

(assert (=> b!2522929 (= e!1597501 (and tp_is_empty!12879 tp!806047))))

(assert (= (and start!245858 res!1065817) b!2522920))

(assert (= (and b!2522920 res!1065818) b!2522918))

(assert (= (and b!2522918 res!1065821) b!2522919))

(assert (= (and b!2522919 res!1065815) b!2522921))

(assert (= (and b!2522921 (not res!1065820)) b!2522923))

(assert (= (and b!2522921 (not res!1065816)) b!2522925))

(assert (= (and b!2522925 (not res!1065819)) b!2522917))

(assert (= (and b!2522917 (not res!1065822)) b!2522922))

(assert (= (and start!245858 (is-ElementMatch!7512 r!27340)) b!2522927))

(assert (= (and start!245858 (is-Concat!12208 r!27340)) b!2522928))

(assert (= (and start!245858 (is-Star!7512 r!27340)) b!2522924))

(assert (= (and start!245858 (is-Union!7512 r!27340)) b!2522926))

(assert (= (and start!245858 (is-Cons!29477 tl!4068)) b!2522929))

(declare-fun m!2877049 () Bool)

(assert (=> b!2522925 m!2877049))

(declare-fun m!2877051 () Bool)

(assert (=> b!2522925 m!2877051))

(declare-fun m!2877053 () Bool)

(assert (=> b!2522925 m!2877053))

(declare-fun m!2877055 () Bool)

(assert (=> b!2522925 m!2877055))

(declare-fun m!2877057 () Bool)

(assert (=> b!2522925 m!2877057))

(declare-fun m!2877059 () Bool)

(assert (=> b!2522923 m!2877059))

(declare-fun m!2877061 () Bool)

(assert (=> b!2522921 m!2877061))

(declare-fun m!2877063 () Bool)

(assert (=> b!2522921 m!2877063))

(declare-fun m!2877065 () Bool)

(assert (=> b!2522921 m!2877065))

(declare-fun m!2877067 () Bool)

(assert (=> b!2522921 m!2877067))

(assert (=> b!2522921 m!2877063))

(declare-fun m!2877069 () Bool)

(assert (=> b!2522921 m!2877069))

(declare-fun m!2877071 () Bool)

(assert (=> b!2522921 m!2877071))

(declare-fun m!2877073 () Bool)

(assert (=> b!2522921 m!2877073))

(declare-fun m!2877075 () Bool)

(assert (=> b!2522921 m!2877075))

(declare-fun m!2877077 () Bool)

(assert (=> b!2522922 m!2877077))

(declare-fun m!2877079 () Bool)

(assert (=> b!2522917 m!2877079))

(declare-fun m!2877081 () Bool)

(assert (=> start!245858 m!2877081))

(declare-fun m!2877083 () Bool)

(assert (=> b!2522920 m!2877083))

(assert (=> b!2522920 m!2877083))

(declare-fun m!2877085 () Bool)

(assert (=> b!2522920 m!2877085))

(assert (=> b!2522920 m!2877085))

(declare-fun m!2877087 () Bool)

(assert (=> b!2522920 m!2877087))

(declare-fun m!2877089 () Bool)

(assert (=> b!2522919 m!2877089))

(push 1)

(assert (not b!2522926))

(assert (not b!2522920))

(assert (not b!2522925))

(assert tp_is_empty!12879)

(assert (not b!2522929))

(assert (not b!2522922))

(assert (not b!2522923))

(assert (not b!2522928))

(assert (not b!2522924))

(assert (not b!2522919))

(assert (not b!2522921))

(assert (not b!2522917))

(assert (not start!245858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2523025 () Bool)

(declare-fun e!1597558 () Bool)

(declare-fun head!5761 (List!29577) C!15182)

(declare-fun tail!4038 (List!29577) List!29577)

(assert (=> b!2523025 (= e!1597558 (matchR!3499 (derivativeStep!2081 lt!899981 (head!5761 (_1!17305 lt!899989))) (tail!4038 (_1!17305 lt!899989))))))

(declare-fun b!2523026 () Bool)

(declare-fun e!1597553 () Bool)

(declare-fun e!1597554 () Bool)

(assert (=> b!2523026 (= e!1597553 e!1597554)))

(declare-fun res!1065885 () Bool)

(assert (=> b!2523026 (=> res!1065885 e!1597554)))

(declare-fun call!157384 () Bool)

(assert (=> b!2523026 (= res!1065885 call!157384)))

(declare-fun bm!157379 () Bool)

(declare-fun isEmpty!16947 (List!29577) Bool)

(assert (=> bm!157379 (= call!157384 (isEmpty!16947 (_1!17305 lt!899989)))))

(declare-fun d!718402 () Bool)

(declare-fun e!1597556 () Bool)

(assert (=> d!718402 e!1597556))

(declare-fun c!402546 () Bool)

(assert (=> d!718402 (= c!402546 (is-EmptyExpr!7512 lt!899981))))

(declare-fun lt!900025 () Bool)

(assert (=> d!718402 (= lt!900025 e!1597558)))

(declare-fun c!402547 () Bool)

(assert (=> d!718402 (= c!402547 (isEmpty!16947 (_1!17305 lt!899989)))))

(assert (=> d!718402 (validRegex!3138 lt!899981)))

(assert (=> d!718402 (= (matchR!3499 lt!899981 (_1!17305 lt!899989)) lt!900025)))

(declare-fun b!2523027 () Bool)

(declare-fun e!1597557 () Bool)

(assert (=> b!2523027 (= e!1597557 e!1597553)))

(declare-fun res!1065886 () Bool)

(assert (=> b!2523027 (=> (not res!1065886) (not e!1597553))))

(assert (=> b!2523027 (= res!1065886 (not lt!900025))))

(declare-fun b!2523028 () Bool)

(declare-fun e!1597559 () Bool)

(assert (=> b!2523028 (= e!1597556 e!1597559)))

(declare-fun c!402548 () Bool)

(assert (=> b!2523028 (= c!402548 (is-EmptyLang!7512 lt!899981))))

(declare-fun b!2523029 () Bool)

(assert (=> b!2523029 (= e!1597559 (not lt!900025))))

(declare-fun b!2523030 () Bool)

(assert (=> b!2523030 (= e!1597554 (not (= (head!5761 (_1!17305 lt!899989)) (c!402532 lt!899981))))))

(declare-fun b!2523031 () Bool)

(assert (=> b!2523031 (= e!1597556 (= lt!900025 call!157384))))

(declare-fun b!2523032 () Bool)

(declare-fun e!1597555 () Bool)

(assert (=> b!2523032 (= e!1597555 (= (head!5761 (_1!17305 lt!899989)) (c!402532 lt!899981)))))

(declare-fun b!2523033 () Bool)

(declare-fun res!1065883 () Bool)

(assert (=> b!2523033 (=> res!1065883 e!1597557)))

(assert (=> b!2523033 (= res!1065883 (not (is-ElementMatch!7512 lt!899981)))))

(assert (=> b!2523033 (= e!1597559 e!1597557)))

(declare-fun b!2523034 () Bool)

(declare-fun res!1065881 () Bool)

(assert (=> b!2523034 (=> res!1065881 e!1597554)))

(assert (=> b!2523034 (= res!1065881 (not (isEmpty!16947 (tail!4038 (_1!17305 lt!899989)))))))

(declare-fun b!2523035 () Bool)

(declare-fun res!1065882 () Bool)

(assert (=> b!2523035 (=> (not res!1065882) (not e!1597555))))

(assert (=> b!2523035 (= res!1065882 (not call!157384))))

(declare-fun b!2523036 () Bool)

(assert (=> b!2523036 (= e!1597558 (nullable!2429 lt!899981))))

(declare-fun b!2523037 () Bool)

(declare-fun res!1065879 () Bool)

(assert (=> b!2523037 (=> (not res!1065879) (not e!1597555))))

(assert (=> b!2523037 (= res!1065879 (isEmpty!16947 (tail!4038 (_1!17305 lt!899989))))))

(declare-fun b!2523038 () Bool)

(declare-fun res!1065884 () Bool)

(assert (=> b!2523038 (=> res!1065884 e!1597557)))

(assert (=> b!2523038 (= res!1065884 e!1597555)))

(declare-fun res!1065880 () Bool)

(assert (=> b!2523038 (=> (not res!1065880) (not e!1597555))))

(assert (=> b!2523038 (= res!1065880 lt!900025)))

(assert (= (and d!718402 c!402547) b!2523036))

(assert (= (and d!718402 (not c!402547)) b!2523025))

(assert (= (and d!718402 c!402546) b!2523031))

(assert (= (and d!718402 (not c!402546)) b!2523028))

(assert (= (and b!2523028 c!402548) b!2523029))

(assert (= (and b!2523028 (not c!402548)) b!2523033))

(assert (= (and b!2523033 (not res!1065883)) b!2523038))

(assert (= (and b!2523038 res!1065880) b!2523035))

(assert (= (and b!2523035 res!1065882) b!2523037))

(assert (= (and b!2523037 res!1065879) b!2523032))

(assert (= (and b!2523038 (not res!1065884)) b!2523027))

(assert (= (and b!2523027 res!1065886) b!2523026))

(assert (= (and b!2523026 (not res!1065885)) b!2523034))

(assert (= (and b!2523034 (not res!1065881)) b!2523030))

(assert (= (or b!2523031 b!2523026 b!2523035) bm!157379))

(declare-fun m!2877133 () Bool)

(assert (=> b!2523025 m!2877133))

(assert (=> b!2523025 m!2877133))

(declare-fun m!2877135 () Bool)

(assert (=> b!2523025 m!2877135))

(declare-fun m!2877137 () Bool)

(assert (=> b!2523025 m!2877137))

(assert (=> b!2523025 m!2877135))

(assert (=> b!2523025 m!2877137))

(declare-fun m!2877139 () Bool)

(assert (=> b!2523025 m!2877139))

(declare-fun m!2877141 () Bool)

(assert (=> bm!157379 m!2877141))

(assert (=> b!2523030 m!2877133))

(assert (=> b!2523037 m!2877137))

(assert (=> b!2523037 m!2877137))

(declare-fun m!2877143 () Bool)

(assert (=> b!2523037 m!2877143))

(assert (=> b!2523032 m!2877133))

(declare-fun m!2877145 () Bool)

(assert (=> b!2523036 m!2877145))

(assert (=> b!2523034 m!2877137))

(assert (=> b!2523034 m!2877137))

(assert (=> b!2523034 m!2877143))

(assert (=> d!718402 m!2877141))

(declare-fun m!2877147 () Bool)

(assert (=> d!718402 m!2877147))

(assert (=> b!2522917 d!718402))

(declare-fun b!2523039 () Bool)

(declare-fun e!1597565 () Bool)

(assert (=> b!2523039 (= e!1597565 (matchR!3499 (derivativeStep!2081 lt!899982 (head!5761 tl!4068)) (tail!4038 tl!4068)))))

(declare-fun b!2523040 () Bool)

(declare-fun e!1597560 () Bool)

(declare-fun e!1597561 () Bool)

(assert (=> b!2523040 (= e!1597560 e!1597561)))

(declare-fun res!1065893 () Bool)

(assert (=> b!2523040 (=> res!1065893 e!1597561)))

(declare-fun call!157385 () Bool)

(assert (=> b!2523040 (= res!1065893 call!157385)))

(declare-fun bm!157380 () Bool)

(assert (=> bm!157380 (= call!157385 (isEmpty!16947 tl!4068))))

(declare-fun d!718406 () Bool)

(declare-fun e!1597563 () Bool)

(assert (=> d!718406 e!1597563))

(declare-fun c!402549 () Bool)

(assert (=> d!718406 (= c!402549 (is-EmptyExpr!7512 lt!899982))))

(declare-fun lt!900026 () Bool)

(assert (=> d!718406 (= lt!900026 e!1597565)))

(declare-fun c!402550 () Bool)

(assert (=> d!718406 (= c!402550 (isEmpty!16947 tl!4068))))

(assert (=> d!718406 (validRegex!3138 lt!899982)))

(assert (=> d!718406 (= (matchR!3499 lt!899982 tl!4068) lt!900026)))

(declare-fun b!2523041 () Bool)

(declare-fun e!1597564 () Bool)

(assert (=> b!2523041 (= e!1597564 e!1597560)))

(declare-fun res!1065894 () Bool)

(assert (=> b!2523041 (=> (not res!1065894) (not e!1597560))))

(assert (=> b!2523041 (= res!1065894 (not lt!900026))))

(declare-fun b!2523042 () Bool)

(declare-fun e!1597566 () Bool)

(assert (=> b!2523042 (= e!1597563 e!1597566)))

(declare-fun c!402551 () Bool)

(assert (=> b!2523042 (= c!402551 (is-EmptyLang!7512 lt!899982))))

(declare-fun b!2523043 () Bool)

(assert (=> b!2523043 (= e!1597566 (not lt!900026))))

(declare-fun b!2523044 () Bool)

(assert (=> b!2523044 (= e!1597561 (not (= (head!5761 tl!4068) (c!402532 lt!899982))))))

(declare-fun b!2523045 () Bool)

(assert (=> b!2523045 (= e!1597563 (= lt!900026 call!157385))))

(declare-fun b!2523046 () Bool)

(declare-fun e!1597562 () Bool)

(assert (=> b!2523046 (= e!1597562 (= (head!5761 tl!4068) (c!402532 lt!899982)))))

(declare-fun b!2523047 () Bool)

(declare-fun res!1065891 () Bool)

(assert (=> b!2523047 (=> res!1065891 e!1597564)))

(assert (=> b!2523047 (= res!1065891 (not (is-ElementMatch!7512 lt!899982)))))

(assert (=> b!2523047 (= e!1597566 e!1597564)))

(declare-fun b!2523048 () Bool)

(declare-fun res!1065889 () Bool)

(assert (=> b!2523048 (=> res!1065889 e!1597561)))

(assert (=> b!2523048 (= res!1065889 (not (isEmpty!16947 (tail!4038 tl!4068))))))

(declare-fun b!2523049 () Bool)

(declare-fun res!1065890 () Bool)

(assert (=> b!2523049 (=> (not res!1065890) (not e!1597562))))

(assert (=> b!2523049 (= res!1065890 (not call!157385))))

(declare-fun b!2523050 () Bool)

(assert (=> b!2523050 (= e!1597565 (nullable!2429 lt!899982))))

(declare-fun b!2523051 () Bool)

(declare-fun res!1065887 () Bool)

(assert (=> b!2523051 (=> (not res!1065887) (not e!1597562))))

(assert (=> b!2523051 (= res!1065887 (isEmpty!16947 (tail!4038 tl!4068)))))

(declare-fun b!2523052 () Bool)

(declare-fun res!1065892 () Bool)

(assert (=> b!2523052 (=> res!1065892 e!1597564)))

(assert (=> b!2523052 (= res!1065892 e!1597562)))

(declare-fun res!1065888 () Bool)

(assert (=> b!2523052 (=> (not res!1065888) (not e!1597562))))

(assert (=> b!2523052 (= res!1065888 lt!900026)))

(assert (= (and d!718406 c!402550) b!2523050))

(assert (= (and d!718406 (not c!402550)) b!2523039))

(assert (= (and d!718406 c!402549) b!2523045))

(assert (= (and d!718406 (not c!402549)) b!2523042))

(assert (= (and b!2523042 c!402551) b!2523043))

(assert (= (and b!2523042 (not c!402551)) b!2523047))

(assert (= (and b!2523047 (not res!1065891)) b!2523052))

(assert (= (and b!2523052 res!1065888) b!2523049))

(assert (= (and b!2523049 res!1065890) b!2523051))

(assert (= (and b!2523051 res!1065887) b!2523046))

(assert (= (and b!2523052 (not res!1065892)) b!2523041))

(assert (= (and b!2523041 res!1065894) b!2523040))

(assert (= (and b!2523040 (not res!1065893)) b!2523048))

(assert (= (and b!2523048 (not res!1065889)) b!2523044))

(assert (= (or b!2523045 b!2523040 b!2523049) bm!157380))

(declare-fun m!2877149 () Bool)

(assert (=> b!2523039 m!2877149))

(assert (=> b!2523039 m!2877149))

(declare-fun m!2877151 () Bool)

(assert (=> b!2523039 m!2877151))

(declare-fun m!2877153 () Bool)

(assert (=> b!2523039 m!2877153))

(assert (=> b!2523039 m!2877151))

(assert (=> b!2523039 m!2877153))

(declare-fun m!2877155 () Bool)

(assert (=> b!2523039 m!2877155))

(declare-fun m!2877157 () Bool)

(assert (=> bm!157380 m!2877157))

(assert (=> b!2523044 m!2877149))

(assert (=> b!2523051 m!2877153))

(assert (=> b!2523051 m!2877153))

(declare-fun m!2877159 () Bool)

(assert (=> b!2523051 m!2877159))

(assert (=> b!2523046 m!2877149))

(declare-fun m!2877161 () Bool)

(assert (=> b!2523050 m!2877161))

(assert (=> b!2523048 m!2877153))

(assert (=> b!2523048 m!2877153))

(assert (=> b!2523048 m!2877159))

(assert (=> d!718406 m!2877157))

(declare-fun m!2877163 () Bool)

(assert (=> d!718406 m!2877163))

(assert (=> b!2522923 d!718406))

(declare-fun d!718408 () Bool)

(declare-fun nullableFct!671 (Regex!7512) Bool)

(assert (=> d!718408 (= (nullable!2429 (regOne!15536 r!27340)) (nullableFct!671 (regOne!15536 r!27340)))))

(declare-fun bs!469030 () Bool)

(assert (= bs!469030 d!718408))

(declare-fun m!2877181 () Bool)

(assert (=> bs!469030 m!2877181))

(assert (=> b!2522919 d!718408))

(declare-fun d!718412 () Bool)

(declare-fun isEmpty!16948 (Option!5883) Bool)

(assert (=> d!718412 (= (isDefined!4705 lt!899988) (not (isEmpty!16948 lt!899988)))))

(declare-fun bs!469031 () Bool)

(assert (= bs!469031 d!718412))

(declare-fun m!2877183 () Bool)

(assert (=> bs!469031 m!2877183))

(assert (=> b!2522925 d!718412))

(declare-fun d!718414 () Bool)

(assert (=> d!718414 (= (get!9218 lt!899988) (v!31815 lt!899988))))

(assert (=> b!2522925 d!718414))

(declare-fun b!2523111 () Bool)

(declare-fun e!1597601 () Bool)

(assert (=> b!2523111 (= e!1597601 (matchR!3499 (regTwo!15536 r!27340) tl!4068))))

(declare-fun b!2523112 () Bool)

(declare-fun e!1597597 () Option!5883)

(assert (=> b!2523112 (= e!1597597 (Some!5882 (tuple2!29527 Nil!29477 tl!4068)))))

(declare-fun b!2523113 () Bool)

(declare-fun e!1597599 () Bool)

(declare-fun lt!900041 () Option!5883)

(assert (=> b!2523113 (= e!1597599 (not (isDefined!4705 lt!900041)))))

(declare-fun b!2523114 () Bool)

(declare-fun lt!900040 () Unit!43249)

(declare-fun lt!900039 () Unit!43249)

(assert (=> b!2523114 (= lt!900040 lt!900039)))

(assert (=> b!2523114 (= (++!7233 (++!7233 Nil!29477 (Cons!29477 (h!34897 tl!4068) Nil!29477)) (t!211276 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!774 (List!29577 C!15182 List!29577 List!29577) Unit!43249)

(assert (=> b!2523114 (= lt!900039 (lemmaMoveElementToOtherListKeepsConcatEq!774 Nil!29477 (h!34897 tl!4068) (t!211276 tl!4068) tl!4068))))

(declare-fun e!1597598 () Option!5883)

(assert (=> b!2523114 (= e!1597598 (findConcatSeparation!905 lt!899981 (regTwo!15536 r!27340) (++!7233 Nil!29477 (Cons!29477 (h!34897 tl!4068) Nil!29477)) (t!211276 tl!4068) tl!4068))))

(declare-fun b!2523115 () Bool)

(declare-fun res!1065917 () Bool)

(declare-fun e!1597600 () Bool)

(assert (=> b!2523115 (=> (not res!1065917) (not e!1597600))))

(assert (=> b!2523115 (= res!1065917 (matchR!3499 (regTwo!15536 r!27340) (_2!17305 (get!9218 lt!900041))))))

(declare-fun b!2523116 () Bool)

(declare-fun res!1065913 () Bool)

(assert (=> b!2523116 (=> (not res!1065913) (not e!1597600))))

(assert (=> b!2523116 (= res!1065913 (matchR!3499 lt!899981 (_1!17305 (get!9218 lt!900041))))))

(declare-fun b!2523117 () Bool)

(assert (=> b!2523117 (= e!1597597 e!1597598)))

(declare-fun c!402572 () Bool)

(assert (=> b!2523117 (= c!402572 (is-Nil!29477 tl!4068))))

(declare-fun d!718418 () Bool)

(assert (=> d!718418 e!1597599))

(declare-fun res!1065915 () Bool)

(assert (=> d!718418 (=> res!1065915 e!1597599)))

(assert (=> d!718418 (= res!1065915 e!1597600)))

(declare-fun res!1065914 () Bool)

(assert (=> d!718418 (=> (not res!1065914) (not e!1597600))))

(assert (=> d!718418 (= res!1065914 (isDefined!4705 lt!900041))))

(assert (=> d!718418 (= lt!900041 e!1597597)))

(declare-fun c!402573 () Bool)

(assert (=> d!718418 (= c!402573 e!1597601)))

(declare-fun res!1065916 () Bool)

(assert (=> d!718418 (=> (not res!1065916) (not e!1597601))))

(assert (=> d!718418 (= res!1065916 (matchR!3499 lt!899981 Nil!29477))))

(assert (=> d!718418 (validRegex!3138 lt!899981)))

(assert (=> d!718418 (= (findConcatSeparation!905 lt!899981 (regTwo!15536 r!27340) Nil!29477 tl!4068 tl!4068) lt!900041)))

(declare-fun b!2523118 () Bool)

(assert (=> b!2523118 (= e!1597598 None!5882)))

(declare-fun b!2523119 () Bool)

(assert (=> b!2523119 (= e!1597600 (= (++!7233 (_1!17305 (get!9218 lt!900041)) (_2!17305 (get!9218 lt!900041))) tl!4068))))

(assert (= (and d!718418 res!1065916) b!2523111))

(assert (= (and d!718418 c!402573) b!2523112))

(assert (= (and d!718418 (not c!402573)) b!2523117))

(assert (= (and b!2523117 c!402572) b!2523118))

(assert (= (and b!2523117 (not c!402572)) b!2523114))

(assert (= (and d!718418 res!1065914) b!2523116))

(assert (= (and b!2523116 res!1065913) b!2523115))

(assert (= (and b!2523115 res!1065917) b!2523119))

(assert (= (and d!718418 (not res!1065915)) b!2523113))

(declare-fun m!2877195 () Bool)

(assert (=> b!2523119 m!2877195))

(declare-fun m!2877197 () Bool)

(assert (=> b!2523119 m!2877197))

(declare-fun m!2877199 () Bool)

(assert (=> b!2523113 m!2877199))

(assert (=> b!2523115 m!2877195))

(declare-fun m!2877201 () Bool)

(assert (=> b!2523115 m!2877201))

(declare-fun m!2877203 () Bool)

(assert (=> b!2523111 m!2877203))

(assert (=> b!2523116 m!2877195))

(declare-fun m!2877205 () Bool)

(assert (=> b!2523116 m!2877205))

(declare-fun m!2877207 () Bool)

(assert (=> b!2523114 m!2877207))

(assert (=> b!2523114 m!2877207))

(declare-fun m!2877209 () Bool)

(assert (=> b!2523114 m!2877209))

(declare-fun m!2877211 () Bool)

(assert (=> b!2523114 m!2877211))

(assert (=> b!2523114 m!2877207))

(declare-fun m!2877213 () Bool)

(assert (=> b!2523114 m!2877213))

(assert (=> d!718418 m!2877199))

(declare-fun m!2877215 () Bool)

(assert (=> d!718418 m!2877215))

(assert (=> d!718418 m!2877147))

(assert (=> b!2522925 d!718418))

(declare-fun d!718422 () Bool)

(assert (=> d!718422 (isDefined!4705 (findConcatSeparation!905 lt!899981 (regTwo!15536 r!27340) Nil!29477 tl!4068 tl!4068))))

(declare-fun lt!900046 () Unit!43249)

(declare-fun choose!14955 (Regex!7512 Regex!7512 List!29577) Unit!43249)

(assert (=> d!718422 (= lt!900046 (choose!14955 lt!899981 (regTwo!15536 r!27340) tl!4068))))

(assert (=> d!718422 (validRegex!3138 lt!899981)))

(assert (=> d!718422 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!187 lt!899981 (regTwo!15536 r!27340) tl!4068) lt!900046)))

(declare-fun bs!469033 () Bool)

(assert (= bs!469033 d!718422))

(assert (=> bs!469033 m!2877051))

(assert (=> bs!469033 m!2877051))

(declare-fun m!2877239 () Bool)

(assert (=> bs!469033 m!2877239))

(declare-fun m!2877241 () Bool)

(assert (=> bs!469033 m!2877241))

(assert (=> bs!469033 m!2877147))

(assert (=> b!2522925 d!718422))

(declare-fun b!2523172 () Bool)

(declare-fun res!1065940 () Bool)

(declare-fun e!1597633 () Bool)

(assert (=> b!2523172 (=> (not res!1065940) (not e!1597633))))

(declare-fun lt!900049 () List!29577)

(declare-fun size!22923 (List!29577) Int)

(assert (=> b!2523172 (= res!1065940 (= (size!22923 lt!900049) (+ (size!22923 (_1!17305 lt!899989)) (size!22923 (_2!17305 lt!899989)))))))

(declare-fun d!718428 () Bool)

(assert (=> d!718428 e!1597633))

(declare-fun res!1065941 () Bool)

(assert (=> d!718428 (=> (not res!1065941) (not e!1597633))))

(declare-fun content!4041 (List!29577) (Set C!15182))

(assert (=> d!718428 (= res!1065941 (= (content!4041 lt!900049) (set.union (content!4041 (_1!17305 lt!899989)) (content!4041 (_2!17305 lt!899989)))))))

(declare-fun e!1597632 () List!29577)

(assert (=> d!718428 (= lt!900049 e!1597632)))

(declare-fun c!402588 () Bool)

(assert (=> d!718428 (= c!402588 (is-Nil!29477 (_1!17305 lt!899989)))))

(assert (=> d!718428 (= (++!7233 (_1!17305 lt!899989) (_2!17305 lt!899989)) lt!900049)))

(declare-fun b!2523173 () Bool)

(assert (=> b!2523173 (= e!1597633 (or (not (= (_2!17305 lt!899989) Nil!29477)) (= lt!900049 (_1!17305 lt!899989))))))

(declare-fun b!2523171 () Bool)

(assert (=> b!2523171 (= e!1597632 (Cons!29477 (h!34897 (_1!17305 lt!899989)) (++!7233 (t!211276 (_1!17305 lt!899989)) (_2!17305 lt!899989))))))

(declare-fun b!2523170 () Bool)

(assert (=> b!2523170 (= e!1597632 (_2!17305 lt!899989))))

(assert (= (and d!718428 c!402588) b!2523170))

(assert (= (and d!718428 (not c!402588)) b!2523171))

(assert (= (and d!718428 res!1065941) b!2523172))

(assert (= (and b!2523172 res!1065940) b!2523173))

(declare-fun m!2877243 () Bool)

(assert (=> b!2523172 m!2877243))

(declare-fun m!2877245 () Bool)

(assert (=> b!2523172 m!2877245))

(declare-fun m!2877247 () Bool)

(assert (=> b!2523172 m!2877247))

(declare-fun m!2877249 () Bool)

(assert (=> d!718428 m!2877249))

(declare-fun m!2877251 () Bool)

(assert (=> d!718428 m!2877251))

(declare-fun m!2877253 () Bool)

(assert (=> d!718428 m!2877253))

(declare-fun m!2877255 () Bool)

(assert (=> b!2523171 m!2877255))

(assert (=> b!2522925 d!718428))

(declare-fun d!718430 () Bool)

(assert (=> d!718430 (= (nullable!2429 (derivative!207 (derivativeStep!2081 r!27340 c!14016) tl!4068)) (nullableFct!671 (derivative!207 (derivativeStep!2081 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469034 () Bool)

(assert (= bs!469034 d!718430))

(assert (=> bs!469034 m!2877085))

(declare-fun m!2877257 () Bool)

(assert (=> bs!469034 m!2877257))

(assert (=> b!2522920 d!718430))

(declare-fun d!718432 () Bool)

(declare-fun lt!900053 () Regex!7512)

(assert (=> d!718432 (validRegex!3138 lt!900053)))

(declare-fun e!1597650 () Regex!7512)

(assert (=> d!718432 (= lt!900053 e!1597650)))

(declare-fun c!402596 () Bool)

(assert (=> d!718432 (= c!402596 (is-Cons!29477 tl!4068))))

(assert (=> d!718432 (validRegex!3138 (derivativeStep!2081 r!27340 c!14016))))

(assert (=> d!718432 (= (derivative!207 (derivativeStep!2081 r!27340 c!14016) tl!4068) lt!900053)))

(declare-fun b!2523201 () Bool)

(assert (=> b!2523201 (= e!1597650 (derivative!207 (derivativeStep!2081 (derivativeStep!2081 r!27340 c!14016) (h!34897 tl!4068)) (t!211276 tl!4068)))))

(declare-fun b!2523202 () Bool)

(assert (=> b!2523202 (= e!1597650 (derivativeStep!2081 r!27340 c!14016))))

(assert (= (and d!718432 c!402596) b!2523201))

(assert (= (and d!718432 (not c!402596)) b!2523202))

(declare-fun m!2877267 () Bool)

(assert (=> d!718432 m!2877267))

(assert (=> d!718432 m!2877083))

(declare-fun m!2877269 () Bool)

(assert (=> d!718432 m!2877269))

(assert (=> b!2523201 m!2877083))

(declare-fun m!2877275 () Bool)

(assert (=> b!2523201 m!2877275))

(assert (=> b!2523201 m!2877275))

(declare-fun m!2877279 () Bool)

(assert (=> b!2523201 m!2877279))

(assert (=> b!2522920 d!718432))

(declare-fun c!402614 () Bool)

(declare-fun bm!157414 () Bool)

(declare-fun call!157420 () Regex!7512)

(assert (=> bm!157414 (= call!157420 (derivativeStep!2081 (ite c!402614 (regOne!15537 r!27340) (regTwo!15536 r!27340)) c!14016))))

(declare-fun bm!157415 () Bool)

(declare-fun call!157419 () Regex!7512)

(declare-fun call!157421 () Regex!7512)

(assert (=> bm!157415 (= call!157419 call!157421)))

(declare-fun b!2523244 () Bool)

(declare-fun call!157422 () Regex!7512)

(declare-fun e!1597675 () Regex!7512)

(assert (=> b!2523244 (= e!1597675 (Union!7512 (Concat!12208 call!157422 (regTwo!15536 r!27340)) call!157420))))

(declare-fun b!2523245 () Bool)

(assert (=> b!2523245 (= c!402614 (is-Union!7512 r!27340))))

(declare-fun e!1597676 () Regex!7512)

(declare-fun e!1597678 () Regex!7512)

(assert (=> b!2523245 (= e!1597676 e!1597678)))

(declare-fun b!2523246 () Bool)

(declare-fun e!1597677 () Regex!7512)

(assert (=> b!2523246 (= e!1597677 (Concat!12208 call!157419 r!27340))))

(declare-fun bm!157416 () Bool)

(assert (=> bm!157416 (= call!157422 call!157419)))

(declare-fun b!2523247 () Bool)

(declare-fun c!402611 () Bool)

(assert (=> b!2523247 (= c!402611 (nullable!2429 (regOne!15536 r!27340)))))

(assert (=> b!2523247 (= e!1597677 e!1597675)))

(declare-fun b!2523248 () Bool)

(assert (=> b!2523248 (= e!1597675 (Union!7512 (Concat!12208 call!157422 (regTwo!15536 r!27340)) EmptyLang!7512))))

(declare-fun b!2523249 () Bool)

(assert (=> b!2523249 (= e!1597676 (ite (= c!14016 (c!402532 r!27340)) EmptyExpr!7512 EmptyLang!7512))))

(declare-fun d!718438 () Bool)

(declare-fun lt!900063 () Regex!7512)

(assert (=> d!718438 (validRegex!3138 lt!900063)))

(declare-fun e!1597674 () Regex!7512)

(assert (=> d!718438 (= lt!900063 e!1597674)))

(declare-fun c!402613 () Bool)

(assert (=> d!718438 (= c!402613 (or (is-EmptyExpr!7512 r!27340) (is-EmptyLang!7512 r!27340)))))

(assert (=> d!718438 (validRegex!3138 r!27340)))

(assert (=> d!718438 (= (derivativeStep!2081 r!27340 c!14016) lt!900063)))

(declare-fun b!2523243 () Bool)

(assert (=> b!2523243 (= e!1597674 e!1597676)))

(declare-fun c!402610 () Bool)

(assert (=> b!2523243 (= c!402610 (is-ElementMatch!7512 r!27340))))

(declare-fun b!2523250 () Bool)

(assert (=> b!2523250 (= e!1597674 EmptyLang!7512)))

(declare-fun bm!157417 () Bool)

(declare-fun c!402612 () Bool)

(assert (=> bm!157417 (= call!157421 (derivativeStep!2081 (ite c!402614 (regTwo!15537 r!27340) (ite c!402612 (reg!7841 r!27340) (regOne!15536 r!27340))) c!14016))))

(declare-fun b!2523251 () Bool)

(assert (=> b!2523251 (= e!1597678 (Union!7512 call!157420 call!157421))))

(declare-fun b!2523252 () Bool)

(assert (=> b!2523252 (= e!1597678 e!1597677)))

(assert (=> b!2523252 (= c!402612 (is-Star!7512 r!27340))))

(assert (= (and d!718438 c!402613) b!2523250))

(assert (= (and d!718438 (not c!402613)) b!2523243))

(assert (= (and b!2523243 c!402610) b!2523249))

(assert (= (and b!2523243 (not c!402610)) b!2523245))

(assert (= (and b!2523245 c!402614) b!2523251))

(assert (= (and b!2523245 (not c!402614)) b!2523252))

(assert (= (and b!2523252 c!402612) b!2523246))

(assert (= (and b!2523252 (not c!402612)) b!2523247))

(assert (= (and b!2523247 c!402611) b!2523244))

(assert (= (and b!2523247 (not c!402611)) b!2523248))

(assert (= (or b!2523244 b!2523248) bm!157416))

(assert (= (or b!2523246 bm!157416) bm!157415))

(assert (= (or b!2523251 bm!157415) bm!157417))

(assert (= (or b!2523251 b!2523244) bm!157414))

(declare-fun m!2877315 () Bool)

(assert (=> bm!157414 m!2877315))

(assert (=> b!2523247 m!2877089))

(declare-fun m!2877317 () Bool)

(assert (=> d!718438 m!2877317))

(assert (=> d!718438 m!2877081))

(declare-fun m!2877319 () Bool)

(assert (=> bm!157417 m!2877319))

(assert (=> b!2522920 d!718438))

(declare-fun b!2523307 () Bool)

(declare-fun e!1597711 () Bool)

(declare-fun call!157438 () Bool)

(assert (=> b!2523307 (= e!1597711 call!157438)))

(declare-fun b!2523308 () Bool)

(declare-fun e!1597712 () Bool)

(declare-fun e!1597715 () Bool)

(assert (=> b!2523308 (= e!1597712 e!1597715)))

(declare-fun c!402634 () Bool)

(assert (=> b!2523308 (= c!402634 (is-Star!7512 r!27340))))

(declare-fun b!2523309 () Bool)

(declare-fun res!1065987 () Bool)

(declare-fun e!1597714 () Bool)

(assert (=> b!2523309 (=> (not res!1065987) (not e!1597714))))

(declare-fun call!157440 () Bool)

(assert (=> b!2523309 (= res!1065987 call!157440)))

(declare-fun e!1597717 () Bool)

(assert (=> b!2523309 (= e!1597717 e!1597714)))

(declare-fun b!2523310 () Bool)

(declare-fun e!1597716 () Bool)

(assert (=> b!2523310 (= e!1597716 call!157440)))

(declare-fun d!718448 () Bool)

(declare-fun res!1065988 () Bool)

(assert (=> d!718448 (=> res!1065988 e!1597712)))

(assert (=> d!718448 (= res!1065988 (is-ElementMatch!7512 r!27340))))

(assert (=> d!718448 (= (validRegex!3138 r!27340) e!1597712)))

(declare-fun c!402633 () Bool)

(declare-fun bm!157433 () Bool)

(assert (=> bm!157433 (= call!157438 (validRegex!3138 (ite c!402634 (reg!7841 r!27340) (ite c!402633 (regTwo!15537 r!27340) (regOne!15536 r!27340)))))))

(declare-fun bm!157434 () Bool)

(declare-fun call!157439 () Bool)

(assert (=> bm!157434 (= call!157439 call!157438)))

(declare-fun b!2523311 () Bool)

(assert (=> b!2523311 (= e!1597715 e!1597717)))

(assert (=> b!2523311 (= c!402633 (is-Union!7512 r!27340))))

(declare-fun b!2523312 () Bool)

(assert (=> b!2523312 (= e!1597714 call!157439)))

(declare-fun b!2523313 () Bool)

(declare-fun e!1597713 () Bool)

(assert (=> b!2523313 (= e!1597713 e!1597716)))

(declare-fun res!1065989 () Bool)

(assert (=> b!2523313 (=> (not res!1065989) (not e!1597716))))

(assert (=> b!2523313 (= res!1065989 call!157439)))

(declare-fun b!2523314 () Bool)

(assert (=> b!2523314 (= e!1597715 e!1597711)))

(declare-fun res!1065991 () Bool)

(assert (=> b!2523314 (= res!1065991 (not (nullable!2429 (reg!7841 r!27340))))))

(assert (=> b!2523314 (=> (not res!1065991) (not e!1597711))))

(declare-fun b!2523315 () Bool)

(declare-fun res!1065990 () Bool)

(assert (=> b!2523315 (=> res!1065990 e!1597713)))

(assert (=> b!2523315 (= res!1065990 (not (is-Concat!12208 r!27340)))))

(assert (=> b!2523315 (= e!1597717 e!1597713)))

(declare-fun bm!157435 () Bool)

(assert (=> bm!157435 (= call!157440 (validRegex!3138 (ite c!402633 (regOne!15537 r!27340) (regTwo!15536 r!27340))))))

(assert (= (and d!718448 (not res!1065988)) b!2523308))

(assert (= (and b!2523308 c!402634) b!2523314))

(assert (= (and b!2523308 (not c!402634)) b!2523311))

(assert (= (and b!2523314 res!1065991) b!2523307))

(assert (= (and b!2523311 c!402633) b!2523309))

(assert (= (and b!2523311 (not c!402633)) b!2523315))

(assert (= (and b!2523309 res!1065987) b!2523312))

(assert (= (and b!2523315 (not res!1065990)) b!2523313))

(assert (= (and b!2523313 res!1065989) b!2523310))

(assert (= (or b!2523309 b!2523310) bm!157435))

(assert (= (or b!2523312 b!2523313) bm!157434))

(assert (= (or b!2523307 bm!157434) bm!157433))

(declare-fun m!2877351 () Bool)

(assert (=> bm!157433 m!2877351))

(declare-fun m!2877353 () Bool)

(assert (=> b!2523314 m!2877353))

(declare-fun m!2877355 () Bool)

(assert (=> bm!157435 m!2877355))

(assert (=> start!245858 d!718448))

(declare-fun b!2523316 () Bool)

(declare-fun e!1597723 () Bool)

(assert (=> b!2523316 (= e!1597723 (matchR!3499 (derivativeStep!2081 lt!899987 (head!5761 tl!4068)) (tail!4038 tl!4068)))))

(declare-fun b!2523317 () Bool)

(declare-fun e!1597718 () Bool)

(declare-fun e!1597719 () Bool)

(assert (=> b!2523317 (= e!1597718 e!1597719)))

(declare-fun res!1065998 () Bool)

(assert (=> b!2523317 (=> res!1065998 e!1597719)))

(declare-fun call!157441 () Bool)

(assert (=> b!2523317 (= res!1065998 call!157441)))

(declare-fun bm!157436 () Bool)

(assert (=> bm!157436 (= call!157441 (isEmpty!16947 tl!4068))))

(declare-fun d!718458 () Bool)

(declare-fun e!1597721 () Bool)

(assert (=> d!718458 e!1597721))

(declare-fun c!402635 () Bool)

(assert (=> d!718458 (= c!402635 (is-EmptyExpr!7512 lt!899987))))

(declare-fun lt!900068 () Bool)

(assert (=> d!718458 (= lt!900068 e!1597723)))

(declare-fun c!402636 () Bool)

(assert (=> d!718458 (= c!402636 (isEmpty!16947 tl!4068))))

(assert (=> d!718458 (validRegex!3138 lt!899987)))

(assert (=> d!718458 (= (matchR!3499 lt!899987 tl!4068) lt!900068)))

(declare-fun b!2523318 () Bool)

(declare-fun e!1597722 () Bool)

(assert (=> b!2523318 (= e!1597722 e!1597718)))

(declare-fun res!1065999 () Bool)

(assert (=> b!2523318 (=> (not res!1065999) (not e!1597718))))

(assert (=> b!2523318 (= res!1065999 (not lt!900068))))

(declare-fun b!2523319 () Bool)

(declare-fun e!1597724 () Bool)

(assert (=> b!2523319 (= e!1597721 e!1597724)))

(declare-fun c!402637 () Bool)

(assert (=> b!2523319 (= c!402637 (is-EmptyLang!7512 lt!899987))))

(declare-fun b!2523320 () Bool)

(assert (=> b!2523320 (= e!1597724 (not lt!900068))))

(declare-fun b!2523321 () Bool)

(assert (=> b!2523321 (= e!1597719 (not (= (head!5761 tl!4068) (c!402532 lt!899987))))))

(declare-fun b!2523322 () Bool)

(assert (=> b!2523322 (= e!1597721 (= lt!900068 call!157441))))

(declare-fun b!2523323 () Bool)

(declare-fun e!1597720 () Bool)

(assert (=> b!2523323 (= e!1597720 (= (head!5761 tl!4068) (c!402532 lt!899987)))))

(declare-fun b!2523324 () Bool)

(declare-fun res!1065996 () Bool)

(assert (=> b!2523324 (=> res!1065996 e!1597722)))

(assert (=> b!2523324 (= res!1065996 (not (is-ElementMatch!7512 lt!899987)))))

(assert (=> b!2523324 (= e!1597724 e!1597722)))

(declare-fun b!2523325 () Bool)

(declare-fun res!1065994 () Bool)

(assert (=> b!2523325 (=> res!1065994 e!1597719)))

(assert (=> b!2523325 (= res!1065994 (not (isEmpty!16947 (tail!4038 tl!4068))))))

(declare-fun b!2523326 () Bool)

(declare-fun res!1065995 () Bool)

(assert (=> b!2523326 (=> (not res!1065995) (not e!1597720))))

(assert (=> b!2523326 (= res!1065995 (not call!157441))))

(declare-fun b!2523327 () Bool)

(assert (=> b!2523327 (= e!1597723 (nullable!2429 lt!899987))))

(declare-fun b!2523328 () Bool)

(declare-fun res!1065992 () Bool)

(assert (=> b!2523328 (=> (not res!1065992) (not e!1597720))))

(assert (=> b!2523328 (= res!1065992 (isEmpty!16947 (tail!4038 tl!4068)))))

(declare-fun b!2523329 () Bool)

(declare-fun res!1065997 () Bool)

(assert (=> b!2523329 (=> res!1065997 e!1597722)))

(assert (=> b!2523329 (= res!1065997 e!1597720)))

(declare-fun res!1065993 () Bool)

(assert (=> b!2523329 (=> (not res!1065993) (not e!1597720))))

(assert (=> b!2523329 (= res!1065993 lt!900068)))

(assert (= (and d!718458 c!402636) b!2523327))

(assert (= (and d!718458 (not c!402636)) b!2523316))

(assert (= (and d!718458 c!402635) b!2523322))

(assert (= (and d!718458 (not c!402635)) b!2523319))

(assert (= (and b!2523319 c!402637) b!2523320))

(assert (= (and b!2523319 (not c!402637)) b!2523324))

(assert (= (and b!2523324 (not res!1065996)) b!2523329))

(assert (= (and b!2523329 res!1065993) b!2523326))

(assert (= (and b!2523326 res!1065995) b!2523328))

(assert (= (and b!2523328 res!1065992) b!2523323))

(assert (= (and b!2523329 (not res!1065997)) b!2523318))

(assert (= (and b!2523318 res!1065999) b!2523317))

(assert (= (and b!2523317 (not res!1065998)) b!2523325))

(assert (= (and b!2523325 (not res!1065994)) b!2523321))

(assert (= (or b!2523322 b!2523317 b!2523326) bm!157436))

(assert (=> b!2523316 m!2877149))

(assert (=> b!2523316 m!2877149))

(declare-fun m!2877357 () Bool)

(assert (=> b!2523316 m!2877357))

(assert (=> b!2523316 m!2877153))

(assert (=> b!2523316 m!2877357))

(assert (=> b!2523316 m!2877153))

(declare-fun m!2877359 () Bool)

(assert (=> b!2523316 m!2877359))

(assert (=> bm!157436 m!2877157))

(assert (=> b!2523321 m!2877149))

(assert (=> b!2523328 m!2877153))

(assert (=> b!2523328 m!2877153))

(assert (=> b!2523328 m!2877159))

(assert (=> b!2523323 m!2877149))

(declare-fun m!2877361 () Bool)

(assert (=> b!2523327 m!2877361))

(assert (=> b!2523325 m!2877153))

(assert (=> b!2523325 m!2877153))

(assert (=> b!2523325 m!2877159))

(assert (=> d!718458 m!2877157))

(declare-fun m!2877363 () Bool)

(assert (=> d!718458 m!2877363))

(assert (=> b!2522921 d!718458))

(declare-fun b!2523334 () Bool)

(declare-fun e!1597732 () Bool)

(assert (=> b!2523334 (= e!1597732 (matchR!3499 (derivativeStep!2081 (derivative!207 lt!899983 tl!4068) (head!5761 Nil!29477)) (tail!4038 Nil!29477)))))

(declare-fun b!2523335 () Bool)

(declare-fun e!1597726 () Bool)

(declare-fun e!1597727 () Bool)

(assert (=> b!2523335 (= e!1597726 e!1597727)))

(declare-fun res!1066006 () Bool)

(assert (=> b!2523335 (=> res!1066006 e!1597727)))

(declare-fun call!157442 () Bool)

(assert (=> b!2523335 (= res!1066006 call!157442)))

(declare-fun bm!157437 () Bool)

(assert (=> bm!157437 (= call!157442 (isEmpty!16947 Nil!29477))))

(declare-fun d!718460 () Bool)

(declare-fun e!1597730 () Bool)

(assert (=> d!718460 e!1597730))

(declare-fun c!402638 () Bool)

(assert (=> d!718460 (= c!402638 (is-EmptyExpr!7512 (derivative!207 lt!899983 tl!4068)))))

(declare-fun lt!900071 () Bool)

(assert (=> d!718460 (= lt!900071 e!1597732)))

(declare-fun c!402640 () Bool)

(assert (=> d!718460 (= c!402640 (isEmpty!16947 Nil!29477))))

(assert (=> d!718460 (validRegex!3138 (derivative!207 lt!899983 tl!4068))))

(assert (=> d!718460 (= (matchR!3499 (derivative!207 lt!899983 tl!4068) Nil!29477) lt!900071)))

(declare-fun b!2523336 () Bool)

(declare-fun e!1597731 () Bool)

(assert (=> b!2523336 (= e!1597731 e!1597726)))

(declare-fun res!1066007 () Bool)

(assert (=> b!2523336 (=> (not res!1066007) (not e!1597726))))

(assert (=> b!2523336 (= res!1066007 (not lt!900071))))

(declare-fun b!2523337 () Bool)

(declare-fun e!1597733 () Bool)

(assert (=> b!2523337 (= e!1597730 e!1597733)))

(declare-fun c!402642 () Bool)

(assert (=> b!2523337 (= c!402642 (is-EmptyLang!7512 (derivative!207 lt!899983 tl!4068)))))

(declare-fun b!2523338 () Bool)

(assert (=> b!2523338 (= e!1597733 (not lt!900071))))

(declare-fun b!2523339 () Bool)

(assert (=> b!2523339 (= e!1597727 (not (= (head!5761 Nil!29477) (c!402532 (derivative!207 lt!899983 tl!4068)))))))

(declare-fun b!2523340 () Bool)

(assert (=> b!2523340 (= e!1597730 (= lt!900071 call!157442))))

(declare-fun b!2523341 () Bool)

(declare-fun e!1597729 () Bool)

(assert (=> b!2523341 (= e!1597729 (= (head!5761 Nil!29477) (c!402532 (derivative!207 lt!899983 tl!4068))))))

(declare-fun b!2523342 () Bool)

(declare-fun res!1066004 () Bool)

(assert (=> b!2523342 (=> res!1066004 e!1597731)))

(assert (=> b!2523342 (= res!1066004 (not (is-ElementMatch!7512 (derivative!207 lt!899983 tl!4068))))))

(assert (=> b!2523342 (= e!1597733 e!1597731)))

(declare-fun b!2523343 () Bool)

(declare-fun res!1066002 () Bool)

(assert (=> b!2523343 (=> res!1066002 e!1597727)))

(assert (=> b!2523343 (= res!1066002 (not (isEmpty!16947 (tail!4038 Nil!29477))))))

(declare-fun b!2523344 () Bool)

(declare-fun res!1066003 () Bool)

(assert (=> b!2523344 (=> (not res!1066003) (not e!1597729))))

(assert (=> b!2523344 (= res!1066003 (not call!157442))))

(declare-fun b!2523345 () Bool)

(assert (=> b!2523345 (= e!1597732 (nullable!2429 (derivative!207 lt!899983 tl!4068)))))

(declare-fun b!2523346 () Bool)

(declare-fun res!1066000 () Bool)

(assert (=> b!2523346 (=> (not res!1066000) (not e!1597729))))

(assert (=> b!2523346 (= res!1066000 (isEmpty!16947 (tail!4038 Nil!29477)))))

(declare-fun b!2523347 () Bool)

(declare-fun res!1066005 () Bool)

(assert (=> b!2523347 (=> res!1066005 e!1597731)))

(assert (=> b!2523347 (= res!1066005 e!1597729)))

(declare-fun res!1066001 () Bool)

(assert (=> b!2523347 (=> (not res!1066001) (not e!1597729))))

(assert (=> b!2523347 (= res!1066001 lt!900071)))

(assert (= (and d!718460 c!402640) b!2523345))

(assert (= (and d!718460 (not c!402640)) b!2523334))

(assert (= (and d!718460 c!402638) b!2523340))

(assert (= (and d!718460 (not c!402638)) b!2523337))

(assert (= (and b!2523337 c!402642) b!2523338))

(assert (= (and b!2523337 (not c!402642)) b!2523342))

(assert (= (and b!2523342 (not res!1066004)) b!2523347))

(assert (= (and b!2523347 res!1066001) b!2523344))

(assert (= (and b!2523344 res!1066003) b!2523346))

(assert (= (and b!2523346 res!1066000) b!2523341))

(assert (= (and b!2523347 (not res!1066005)) b!2523336))

(assert (= (and b!2523336 res!1066007) b!2523335))

(assert (= (and b!2523335 (not res!1066006)) b!2523343))

(assert (= (and b!2523343 (not res!1066002)) b!2523339))

(assert (= (or b!2523340 b!2523335 b!2523344) bm!157437))

(declare-fun m!2877365 () Bool)

(assert (=> b!2523334 m!2877365))

(assert (=> b!2523334 m!2877063))

(assert (=> b!2523334 m!2877365))

(declare-fun m!2877367 () Bool)

(assert (=> b!2523334 m!2877367))

(declare-fun m!2877369 () Bool)

(assert (=> b!2523334 m!2877369))

(assert (=> b!2523334 m!2877367))

(assert (=> b!2523334 m!2877369))

(declare-fun m!2877371 () Bool)

(assert (=> b!2523334 m!2877371))

(declare-fun m!2877373 () Bool)

(assert (=> bm!157437 m!2877373))

(assert (=> b!2523339 m!2877365))

(assert (=> b!2523346 m!2877369))

(assert (=> b!2523346 m!2877369))

(declare-fun m!2877375 () Bool)

(assert (=> b!2523346 m!2877375))

(assert (=> b!2523341 m!2877365))

(assert (=> b!2523345 m!2877063))

(declare-fun m!2877377 () Bool)

(assert (=> b!2523345 m!2877377))

(assert (=> b!2523343 m!2877369))

(assert (=> b!2523343 m!2877369))

(assert (=> b!2523343 m!2877375))

(assert (=> d!718460 m!2877373))

(assert (=> d!718460 m!2877063))

(declare-fun m!2877379 () Bool)

(assert (=> d!718460 m!2877379))

(assert (=> b!2522921 d!718460))

(declare-fun d!718462 () Bool)

(assert (=> d!718462 (= (matchR!3499 lt!899983 tl!4068) (matchR!3499 (derivative!207 lt!899983 tl!4068) Nil!29477))))

(declare-fun lt!900074 () Unit!43249)

(declare-fun choose!14956 (Regex!7512 List!29577) Unit!43249)

(assert (=> d!718462 (= lt!900074 (choose!14956 lt!899983 tl!4068))))

(assert (=> d!718462 (validRegex!3138 lt!899983)))

(assert (=> d!718462 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!145 lt!899983 tl!4068) lt!900074)))

(declare-fun bs!469037 () Bool)

(assert (= bs!469037 d!718462))

(assert (=> bs!469037 m!2877067))

(declare-fun m!2877381 () Bool)

(assert (=> bs!469037 m!2877381))

(declare-fun m!2877383 () Bool)

(assert (=> bs!469037 m!2877383))

(assert (=> bs!469037 m!2877063))

(assert (=> bs!469037 m!2877063))

(assert (=> bs!469037 m!2877069))

(assert (=> b!2522921 d!718462))

(declare-fun d!718464 () Bool)

(declare-fun e!1597742 () Bool)

(assert (=> d!718464 e!1597742))

(declare-fun res!1066019 () Bool)

(assert (=> d!718464 (=> res!1066019 e!1597742)))

(assert (=> d!718464 (= res!1066019 (matchR!3499 lt!899987 tl!4068))))

(declare-fun lt!900078 () Unit!43249)

(declare-fun choose!14957 (Regex!7512 Regex!7512 List!29577) Unit!43249)

(assert (=> d!718464 (= lt!900078 (choose!14957 lt!899987 lt!899982 tl!4068))))

(declare-fun e!1597743 () Bool)

(assert (=> d!718464 e!1597743))

(declare-fun res!1066018 () Bool)

(assert (=> d!718464 (=> (not res!1066018) (not e!1597743))))

(assert (=> d!718464 (= res!1066018 (validRegex!3138 lt!899987))))

(assert (=> d!718464 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!177 lt!899987 lt!899982 tl!4068) lt!900078)))

(declare-fun b!2523360 () Bool)

(assert (=> b!2523360 (= e!1597743 (validRegex!3138 lt!899982))))

(declare-fun b!2523361 () Bool)

(assert (=> b!2523361 (= e!1597742 (matchR!3499 lt!899982 tl!4068))))

(assert (= (and d!718464 res!1066018) b!2523360))

(assert (= (and d!718464 (not res!1066019)) b!2523361))

(assert (=> d!718464 m!2877071))

(declare-fun m!2877401 () Bool)

(assert (=> d!718464 m!2877401))

(assert (=> d!718464 m!2877363))

(assert (=> b!2523360 m!2877163))

(assert (=> b!2523361 m!2877059))

(assert (=> b!2522921 d!718464))

(declare-fun b!2523362 () Bool)

(declare-fun e!1597749 () Bool)

(assert (=> b!2523362 (= e!1597749 (matchR!3499 (derivativeStep!2081 lt!899983 (head!5761 tl!4068)) (tail!4038 tl!4068)))))

(declare-fun b!2523363 () Bool)

(declare-fun e!1597744 () Bool)

(declare-fun e!1597745 () Bool)

(assert (=> b!2523363 (= e!1597744 e!1597745)))

(declare-fun res!1066026 () Bool)

(assert (=> b!2523363 (=> res!1066026 e!1597745)))

(declare-fun call!157443 () Bool)

(assert (=> b!2523363 (= res!1066026 call!157443)))

(declare-fun bm!157438 () Bool)

(assert (=> bm!157438 (= call!157443 (isEmpty!16947 tl!4068))))

(declare-fun d!718470 () Bool)

(declare-fun e!1597747 () Bool)

(assert (=> d!718470 e!1597747))

(declare-fun c!402644 () Bool)

(assert (=> d!718470 (= c!402644 (is-EmptyExpr!7512 lt!899983))))

(declare-fun lt!900079 () Bool)

(assert (=> d!718470 (= lt!900079 e!1597749)))

(declare-fun c!402645 () Bool)

(assert (=> d!718470 (= c!402645 (isEmpty!16947 tl!4068))))

(assert (=> d!718470 (validRegex!3138 lt!899983)))

(assert (=> d!718470 (= (matchR!3499 lt!899983 tl!4068) lt!900079)))

(declare-fun b!2523364 () Bool)

(declare-fun e!1597748 () Bool)

(assert (=> b!2523364 (= e!1597748 e!1597744)))

(declare-fun res!1066027 () Bool)

(assert (=> b!2523364 (=> (not res!1066027) (not e!1597744))))

(assert (=> b!2523364 (= res!1066027 (not lt!900079))))

(declare-fun b!2523365 () Bool)

(declare-fun e!1597750 () Bool)

(assert (=> b!2523365 (= e!1597747 e!1597750)))

(declare-fun c!402646 () Bool)

(assert (=> b!2523365 (= c!402646 (is-EmptyLang!7512 lt!899983))))

(declare-fun b!2523366 () Bool)

(assert (=> b!2523366 (= e!1597750 (not lt!900079))))

(declare-fun b!2523367 () Bool)

(assert (=> b!2523367 (= e!1597745 (not (= (head!5761 tl!4068) (c!402532 lt!899983))))))

(declare-fun b!2523368 () Bool)

(assert (=> b!2523368 (= e!1597747 (= lt!900079 call!157443))))

(declare-fun b!2523369 () Bool)

(declare-fun e!1597746 () Bool)

(assert (=> b!2523369 (= e!1597746 (= (head!5761 tl!4068) (c!402532 lt!899983)))))

(declare-fun b!2523370 () Bool)

(declare-fun res!1066024 () Bool)

(assert (=> b!2523370 (=> res!1066024 e!1597748)))

(assert (=> b!2523370 (= res!1066024 (not (is-ElementMatch!7512 lt!899983)))))

(assert (=> b!2523370 (= e!1597750 e!1597748)))

(declare-fun b!2523371 () Bool)

(declare-fun res!1066022 () Bool)

(assert (=> b!2523371 (=> res!1066022 e!1597745)))

(assert (=> b!2523371 (= res!1066022 (not (isEmpty!16947 (tail!4038 tl!4068))))))

(declare-fun b!2523372 () Bool)

(declare-fun res!1066023 () Bool)

(assert (=> b!2523372 (=> (not res!1066023) (not e!1597746))))

(assert (=> b!2523372 (= res!1066023 (not call!157443))))

(declare-fun b!2523373 () Bool)

(assert (=> b!2523373 (= e!1597749 (nullable!2429 lt!899983))))

(declare-fun b!2523374 () Bool)

(declare-fun res!1066020 () Bool)

(assert (=> b!2523374 (=> (not res!1066020) (not e!1597746))))

(assert (=> b!2523374 (= res!1066020 (isEmpty!16947 (tail!4038 tl!4068)))))

(declare-fun b!2523375 () Bool)

(declare-fun res!1066025 () Bool)

(assert (=> b!2523375 (=> res!1066025 e!1597748)))

(assert (=> b!2523375 (= res!1066025 e!1597746)))

(declare-fun res!1066021 () Bool)

(assert (=> b!2523375 (=> (not res!1066021) (not e!1597746))))

(assert (=> b!2523375 (= res!1066021 lt!900079)))

(assert (= (and d!718470 c!402645) b!2523373))

(assert (= (and d!718470 (not c!402645)) b!2523362))

(assert (= (and d!718470 c!402644) b!2523368))

(assert (= (and d!718470 (not c!402644)) b!2523365))

(assert (= (and b!2523365 c!402646) b!2523366))

(assert (= (and b!2523365 (not c!402646)) b!2523370))

(assert (= (and b!2523370 (not res!1066024)) b!2523375))

(assert (= (and b!2523375 res!1066021) b!2523372))

(assert (= (and b!2523372 res!1066023) b!2523374))

(assert (= (and b!2523374 res!1066020) b!2523369))

(assert (= (and b!2523375 (not res!1066025)) b!2523364))

(assert (= (and b!2523364 res!1066027) b!2523363))

(assert (= (and b!2523363 (not res!1066026)) b!2523371))

(assert (= (and b!2523371 (not res!1066022)) b!2523367))

(assert (= (or b!2523368 b!2523363 b!2523372) bm!157438))

(assert (=> b!2523362 m!2877149))

(assert (=> b!2523362 m!2877149))

(declare-fun m!2877403 () Bool)

(assert (=> b!2523362 m!2877403))

(assert (=> b!2523362 m!2877153))

(assert (=> b!2523362 m!2877403))

(assert (=> b!2523362 m!2877153))

(declare-fun m!2877405 () Bool)

(assert (=> b!2523362 m!2877405))

(assert (=> bm!157438 m!2877157))

(assert (=> b!2523367 m!2877149))

(assert (=> b!2523374 m!2877153))

(assert (=> b!2523374 m!2877153))

(assert (=> b!2523374 m!2877159))

(assert (=> b!2523369 m!2877149))

(declare-fun m!2877407 () Bool)

(assert (=> b!2523373 m!2877407))

(assert (=> b!2523371 m!2877153))

(assert (=> b!2523371 m!2877153))

(assert (=> b!2523371 m!2877159))

(assert (=> d!718470 m!2877157))

(assert (=> d!718470 m!2877383))

(assert (=> b!2522921 d!718470))

(declare-fun d!718474 () Bool)

(declare-fun lt!900080 () Regex!7512)

(assert (=> d!718474 (validRegex!3138 lt!900080)))

(declare-fun e!1597751 () Regex!7512)

(assert (=> d!718474 (= lt!900080 e!1597751)))

(declare-fun c!402647 () Bool)

(assert (=> d!718474 (= c!402647 (is-Cons!29477 tl!4068))))

(assert (=> d!718474 (validRegex!3138 lt!899983)))

(assert (=> d!718474 (= (derivative!207 lt!899983 tl!4068) lt!900080)))

(declare-fun b!2523376 () Bool)

(assert (=> b!2523376 (= e!1597751 (derivative!207 (derivativeStep!2081 lt!899983 (h!34897 tl!4068)) (t!211276 tl!4068)))))

(declare-fun b!2523377 () Bool)

(assert (=> b!2523377 (= e!1597751 lt!899983)))

(assert (= (and d!718474 c!402647) b!2523376))

(assert (= (and d!718474 (not c!402647)) b!2523377))

(declare-fun m!2877409 () Bool)

(assert (=> d!718474 m!2877409))

(assert (=> d!718474 m!2877383))

(declare-fun m!2877411 () Bool)

(assert (=> b!2523376 m!2877411))

(assert (=> b!2523376 m!2877411))

(declare-fun m!2877413 () Bool)

(assert (=> b!2523376 m!2877413))

(assert (=> b!2522921 d!718474))

(declare-fun c!402652 () Bool)

(declare-fun call!157445 () Regex!7512)

(declare-fun bm!157439 () Bool)

(assert (=> bm!157439 (= call!157445 (derivativeStep!2081 (ite c!402652 (regOne!15537 (regTwo!15536 r!27340)) (regTwo!15536 (regTwo!15536 r!27340))) c!14016))))

(declare-fun bm!157440 () Bool)

(declare-fun call!157444 () Regex!7512)

(declare-fun call!157446 () Regex!7512)

(assert (=> bm!157440 (= call!157444 call!157446)))

(declare-fun call!157447 () Regex!7512)

(declare-fun b!2523379 () Bool)

(declare-fun e!1597753 () Regex!7512)

(assert (=> b!2523379 (= e!1597753 (Union!7512 (Concat!12208 call!157447 (regTwo!15536 (regTwo!15536 r!27340))) call!157445))))

(declare-fun b!2523380 () Bool)

(assert (=> b!2523380 (= c!402652 (is-Union!7512 (regTwo!15536 r!27340)))))

(declare-fun e!1597754 () Regex!7512)

(declare-fun e!1597756 () Regex!7512)

(assert (=> b!2523380 (= e!1597754 e!1597756)))

(declare-fun b!2523381 () Bool)

(declare-fun e!1597755 () Regex!7512)

(assert (=> b!2523381 (= e!1597755 (Concat!12208 call!157444 (regTwo!15536 r!27340)))))

(declare-fun bm!157441 () Bool)

(assert (=> bm!157441 (= call!157447 call!157444)))

(declare-fun b!2523382 () Bool)

(declare-fun c!402649 () Bool)

(assert (=> b!2523382 (= c!402649 (nullable!2429 (regOne!15536 (regTwo!15536 r!27340))))))

(assert (=> b!2523382 (= e!1597755 e!1597753)))

(declare-fun b!2523383 () Bool)

(assert (=> b!2523383 (= e!1597753 (Union!7512 (Concat!12208 call!157447 (regTwo!15536 (regTwo!15536 r!27340))) EmptyLang!7512))))

(declare-fun b!2523384 () Bool)

(assert (=> b!2523384 (= e!1597754 (ite (= c!14016 (c!402532 (regTwo!15536 r!27340))) EmptyExpr!7512 EmptyLang!7512))))

(declare-fun d!718476 () Bool)

(declare-fun lt!900081 () Regex!7512)

(assert (=> d!718476 (validRegex!3138 lt!900081)))

(declare-fun e!1597752 () Regex!7512)

(assert (=> d!718476 (= lt!900081 e!1597752)))

(declare-fun c!402651 () Bool)

(assert (=> d!718476 (= c!402651 (or (is-EmptyExpr!7512 (regTwo!15536 r!27340)) (is-EmptyLang!7512 (regTwo!15536 r!27340))))))

(assert (=> d!718476 (validRegex!3138 (regTwo!15536 r!27340))))

(assert (=> d!718476 (= (derivativeStep!2081 (regTwo!15536 r!27340) c!14016) lt!900081)))

(declare-fun b!2523378 () Bool)

(assert (=> b!2523378 (= e!1597752 e!1597754)))

(declare-fun c!402648 () Bool)

(assert (=> b!2523378 (= c!402648 (is-ElementMatch!7512 (regTwo!15536 r!27340)))))

(declare-fun b!2523385 () Bool)

(assert (=> b!2523385 (= e!1597752 EmptyLang!7512)))

(declare-fun bm!157442 () Bool)

(declare-fun c!402650 () Bool)

(assert (=> bm!157442 (= call!157446 (derivativeStep!2081 (ite c!402652 (regTwo!15537 (regTwo!15536 r!27340)) (ite c!402650 (reg!7841 (regTwo!15536 r!27340)) (regOne!15536 (regTwo!15536 r!27340)))) c!14016))))

(declare-fun b!2523386 () Bool)

(assert (=> b!2523386 (= e!1597756 (Union!7512 call!157445 call!157446))))

(declare-fun b!2523387 () Bool)

(assert (=> b!2523387 (= e!1597756 e!1597755)))

(assert (=> b!2523387 (= c!402650 (is-Star!7512 (regTwo!15536 r!27340)))))

(assert (= (and d!718476 c!402651) b!2523385))

(assert (= (and d!718476 (not c!402651)) b!2523378))

(assert (= (and b!2523378 c!402648) b!2523384))

(assert (= (and b!2523378 (not c!402648)) b!2523380))

(assert (= (and b!2523380 c!402652) b!2523386))

(assert (= (and b!2523380 (not c!402652)) b!2523387))

(assert (= (and b!2523387 c!402650) b!2523381))

(assert (= (and b!2523387 (not c!402650)) b!2523382))

(assert (= (and b!2523382 c!402649) b!2523379))

(assert (= (and b!2523382 (not c!402649)) b!2523383))

(assert (= (or b!2523379 b!2523383) bm!157441))

(assert (= (or b!2523381 bm!157441) bm!157440))

(assert (= (or b!2523386 bm!157440) bm!157442))

(assert (= (or b!2523386 b!2523379) bm!157439))

(declare-fun m!2877415 () Bool)

(assert (=> bm!157439 m!2877415))

(declare-fun m!2877417 () Bool)

(assert (=> b!2523382 m!2877417))

(declare-fun m!2877419 () Bool)

(assert (=> d!718476 m!2877419))

(declare-fun m!2877421 () Bool)

(assert (=> d!718476 m!2877421))

(declare-fun m!2877423 () Bool)

(assert (=> bm!157442 m!2877423))

(assert (=> b!2522921 d!718476))

(declare-fun call!157449 () Regex!7512)

(declare-fun c!402657 () Bool)

(declare-fun bm!157443 () Bool)

(assert (=> bm!157443 (= call!157449 (derivativeStep!2081 (ite c!402657 (regOne!15537 (regOne!15536 r!27340)) (regTwo!15536 (regOne!15536 r!27340))) c!14016))))

(declare-fun bm!157444 () Bool)

(declare-fun call!157448 () Regex!7512)

(declare-fun call!157450 () Regex!7512)

(assert (=> bm!157444 (= call!157448 call!157450)))

(declare-fun b!2523389 () Bool)

(declare-fun call!157451 () Regex!7512)

(declare-fun e!1597758 () Regex!7512)

(assert (=> b!2523389 (= e!1597758 (Union!7512 (Concat!12208 call!157451 (regTwo!15536 (regOne!15536 r!27340))) call!157449))))

(declare-fun b!2523390 () Bool)

(assert (=> b!2523390 (= c!402657 (is-Union!7512 (regOne!15536 r!27340)))))

(declare-fun e!1597759 () Regex!7512)

(declare-fun e!1597761 () Regex!7512)

(assert (=> b!2523390 (= e!1597759 e!1597761)))

(declare-fun b!2523391 () Bool)

(declare-fun e!1597760 () Regex!7512)

(assert (=> b!2523391 (= e!1597760 (Concat!12208 call!157448 (regOne!15536 r!27340)))))

(declare-fun bm!157445 () Bool)

(assert (=> bm!157445 (= call!157451 call!157448)))

(declare-fun b!2523392 () Bool)

(declare-fun c!402654 () Bool)

(assert (=> b!2523392 (= c!402654 (nullable!2429 (regOne!15536 (regOne!15536 r!27340))))))

(assert (=> b!2523392 (= e!1597760 e!1597758)))

(declare-fun b!2523393 () Bool)

(assert (=> b!2523393 (= e!1597758 (Union!7512 (Concat!12208 call!157451 (regTwo!15536 (regOne!15536 r!27340))) EmptyLang!7512))))

(declare-fun b!2523394 () Bool)

(assert (=> b!2523394 (= e!1597759 (ite (= c!14016 (c!402532 (regOne!15536 r!27340))) EmptyExpr!7512 EmptyLang!7512))))

(declare-fun d!718478 () Bool)

(declare-fun lt!900082 () Regex!7512)

(assert (=> d!718478 (validRegex!3138 lt!900082)))

(declare-fun e!1597757 () Regex!7512)

(assert (=> d!718478 (= lt!900082 e!1597757)))

(declare-fun c!402656 () Bool)

(assert (=> d!718478 (= c!402656 (or (is-EmptyExpr!7512 (regOne!15536 r!27340)) (is-EmptyLang!7512 (regOne!15536 r!27340))))))

(assert (=> d!718478 (validRegex!3138 (regOne!15536 r!27340))))

(assert (=> d!718478 (= (derivativeStep!2081 (regOne!15536 r!27340) c!14016) lt!900082)))

(declare-fun b!2523388 () Bool)

(assert (=> b!2523388 (= e!1597757 e!1597759)))

(declare-fun c!402653 () Bool)

(assert (=> b!2523388 (= c!402653 (is-ElementMatch!7512 (regOne!15536 r!27340)))))

(declare-fun b!2523395 () Bool)

(assert (=> b!2523395 (= e!1597757 EmptyLang!7512)))

(declare-fun bm!157446 () Bool)

(declare-fun c!402655 () Bool)

(assert (=> bm!157446 (= call!157450 (derivativeStep!2081 (ite c!402657 (regTwo!15537 (regOne!15536 r!27340)) (ite c!402655 (reg!7841 (regOne!15536 r!27340)) (regOne!15536 (regOne!15536 r!27340)))) c!14016))))

(declare-fun b!2523396 () Bool)

(assert (=> b!2523396 (= e!1597761 (Union!7512 call!157449 call!157450))))

(declare-fun b!2523397 () Bool)

(assert (=> b!2523397 (= e!1597761 e!1597760)))

(assert (=> b!2523397 (= c!402655 (is-Star!7512 (regOne!15536 r!27340)))))

(assert (= (and d!718478 c!402656) b!2523395))

(assert (= (and d!718478 (not c!402656)) b!2523388))

(assert (= (and b!2523388 c!402653) b!2523394))

(assert (= (and b!2523388 (not c!402653)) b!2523390))

(assert (= (and b!2523390 c!402657) b!2523396))

(assert (= (and b!2523390 (not c!402657)) b!2523397))

(assert (= (and b!2523397 c!402655) b!2523391))

(assert (= (and b!2523397 (not c!402655)) b!2523392))

(assert (= (and b!2523392 c!402654) b!2523389))

(assert (= (and b!2523392 (not c!402654)) b!2523393))

(assert (= (or b!2523389 b!2523393) bm!157445))

(assert (= (or b!2523391 bm!157445) bm!157444))

(assert (= (or b!2523396 bm!157444) bm!157446))

(assert (= (or b!2523396 b!2523389) bm!157443))

(declare-fun m!2877425 () Bool)

(assert (=> bm!157443 m!2877425))

(declare-fun m!2877427 () Bool)

(assert (=> b!2523392 m!2877427))

(declare-fun m!2877429 () Bool)

(assert (=> d!718478 m!2877429))

(declare-fun m!2877431 () Bool)

(assert (=> d!718478 m!2877431))

(declare-fun m!2877433 () Bool)

(assert (=> bm!157446 m!2877433))

(assert (=> b!2522921 d!718478))

(declare-fun b!2523398 () Bool)

(declare-fun e!1597767 () Bool)

(assert (=> b!2523398 (= e!1597767 (matchR!3499 (derivativeStep!2081 (regTwo!15536 r!27340) (head!5761 (_2!17305 lt!899989))) (tail!4038 (_2!17305 lt!899989))))))

(declare-fun b!2523399 () Bool)

(declare-fun e!1597762 () Bool)

(declare-fun e!1597763 () Bool)

(assert (=> b!2523399 (= e!1597762 e!1597763)))

(declare-fun res!1066034 () Bool)

(assert (=> b!2523399 (=> res!1066034 e!1597763)))

(declare-fun call!157452 () Bool)

(assert (=> b!2523399 (= res!1066034 call!157452)))

(declare-fun bm!157447 () Bool)

(assert (=> bm!157447 (= call!157452 (isEmpty!16947 (_2!17305 lt!899989)))))

(declare-fun d!718480 () Bool)

(declare-fun e!1597765 () Bool)

(assert (=> d!718480 e!1597765))

(declare-fun c!402658 () Bool)

(assert (=> d!718480 (= c!402658 (is-EmptyExpr!7512 (regTwo!15536 r!27340)))))

(declare-fun lt!900083 () Bool)

(assert (=> d!718480 (= lt!900083 e!1597767)))

(declare-fun c!402659 () Bool)

(assert (=> d!718480 (= c!402659 (isEmpty!16947 (_2!17305 lt!899989)))))

(assert (=> d!718480 (validRegex!3138 (regTwo!15536 r!27340))))

(assert (=> d!718480 (= (matchR!3499 (regTwo!15536 r!27340) (_2!17305 lt!899989)) lt!900083)))

(declare-fun b!2523400 () Bool)

(declare-fun e!1597766 () Bool)

(assert (=> b!2523400 (= e!1597766 e!1597762)))

(declare-fun res!1066035 () Bool)

(assert (=> b!2523400 (=> (not res!1066035) (not e!1597762))))

(assert (=> b!2523400 (= res!1066035 (not lt!900083))))

(declare-fun b!2523401 () Bool)

(declare-fun e!1597768 () Bool)

(assert (=> b!2523401 (= e!1597765 e!1597768)))

(declare-fun c!402660 () Bool)

(assert (=> b!2523401 (= c!402660 (is-EmptyLang!7512 (regTwo!15536 r!27340)))))

(declare-fun b!2523402 () Bool)

(assert (=> b!2523402 (= e!1597768 (not lt!900083))))

(declare-fun b!2523403 () Bool)

(assert (=> b!2523403 (= e!1597763 (not (= (head!5761 (_2!17305 lt!899989)) (c!402532 (regTwo!15536 r!27340)))))))

(declare-fun b!2523404 () Bool)

(assert (=> b!2523404 (= e!1597765 (= lt!900083 call!157452))))

(declare-fun b!2523405 () Bool)

(declare-fun e!1597764 () Bool)

(assert (=> b!2523405 (= e!1597764 (= (head!5761 (_2!17305 lt!899989)) (c!402532 (regTwo!15536 r!27340))))))

(declare-fun b!2523406 () Bool)

(declare-fun res!1066032 () Bool)

(assert (=> b!2523406 (=> res!1066032 e!1597766)))

(assert (=> b!2523406 (= res!1066032 (not (is-ElementMatch!7512 (regTwo!15536 r!27340))))))

(assert (=> b!2523406 (= e!1597768 e!1597766)))

(declare-fun b!2523407 () Bool)

(declare-fun res!1066030 () Bool)

(assert (=> b!2523407 (=> res!1066030 e!1597763)))

(assert (=> b!2523407 (= res!1066030 (not (isEmpty!16947 (tail!4038 (_2!17305 lt!899989)))))))

(declare-fun b!2523408 () Bool)

(declare-fun res!1066031 () Bool)

(assert (=> b!2523408 (=> (not res!1066031) (not e!1597764))))

(assert (=> b!2523408 (= res!1066031 (not call!157452))))

(declare-fun b!2523409 () Bool)

(assert (=> b!2523409 (= e!1597767 (nullable!2429 (regTwo!15536 r!27340)))))

(declare-fun b!2523410 () Bool)

(declare-fun res!1066028 () Bool)

(assert (=> b!2523410 (=> (not res!1066028) (not e!1597764))))

(assert (=> b!2523410 (= res!1066028 (isEmpty!16947 (tail!4038 (_2!17305 lt!899989))))))

(declare-fun b!2523411 () Bool)

(declare-fun res!1066033 () Bool)

(assert (=> b!2523411 (=> res!1066033 e!1597766)))

(assert (=> b!2523411 (= res!1066033 e!1597764)))

(declare-fun res!1066029 () Bool)

(assert (=> b!2523411 (=> (not res!1066029) (not e!1597764))))

(assert (=> b!2523411 (= res!1066029 lt!900083)))

(assert (= (and d!718480 c!402659) b!2523409))

(assert (= (and d!718480 (not c!402659)) b!2523398))

(assert (= (and d!718480 c!402658) b!2523404))

(assert (= (and d!718480 (not c!402658)) b!2523401))

(assert (= (and b!2523401 c!402660) b!2523402))

(assert (= (and b!2523401 (not c!402660)) b!2523406))

(assert (= (and b!2523406 (not res!1066032)) b!2523411))

(assert (= (and b!2523411 res!1066029) b!2523408))

(assert (= (and b!2523408 res!1066031) b!2523410))

(assert (= (and b!2523410 res!1066028) b!2523405))

(assert (= (and b!2523411 (not res!1066033)) b!2523400))

(assert (= (and b!2523400 res!1066035) b!2523399))

(assert (= (and b!2523399 (not res!1066034)) b!2523407))

(assert (= (and b!2523407 (not res!1066030)) b!2523403))

(assert (= (or b!2523404 b!2523399 b!2523408) bm!157447))

(declare-fun m!2877435 () Bool)

(assert (=> b!2523398 m!2877435))

(assert (=> b!2523398 m!2877435))

(declare-fun m!2877437 () Bool)

(assert (=> b!2523398 m!2877437))

(declare-fun m!2877439 () Bool)

(assert (=> b!2523398 m!2877439))

(assert (=> b!2523398 m!2877437))

(assert (=> b!2523398 m!2877439))

(declare-fun m!2877441 () Bool)

(assert (=> b!2523398 m!2877441))

(declare-fun m!2877443 () Bool)

(assert (=> bm!157447 m!2877443))

(assert (=> b!2523403 m!2877435))

(assert (=> b!2523410 m!2877439))

(assert (=> b!2523410 m!2877439))

(declare-fun m!2877445 () Bool)

(assert (=> b!2523410 m!2877445))

(assert (=> b!2523405 m!2877435))

(declare-fun m!2877447 () Bool)

(assert (=> b!2523409 m!2877447))

(assert (=> b!2523407 m!2877439))

(assert (=> b!2523407 m!2877439))

(assert (=> b!2523407 m!2877445))

(assert (=> d!718480 m!2877443))

(assert (=> d!718480 m!2877421))

(assert (=> b!2522922 d!718480))

(declare-fun b!2523423 () Bool)

(declare-fun e!1597771 () Bool)

(declare-fun tp!806080 () Bool)

(declare-fun tp!806078 () Bool)

(assert (=> b!2523423 (= e!1597771 (and tp!806080 tp!806078))))

(declare-fun b!2523424 () Bool)

(declare-fun tp!806079 () Bool)

(assert (=> b!2523424 (= e!1597771 tp!806079)))

(declare-fun b!2523425 () Bool)

(declare-fun tp!806081 () Bool)

(declare-fun tp!806077 () Bool)

(assert (=> b!2523425 (= e!1597771 (and tp!806081 tp!806077))))

(assert (=> b!2522928 (= tp!806043 e!1597771)))

(declare-fun b!2523422 () Bool)

(assert (=> b!2523422 (= e!1597771 tp_is_empty!12879)))

(assert (= (and b!2522928 (is-ElementMatch!7512 (regOne!15536 r!27340))) b!2523422))

(assert (= (and b!2522928 (is-Concat!12208 (regOne!15536 r!27340))) b!2523423))

(assert (= (and b!2522928 (is-Star!7512 (regOne!15536 r!27340))) b!2523424))

(assert (= (and b!2522928 (is-Union!7512 (regOne!15536 r!27340))) b!2523425))

(declare-fun b!2523427 () Bool)

(declare-fun e!1597772 () Bool)

(declare-fun tp!806085 () Bool)

(declare-fun tp!806083 () Bool)

(assert (=> b!2523427 (= e!1597772 (and tp!806085 tp!806083))))

(declare-fun b!2523428 () Bool)

(declare-fun tp!806084 () Bool)

(assert (=> b!2523428 (= e!1597772 tp!806084)))

(declare-fun b!2523429 () Bool)

(declare-fun tp!806086 () Bool)

(declare-fun tp!806082 () Bool)

(assert (=> b!2523429 (= e!1597772 (and tp!806086 tp!806082))))

(assert (=> b!2522928 (= tp!806048 e!1597772)))

(declare-fun b!2523426 () Bool)

(assert (=> b!2523426 (= e!1597772 tp_is_empty!12879)))

(assert (= (and b!2522928 (is-ElementMatch!7512 (regTwo!15536 r!27340))) b!2523426))

(assert (= (and b!2522928 (is-Concat!12208 (regTwo!15536 r!27340))) b!2523427))

(assert (= (and b!2522928 (is-Star!7512 (regTwo!15536 r!27340))) b!2523428))

(assert (= (and b!2522928 (is-Union!7512 (regTwo!15536 r!27340))) b!2523429))

(declare-fun b!2523434 () Bool)

(declare-fun e!1597775 () Bool)

(declare-fun tp!806089 () Bool)

(assert (=> b!2523434 (= e!1597775 (and tp_is_empty!12879 tp!806089))))

(assert (=> b!2522929 (= tp!806047 e!1597775)))

(assert (= (and b!2522929 (is-Cons!29477 (t!211276 tl!4068))) b!2523434))

(declare-fun b!2523436 () Bool)

(declare-fun e!1597776 () Bool)

(declare-fun tp!806093 () Bool)

(declare-fun tp!806091 () Bool)

(assert (=> b!2523436 (= e!1597776 (and tp!806093 tp!806091))))

(declare-fun b!2523437 () Bool)

(declare-fun tp!806092 () Bool)

(assert (=> b!2523437 (= e!1597776 tp!806092)))

(declare-fun b!2523438 () Bool)

(declare-fun tp!806094 () Bool)

(declare-fun tp!806090 () Bool)

(assert (=> b!2523438 (= e!1597776 (and tp!806094 tp!806090))))

(assert (=> b!2522924 (= tp!806044 e!1597776)))

(declare-fun b!2523435 () Bool)

(assert (=> b!2523435 (= e!1597776 tp_is_empty!12879)))

(assert (= (and b!2522924 (is-ElementMatch!7512 (reg!7841 r!27340))) b!2523435))

(assert (= (and b!2522924 (is-Concat!12208 (reg!7841 r!27340))) b!2523436))

(assert (= (and b!2522924 (is-Star!7512 (reg!7841 r!27340))) b!2523437))

(assert (= (and b!2522924 (is-Union!7512 (reg!7841 r!27340))) b!2523438))

(declare-fun b!2523440 () Bool)

(declare-fun e!1597777 () Bool)

(declare-fun tp!806098 () Bool)

(declare-fun tp!806096 () Bool)

(assert (=> b!2523440 (= e!1597777 (and tp!806098 tp!806096))))

(declare-fun b!2523441 () Bool)

(declare-fun tp!806097 () Bool)

(assert (=> b!2523441 (= e!1597777 tp!806097)))

(declare-fun b!2523442 () Bool)

(declare-fun tp!806099 () Bool)

(declare-fun tp!806095 () Bool)

(assert (=> b!2523442 (= e!1597777 (and tp!806099 tp!806095))))

(assert (=> b!2522926 (= tp!806046 e!1597777)))

(declare-fun b!2523439 () Bool)

(assert (=> b!2523439 (= e!1597777 tp_is_empty!12879)))

(assert (= (and b!2522926 (is-ElementMatch!7512 (regOne!15537 r!27340))) b!2523439))

(assert (= (and b!2522926 (is-Concat!12208 (regOne!15537 r!27340))) b!2523440))

(assert (= (and b!2522926 (is-Star!7512 (regOne!15537 r!27340))) b!2523441))

(assert (= (and b!2522926 (is-Union!7512 (regOne!15537 r!27340))) b!2523442))

(declare-fun b!2523444 () Bool)

(declare-fun e!1597778 () Bool)

(declare-fun tp!806103 () Bool)

(declare-fun tp!806101 () Bool)

(assert (=> b!2523444 (= e!1597778 (and tp!806103 tp!806101))))

(declare-fun b!2523445 () Bool)

(declare-fun tp!806102 () Bool)

(assert (=> b!2523445 (= e!1597778 tp!806102)))

(declare-fun b!2523446 () Bool)

(declare-fun tp!806104 () Bool)

(declare-fun tp!806100 () Bool)

(assert (=> b!2523446 (= e!1597778 (and tp!806104 tp!806100))))

(assert (=> b!2522926 (= tp!806045 e!1597778)))

(declare-fun b!2523443 () Bool)

(assert (=> b!2523443 (= e!1597778 tp_is_empty!12879)))

(assert (= (and b!2522926 (is-ElementMatch!7512 (regTwo!15537 r!27340))) b!2523443))

(assert (= (and b!2522926 (is-Concat!12208 (regTwo!15537 r!27340))) b!2523444))

(assert (= (and b!2522926 (is-Star!7512 (regTwo!15537 r!27340))) b!2523445))

(assert (= (and b!2522926 (is-Union!7512 (regTwo!15537 r!27340))) b!2523446))

(push 1)

(assert (not d!718432))

(assert (not bm!157414))

(assert (not b!2523115))

(assert (not b!2523343))

(assert (not b!2523039))

(assert (not b!2523341))

(assert (not b!2523030))

(assert (not b!2523046))

(assert (not b!2523034))

(assert (not bm!157435))

(assert (not b!2523111))

(assert (not b!2523327))

(assert (not b!2523376))

(assert (not b!2523201))

(assert (not b!2523171))

(assert (not bm!157433))

(assert (not bm!157417))

(assert (not d!718408))

(assert (not d!718474))

(assert (not b!2523119))

(assert (not bm!157446))

(assert (not b!2523425))

(assert (not b!2523427))

(assert (not b!2523321))

(assert (not b!2523316))

(assert (not b!2523371))

(assert (not b!2523345))

(assert (not b!2523361))

(assert (not b!2523445))

(assert (not b!2523032))

(assert (not bm!157442))

(assert (not d!718412))

(assert (not d!718470))

(assert (not b!2523025))

(assert (not b!2523051))

(assert (not b!2523424))

(assert (not bm!157437))

(assert (not b!2523325))

(assert (not d!718462))

(assert (not d!718480))

(assert (not b!2523116))

(assert (not bm!157439))

(assert (not b!2523346))

(assert (not b!2523362))

(assert (not b!2523360))

(assert (not b!2523444))

(assert (not b!2523382))

(assert (not b!2523437))

(assert (not d!718476))

(assert (not b!2523423))

(assert (not b!2523428))

(assert (not b!2523334))

(assert (not b!2523398))

(assert (not bm!157447))

(assert (not d!718430))

(assert (not b!2523328))

(assert (not b!2523438))

(assert (not b!2523407))

(assert (not b!2523339))

(assert (not d!718428))

(assert (not b!2523429))

(assert (not d!718422))

(assert tp_is_empty!12879)

(assert (not b!2523405))

(assert (not b!2523392))

(assert (not b!2523044))

(assert (not b!2523048))

(assert (not b!2523050))

(assert (not b!2523436))

(assert (not b!2523247))

(assert (not b!2523113))

(assert (not b!2523037))

(assert (not b!2523369))

(assert (not bm!157438))

(assert (not bm!157380))

(assert (not b!2523172))

(assert (not b!2523442))

(assert (not d!718458))

(assert (not b!2523440))

(assert (not d!718438))

(assert (not b!2523114))

(assert (not b!2523374))

(assert (not b!2523403))

(assert (not b!2523446))

(assert (not b!2523373))

(assert (not b!2523036))

(assert (not b!2523367))

(assert (not b!2523441))

(assert (not d!718406))

(assert (not d!718402))

(assert (not b!2523323))

(assert (not bm!157379))

(assert (not d!718464))

(assert (not bm!157443))

(assert (not d!718418))

(assert (not b!2523409))

(assert (not d!718478))

(assert (not b!2523434))

(assert (not bm!157436))

(assert (not b!2523314))

(assert (not b!2523410))

(assert (not d!718460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

