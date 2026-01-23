; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44848 () Bool)

(assert start!44848)

(declare-fun b!469953 () Bool)

(declare-fun e!287507 () Bool)

(declare-fun tp!129871 () Bool)

(declare-fun tp!129872 () Bool)

(assert (=> b!469953 (= e!287507 (and tp!129871 tp!129872))))

(declare-fun res!208500 () Bool)

(declare-fun e!287508 () Bool)

(assert (=> start!44848 (=> (not res!208500) (not e!287508))))

(declare-datatypes ((C!3142 0))(
  ( (C!3143 (val!1457 Int)) )
))
(declare-datatypes ((Regex!1110 0))(
  ( (ElementMatch!1110 (c!94599 C!3142)) (Concat!2010 (regOne!2732 Regex!1110) (regTwo!2732 Regex!1110)) (EmptyExpr!1110) (Star!1110 (reg!1439 Regex!1110)) (EmptyLang!1110) (Union!1110 (regOne!2733 Regex!1110) (regTwo!2733 Regex!1110)) )
))
(declare-fun r!23305 () Regex!1110)

(declare-fun validRegex!338 (Regex!1110) Bool)

(assert (=> start!44848 (= res!208500 (validRegex!338 r!23305))))

(assert (=> start!44848 e!287508))

(assert (=> start!44848 e!287507))

(declare-fun b!469954 () Bool)

(declare-fun tp!129868 () Bool)

(declare-fun tp!129870 () Bool)

(assert (=> b!469954 (= e!287507 (and tp!129868 tp!129870))))

(declare-fun b!469955 () Bool)

(declare-fun tp!129869 () Bool)

(assert (=> b!469955 (= e!287507 tp!129869)))

(declare-fun b!469956 () Bool)

(assert (=> b!469956 (= e!287508 false)))

(declare-fun lt!209721 () Bool)

(declare-fun lostCause!104 (Regex!1110) Bool)

(assert (=> b!469956 (= lt!209721 (lostCause!104 r!23305))))

(declare-fun b!469957 () Bool)

(declare-fun tp_is_empty!2017 () Bool)

(assert (=> b!469957 (= e!287507 tp_is_empty!2017)))

(assert (= (and start!44848 res!208500) b!469956))

(assert (= (and start!44848 (is-ElementMatch!1110 r!23305)) b!469957))

(assert (= (and start!44848 (is-Concat!2010 r!23305)) b!469953))

(assert (= (and start!44848 (is-Star!1110 r!23305)) b!469955))

(assert (= (and start!44848 (is-Union!1110 r!23305)) b!469954))

(declare-fun m!744295 () Bool)

(assert (=> start!44848 m!744295))

(declare-fun m!744297 () Bool)

(assert (=> b!469956 m!744297))

(push 1)

(assert (not b!469953))

(assert tp_is_empty!2017)

(assert (not b!469955))

(assert (not b!469956))

(assert (not b!469954))

(assert (not start!44848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

