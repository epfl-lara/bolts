; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732840 () Bool)

(assert start!732840)

(declare-fun b!7599618 () Bool)

(assert (=> b!7599618 true))

(assert (=> b!7599618 true))

(assert (=> b!7599618 true))

(declare-fun b!7599609 () Bool)

(declare-fun e!4521547 () Bool)

(assert (=> b!7599609 (= e!4521547 (not true))))

(declare-datatypes ((C!40576 0))(
  ( (C!40577 (val!30728 Int)) )
))
(declare-datatypes ((Regex!20125 0))(
  ( (ElementMatch!20125 (c!1402214 C!40576)) (Concat!28970 (regOne!40762 Regex!20125) (regTwo!40762 Regex!20125)) (EmptyExpr!20125) (Star!20125 (reg!20454 Regex!20125)) (EmptyLang!20125) (Union!20125 (regOne!40763 Regex!20125) (regTwo!40763 Regex!20125)) )
))
(declare-fun r1!3349 () Regex!20125)

(declare-datatypes ((List!73008 0))(
  ( (Nil!72884) (Cons!72884 (h!79332 C!40576) (t!387743 List!73008)) )
))
(declare-datatypes ((tuple2!68968 0))(
  ( (tuple2!68969 (_1!37787 List!73008) (_2!37787 List!73008)) )
))
(declare-fun lt!2654066 () tuple2!68968)

(declare-fun matchR!9709 (Regex!20125 List!73008) Bool)

(declare-fun matchRSpec!4426 (Regex!20125 List!73008) Bool)

(assert (=> b!7599609 (= (matchR!9709 r1!3349 (_1!37787 lt!2654066)) (matchRSpec!4426 r1!3349 (_1!37787 lt!2654066)))))

(declare-datatypes ((Unit!167182 0))(
  ( (Unit!167183) )
))
(declare-fun lt!2654065 () Unit!167182)

(declare-fun mainMatchTheorem!4420 (Regex!20125 List!73008) Unit!167182)

(assert (=> b!7599609 (= lt!2654065 (mainMatchTheorem!4420 r1!3349 (_1!37787 lt!2654066)))))

(declare-fun b!7599610 () Bool)

(declare-fun e!4521549 () Bool)

(assert (=> b!7599610 (= e!4521549 e!4521547)))

(declare-fun res!3042888 () Bool)

(assert (=> b!7599610 (=> (not res!3042888) (not e!4521547))))

(declare-fun s!10235 () List!73008)

(declare-fun ++!17531 (List!73008 List!73008) List!73008)

(assert (=> b!7599610 (= res!3042888 (= (++!17531 (_1!37787 lt!2654066) (_2!37787 lt!2654066)) s!10235))))

(declare-fun lambda!467483 () Int)

(declare-fun pickWitness!390 (Int) tuple2!68968)

(assert (=> b!7599610 (= lt!2654066 (pickWitness!390 lambda!467483))))

(declare-fun b!7599611 () Bool)

(declare-fun e!4521548 () Bool)

(declare-fun tp!2215239 () Bool)

(assert (=> b!7599611 (= e!4521548 tp!2215239)))

(declare-fun b!7599612 () Bool)

(declare-fun e!4521545 () Bool)

(declare-fun tp!2215234 () Bool)

(assert (=> b!7599612 (= e!4521545 tp!2215234)))

(declare-fun b!7599613 () Bool)

(declare-fun tp_is_empty!50605 () Bool)

(assert (=> b!7599613 (= e!4521548 tp_is_empty!50605)))

(declare-fun b!7599614 () Bool)

(declare-fun e!4521546 () Bool)

(declare-fun tp!2215240 () Bool)

(assert (=> b!7599614 (= e!4521546 (and tp_is_empty!50605 tp!2215240))))

(declare-fun res!3042889 () Bool)

(assert (=> start!732840 (=> (not res!3042889) (not e!4521549))))

(declare-fun validRegex!10553 (Regex!20125) Bool)

(assert (=> start!732840 (= res!3042889 (validRegex!10553 r1!3349))))

(assert (=> start!732840 e!4521549))

(assert (=> start!732840 e!4521548))

(assert (=> start!732840 e!4521545))

(assert (=> start!732840 e!4521546))

(declare-fun b!7599615 () Bool)

(declare-fun tp!2215233 () Bool)

(declare-fun tp!2215241 () Bool)

(assert (=> b!7599615 (= e!4521545 (and tp!2215233 tp!2215241))))

(declare-fun b!7599616 () Bool)

(declare-fun res!3042890 () Bool)

(assert (=> b!7599616 (=> (not res!3042890) (not e!4521549))))

(declare-fun r2!3249 () Regex!20125)

(assert (=> b!7599616 (= res!3042890 (validRegex!10553 r2!3249))))

(declare-fun b!7599617 () Bool)

(declare-fun tp!2215235 () Bool)

(declare-fun tp!2215238 () Bool)

(assert (=> b!7599617 (= e!4521545 (and tp!2215235 tp!2215238))))

(declare-fun res!3042887 () Bool)

(assert (=> b!7599618 (=> (not res!3042887) (not e!4521549))))

(declare-fun Exists!4353 (Int) Bool)

(assert (=> b!7599618 (= res!3042887 (Exists!4353 lambda!467483))))

(declare-fun b!7599619 () Bool)

(declare-fun tp!2215232 () Bool)

(declare-fun tp!2215237 () Bool)

(assert (=> b!7599619 (= e!4521548 (and tp!2215232 tp!2215237))))

(declare-fun b!7599620 () Bool)

(declare-fun tp!2215236 () Bool)

(declare-fun tp!2215231 () Bool)

(assert (=> b!7599620 (= e!4521548 (and tp!2215236 tp!2215231))))

(declare-fun b!7599621 () Bool)

(assert (=> b!7599621 (= e!4521545 tp_is_empty!50605)))

(assert (= (and start!732840 res!3042889) b!7599616))

(assert (= (and b!7599616 res!3042890) b!7599618))

(assert (= (and b!7599618 res!3042887) b!7599610))

(assert (= (and b!7599610 res!3042888) b!7599609))

(get-info :version)

(assert (= (and start!732840 ((_ is ElementMatch!20125) r1!3349)) b!7599613))

(assert (= (and start!732840 ((_ is Concat!28970) r1!3349)) b!7599620))

(assert (= (and start!732840 ((_ is Star!20125) r1!3349)) b!7599611))

(assert (= (and start!732840 ((_ is Union!20125) r1!3349)) b!7599619))

(assert (= (and start!732840 ((_ is ElementMatch!20125) r2!3249)) b!7599621))

(assert (= (and start!732840 ((_ is Concat!28970) r2!3249)) b!7599617))

(assert (= (and start!732840 ((_ is Star!20125) r2!3249)) b!7599612))

(assert (= (and start!732840 ((_ is Union!20125) r2!3249)) b!7599615))

(assert (= (and start!732840 ((_ is Cons!72884) s!10235)) b!7599614))

(declare-fun m!8144646 () Bool)

(assert (=> b!7599609 m!8144646))

(declare-fun m!8144648 () Bool)

(assert (=> b!7599609 m!8144648))

(declare-fun m!8144650 () Bool)

(assert (=> b!7599609 m!8144650))

(declare-fun m!8144652 () Bool)

(assert (=> b!7599618 m!8144652))

(declare-fun m!8144654 () Bool)

(assert (=> b!7599610 m!8144654))

(declare-fun m!8144656 () Bool)

(assert (=> b!7599610 m!8144656))

(declare-fun m!8144658 () Bool)

(assert (=> b!7599616 m!8144658))

(declare-fun m!8144660 () Bool)

(assert (=> start!732840 m!8144660))

(check-sat (not b!7599610) (not b!7599617) (not b!7599614) (not b!7599619) (not b!7599618) (not b!7599620) (not start!732840) (not b!7599612) tp_is_empty!50605 (not b!7599611) (not b!7599615) (not b!7599616) (not b!7599609))
(check-sat)
