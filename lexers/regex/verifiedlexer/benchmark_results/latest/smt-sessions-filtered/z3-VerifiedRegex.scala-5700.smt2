; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283736 () Bool)

(assert start!283736)

(declare-fun b!2911612 () Bool)

(declare-fun e!1837783 () Bool)

(declare-fun tp!935448 () Bool)

(assert (=> b!2911612 (= e!1837783 tp!935448)))

(declare-fun b!2911613 () Bool)

(declare-fun tp!935450 () Bool)

(declare-fun tp!935449 () Bool)

(assert (=> b!2911613 (= e!1837783 (and tp!935450 tp!935449))))

(declare-fun res!1201820 () Bool)

(declare-fun e!1837781 () Bool)

(assert (=> start!283736 (=> (not res!1201820) (not e!1837781))))

(declare-datatypes ((C!18088 0))(
  ( (C!18089 (val!11080 Int)) )
))
(declare-datatypes ((Regex!8951 0))(
  ( (ElementMatch!8951 (c!474819 C!18088)) (Concat!14272 (regOne!18414 Regex!8951) (regTwo!18414 Regex!8951)) (EmptyExpr!8951) (Star!8951 (reg!9280 Regex!8951)) (EmptyLang!8951) (Union!8951 (regOne!18415 Regex!8951) (regTwo!18415 Regex!8951)) )
))
(declare-fun r!17423 () Regex!8951)

(declare-fun validRegex!3684 (Regex!8951) Bool)

(assert (=> start!283736 (= res!1201820 (validRegex!3684 r!17423))))

(assert (=> start!283736 e!1837781))

(assert (=> start!283736 e!1837783))

(declare-fun e!1837782 () Bool)

(assert (=> start!283736 e!1837782))

(declare-fun b!2911614 () Bool)

(declare-fun tp_is_empty!15465 () Bool)

(declare-fun tp!935452 () Bool)

(assert (=> b!2911614 (= e!1837782 (and tp_is_empty!15465 tp!935452))))

(declare-fun b!2911615 () Bool)

(assert (=> b!2911615 (= e!1837783 tp_is_empty!15465)))

(declare-fun b!2911616 () Bool)

(declare-fun tp!935451 () Bool)

(declare-fun tp!935453 () Bool)

(assert (=> b!2911616 (= e!1837783 (and tp!935451 tp!935453))))

(declare-fun b!2911617 () Bool)

(assert (=> b!2911617 (= e!1837781 (not true))))

(declare-datatypes ((List!34816 0))(
  ( (Nil!34692) (Cons!34692 (h!40112 C!18088) (t!233881 List!34816)) )
))
(declare-fun s!11993 () List!34816)

(declare-fun matchR!3833 (Regex!8951 List!34816) Bool)

(declare-fun matchRSpec!1088 (Regex!8951 List!34816) Bool)

(assert (=> b!2911617 (= (matchR!3833 r!17423 s!11993) (matchRSpec!1088 r!17423 s!11993))))

(declare-datatypes ((Unit!48241 0))(
  ( (Unit!48242) )
))
(declare-fun lt!1023911 () Unit!48241)

(declare-fun mainMatchTheorem!1088 (Regex!8951 List!34816) Unit!48241)

(assert (=> b!2911617 (= lt!1023911 (mainMatchTheorem!1088 r!17423 s!11993))))

(assert (= (and start!283736 res!1201820) b!2911617))

(get-info :version)

(assert (= (and start!283736 ((_ is ElementMatch!8951) r!17423)) b!2911615))

(assert (= (and start!283736 ((_ is Concat!14272) r!17423)) b!2911613))

(assert (= (and start!283736 ((_ is Star!8951) r!17423)) b!2911612))

(assert (= (and start!283736 ((_ is Union!8951) r!17423)) b!2911616))

(assert (= (and start!283736 ((_ is Cons!34692) s!11993)) b!2911614))

(declare-fun m!3312725 () Bool)

(assert (=> start!283736 m!3312725))

(declare-fun m!3312727 () Bool)

(assert (=> b!2911617 m!3312727))

(declare-fun m!3312729 () Bool)

(assert (=> b!2911617 m!3312729))

(declare-fun m!3312731 () Bool)

(assert (=> b!2911617 m!3312731))

(check-sat (not b!2911617) (not b!2911612) (not b!2911613) (not b!2911616) tp_is_empty!15465 (not start!283736) (not b!2911614))
(check-sat)
