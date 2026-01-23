; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666918 () Bool)

(assert start!666918)

(declare-fun b!6947422 () Bool)

(assert (=> b!6947422 true))

(assert (=> b!6947422 true))

(declare-fun b!6947420 () Bool)

(declare-fun e!4178717 () Bool)

(declare-fun tp!1915112 () Bool)

(assert (=> b!6947420 (= e!4178717 tp!1915112)))

(declare-fun b!6947421 () Bool)

(declare-fun e!4178714 () Bool)

(declare-fun e!4178719 () Bool)

(assert (=> b!6947421 (= e!4178714 (not e!4178719))))

(declare-fun res!2834236 () Bool)

(assert (=> b!6947421 (=> res!2834236 e!4178719)))

(declare-fun lt!2477516 () Bool)

(declare-fun lt!2477514 () Bool)

(assert (=> b!6947421 (= res!2834236 (or (not lt!2477516) (not lt!2477514)))))

(declare-datatypes ((C!34264 0))(
  ( (C!34265 (val!26834 Int)) )
))
(declare-datatypes ((Regex!16997 0))(
  ( (ElementMatch!16997 (c!1288853 C!34264)) (Concat!25842 (regOne!34506 Regex!16997) (regTwo!34506 Regex!16997)) (EmptyExpr!16997) (Star!16997 (reg!17326 Regex!16997)) (EmptyLang!16997) (Union!16997 (regOne!34507 Regex!16997) (regTwo!34507 Regex!16997)) )
))
(declare-fun lt!2477515 () Regex!16997)

(declare-datatypes ((List!66750 0))(
  ( (Nil!66626) (Cons!66626 (h!73074 C!34264) (t!380493 List!66750)) )
))
(declare-datatypes ((tuple2!67704 0))(
  ( (tuple2!67705 (_1!37155 List!66750) (_2!37155 List!66750)) )
))
(declare-fun lt!2477513 () tuple2!67704)

(declare-fun matchRSpec!4042 (Regex!16997 List!66750) Bool)

(assert (=> b!6947421 (= lt!2477514 (matchRSpec!4042 lt!2477515 (_2!37155 lt!2477513)))))

(declare-fun matchR!9128 (Regex!16997 List!66750) Bool)

(assert (=> b!6947421 (= lt!2477514 (matchR!9128 lt!2477515 (_2!37155 lt!2477513)))))

(declare-datatypes ((Unit!160714 0))(
  ( (Unit!160715) )
))
(declare-fun lt!2477519 () Unit!160714)

(declare-fun mainMatchTheorem!4042 (Regex!16997 List!66750) Unit!160714)

(assert (=> b!6947421 (= lt!2477519 (mainMatchTheorem!4042 lt!2477515 (_2!37155 lt!2477513)))))

(declare-fun rInner!765 () Regex!16997)

(assert (=> b!6947421 (= lt!2477515 (Star!16997 rInner!765))))

(assert (=> b!6947421 (= lt!2477516 (matchRSpec!4042 rInner!765 (_1!37155 lt!2477513)))))

(assert (=> b!6947421 (= lt!2477516 (matchR!9128 rInner!765 (_1!37155 lt!2477513)))))

(declare-fun lt!2477518 () Unit!160714)

(assert (=> b!6947421 (= lt!2477518 (mainMatchTheorem!4042 rInner!765 (_1!37155 lt!2477513)))))

(declare-fun res!2834233 () Bool)

(declare-fun e!4178715 () Bool)

(assert (=> b!6947422 (=> (not res!2834233) (not e!4178715))))

(declare-fun lambda!396154 () Int)

(declare-fun Exists!3993 (Int) Bool)

(assert (=> b!6947422 (= res!2834233 (Exists!3993 lambda!396154))))

(declare-fun res!2834235 () Bool)

(assert (=> start!666918 (=> (not res!2834235) (not e!4178715))))

(declare-fun validRegex!8703 (Regex!16997) Bool)

(assert (=> start!666918 (= res!2834235 (validRegex!8703 rInner!765))))

(assert (=> start!666918 e!4178715))

(assert (=> start!666918 e!4178717))

(declare-fun e!4178716 () Bool)

(assert (=> start!666918 e!4178716))

(declare-fun e!4178718 () Bool)

(declare-fun e!4178720 () Bool)

(assert (=> start!666918 (and e!4178718 e!4178720)))

(declare-fun b!6947423 () Bool)

(declare-fun tp!1915110 () Bool)

(declare-fun tp!1915114 () Bool)

(assert (=> b!6947423 (= e!4178717 (and tp!1915110 tp!1915114))))

(declare-fun b!6947424 () Bool)

(declare-fun tp_is_empty!43219 () Bool)

(declare-fun tp!1915111 () Bool)

(assert (=> b!6947424 (= e!4178718 (and tp_is_empty!43219 tp!1915111))))

(declare-fun b!6947425 () Bool)

(declare-fun tp!1915113 () Bool)

(assert (=> b!6947425 (= e!4178720 (and tp_is_empty!43219 tp!1915113))))

(declare-fun b!6947426 () Bool)

(declare-fun res!2834234 () Bool)

(assert (=> b!6947426 (=> (not res!2834234) (not e!4178715))))

(declare-fun nullable!6810 (Regex!16997) Bool)

(assert (=> b!6947426 (= res!2834234 (not (nullable!6810 rInner!765)))))

(declare-fun b!6947427 () Bool)

(declare-fun tp!1915115 () Bool)

(declare-fun tp!1915117 () Bool)

(assert (=> b!6947427 (= e!4178717 (and tp!1915115 tp!1915117))))

(declare-fun b!6947428 () Bool)

(assert (=> b!6947428 (= e!4178717 tp_is_empty!43219)))

(declare-fun b!6947429 () Bool)

(declare-fun tp!1915116 () Bool)

(assert (=> b!6947429 (= e!4178716 (and tp_is_empty!43219 tp!1915116))))

(declare-fun b!6947430 () Bool)

(assert (=> b!6947430 (= e!4178719 true)))

(declare-fun lt!2477517 () List!66750)

(declare-fun cut!46 () tuple2!67704)

(declare-fun ++!15034 (List!66750 List!66750) List!66750)

(assert (=> b!6947430 (= lt!2477517 (++!15034 (_1!37155 cut!46) (_2!37155 cut!46)))))

(declare-fun b!6947431 () Bool)

(assert (=> b!6947431 (= e!4178715 e!4178714)))

(declare-fun res!2834232 () Bool)

(assert (=> b!6947431 (=> (not res!2834232) (not e!4178714))))

(declare-fun s!10388 () List!66750)

(assert (=> b!6947431 (= res!2834232 (= (++!15034 (_1!37155 lt!2477513) (_2!37155 lt!2477513)) s!10388))))

(declare-fun pickWitness!342 (Int) tuple2!67704)

(assert (=> b!6947431 (= lt!2477513 (pickWitness!342 lambda!396154))))

(assert (= (and start!666918 res!2834235) b!6947426))

(assert (= (and b!6947426 res!2834234) b!6947422))

(assert (= (and b!6947422 res!2834233) b!6947431))

(assert (= (and b!6947431 res!2834232) b!6947421))

(assert (= (and b!6947421 (not res!2834236)) b!6947430))

(get-info :version)

(assert (= (and start!666918 ((_ is ElementMatch!16997) rInner!765)) b!6947428))

(assert (= (and start!666918 ((_ is Concat!25842) rInner!765)) b!6947427))

(assert (= (and start!666918 ((_ is Star!16997) rInner!765)) b!6947420))

(assert (= (and start!666918 ((_ is Union!16997) rInner!765)) b!6947423))

(assert (= (and start!666918 ((_ is Cons!66626) s!10388)) b!6947429))

(assert (= (and start!666918 ((_ is Cons!66626) (_1!37155 cut!46))) b!6947424))

(assert (= (and start!666918 ((_ is Cons!66626) (_2!37155 cut!46))) b!6947425))

(declare-fun m!7650868 () Bool)

(assert (=> b!6947426 m!7650868))

(declare-fun m!7650870 () Bool)

(assert (=> b!6947430 m!7650870))

(declare-fun m!7650872 () Bool)

(assert (=> b!6947431 m!7650872))

(declare-fun m!7650874 () Bool)

(assert (=> b!6947431 m!7650874))

(declare-fun m!7650876 () Bool)

(assert (=> b!6947422 m!7650876))

(declare-fun m!7650878 () Bool)

(assert (=> start!666918 m!7650878))

(declare-fun m!7650880 () Bool)

(assert (=> b!6947421 m!7650880))

(declare-fun m!7650882 () Bool)

(assert (=> b!6947421 m!7650882))

(declare-fun m!7650884 () Bool)

(assert (=> b!6947421 m!7650884))

(declare-fun m!7650886 () Bool)

(assert (=> b!6947421 m!7650886))

(declare-fun m!7650888 () Bool)

(assert (=> b!6947421 m!7650888))

(declare-fun m!7650890 () Bool)

(assert (=> b!6947421 m!7650890))

(check-sat (not start!666918) (not b!6947427) (not b!6947423) (not b!6947420) (not b!6947425) (not b!6947422) (not b!6947426) (not b!6947421) (not b!6947429) (not b!6947430) tp_is_empty!43219 (not b!6947431) (not b!6947424))
(check-sat)
