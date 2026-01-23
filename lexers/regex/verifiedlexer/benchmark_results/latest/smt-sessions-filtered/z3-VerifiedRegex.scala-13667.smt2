; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732848 () Bool)

(assert start!732848)

(declare-fun b!7599841 () Bool)

(assert (=> b!7599841 true))

(assert (=> b!7599841 true))

(assert (=> b!7599841 true))

(declare-fun b!7599828 () Bool)

(declare-fun e!4521641 () Bool)

(declare-fun tp!2215376 () Bool)

(assert (=> b!7599828 (= e!4521641 tp!2215376)))

(declare-fun b!7599829 () Bool)

(declare-fun e!4521637 () Bool)

(declare-fun e!4521643 () Bool)

(assert (=> b!7599829 (= e!4521637 e!4521643)))

(declare-fun res!3042976 () Bool)

(assert (=> b!7599829 (=> (not res!3042976) (not e!4521643))))

(declare-datatypes ((C!40584 0))(
  ( (C!40585 (val!30732 Int)) )
))
(declare-datatypes ((List!73012 0))(
  ( (Nil!72888) (Cons!72888 (h!79336 C!40584) (t!387747 List!73012)) )
))
(declare-datatypes ((tuple2!68976 0))(
  ( (tuple2!68977 (_1!37791 List!73012) (_2!37791 List!73012)) )
))
(declare-fun lt!2654120 () tuple2!68976)

(declare-fun s!10235 () List!73012)

(declare-fun ++!17535 (List!73012 List!73012) List!73012)

(assert (=> b!7599829 (= res!3042976 (= (++!17535 (_1!37791 lt!2654120) (_2!37791 lt!2654120)) s!10235))))

(declare-fun lambda!467503 () Int)

(declare-fun pickWitness!394 (Int) tuple2!68976)

(assert (=> b!7599829 (= lt!2654120 (pickWitness!394 lambda!467503))))

(declare-fun b!7599830 () Bool)

(declare-fun res!3042975 () Bool)

(assert (=> b!7599830 (=> (not res!3042975) (not e!4521637))))

(declare-datatypes ((Regex!20129 0))(
  ( (ElementMatch!20129 (c!1402218 C!40584)) (Concat!28974 (regOne!40770 Regex!20129) (regTwo!40770 Regex!20129)) (EmptyExpr!20129) (Star!20129 (reg!20458 Regex!20129)) (EmptyLang!20129) (Union!20129 (regOne!40771 Regex!20129) (regTwo!40771 Regex!20129)) )
))
(declare-fun r2!3249 () Regex!20129)

(declare-fun validRegex!10557 (Regex!20129) Bool)

(assert (=> b!7599830 (= res!3042975 (validRegex!10557 r2!3249))))

(declare-fun b!7599831 () Bool)

(declare-fun e!4521640 () Bool)

(assert (=> b!7599831 (= e!4521643 (not e!4521640))))

(declare-fun res!3042974 () Bool)

(assert (=> b!7599831 (=> res!3042974 e!4521640)))

(declare-fun lt!2654116 () Bool)

(declare-fun lt!2654115 () Bool)

(assert (=> b!7599831 (= res!3042974 (or (not lt!2654116) (not lt!2654115)))))

(declare-fun matchRSpec!4430 (Regex!20129 List!73012) Bool)

(assert (=> b!7599831 (= lt!2654115 (matchRSpec!4430 r2!3249 (_2!37791 lt!2654120)))))

(declare-fun matchR!9713 (Regex!20129 List!73012) Bool)

(assert (=> b!7599831 (= lt!2654115 (matchR!9713 r2!3249 (_2!37791 lt!2654120)))))

(declare-datatypes ((Unit!167190 0))(
  ( (Unit!167191) )
))
(declare-fun lt!2654117 () Unit!167190)

(declare-fun mainMatchTheorem!4424 (Regex!20129 List!73012) Unit!167190)

(assert (=> b!7599831 (= lt!2654117 (mainMatchTheorem!4424 r2!3249 (_2!37791 lt!2654120)))))

(declare-fun r1!3349 () Regex!20129)

(assert (=> b!7599831 (= lt!2654116 (matchRSpec!4430 r1!3349 (_1!37791 lt!2654120)))))

(assert (=> b!7599831 (= lt!2654116 (matchR!9713 r1!3349 (_1!37791 lt!2654120)))))

(declare-fun lt!2654119 () Unit!167190)

(assert (=> b!7599831 (= lt!2654119 (mainMatchTheorem!4424 r1!3349 (_1!37791 lt!2654120)))))

(declare-fun b!7599832 () Bool)

(declare-fun tp!2215378 () Bool)

(declare-fun tp!2215375 () Bool)

(assert (=> b!7599832 (= e!4521641 (and tp!2215378 tp!2215375))))

(declare-fun b!7599833 () Bool)

(declare-fun e!4521636 () Bool)

(declare-fun tp!2215379 () Bool)

(declare-fun tp!2215382 () Bool)

(assert (=> b!7599833 (= e!4521636 (and tp!2215379 tp!2215382))))

(declare-fun b!7599834 () Bool)

(declare-fun tp!2215377 () Bool)

(declare-fun tp!2215373 () Bool)

(assert (=> b!7599834 (= e!4521636 (and tp!2215377 tp!2215373))))

(declare-fun b!7599835 () Bool)

(declare-fun tp_is_empty!50613 () Bool)

(assert (=> b!7599835 (= e!4521636 tp_is_empty!50613)))

(declare-fun b!7599837 () Bool)

(assert (=> b!7599837 (= e!4521640 true)))

(declare-fun lt!2654118 () List!73012)

(declare-fun cut!33 () tuple2!68976)

(assert (=> b!7599837 (= lt!2654118 (++!17535 (_1!37791 cut!33) (_2!37791 cut!33)))))

(declare-fun b!7599838 () Bool)

(declare-fun tp!2215384 () Bool)

(declare-fun tp!2215385 () Bool)

(assert (=> b!7599838 (= e!4521641 (and tp!2215384 tp!2215385))))

(declare-fun b!7599839 () Bool)

(declare-fun e!4521642 () Bool)

(declare-fun tp!2215381 () Bool)

(assert (=> b!7599839 (= e!4521642 (and tp_is_empty!50613 tp!2215381))))

(declare-fun res!3042972 () Bool)

(assert (=> start!732848 (=> (not res!3042972) (not e!4521637))))

(assert (=> start!732848 (= res!3042972 (validRegex!10557 r1!3349))))

(assert (=> start!732848 e!4521637))

(assert (=> start!732848 e!4521636))

(assert (=> start!732848 e!4521641))

(assert (=> start!732848 e!4521642))

(declare-fun e!4521639 () Bool)

(declare-fun e!4521638 () Bool)

(assert (=> start!732848 (and e!4521639 e!4521638)))

(declare-fun b!7599836 () Bool)

(declare-fun tp!2215380 () Bool)

(assert (=> b!7599836 (= e!4521638 (and tp_is_empty!50613 tp!2215380))))

(declare-fun b!7599840 () Bool)

(declare-fun tp!2215374 () Bool)

(assert (=> b!7599840 (= e!4521636 tp!2215374)))

(declare-fun res!3042973 () Bool)

(assert (=> b!7599841 (=> (not res!3042973) (not e!4521637))))

(declare-fun Exists!4357 (Int) Bool)

(assert (=> b!7599841 (= res!3042973 (Exists!4357 lambda!467503))))

(declare-fun b!7599842 () Bool)

(assert (=> b!7599842 (= e!4521641 tp_is_empty!50613)))

(declare-fun b!7599843 () Bool)

(declare-fun tp!2215383 () Bool)

(assert (=> b!7599843 (= e!4521639 (and tp_is_empty!50613 tp!2215383))))

(assert (= (and start!732848 res!3042972) b!7599830))

(assert (= (and b!7599830 res!3042975) b!7599841))

(assert (= (and b!7599841 res!3042973) b!7599829))

(assert (= (and b!7599829 res!3042976) b!7599831))

(assert (= (and b!7599831 (not res!3042974)) b!7599837))

(get-info :version)

(assert (= (and start!732848 ((_ is ElementMatch!20129) r1!3349)) b!7599835))

(assert (= (and start!732848 ((_ is Concat!28974) r1!3349)) b!7599833))

(assert (= (and start!732848 ((_ is Star!20129) r1!3349)) b!7599840))

(assert (= (and start!732848 ((_ is Union!20129) r1!3349)) b!7599834))

(assert (= (and start!732848 ((_ is ElementMatch!20129) r2!3249)) b!7599842))

(assert (= (and start!732848 ((_ is Concat!28974) r2!3249)) b!7599832))

(assert (= (and start!732848 ((_ is Star!20129) r2!3249)) b!7599828))

(assert (= (and start!732848 ((_ is Union!20129) r2!3249)) b!7599838))

(assert (= (and start!732848 ((_ is Cons!72888) s!10235)) b!7599839))

(assert (= (and start!732848 ((_ is Cons!72888) (_1!37791 cut!33))) b!7599843))

(assert (= (and start!732848 ((_ is Cons!72888) (_2!37791 cut!33))) b!7599836))

(declare-fun m!8144730 () Bool)

(assert (=> b!7599830 m!8144730))

(declare-fun m!8144732 () Bool)

(assert (=> b!7599831 m!8144732))

(declare-fun m!8144734 () Bool)

(assert (=> b!7599831 m!8144734))

(declare-fun m!8144736 () Bool)

(assert (=> b!7599831 m!8144736))

(declare-fun m!8144738 () Bool)

(assert (=> b!7599831 m!8144738))

(declare-fun m!8144740 () Bool)

(assert (=> b!7599831 m!8144740))

(declare-fun m!8144742 () Bool)

(assert (=> b!7599831 m!8144742))

(declare-fun m!8144744 () Bool)

(assert (=> b!7599841 m!8144744))

(declare-fun m!8144746 () Bool)

(assert (=> b!7599837 m!8144746))

(declare-fun m!8144748 () Bool)

(assert (=> start!732848 m!8144748))

(declare-fun m!8144750 () Bool)

(assert (=> b!7599829 m!8144750))

(declare-fun m!8144752 () Bool)

(assert (=> b!7599829 m!8144752))

(check-sat (not b!7599830) (not b!7599831) (not b!7599841) (not b!7599843) (not b!7599833) (not b!7599838) (not b!7599839) tp_is_empty!50613 (not b!7599828) (not b!7599837) (not b!7599836) (not start!732848) (not b!7599834) (not b!7599832) (not b!7599840) (not b!7599829))
(check-sat)
