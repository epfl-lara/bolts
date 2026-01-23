; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244678 () Bool)

(assert start!244678)

(declare-fun b!2508139 () Bool)

(declare-fun e!1589948 () Bool)

(declare-fun tp_is_empty!12739 () Bool)

(assert (=> b!2508139 (= e!1589948 tp_is_empty!12739)))

(declare-fun b!2508140 () Bool)

(declare-fun res!1060427 () Bool)

(declare-fun e!1589945 () Bool)

(assert (=> b!2508140 (=> (not res!1060427) (not e!1589945))))

(declare-datatypes ((C!15042 0))(
  ( (C!15043 (val!9173 Int)) )
))
(declare-datatypes ((Regex!7442 0))(
  ( (ElementMatch!7442 (c!399440 C!15042)) (Concat!12138 (regOne!15396 Regex!7442) (regTwo!15396 Regex!7442)) (EmptyExpr!7442) (Star!7442 (reg!7771 Regex!7442)) (EmptyLang!7442) (Union!7442 (regOne!15397 Regex!7442) (regTwo!15397 Regex!7442)) )
))
(declare-fun r!27340 () Regex!7442)

(declare-fun c!14016 () C!15042)

(declare-datatypes ((List!29507 0))(
  ( (Nil!29407) (Cons!29407 (h!34827 C!15042) (t!211206 List!29507)) )
))
(declare-fun tl!4068 () List!29507)

(declare-fun nullable!2359 (Regex!7442) Bool)

(declare-fun derivative!137 (Regex!7442 List!29507) Regex!7442)

(declare-fun derivativeStep!2011 (Regex!7442 C!15042) Regex!7442)

(assert (=> b!2508140 (= res!1060427 (nullable!2359 (derivative!137 (derivativeStep!2011 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508141 () Bool)

(declare-fun e!1589946 () Bool)

(assert (=> b!2508141 (= e!1589945 (not e!1589946))))

(declare-fun res!1060430 () Bool)

(assert (=> b!2508141 (=> res!1060430 e!1589946)))

(declare-fun lt!897208 () Bool)

(assert (=> b!2508141 (= res!1060430 lt!897208)))

(declare-fun e!1589947 () Bool)

(assert (=> b!2508141 e!1589947))

(declare-fun res!1060429 () Bool)

(assert (=> b!2508141 (=> res!1060429 e!1589947)))

(assert (=> b!2508141 (= res!1060429 lt!897208)))

(declare-fun lt!897209 () Regex!7442)

(declare-fun matchR!3445 (Regex!7442 List!29507) Bool)

(assert (=> b!2508141 (= lt!897208 (matchR!3445 lt!897209 tl!4068))))

(declare-datatypes ((Unit!43141 0))(
  ( (Unit!43142) )
))
(declare-fun lt!897205 () Unit!43141)

(declare-fun lt!897211 () Regex!7442)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!137 (Regex!7442 Regex!7442 List!29507) Unit!43141)

(assert (=> b!2508141 (= lt!897205 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!137 lt!897209 lt!897211 tl!4068))))

(declare-fun lt!897206 () Regex!7442)

(assert (=> b!2508141 (= (matchR!3445 lt!897206 tl!4068) (matchR!3445 (derivative!137 lt!897206 tl!4068) Nil!29407))))

(declare-fun lt!897207 () Unit!43141)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!91 (Regex!7442 List!29507) Unit!43141)

(assert (=> b!2508141 (= lt!897207 (lemmaMatchRIsSameAsWholeDerivativeAndNil!91 lt!897206 tl!4068))))

(assert (=> b!2508141 (= lt!897206 (Union!7442 lt!897209 lt!897211))))

(assert (=> b!2508141 (= lt!897211 (derivativeStep!2011 (regTwo!15396 r!27340) c!14016))))

(assert (=> b!2508141 (= lt!897209 (Concat!12138 (derivativeStep!2011 (regOne!15396 r!27340) c!14016) (regTwo!15396 r!27340)))))

(declare-fun b!2508142 () Bool)

(declare-fun res!1060428 () Bool)

(assert (=> b!2508142 (=> (not res!1060428) (not e!1589945))))

(assert (=> b!2508142 (= res!1060428 (nullable!2359 (regOne!15396 r!27340)))))

(declare-fun b!2508144 () Bool)

(declare-fun tp!802229 () Bool)

(declare-fun tp!802230 () Bool)

(assert (=> b!2508144 (= e!1589948 (and tp!802229 tp!802230))))

(declare-fun b!2508145 () Bool)

(declare-fun tp!802227 () Bool)

(declare-fun tp!802231 () Bool)

(assert (=> b!2508145 (= e!1589948 (and tp!802227 tp!802231))))

(declare-fun b!2508146 () Bool)

(assert (=> b!2508146 (= e!1589946 true)))

(assert (=> b!2508146 (= (matchR!3445 lt!897211 tl!4068) (matchR!3445 (derivative!137 lt!897211 tl!4068) Nil!29407))))

(declare-fun lt!897210 () Unit!43141)

(assert (=> b!2508146 (= lt!897210 (lemmaMatchRIsSameAsWholeDerivativeAndNil!91 lt!897211 tl!4068))))

(declare-fun b!2508147 () Bool)

(declare-fun e!1589949 () Bool)

(declare-fun tp!802232 () Bool)

(assert (=> b!2508147 (= e!1589949 (and tp_is_empty!12739 tp!802232))))

(declare-fun b!2508148 () Bool)

(declare-fun res!1060426 () Bool)

(assert (=> b!2508148 (=> (not res!1060426) (not e!1589945))))

(assert (=> b!2508148 (= res!1060426 (and (not (is-EmptyExpr!7442 r!27340)) (not (is-EmptyLang!7442 r!27340)) (not (is-ElementMatch!7442 r!27340)) (not (is-Union!7442 r!27340)) (not (is-Star!7442 r!27340))))))

(declare-fun b!2508149 () Bool)

(assert (=> b!2508149 (= e!1589947 (matchR!3445 lt!897211 tl!4068))))

(declare-fun b!2508143 () Bool)

(declare-fun tp!802228 () Bool)

(assert (=> b!2508143 (= e!1589948 tp!802228)))

(declare-fun res!1060425 () Bool)

(assert (=> start!244678 (=> (not res!1060425) (not e!1589945))))

(declare-fun validRegex!3068 (Regex!7442) Bool)

(assert (=> start!244678 (= res!1060425 (validRegex!3068 r!27340))))

(assert (=> start!244678 e!1589945))

(assert (=> start!244678 e!1589948))

(assert (=> start!244678 tp_is_empty!12739))

(assert (=> start!244678 e!1589949))

(assert (= (and start!244678 res!1060425) b!2508140))

(assert (= (and b!2508140 res!1060427) b!2508148))

(assert (= (and b!2508148 res!1060426) b!2508142))

(assert (= (and b!2508142 res!1060428) b!2508141))

(assert (= (and b!2508141 (not res!1060429)) b!2508149))

(assert (= (and b!2508141 (not res!1060430)) b!2508146))

(assert (= (and start!244678 (is-ElementMatch!7442 r!27340)) b!2508139))

(assert (= (and start!244678 (is-Concat!12138 r!27340)) b!2508145))

(assert (= (and start!244678 (is-Star!7442 r!27340)) b!2508143))

(assert (= (and start!244678 (is-Union!7442 r!27340)) b!2508144))

(assert (= (and start!244678 (is-Cons!29407 tl!4068)) b!2508147))

(declare-fun m!2868061 () Bool)

(assert (=> b!2508146 m!2868061))

(declare-fun m!2868063 () Bool)

(assert (=> b!2508146 m!2868063))

(assert (=> b!2508146 m!2868063))

(declare-fun m!2868065 () Bool)

(assert (=> b!2508146 m!2868065))

(declare-fun m!2868067 () Bool)

(assert (=> b!2508146 m!2868067))

(declare-fun m!2868069 () Bool)

(assert (=> b!2508142 m!2868069))

(assert (=> b!2508149 m!2868061))

(declare-fun m!2868071 () Bool)

(assert (=> b!2508140 m!2868071))

(assert (=> b!2508140 m!2868071))

(declare-fun m!2868073 () Bool)

(assert (=> b!2508140 m!2868073))

(assert (=> b!2508140 m!2868073))

(declare-fun m!2868075 () Bool)

(assert (=> b!2508140 m!2868075))

(declare-fun m!2868077 () Bool)

(assert (=> b!2508141 m!2868077))

(declare-fun m!2868079 () Bool)

(assert (=> b!2508141 m!2868079))

(declare-fun m!2868081 () Bool)

(assert (=> b!2508141 m!2868081))

(declare-fun m!2868083 () Bool)

(assert (=> b!2508141 m!2868083))

(declare-fun m!2868085 () Bool)

(assert (=> b!2508141 m!2868085))

(assert (=> b!2508141 m!2868085))

(declare-fun m!2868087 () Bool)

(assert (=> b!2508141 m!2868087))

(declare-fun m!2868089 () Bool)

(assert (=> b!2508141 m!2868089))

(declare-fun m!2868091 () Bool)

(assert (=> b!2508141 m!2868091))

(declare-fun m!2868093 () Bool)

(assert (=> start!244678 m!2868093))

(push 1)

(assert (not b!2508149))

(assert (not b!2508143))

(assert (not b!2508146))

(assert (not b!2508142))

(assert (not b!2508145))

(assert tp_is_empty!12739)

(assert (not start!244678))

(assert (not b!2508140))

(assert (not b!2508147))

(assert (not b!2508141))

(assert (not b!2508144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

