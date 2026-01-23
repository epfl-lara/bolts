; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732844 () Bool)

(assert start!732844)

(declare-fun b!7599712 () Bool)

(assert (=> b!7599712 true))

(assert (=> b!7599712 true))

(assert (=> b!7599712 true))

(declare-fun res!3042927 () Bool)

(declare-fun e!4521587 () Bool)

(assert (=> start!732844 (=> (not res!3042927) (not e!4521587))))

(declare-datatypes ((C!40580 0))(
  ( (C!40581 (val!30730 Int)) )
))
(declare-datatypes ((Regex!20127 0))(
  ( (ElementMatch!20127 (c!1402216 C!40580)) (Concat!28972 (regOne!40766 Regex!20127) (regTwo!40766 Regex!20127)) (EmptyExpr!20127) (Star!20127 (reg!20456 Regex!20127)) (EmptyLang!20127) (Union!20127 (regOne!40767 Regex!20127) (regTwo!40767 Regex!20127)) )
))
(declare-fun r1!3349 () Regex!20127)

(declare-fun validRegex!10555 (Regex!20127) Bool)

(assert (=> start!732844 (= res!3042927 (validRegex!10555 r1!3349))))

(assert (=> start!732844 e!4521587))

(declare-fun e!4521585 () Bool)

(assert (=> start!732844 e!4521585))

(declare-fun e!4521584 () Bool)

(assert (=> start!732844 e!4521584))

(declare-fun e!4521583 () Bool)

(assert (=> start!732844 e!4521583))

(declare-fun b!7599711 () Bool)

(declare-fun tp!2215300 () Bool)

(declare-fun tp!2215305 () Bool)

(assert (=> b!7599711 (= e!4521585 (and tp!2215300 tp!2215305))))

(declare-fun res!3042928 () Bool)

(assert (=> b!7599712 (=> (not res!3042928) (not e!4521587))))

(declare-fun lambda!467493 () Int)

(declare-fun Exists!4355 (Int) Bool)

(assert (=> b!7599712 (= res!3042928 (Exists!4355 lambda!467493))))

(declare-fun b!7599713 () Bool)

(declare-fun e!4521586 () Bool)

(assert (=> b!7599713 (= e!4521587 e!4521586)))

(declare-fun res!3042930 () Bool)

(assert (=> b!7599713 (=> (not res!3042930) (not e!4521586))))

(declare-datatypes ((List!73010 0))(
  ( (Nil!72886) (Cons!72886 (h!79334 C!40580) (t!387745 List!73010)) )
))
(declare-datatypes ((tuple2!68972 0))(
  ( (tuple2!68973 (_1!37789 List!73010) (_2!37789 List!73010)) )
))
(declare-fun lt!2654083 () tuple2!68972)

(declare-fun s!10235 () List!73010)

(declare-fun ++!17533 (List!73010 List!73010) List!73010)

(assert (=> b!7599713 (= res!3042930 (= (++!17533 (_1!37789 lt!2654083) (_2!37789 lt!2654083)) s!10235))))

(declare-fun pickWitness!392 (Int) tuple2!68972)

(assert (=> b!7599713 (= lt!2654083 (pickWitness!392 lambda!467493))))

(declare-fun b!7599714 () Bool)

(assert (=> b!7599714 (= e!4521586 (not true))))

(declare-fun r2!3249 () Regex!20127)

(declare-fun matchR!9711 (Regex!20127 List!73010) Bool)

(declare-fun matchRSpec!4428 (Regex!20127 List!73010) Bool)

(assert (=> b!7599714 (= (matchR!9711 r2!3249 (_2!37789 lt!2654083)) (matchRSpec!4428 r2!3249 (_2!37789 lt!2654083)))))

(declare-datatypes ((Unit!167186 0))(
  ( (Unit!167187) )
))
(declare-fun lt!2654084 () Unit!167186)

(declare-fun mainMatchTheorem!4422 (Regex!20127 List!73010) Unit!167186)

(assert (=> b!7599714 (= lt!2654084 (mainMatchTheorem!4422 r2!3249 (_2!37789 lt!2654083)))))

(assert (=> b!7599714 (= (matchR!9711 r1!3349 (_1!37789 lt!2654083)) (matchRSpec!4428 r1!3349 (_1!37789 lt!2654083)))))

(declare-fun lt!2654082 () Unit!167186)

(assert (=> b!7599714 (= lt!2654082 (mainMatchTheorem!4422 r1!3349 (_1!37789 lt!2654083)))))

(declare-fun b!7599715 () Bool)

(declare-fun tp!2215306 () Bool)

(declare-fun tp!2215302 () Bool)

(assert (=> b!7599715 (= e!4521585 (and tp!2215306 tp!2215302))))

(declare-fun b!7599716 () Bool)

(declare-fun tp!2215304 () Bool)

(declare-fun tp!2215298 () Bool)

(assert (=> b!7599716 (= e!4521584 (and tp!2215304 tp!2215298))))

(declare-fun b!7599717 () Bool)

(declare-fun tp_is_empty!50609 () Bool)

(assert (=> b!7599717 (= e!4521584 tp_is_empty!50609)))

(declare-fun b!7599718 () Bool)

(declare-fun tp!2215299 () Bool)

(assert (=> b!7599718 (= e!4521583 (and tp_is_empty!50609 tp!2215299))))

(declare-fun b!7599719 () Bool)

(declare-fun tp!2215297 () Bool)

(assert (=> b!7599719 (= e!4521585 tp!2215297)))

(declare-fun b!7599720 () Bool)

(declare-fun res!3042929 () Bool)

(assert (=> b!7599720 (=> (not res!3042929) (not e!4521587))))

(assert (=> b!7599720 (= res!3042929 (validRegex!10555 r2!3249))))

(declare-fun b!7599721 () Bool)

(declare-fun tp!2215307 () Bool)

(assert (=> b!7599721 (= e!4521584 tp!2215307)))

(declare-fun b!7599722 () Bool)

(assert (=> b!7599722 (= e!4521585 tp_is_empty!50609)))

(declare-fun b!7599723 () Bool)

(declare-fun tp!2215301 () Bool)

(declare-fun tp!2215303 () Bool)

(assert (=> b!7599723 (= e!4521584 (and tp!2215301 tp!2215303))))

(assert (= (and start!732844 res!3042927) b!7599720))

(assert (= (and b!7599720 res!3042929) b!7599712))

(assert (= (and b!7599712 res!3042928) b!7599713))

(assert (= (and b!7599713 res!3042930) b!7599714))

(get-info :version)

(assert (= (and start!732844 ((_ is ElementMatch!20127) r1!3349)) b!7599722))

(assert (= (and start!732844 ((_ is Concat!28972) r1!3349)) b!7599711))

(assert (= (and start!732844 ((_ is Star!20127) r1!3349)) b!7599719))

(assert (= (and start!732844 ((_ is Union!20127) r1!3349)) b!7599715))

(assert (= (and start!732844 ((_ is ElementMatch!20127) r2!3249)) b!7599717))

(assert (= (and start!732844 ((_ is Concat!28972) r2!3249)) b!7599716))

(assert (= (and start!732844 ((_ is Star!20127) r2!3249)) b!7599721))

(assert (= (and start!732844 ((_ is Union!20127) r2!3249)) b!7599723))

(assert (= (and start!732844 ((_ is Cons!72886) s!10235)) b!7599718))

(declare-fun m!8144684 () Bool)

(assert (=> b!7599714 m!8144684))

(declare-fun m!8144686 () Bool)

(assert (=> b!7599714 m!8144686))

(declare-fun m!8144688 () Bool)

(assert (=> b!7599714 m!8144688))

(declare-fun m!8144690 () Bool)

(assert (=> b!7599714 m!8144690))

(declare-fun m!8144692 () Bool)

(assert (=> b!7599714 m!8144692))

(declare-fun m!8144694 () Bool)

(assert (=> b!7599714 m!8144694))

(declare-fun m!8144696 () Bool)

(assert (=> b!7599712 m!8144696))

(declare-fun m!8144698 () Bool)

(assert (=> b!7599720 m!8144698))

(declare-fun m!8144700 () Bool)

(assert (=> b!7599713 m!8144700))

(declare-fun m!8144702 () Bool)

(assert (=> b!7599713 m!8144702))

(declare-fun m!8144704 () Bool)

(assert (=> start!732844 m!8144704))

(check-sat (not b!7599711) (not b!7599712) (not b!7599721) (not b!7599723) (not b!7599718) (not start!732844) (not b!7599720) (not b!7599719) (not b!7599715) tp_is_empty!50609 (not b!7599713) (not b!7599716) (not b!7599714))
(check-sat)
