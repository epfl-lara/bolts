; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281454 () Bool)

(assert start!281454)

(declare-fun b!2882742 () Bool)

(declare-fun e!1823473 () Bool)

(declare-fun tp!924656 () Bool)

(assert (=> b!2882742 (= e!1823473 tp!924656)))

(declare-fun b!2882743 () Bool)

(declare-fun tp!924657 () Bool)

(declare-fun tp!924655 () Bool)

(assert (=> b!2882743 (= e!1823473 (and tp!924657 tp!924655))))

(declare-fun b!2882745 () Bool)

(declare-fun e!1823472 () Bool)

(assert (=> b!2882745 (= e!1823472 false)))

(declare-datatypes ((C!17752 0))(
  ( (C!17753 (val!10910 Int)) )
))
(declare-datatypes ((List!34586 0))(
  ( (Nil!34462) (Cons!34462 (h!39882 C!17752) (t!233629 List!34586)) )
))
(declare-datatypes ((Option!6458 0))(
  ( (None!6457) (Some!6457 (v!34583 List!34586)) )
))
(declare-fun lt!1020148 () Option!6458)

(declare-datatypes ((Regex!8785 0))(
  ( (ElementMatch!8785 (c!468266 C!17752)) (Concat!14106 (regOne!18082 Regex!8785) (regTwo!18082 Regex!8785)) (EmptyExpr!8785) (Star!8785 (reg!9114 Regex!8785)) (EmptyLang!8785) (Union!8785 (regOne!18083 Regex!8785) (regTwo!18083 Regex!8785)) )
))
(declare-fun r!23079 () Regex!8785)

(declare-fun getLanguageWitness!492 (Regex!8785) Option!6458)

(assert (=> b!2882745 (= lt!1020148 (getLanguageWitness!492 (regOne!18083 r!23079)))))

(declare-fun b!2882746 () Bool)

(declare-fun res!1194449 () Bool)

(assert (=> b!2882746 (=> (not res!1194449) (not e!1823472))))

(declare-fun isDefined!5022 (Option!6458) Bool)

(assert (=> b!2882746 (= res!1194449 (isDefined!5022 (getLanguageWitness!492 r!23079)))))

(declare-fun b!2882747 () Bool)

(declare-fun res!1194448 () Bool)

(assert (=> b!2882747 (=> (not res!1194448) (not e!1823472))))

(get-info :version)

(assert (=> b!2882747 (= res!1194448 (and (not ((_ is EmptyExpr!8785) r!23079)) (not ((_ is EmptyLang!8785) r!23079)) (not ((_ is ElementMatch!8785) r!23079)) (not ((_ is Star!8785) r!23079)) ((_ is Union!8785) r!23079)))))

(declare-fun b!2882748 () Bool)

(declare-fun tp!924658 () Bool)

(declare-fun tp!924659 () Bool)

(assert (=> b!2882748 (= e!1823473 (and tp!924658 tp!924659))))

(declare-fun res!1194447 () Bool)

(assert (=> start!281454 (=> (not res!1194447) (not e!1823472))))

(declare-fun validRegex!3558 (Regex!8785) Bool)

(assert (=> start!281454 (= res!1194447 (validRegex!3558 r!23079))))

(assert (=> start!281454 e!1823472))

(assert (=> start!281454 e!1823473))

(declare-fun b!2882744 () Bool)

(declare-fun tp_is_empty!15157 () Bool)

(assert (=> b!2882744 (= e!1823473 tp_is_empty!15157)))

(assert (= (and start!281454 res!1194447) b!2882746))

(assert (= (and b!2882746 res!1194449) b!2882747))

(assert (= (and b!2882747 res!1194448) b!2882745))

(assert (= (and start!281454 ((_ is ElementMatch!8785) r!23079)) b!2882744))

(assert (= (and start!281454 ((_ is Concat!14106) r!23079)) b!2882748))

(assert (= (and start!281454 ((_ is Star!8785) r!23079)) b!2882742))

(assert (= (and start!281454 ((_ is Union!8785) r!23079)) b!2882743))

(declare-fun m!3299707 () Bool)

(assert (=> b!2882745 m!3299707))

(declare-fun m!3299709 () Bool)

(assert (=> b!2882746 m!3299709))

(assert (=> b!2882746 m!3299709))

(declare-fun m!3299711 () Bool)

(assert (=> b!2882746 m!3299711))

(declare-fun m!3299713 () Bool)

(assert (=> start!281454 m!3299713))

(check-sat (not b!2882746) (not b!2882743) (not start!281454) (not b!2882742) (not b!2882745) (not b!2882748) tp_is_empty!15157)
(check-sat)
