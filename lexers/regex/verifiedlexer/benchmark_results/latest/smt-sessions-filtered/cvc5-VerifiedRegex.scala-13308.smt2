; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723296 () Bool)

(assert start!723296)

(declare-fun b!7449032 () Bool)

(declare-fun e!4446879 () Bool)

(declare-fun tp!2157902 () Bool)

(declare-fun tp!2157905 () Bool)

(assert (=> b!7449032 (= e!4446879 (and tp!2157902 tp!2157905))))

(declare-fun b!7449033 () Bool)

(declare-fun e!4446877 () Bool)

(declare-fun tp!2157913 () Bool)

(declare-fun tp!2157915 () Bool)

(assert (=> b!7449033 (= e!4446877 (and tp!2157913 tp!2157915))))

(declare-fun b!7449034 () Bool)

(declare-fun e!4446876 () Bool)

(assert (=> b!7449034 (= e!4446876 (not true))))

(declare-datatypes ((C!39230 0))(
  ( (C!39231 (val!30013 Int)) )
))
(declare-datatypes ((Regex!19478 0))(
  ( (ElementMatch!19478 (c!1377635 C!39230)) (Concat!28323 (regOne!39468 Regex!19478) (regTwo!39468 Regex!19478)) (EmptyExpr!19478) (Star!19478 (reg!19807 Regex!19478)) (EmptyLang!19478) (Union!19478 (regOne!39469 Regex!19478) (regTwo!39469 Regex!19478)) )
))
(declare-fun lt!2619770 () Regex!19478)

(declare-datatypes ((List!72194 0))(
  ( (Nil!72070) (Cons!72070 (h!78518 C!39230) (t!386763 List!72194)) )
))
(declare-fun s!13591 () List!72194)

(declare-fun matchR!9242 (Regex!19478 List!72194) Bool)

(declare-fun matchRSpec!4157 (Regex!19478 List!72194) Bool)

(assert (=> b!7449034 (= (matchR!9242 lt!2619770 s!13591) (matchRSpec!4157 lt!2619770 s!13591))))

(declare-datatypes ((Unit!165791 0))(
  ( (Unit!165792) )
))
(declare-fun lt!2619768 () Unit!165791)

(declare-fun mainMatchTheorem!4151 (Regex!19478 List!72194) Unit!165791)

(assert (=> b!7449034 (= lt!2619768 (mainMatchTheorem!4151 lt!2619770 s!13591))))

(declare-fun lt!2619771 () Regex!19478)

(assert (=> b!7449034 (= (matchR!9242 lt!2619771 s!13591) (matchRSpec!4157 lt!2619771 s!13591))))

(declare-fun lt!2619769 () Unit!165791)

(assert (=> b!7449034 (= lt!2619769 (mainMatchTheorem!4151 lt!2619771 s!13591))))

(declare-fun r2!5783 () Regex!19478)

(declare-fun rTail!78 () Regex!19478)

(declare-fun r1!5845 () Regex!19478)

(assert (=> b!7449034 (= lt!2619770 (Union!19478 (Concat!28323 r1!5845 rTail!78) (Concat!28323 r2!5783 rTail!78)))))

(assert (=> b!7449034 (= lt!2619771 (Concat!28323 (Union!19478 r1!5845 r2!5783) rTail!78))))

(declare-fun b!7449035 () Bool)

(declare-fun e!4446878 () Bool)

(declare-fun tp!2157906 () Bool)

(assert (=> b!7449035 (= e!4446878 tp!2157906)))

(declare-fun b!7449036 () Bool)

(declare-fun tp!2157904 () Bool)

(declare-fun tp!2157900 () Bool)

(assert (=> b!7449036 (= e!4446879 (and tp!2157904 tp!2157900))))

(declare-fun b!7449037 () Bool)

(declare-fun tp!2157907 () Bool)

(declare-fun tp!2157910 () Bool)

(assert (=> b!7449037 (= e!4446878 (and tp!2157907 tp!2157910))))

(declare-fun res!2987921 () Bool)

(assert (=> start!723296 (=> (not res!2987921) (not e!4446876))))

(declare-fun validRegex!9992 (Regex!19478) Bool)

(assert (=> start!723296 (= res!2987921 (validRegex!9992 r1!5845))))

(assert (=> start!723296 e!4446876))

(assert (=> start!723296 e!4446878))

(assert (=> start!723296 e!4446879))

(assert (=> start!723296 e!4446877))

(declare-fun e!4446875 () Bool)

(assert (=> start!723296 e!4446875))

(declare-fun b!7449038 () Bool)

(declare-fun tp_is_empty!49245 () Bool)

(assert (=> b!7449038 (= e!4446879 tp_is_empty!49245)))

(declare-fun b!7449039 () Bool)

(declare-fun res!2987919 () Bool)

(assert (=> b!7449039 (=> (not res!2987919) (not e!4446876))))

(assert (=> b!7449039 (= res!2987919 (validRegex!9992 r2!5783))))

(declare-fun b!7449040 () Bool)

(declare-fun tp!2157903 () Bool)

(assert (=> b!7449040 (= e!4446879 tp!2157903)))

(declare-fun b!7449041 () Bool)

(declare-fun tp!2157909 () Bool)

(assert (=> b!7449041 (= e!4446875 (and tp_is_empty!49245 tp!2157909))))

(declare-fun b!7449042 () Bool)

(assert (=> b!7449042 (= e!4446877 tp_is_empty!49245)))

(declare-fun b!7449043 () Bool)

(declare-fun tp!2157914 () Bool)

(declare-fun tp!2157911 () Bool)

(assert (=> b!7449043 (= e!4446877 (and tp!2157914 tp!2157911))))

(declare-fun b!7449044 () Bool)

(declare-fun res!2987920 () Bool)

(assert (=> b!7449044 (=> (not res!2987920) (not e!4446876))))

(assert (=> b!7449044 (= res!2987920 (validRegex!9992 rTail!78))))

(declare-fun b!7449045 () Bool)

(declare-fun tp!2157908 () Bool)

(assert (=> b!7449045 (= e!4446877 tp!2157908)))

(declare-fun b!7449046 () Bool)

(assert (=> b!7449046 (= e!4446878 tp_is_empty!49245)))

(declare-fun b!7449047 () Bool)

(declare-fun tp!2157901 () Bool)

(declare-fun tp!2157912 () Bool)

(assert (=> b!7449047 (= e!4446878 (and tp!2157901 tp!2157912))))

(assert (= (and start!723296 res!2987921) b!7449039))

(assert (= (and b!7449039 res!2987919) b!7449044))

(assert (= (and b!7449044 res!2987920) b!7449034))

(assert (= (and start!723296 (is-ElementMatch!19478 r1!5845)) b!7449046))

(assert (= (and start!723296 (is-Concat!28323 r1!5845)) b!7449037))

(assert (= (and start!723296 (is-Star!19478 r1!5845)) b!7449035))

(assert (= (and start!723296 (is-Union!19478 r1!5845)) b!7449047))

(assert (= (and start!723296 (is-ElementMatch!19478 r2!5783)) b!7449038))

(assert (= (and start!723296 (is-Concat!28323 r2!5783)) b!7449036))

(assert (= (and start!723296 (is-Star!19478 r2!5783)) b!7449040))

(assert (= (and start!723296 (is-Union!19478 r2!5783)) b!7449032))

(assert (= (and start!723296 (is-ElementMatch!19478 rTail!78)) b!7449042))

(assert (= (and start!723296 (is-Concat!28323 rTail!78)) b!7449043))

(assert (= (and start!723296 (is-Star!19478 rTail!78)) b!7449045))

(assert (= (and start!723296 (is-Union!19478 rTail!78)) b!7449033))

(assert (= (and start!723296 (is-Cons!72070 s!13591)) b!7449041))

(declare-fun m!8056176 () Bool)

(assert (=> b!7449034 m!8056176))

(declare-fun m!8056178 () Bool)

(assert (=> b!7449034 m!8056178))

(declare-fun m!8056180 () Bool)

(assert (=> b!7449034 m!8056180))

(declare-fun m!8056182 () Bool)

(assert (=> b!7449034 m!8056182))

(declare-fun m!8056184 () Bool)

(assert (=> b!7449034 m!8056184))

(declare-fun m!8056186 () Bool)

(assert (=> b!7449034 m!8056186))

(declare-fun m!8056188 () Bool)

(assert (=> start!723296 m!8056188))

(declare-fun m!8056190 () Bool)

(assert (=> b!7449039 m!8056190))

(declare-fun m!8056192 () Bool)

(assert (=> b!7449044 m!8056192))

(push 1)

(assert (not b!7449036))

(assert (not b!7449043))

(assert (not b!7449047))

(assert (not b!7449037))

(assert (not b!7449039))

(assert (not start!723296))

(assert (not b!7449035))

(assert tp_is_empty!49245)

(assert (not b!7449040))

(assert (not b!7449041))

(assert (not b!7449032))

(assert (not b!7449034))

(assert (not b!7449044))

(assert (not b!7449045))

(assert (not b!7449033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

