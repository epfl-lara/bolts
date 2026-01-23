; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44770 () Bool)

(assert start!44770)

(declare-fun b!469039 () Bool)

(declare-fun res!208278 () Bool)

(declare-fun e!287093 () Bool)

(assert (=> b!469039 (=> (not res!208278) (not e!287093))))

(declare-datatypes ((C!3128 0))(
  ( (C!3129 (val!1450 Int)) )
))
(declare-datatypes ((Regex!1103 0))(
  ( (ElementMatch!1103 (c!94420 C!3128)) (Concat!2003 (regOne!2718 Regex!1103) (regTwo!2718 Regex!1103)) (EmptyExpr!1103) (Star!1103 (reg!1432 Regex!1103)) (EmptyLang!1103) (Union!1103 (regOne!2719 Regex!1103) (regTwo!2719 Regex!1103)) )
))
(declare-fun r!23305 () Regex!1103)

(declare-fun lostCause!97 (Regex!1103) Bool)

(assert (=> b!469039 (= res!208278 (not (lostCause!97 r!23305)))))

(declare-fun b!469040 () Bool)

(declare-fun e!287094 () Bool)

(declare-fun tp!129445 () Bool)

(declare-fun tp!129447 () Bool)

(assert (=> b!469040 (= e!287094 (and tp!129445 tp!129447))))

(declare-fun b!469041 () Bool)

(declare-fun tp!129443 () Bool)

(assert (=> b!469041 (= e!287094 tp!129443)))

(declare-fun b!469042 () Bool)

(declare-fun tp!129444 () Bool)

(declare-fun tp!129446 () Bool)

(assert (=> b!469042 (= e!287094 (and tp!129444 tp!129446))))

(declare-fun res!208279 () Bool)

(assert (=> start!44770 (=> (not res!208279) (not e!287093))))

(declare-fun validRegex!331 (Regex!1103) Bool)

(assert (=> start!44770 (= res!208279 (validRegex!331 r!23305))))

(assert (=> start!44770 e!287093))

(assert (=> start!44770 e!287094))

(declare-fun b!469043 () Bool)

(assert (=> b!469043 (= e!287093 false)))

(declare-datatypes ((List!4519 0))(
  ( (Nil!4509) (Cons!4509 (h!9906 C!3128) (t!72913 List!4519)) )
))
(declare-datatypes ((Option!1195 0))(
  ( (None!1194) (Some!1194 (v!15595 List!4519)) )
))
(declare-fun lt!209618 () Option!1195)

(declare-fun getLanguageWitness!30 (Regex!1103) Option!1195)

(assert (=> b!469043 (= lt!209618 (getLanguageWitness!30 r!23305))))

(declare-fun b!469044 () Bool)

(declare-fun tp_is_empty!2003 () Bool)

(assert (=> b!469044 (= e!287094 tp_is_empty!2003)))

(assert (= (and start!44770 res!208279) b!469039))

(assert (= (and b!469039 res!208278) b!469043))

(get-info :version)

(assert (= (and start!44770 ((_ is ElementMatch!1103) r!23305)) b!469044))

(assert (= (and start!44770 ((_ is Concat!2003) r!23305)) b!469040))

(assert (= (and start!44770 ((_ is Star!1103) r!23305)) b!469041))

(assert (= (and start!44770 ((_ is Union!1103) r!23305)) b!469042))

(declare-fun m!743969 () Bool)

(assert (=> b!469039 m!743969))

(declare-fun m!743971 () Bool)

(assert (=> start!44770 m!743971))

(declare-fun m!743973 () Bool)

(assert (=> b!469043 m!743973))

(check-sat (not start!44770) (not b!469043) (not b!469039) tp_is_empty!2003 (not b!469041) (not b!469040) (not b!469042))
(check-sat)
