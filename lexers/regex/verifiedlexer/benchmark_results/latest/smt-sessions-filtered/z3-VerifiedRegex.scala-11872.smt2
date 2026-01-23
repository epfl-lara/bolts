; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666874 () Bool)

(assert start!666874)

(declare-fun b!6946781 () Bool)

(assert (=> b!6946781 true))

(assert (=> b!6946781 true))

(declare-fun b!6946775 () Bool)

(declare-fun e!4178387 () Bool)

(declare-fun tp!1914917 () Bool)

(declare-fun tp!1914919 () Bool)

(assert (=> b!6946775 (= e!4178387 (and tp!1914917 tp!1914919))))

(declare-fun b!6946776 () Bool)

(declare-fun e!4178390 () Bool)

(declare-fun tp_is_empty!43207 () Bool)

(declare-fun tp!1914920 () Bool)

(assert (=> b!6946776 (= e!4178390 (and tp_is_empty!43207 tp!1914920))))

(declare-fun b!6946777 () Bool)

(declare-fun res!2833938 () Bool)

(declare-fun e!4178389 () Bool)

(assert (=> b!6946777 (=> (not res!2833938) (not e!4178389))))

(declare-datatypes ((C!34252 0))(
  ( (C!34253 (val!26828 Int)) )
))
(declare-datatypes ((Regex!16991 0))(
  ( (ElementMatch!16991 (c!1288769 C!34252)) (Concat!25836 (regOne!34494 Regex!16991) (regTwo!34494 Regex!16991)) (EmptyExpr!16991) (Star!16991 (reg!17320 Regex!16991)) (EmptyLang!16991) (Union!16991 (regOne!34495 Regex!16991) (regTwo!34495 Regex!16991)) )
))
(declare-fun rInner!765 () Regex!16991)

(declare-fun nullable!6804 (Regex!16991) Bool)

(assert (=> b!6946777 (= res!2833938 (not (nullable!6804 rInner!765)))))

(declare-fun b!6946778 () Bool)

(declare-fun tp!1914916 () Bool)

(declare-fun tp!1914918 () Bool)

(assert (=> b!6946778 (= e!4178387 (and tp!1914916 tp!1914918))))

(declare-fun b!6946779 () Bool)

(assert (=> b!6946779 (= e!4178387 tp_is_empty!43207)))

(declare-fun b!6946780 () Bool)

(declare-fun tp!1914921 () Bool)

(assert (=> b!6946780 (= e!4178387 tp!1914921)))

(declare-fun res!2833940 () Bool)

(assert (=> b!6946781 (=> (not res!2833940) (not e!4178389))))

(declare-fun lambda!396108 () Int)

(declare-fun Exists!3987 (Int) Bool)

(assert (=> b!6946781 (= res!2833940 (Exists!3987 lambda!396108))))

(declare-fun b!6946782 () Bool)

(declare-fun e!4178388 () Bool)

(assert (=> b!6946782 (= e!4178388 (not true))))

(declare-datatypes ((List!66744 0))(
  ( (Nil!66620) (Cons!66620 (h!73068 C!34252) (t!380487 List!66744)) )
))
(declare-datatypes ((tuple2!67692 0))(
  ( (tuple2!67693 (_1!37149 List!66744) (_2!37149 List!66744)) )
))
(declare-fun lt!2477395 () tuple2!67692)

(declare-fun matchR!9122 (Regex!16991 List!66744) Bool)

(declare-fun matchRSpec!4036 (Regex!16991 List!66744) Bool)

(assert (=> b!6946782 (= (matchR!9122 rInner!765 (_1!37149 lt!2477395)) (matchRSpec!4036 rInner!765 (_1!37149 lt!2477395)))))

(declare-datatypes ((Unit!160702 0))(
  ( (Unit!160703) )
))
(declare-fun lt!2477394 () Unit!160702)

(declare-fun mainMatchTheorem!4036 (Regex!16991 List!66744) Unit!160702)

(assert (=> b!6946782 (= lt!2477394 (mainMatchTheorem!4036 rInner!765 (_1!37149 lt!2477395)))))

(declare-fun b!6946783 () Bool)

(assert (=> b!6946783 (= e!4178389 e!4178388)))

(declare-fun res!2833937 () Bool)

(assert (=> b!6946783 (=> (not res!2833937) (not e!4178388))))

(declare-fun s!10388 () List!66744)

(declare-fun ++!15028 (List!66744 List!66744) List!66744)

(assert (=> b!6946783 (= res!2833937 (= (++!15028 (_1!37149 lt!2477395) (_2!37149 lt!2477395)) s!10388))))

(declare-fun pickWitness!336 (Int) tuple2!67692)

(assert (=> b!6946783 (= lt!2477395 (pickWitness!336 lambda!396108))))

(declare-fun res!2833939 () Bool)

(assert (=> start!666874 (=> (not res!2833939) (not e!4178389))))

(declare-fun validRegex!8697 (Regex!16991) Bool)

(assert (=> start!666874 (= res!2833939 (validRegex!8697 rInner!765))))

(assert (=> start!666874 e!4178389))

(assert (=> start!666874 e!4178387))

(assert (=> start!666874 e!4178390))

(assert (= (and start!666874 res!2833939) b!6946777))

(assert (= (and b!6946777 res!2833938) b!6946781))

(assert (= (and b!6946781 res!2833940) b!6946783))

(assert (= (and b!6946783 res!2833937) b!6946782))

(get-info :version)

(assert (= (and start!666874 ((_ is ElementMatch!16991) rInner!765)) b!6946779))

(assert (= (and start!666874 ((_ is Concat!25836) rInner!765)) b!6946778))

(assert (= (and start!666874 ((_ is Star!16991) rInner!765)) b!6946780))

(assert (= (and start!666874 ((_ is Union!16991) rInner!765)) b!6946775))

(assert (= (and start!666874 ((_ is Cons!66620) s!10388)) b!6946776))

(declare-fun m!7650572 () Bool)

(assert (=> start!666874 m!7650572))

(declare-fun m!7650574 () Bool)

(assert (=> b!6946782 m!7650574))

(declare-fun m!7650576 () Bool)

(assert (=> b!6946782 m!7650576))

(declare-fun m!7650578 () Bool)

(assert (=> b!6946782 m!7650578))

(declare-fun m!7650580 () Bool)

(assert (=> b!6946781 m!7650580))

(declare-fun m!7650582 () Bool)

(assert (=> b!6946777 m!7650582))

(declare-fun m!7650584 () Bool)

(assert (=> b!6946783 m!7650584))

(declare-fun m!7650586 () Bool)

(assert (=> b!6946783 m!7650586))

(check-sat (not start!666874) (not b!6946776) (not b!6946777) (not b!6946782) (not b!6946780) (not b!6946778) (not b!6946775) (not b!6946783) (not b!6946781) tp_is_empty!43207)
(check-sat)
