; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732868 () Bool)

(assert start!732868)

(declare-fun b!7600459 () Bool)

(assert (=> b!7600459 true))

(assert (=> b!7600459 true))

(assert (=> b!7600459 true))

(declare-fun bs!1942394 () Bool)

(declare-fun b!7600461 () Bool)

(assert (= bs!1942394 (and b!7600461 b!7600459)))

(declare-fun lambda!467571 () Int)

(declare-fun lambda!467570 () Int)

(assert (=> bs!1942394 (not (= lambda!467571 lambda!467570))))

(assert (=> b!7600461 true))

(assert (=> b!7600461 true))

(assert (=> b!7600461 true))

(declare-fun b!7600451 () Bool)

(declare-fun e!4521923 () Bool)

(declare-fun tp!2215760 () Bool)

(declare-fun tp!2215753 () Bool)

(assert (=> b!7600451 (= e!4521923 (and tp!2215760 tp!2215753))))

(declare-fun b!7600452 () Bool)

(declare-fun e!4521924 () Bool)

(declare-fun tp!2215761 () Bool)

(declare-fun tp!2215757 () Bool)

(assert (=> b!7600452 (= e!4521924 (and tp!2215761 tp!2215757))))

(declare-fun b!7600453 () Bool)

(declare-fun tp!2215762 () Bool)

(declare-fun tp!2215755 () Bool)

(assert (=> b!7600453 (= e!4521923 (and tp!2215762 tp!2215755))))

(declare-fun b!7600454 () Bool)

(declare-fun e!4521926 () Bool)

(declare-fun e!4521927 () Bool)

(assert (=> b!7600454 (= e!4521926 (not e!4521927))))

(declare-fun res!3043238 () Bool)

(assert (=> b!7600454 (=> res!3043238 e!4521927)))

(declare-fun lt!2654310 () Bool)

(declare-fun lt!2654308 () Bool)

(assert (=> b!7600454 (= res!3043238 (or (not lt!2654310) (not lt!2654308)))))

(declare-datatypes ((C!40604 0))(
  ( (C!40605 (val!30742 Int)) )
))
(declare-datatypes ((Regex!20139 0))(
  ( (ElementMatch!20139 (c!1402228 C!40604)) (Concat!28984 (regOne!40790 Regex!20139) (regTwo!40790 Regex!20139)) (EmptyExpr!20139) (Star!20139 (reg!20468 Regex!20139)) (EmptyLang!20139) (Union!20139 (regOne!40791 Regex!20139) (regTwo!40791 Regex!20139)) )
))
(declare-fun r2!3249 () Regex!20139)

(declare-datatypes ((List!73022 0))(
  ( (Nil!72898) (Cons!72898 (h!79346 C!40604) (t!387757 List!73022)) )
))
(declare-datatypes ((tuple2!68996 0))(
  ( (tuple2!68997 (_1!37801 List!73022) (_2!37801 List!73022)) )
))
(declare-fun lt!2654311 () tuple2!68996)

(declare-fun matchRSpec!4440 (Regex!20139 List!73022) Bool)

(assert (=> b!7600454 (= lt!2654308 (matchRSpec!4440 r2!3249 (_2!37801 lt!2654311)))))

(declare-fun matchR!9723 (Regex!20139 List!73022) Bool)

(assert (=> b!7600454 (= lt!2654308 (matchR!9723 r2!3249 (_2!37801 lt!2654311)))))

(declare-datatypes ((Unit!167210 0))(
  ( (Unit!167211) )
))
(declare-fun lt!2654312 () Unit!167210)

(declare-fun mainMatchTheorem!4434 (Regex!20139 List!73022) Unit!167210)

(assert (=> b!7600454 (= lt!2654312 (mainMatchTheorem!4434 r2!3249 (_2!37801 lt!2654311)))))

(declare-fun r1!3349 () Regex!20139)

(assert (=> b!7600454 (= lt!2654310 (matchRSpec!4440 r1!3349 (_1!37801 lt!2654311)))))

(assert (=> b!7600454 (= lt!2654310 (matchR!9723 r1!3349 (_1!37801 lt!2654311)))))

(declare-fun lt!2654307 () Unit!167210)

(assert (=> b!7600454 (= lt!2654307 (mainMatchTheorem!4434 r1!3349 (_1!37801 lt!2654311)))))

(declare-fun res!3043239 () Bool)

(declare-fun e!4521925 () Bool)

(assert (=> start!732868 (=> (not res!3043239) (not e!4521925))))

(declare-fun validRegex!10567 (Regex!20139) Bool)

(assert (=> start!732868 (= res!3043239 (validRegex!10567 r1!3349))))

(assert (=> start!732868 e!4521925))

(assert (=> start!732868 e!4521923))

(assert (=> start!732868 e!4521924))

(declare-fun e!4521922 () Bool)

(assert (=> start!732868 e!4521922))

(declare-fun e!4521921 () Bool)

(declare-fun e!4521928 () Bool)

(assert (=> start!732868 (and e!4521921 e!4521928)))

(declare-fun b!7600455 () Bool)

(declare-fun e!4521929 () Bool)

(assert (=> b!7600455 (= e!4521929 true)))

(declare-fun b!7600456 () Bool)

(declare-fun tp!2215756 () Bool)

(declare-fun tp!2215752 () Bool)

(assert (=> b!7600456 (= e!4521924 (and tp!2215756 tp!2215752))))

(declare-fun b!7600457 () Bool)

(declare-fun tp_is_empty!50633 () Bool)

(declare-fun tp!2215763 () Bool)

(assert (=> b!7600457 (= e!4521921 (and tp_is_empty!50633 tp!2215763))))

(declare-fun b!7600458 () Bool)

(declare-fun tp!2215759 () Bool)

(assert (=> b!7600458 (= e!4521922 (and tp_is_empty!50633 tp!2215759))))

(declare-fun res!3043241 () Bool)

(assert (=> b!7600459 (=> (not res!3043241) (not e!4521925))))

(declare-fun Exists!4367 (Int) Bool)

(assert (=> b!7600459 (= res!3043241 (Exists!4367 lambda!467570))))

(declare-fun b!7600460 () Bool)

(declare-fun tp!2215758 () Bool)

(assert (=> b!7600460 (= e!4521924 tp!2215758)))

(assert (=> b!7600461 (= e!4521927 e!4521929)))

(declare-fun res!3043237 () Bool)

(assert (=> b!7600461 (=> res!3043237 e!4521929)))

(declare-fun cut!29 () tuple2!68996)

(declare-fun s!10235 () List!73022)

(declare-fun ++!17545 (List!73022 List!73022) List!73022)

(assert (=> b!7600461 (= res!3043237 (not (= (++!17545 (_1!37801 cut!29) (_2!37801 cut!29)) s!10235)))))

(declare-fun lt!2654309 () Unit!167210)

(declare-fun ExistsThe!34 (tuple2!68996 Int) Unit!167210)

(assert (=> b!7600461 (= lt!2654309 (ExistsThe!34 lt!2654311 lambda!467571))))

(declare-fun b!7600462 () Bool)

(declare-fun res!3043240 () Bool)

(assert (=> b!7600462 (=> (not res!3043240) (not e!4521925))))

(assert (=> b!7600462 (= res!3043240 (validRegex!10567 r2!3249))))

(declare-fun b!7600463 () Bool)

(assert (=> b!7600463 (= e!4521923 tp_is_empty!50633)))

(declare-fun b!7600464 () Bool)

(assert (=> b!7600464 (= e!4521924 tp_is_empty!50633)))

(declare-fun b!7600465 () Bool)

(declare-fun tp!2215751 () Bool)

(assert (=> b!7600465 (= e!4521923 tp!2215751)))

(declare-fun b!7600466 () Bool)

(declare-fun tp!2215754 () Bool)

(assert (=> b!7600466 (= e!4521928 (and tp_is_empty!50633 tp!2215754))))

(declare-fun b!7600467 () Bool)

(assert (=> b!7600467 (= e!4521925 e!4521926)))

(declare-fun res!3043242 () Bool)

(assert (=> b!7600467 (=> (not res!3043242) (not e!4521926))))

(assert (=> b!7600467 (= res!3043242 (= (++!17545 (_1!37801 lt!2654311) (_2!37801 lt!2654311)) s!10235))))

(declare-fun pickWitness!404 (Int) tuple2!68996)

(assert (=> b!7600467 (= lt!2654311 (pickWitness!404 lambda!467570))))

(assert (= (and start!732868 res!3043239) b!7600462))

(assert (= (and b!7600462 res!3043240) b!7600459))

(assert (= (and b!7600459 res!3043241) b!7600467))

(assert (= (and b!7600467 res!3043242) b!7600454))

(assert (= (and b!7600454 (not res!3043238)) b!7600461))

(assert (= (and b!7600461 (not res!3043237)) b!7600455))

(get-info :version)

(assert (= (and start!732868 ((_ is ElementMatch!20139) r1!3349)) b!7600463))

(assert (= (and start!732868 ((_ is Concat!28984) r1!3349)) b!7600451))

(assert (= (and start!732868 ((_ is Star!20139) r1!3349)) b!7600465))

(assert (= (and start!732868 ((_ is Union!20139) r1!3349)) b!7600453))

(assert (= (and start!732868 ((_ is ElementMatch!20139) r2!3249)) b!7600464))

(assert (= (and start!732868 ((_ is Concat!28984) r2!3249)) b!7600452))

(assert (= (and start!732868 ((_ is Star!20139) r2!3249)) b!7600460))

(assert (= (and start!732868 ((_ is Union!20139) r2!3249)) b!7600456))

(assert (= (and start!732868 ((_ is Cons!72898) s!10235)) b!7600458))

(assert (= (and start!732868 ((_ is Cons!72898) (_1!37801 cut!29))) b!7600457))

(assert (= (and start!732868 ((_ is Cons!72898) (_2!37801 cut!29))) b!7600466))

(declare-fun m!8144980 () Bool)

(assert (=> start!732868 m!8144980))

(declare-fun m!8144982 () Bool)

(assert (=> b!7600462 m!8144982))

(declare-fun m!8144984 () Bool)

(assert (=> b!7600454 m!8144984))

(declare-fun m!8144986 () Bool)

(assert (=> b!7600454 m!8144986))

(declare-fun m!8144988 () Bool)

(assert (=> b!7600454 m!8144988))

(declare-fun m!8144990 () Bool)

(assert (=> b!7600454 m!8144990))

(declare-fun m!8144992 () Bool)

(assert (=> b!7600454 m!8144992))

(declare-fun m!8144994 () Bool)

(assert (=> b!7600454 m!8144994))

(declare-fun m!8144996 () Bool)

(assert (=> b!7600467 m!8144996))

(declare-fun m!8144998 () Bool)

(assert (=> b!7600467 m!8144998))

(declare-fun m!8145000 () Bool)

(assert (=> b!7600461 m!8145000))

(declare-fun m!8145002 () Bool)

(assert (=> b!7600461 m!8145002))

(declare-fun m!8145004 () Bool)

(assert (=> b!7600459 m!8145004))

(check-sat (not start!732868) (not b!7600457) (not b!7600454) (not b!7600458) (not b!7600466) (not b!7600461) (not b!7600459) (not b!7600452) (not b!7600456) tp_is_empty!50633 (not b!7600465) (not b!7600453) (not b!7600462) (not b!7600467) (not b!7600460) (not b!7600451))
(check-sat)
