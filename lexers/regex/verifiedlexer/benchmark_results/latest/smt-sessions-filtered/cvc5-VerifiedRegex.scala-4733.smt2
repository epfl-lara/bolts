; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244674 () Bool)

(assert start!244674)

(declare-fun b!2508077 () Bool)

(declare-fun res!1060393 () Bool)

(declare-fun e!1589920 () Bool)

(assert (=> b!2508077 (=> (not res!1060393) (not e!1589920))))

(declare-datatypes ((C!15038 0))(
  ( (C!15039 (val!9171 Int)) )
))
(declare-datatypes ((Regex!7440 0))(
  ( (ElementMatch!7440 (c!399438 C!15038)) (Concat!12136 (regOne!15392 Regex!7440) (regTwo!15392 Regex!7440)) (EmptyExpr!7440) (Star!7440 (reg!7769 Regex!7440)) (EmptyLang!7440) (Union!7440 (regOne!15393 Regex!7440) (regTwo!15393 Regex!7440)) )
))
(declare-fun r!27340 () Regex!7440)

(declare-fun nullable!2357 (Regex!7440) Bool)

(assert (=> b!2508077 (= res!1060393 (nullable!2357 (regOne!15392 r!27340)))))

(declare-fun b!2508078 () Bool)

(declare-fun res!1060397 () Bool)

(assert (=> b!2508078 (=> (not res!1060397) (not e!1589920))))

(declare-datatypes ((List!29505 0))(
  ( (Nil!29405) (Cons!29405 (h!34825 C!15038) (t!211204 List!29505)) )
))
(declare-fun tl!4068 () List!29505)

(declare-fun c!14016 () C!15038)

(declare-fun derivative!135 (Regex!7440 List!29505) Regex!7440)

(declare-fun derivativeStep!2009 (Regex!7440 C!15038) Regex!7440)

(assert (=> b!2508078 (= res!1060397 (nullable!2357 (derivative!135 (derivativeStep!2009 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508079 () Bool)

(declare-fun e!1589921 () Bool)

(declare-fun tp_is_empty!12735 () Bool)

(assert (=> b!2508079 (= e!1589921 tp_is_empty!12735)))

(declare-fun res!1060395 () Bool)

(assert (=> start!244674 (=> (not res!1060395) (not e!1589920))))

(declare-fun validRegex!3066 (Regex!7440) Bool)

(assert (=> start!244674 (= res!1060395 (validRegex!3066 r!27340))))

(assert (=> start!244674 e!1589920))

(assert (=> start!244674 e!1589921))

(assert (=> start!244674 tp_is_empty!12735))

(declare-fun e!1589919 () Bool)

(assert (=> start!244674 e!1589919))

(declare-fun b!2508080 () Bool)

(declare-fun res!1060394 () Bool)

(assert (=> b!2508080 (=> (not res!1060394) (not e!1589920))))

(assert (=> b!2508080 (= res!1060394 (and (not (is-EmptyExpr!7440 r!27340)) (not (is-EmptyLang!7440 r!27340)) (not (is-ElementMatch!7440 r!27340)) (not (is-Union!7440 r!27340)) (not (is-Star!7440 r!27340))))))

(declare-fun b!2508081 () Bool)

(declare-fun tp!802194 () Bool)

(assert (=> b!2508081 (= e!1589919 (and tp_is_empty!12735 tp!802194))))

(declare-fun b!2508082 () Bool)

(declare-fun tp!802196 () Bool)

(declare-fun tp!802192 () Bool)

(assert (=> b!2508082 (= e!1589921 (and tp!802196 tp!802192))))

(declare-fun b!2508083 () Bool)

(assert (=> b!2508083 (= e!1589920 (not true))))

(declare-fun e!1589922 () Bool)

(assert (=> b!2508083 e!1589922))

(declare-fun res!1060396 () Bool)

(assert (=> b!2508083 (=> res!1060396 e!1589922)))

(declare-fun lt!897173 () Regex!7440)

(declare-fun matchR!3443 (Regex!7440 List!29505) Bool)

(assert (=> b!2508083 (= res!1060396 (matchR!3443 lt!897173 tl!4068))))

(declare-fun lt!897172 () Regex!7440)

(declare-datatypes ((Unit!43137 0))(
  ( (Unit!43138) )
))
(declare-fun lt!897171 () Unit!43137)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!135 (Regex!7440 Regex!7440 List!29505) Unit!43137)

(assert (=> b!2508083 (= lt!897171 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!135 lt!897173 lt!897172 tl!4068))))

(declare-fun lt!897174 () Regex!7440)

(assert (=> b!2508083 (= (matchR!3443 lt!897174 tl!4068) (matchR!3443 (derivative!135 lt!897174 tl!4068) Nil!29405))))

(declare-fun lt!897175 () Unit!43137)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!89 (Regex!7440 List!29505) Unit!43137)

(assert (=> b!2508083 (= lt!897175 (lemmaMatchRIsSameAsWholeDerivativeAndNil!89 lt!897174 tl!4068))))

(assert (=> b!2508083 (= lt!897174 (Union!7440 lt!897173 lt!897172))))

(assert (=> b!2508083 (= lt!897172 (derivativeStep!2009 (regTwo!15392 r!27340) c!14016))))

(assert (=> b!2508083 (= lt!897173 (Concat!12136 (derivativeStep!2009 (regOne!15392 r!27340) c!14016) (regTwo!15392 r!27340)))))

(declare-fun b!2508084 () Bool)

(declare-fun tp!802193 () Bool)

(declare-fun tp!802191 () Bool)

(assert (=> b!2508084 (= e!1589921 (and tp!802193 tp!802191))))

(declare-fun b!2508085 () Bool)

(assert (=> b!2508085 (= e!1589922 (matchR!3443 lt!897172 tl!4068))))

(declare-fun b!2508086 () Bool)

(declare-fun tp!802195 () Bool)

(assert (=> b!2508086 (= e!1589921 tp!802195)))

(assert (= (and start!244674 res!1060395) b!2508078))

(assert (= (and b!2508078 res!1060397) b!2508080))

(assert (= (and b!2508080 res!1060394) b!2508077))

(assert (= (and b!2508077 res!1060393) b!2508083))

(assert (= (and b!2508083 (not res!1060396)) b!2508085))

(assert (= (and start!244674 (is-ElementMatch!7440 r!27340)) b!2508079))

(assert (= (and start!244674 (is-Concat!12136 r!27340)) b!2508084))

(assert (= (and start!244674 (is-Star!7440 r!27340)) b!2508086))

(assert (= (and start!244674 (is-Union!7440 r!27340)) b!2508082))

(assert (= (and start!244674 (is-Cons!29405 tl!4068)) b!2508081))

(declare-fun m!2868005 () Bool)

(assert (=> b!2508078 m!2868005))

(assert (=> b!2508078 m!2868005))

(declare-fun m!2868007 () Bool)

(assert (=> b!2508078 m!2868007))

(assert (=> b!2508078 m!2868007))

(declare-fun m!2868009 () Bool)

(assert (=> b!2508078 m!2868009))

(declare-fun m!2868011 () Bool)

(assert (=> b!2508077 m!2868011))

(declare-fun m!2868013 () Bool)

(assert (=> b!2508083 m!2868013))

(declare-fun m!2868015 () Bool)

(assert (=> b!2508083 m!2868015))

(declare-fun m!2868017 () Bool)

(assert (=> b!2508083 m!2868017))

(declare-fun m!2868019 () Bool)

(assert (=> b!2508083 m!2868019))

(assert (=> b!2508083 m!2868019))

(declare-fun m!2868021 () Bool)

(assert (=> b!2508083 m!2868021))

(declare-fun m!2868023 () Bool)

(assert (=> b!2508083 m!2868023))

(declare-fun m!2868025 () Bool)

(assert (=> b!2508083 m!2868025))

(declare-fun m!2868027 () Bool)

(assert (=> b!2508083 m!2868027))

(declare-fun m!2868029 () Bool)

(assert (=> start!244674 m!2868029))

(declare-fun m!2868031 () Bool)

(assert (=> b!2508085 m!2868031))

(push 1)

(assert (not b!2508078))

(assert (not b!2508085))

(assert (not b!2508083))

(assert (not b!2508081))

(assert (not b!2508084))

(assert (not start!244674))

(assert (not b!2508086))

(assert (not b!2508077))

(assert (not b!2508082))

(assert tp_is_empty!12735)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

