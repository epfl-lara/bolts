; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732816 () Bool)

(assert start!732816)

(declare-fun res!3042705 () Bool)

(declare-fun e!4521328 () Bool)

(assert (=> start!732816 (=> (not res!3042705) (not e!4521328))))

(declare-datatypes ((C!40552 0))(
  ( (C!40553 (val!30716 Int)) )
))
(declare-datatypes ((Regex!20113 0))(
  ( (ElementMatch!20113 (c!1402202 C!40552)) (Concat!28958 (regOne!40738 Regex!20113) (regTwo!40738 Regex!20113)) (EmptyExpr!20113) (Star!20113 (reg!20442 Regex!20113)) (EmptyLang!20113) (Union!20113 (regOne!40739 Regex!20113) (regTwo!40739 Regex!20113)) )
))
(declare-fun r1!3349 () Regex!20113)

(declare-fun validRegex!10541 (Regex!20113) Bool)

(assert (=> start!732816 (= res!3042705 (validRegex!10541 r1!3349))))

(assert (=> start!732816 e!4521328))

(declare-fun e!4521330 () Bool)

(assert (=> start!732816 e!4521330))

(declare-fun e!4521331 () Bool)

(assert (=> start!732816 e!4521331))

(declare-fun e!4521327 () Bool)

(declare-fun e!4521329 () Bool)

(assert (=> start!732816 (and e!4521327 e!4521329)))

(declare-fun b!7599030 () Bool)

(declare-fun tp!2214803 () Bool)

(assert (=> b!7599030 (= e!4521330 tp!2214803)))

(declare-fun b!7599031 () Bool)

(declare-fun tp_is_empty!50581 () Bool)

(assert (=> b!7599031 (= e!4521331 tp_is_empty!50581)))

(declare-fun b!7599032 () Bool)

(assert (=> b!7599032 (= e!4521330 tp_is_empty!50581)))

(declare-fun b!7599033 () Bool)

(declare-fun tp!2214802 () Bool)

(declare-fun tp!2214798 () Bool)

(assert (=> b!7599033 (= e!4521330 (and tp!2214802 tp!2214798))))

(declare-fun b!7599034 () Bool)

(declare-fun tp!2214801 () Bool)

(assert (=> b!7599034 (= e!4521331 tp!2214801)))

(declare-fun b!7599035 () Bool)

(declare-fun tp!2214807 () Bool)

(declare-fun tp!2214804 () Bool)

(assert (=> b!7599035 (= e!4521330 (and tp!2214807 tp!2214804))))

(declare-fun b!7599036 () Bool)

(assert (=> b!7599036 (= e!4521328 false)))

(declare-datatypes ((List!72996 0))(
  ( (Nil!72872) (Cons!72872 (h!79320 C!40552) (t!387731 List!72996)) )
))
(declare-fun lt!2654024 () List!72996)

(declare-datatypes ((tuple2!68948 0))(
  ( (tuple2!68949 (_1!37777 List!72996) (_2!37777 List!72996)) )
))
(declare-fun cut!30 () tuple2!68948)

(declare-fun ++!17521 (List!72996 List!72996) List!72996)

(assert (=> b!7599036 (= lt!2654024 (++!17521 (_1!37777 cut!30) (_2!37777 cut!30)))))

(declare-fun b!7599037 () Bool)

(declare-fun tp!2214809 () Bool)

(assert (=> b!7599037 (= e!4521329 (and tp_is_empty!50581 tp!2214809))))

(declare-fun b!7599038 () Bool)

(declare-fun res!3042706 () Bool)

(assert (=> b!7599038 (=> (not res!3042706) (not e!4521328))))

(declare-fun r2!3249 () Regex!20113)

(assert (=> b!7599038 (= res!3042706 (validRegex!10541 r2!3249))))

(declare-fun b!7599039 () Bool)

(declare-fun tp!2214799 () Bool)

(assert (=> b!7599039 (= e!4521327 (and tp_is_empty!50581 tp!2214799))))

(declare-fun b!7599040 () Bool)

(declare-fun tp!2214805 () Bool)

(declare-fun tp!2214808 () Bool)

(assert (=> b!7599040 (= e!4521331 (and tp!2214805 tp!2214808))))

(declare-fun b!7599041 () Bool)

(declare-fun tp!2214806 () Bool)

(declare-fun tp!2214800 () Bool)

(assert (=> b!7599041 (= e!4521331 (and tp!2214806 tp!2214800))))

(assert (= (and start!732816 res!3042705) b!7599038))

(assert (= (and b!7599038 res!3042706) b!7599036))

(get-info :version)

(assert (= (and start!732816 ((_ is ElementMatch!20113) r1!3349)) b!7599032))

(assert (= (and start!732816 ((_ is Concat!28958) r1!3349)) b!7599035))

(assert (= (and start!732816 ((_ is Star!20113) r1!3349)) b!7599030))

(assert (= (and start!732816 ((_ is Union!20113) r1!3349)) b!7599033))

(assert (= (and start!732816 ((_ is ElementMatch!20113) r2!3249)) b!7599031))

(assert (= (and start!732816 ((_ is Concat!28958) r2!3249)) b!7599041))

(assert (= (and start!732816 ((_ is Star!20113) r2!3249)) b!7599034))

(assert (= (and start!732816 ((_ is Union!20113) r2!3249)) b!7599040))

(assert (= (and start!732816 ((_ is Cons!72872) (_1!37777 cut!30))) b!7599039))

(assert (= (and start!732816 ((_ is Cons!72872) (_2!37777 cut!30))) b!7599037))

(declare-fun m!8144540 () Bool)

(assert (=> start!732816 m!8144540))

(declare-fun m!8144542 () Bool)

(assert (=> b!7599036 m!8144542))

(declare-fun m!8144544 () Bool)

(assert (=> b!7599038 m!8144544))

(check-sat (not start!732816) (not b!7599038) (not b!7599033) (not b!7599036) (not b!7599034) (not b!7599040) tp_is_empty!50581 (not b!7599039) (not b!7599041) (not b!7599035) (not b!7599030) (not b!7599037))
(check-sat)
