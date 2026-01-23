; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44772 () Bool)

(assert start!44772)

(declare-fun b!469057 () Bool)

(declare-fun e!287100 () Bool)

(declare-fun tp!129458 () Bool)

(declare-fun tp!129461 () Bool)

(assert (=> b!469057 (= e!287100 (and tp!129458 tp!129461))))

(declare-fun b!469059 () Bool)

(declare-fun tp!129460 () Bool)

(declare-fun tp!129459 () Bool)

(assert (=> b!469059 (= e!287100 (and tp!129460 tp!129459))))

(declare-fun b!469060 () Bool)

(declare-fun res!208284 () Bool)

(declare-fun e!287099 () Bool)

(assert (=> b!469060 (=> (not res!208284) (not e!287099))))

(declare-datatypes ((C!3130 0))(
  ( (C!3131 (val!1451 Int)) )
))
(declare-datatypes ((Regex!1104 0))(
  ( (ElementMatch!1104 (c!94421 C!3130)) (Concat!2004 (regOne!2720 Regex!1104) (regTwo!2720 Regex!1104)) (EmptyExpr!1104) (Star!1104 (reg!1433 Regex!1104)) (EmptyLang!1104) (Union!1104 (regOne!2721 Regex!1104) (regTwo!2721 Regex!1104)) )
))
(declare-fun r!23305 () Regex!1104)

(declare-fun lostCause!98 (Regex!1104) Bool)

(assert (=> b!469060 (= res!208284 (not (lostCause!98 r!23305)))))

(declare-fun b!469061 () Bool)

(declare-fun tp_is_empty!2005 () Bool)

(assert (=> b!469061 (= e!287100 tp_is_empty!2005)))

(declare-fun b!469062 () Bool)

(assert (=> b!469062 (= e!287099 (not true))))

(declare-datatypes ((List!4520 0))(
  ( (Nil!4510) (Cons!4510 (h!9907 C!3130) (t!72914 List!4520)) )
))
(declare-fun matchR!420 (Regex!1104 List!4520) Bool)

(declare-datatypes ((Option!1196 0))(
  ( (None!1195) (Some!1195 (v!15596 List!4520)) )
))
(declare-fun get!1666 (Option!1196) List!4520)

(declare-fun getLanguageWitness!31 (Regex!1104) Option!1196)

(assert (=> b!469062 (matchR!420 r!23305 (get!1666 (getLanguageWitness!31 r!23305)))))

(declare-datatypes ((Unit!8233 0))(
  ( (Unit!8234) )
))
(declare-fun lt!209621 () Unit!8233)

(declare-fun lemmaGetWitnessMatches!1 (Regex!1104) Unit!8233)

(assert (=> b!469062 (= lt!209621 (lemmaGetWitnessMatches!1 r!23305))))

(declare-fun res!208285 () Bool)

(assert (=> start!44772 (=> (not res!208285) (not e!287099))))

(declare-fun validRegex!332 (Regex!1104) Bool)

(assert (=> start!44772 (= res!208285 (validRegex!332 r!23305))))

(assert (=> start!44772 e!287099))

(assert (=> start!44772 e!287100))

(declare-fun b!469058 () Bool)

(declare-fun tp!129462 () Bool)

(assert (=> b!469058 (= e!287100 tp!129462)))

(assert (= (and start!44772 res!208285) b!469060))

(assert (= (and b!469060 res!208284) b!469062))

(assert (= (and start!44772 (is-ElementMatch!1104 r!23305)) b!469061))

(assert (= (and start!44772 (is-Concat!2004 r!23305)) b!469059))

(assert (= (and start!44772 (is-Star!1104 r!23305)) b!469058))

(assert (= (and start!44772 (is-Union!1104 r!23305)) b!469057))

(declare-fun m!743975 () Bool)

(assert (=> b!469060 m!743975))

(declare-fun m!743977 () Bool)

(assert (=> b!469062 m!743977))

(assert (=> b!469062 m!743977))

(declare-fun m!743979 () Bool)

(assert (=> b!469062 m!743979))

(assert (=> b!469062 m!743979))

(declare-fun m!743981 () Bool)

(assert (=> b!469062 m!743981))

(declare-fun m!743983 () Bool)

(assert (=> b!469062 m!743983))

(declare-fun m!743985 () Bool)

(assert (=> start!44772 m!743985))

(push 1)

(assert (not b!469057))

(assert (not b!469060))

(assert (not b!469059))

(assert (not b!469062))

(assert (not start!44772))

(assert tp_is_empty!2005)

(assert (not b!469058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

