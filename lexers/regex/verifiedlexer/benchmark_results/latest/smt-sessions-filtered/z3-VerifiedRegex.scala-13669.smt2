; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732856 () Bool)

(assert start!732856)

(declare-fun b!7600065 () Bool)

(assert (=> b!7600065 true))

(assert (=> b!7600065 true))

(assert (=> b!7600065 true))

(declare-fun lt!2654188 () Bool)

(declare-fun e!4521737 () Bool)

(declare-fun lt!2654189 () Bool)

(declare-fun b!7600059 () Bool)

(declare-fun lt!2654190 () Bool)

(declare-fun lt!2654186 () Bool)

(assert (=> b!7600059 (= e!4521737 (not (or (not lt!2654188) (not lt!2654190) (and lt!2654186 lt!2654189))))))

(assert (=> b!7600059 (= lt!2654190 lt!2654189)))

(declare-datatypes ((C!40592 0))(
  ( (C!40593 (val!30736 Int)) )
))
(declare-datatypes ((Regex!20133 0))(
  ( (ElementMatch!20133 (c!1402222 C!40592)) (Concat!28978 (regOne!40778 Regex!20133) (regTwo!40778 Regex!20133)) (EmptyExpr!20133) (Star!20133 (reg!20462 Regex!20133)) (EmptyLang!20133) (Union!20133 (regOne!40779 Regex!20133) (regTwo!40779 Regex!20133)) )
))
(declare-fun r2!3249 () Regex!20133)

(declare-datatypes ((List!73016 0))(
  ( (Nil!72892) (Cons!72892 (h!79340 C!40592) (t!387751 List!73016)) )
))
(declare-datatypes ((tuple2!68984 0))(
  ( (tuple2!68985 (_1!37795 List!73016) (_2!37795 List!73016)) )
))
(declare-fun lt!2654191 () tuple2!68984)

(declare-fun matchRSpec!4434 (Regex!20133 List!73016) Bool)

(assert (=> b!7600059 (= lt!2654189 (matchRSpec!4434 r2!3249 (_2!37795 lt!2654191)))))

(declare-fun matchR!9717 (Regex!20133 List!73016) Bool)

(assert (=> b!7600059 (= lt!2654190 (matchR!9717 r2!3249 (_2!37795 lt!2654191)))))

(declare-datatypes ((Unit!167198 0))(
  ( (Unit!167199) )
))
(declare-fun lt!2654192 () Unit!167198)

(declare-fun mainMatchTheorem!4428 (Regex!20133 List!73016) Unit!167198)

(assert (=> b!7600059 (= lt!2654192 (mainMatchTheorem!4428 r2!3249 (_2!37795 lt!2654191)))))

(assert (=> b!7600059 (= lt!2654188 lt!2654186)))

(declare-fun r1!3349 () Regex!20133)

(assert (=> b!7600059 (= lt!2654186 (matchRSpec!4434 r1!3349 (_1!37795 lt!2654191)))))

(assert (=> b!7600059 (= lt!2654188 (matchR!9717 r1!3349 (_1!37795 lt!2654191)))))

(declare-fun lt!2654187 () Unit!167198)

(assert (=> b!7600059 (= lt!2654187 (mainMatchTheorem!4428 r1!3349 (_1!37795 lt!2654191)))))

(declare-fun b!7600060 () Bool)

(declare-fun res!3043067 () Bool)

(declare-fun e!4521734 () Bool)

(assert (=> b!7600060 (=> (not res!3043067) (not e!4521734))))

(declare-fun validRegex!10561 (Regex!20133) Bool)

(assert (=> b!7600060 (= res!3043067 (validRegex!10561 r2!3249))))

(declare-fun b!7600062 () Bool)

(declare-fun e!4521736 () Bool)

(declare-fun tp!2215522 () Bool)

(assert (=> b!7600062 (= e!4521736 tp!2215522)))

(declare-fun b!7600063 () Bool)

(declare-fun tp!2215524 () Bool)

(declare-fun tp!2215526 () Bool)

(assert (=> b!7600063 (= e!4521736 (and tp!2215524 tp!2215526))))

(declare-fun b!7600064 () Bool)

(declare-fun e!4521733 () Bool)

(declare-fun tp!2215519 () Bool)

(assert (=> b!7600064 (= e!4521733 tp!2215519)))

(declare-fun res!3043066 () Bool)

(assert (=> b!7600065 (=> (not res!3043066) (not e!4521734))))

(declare-fun lambda!467523 () Int)

(declare-fun Exists!4361 (Int) Bool)

(assert (=> b!7600065 (= res!3043066 (Exists!4361 lambda!467523))))

(declare-fun b!7600066 () Bool)

(assert (=> b!7600066 (= e!4521734 e!4521737)))

(declare-fun res!3043065 () Bool)

(assert (=> b!7600066 (=> (not res!3043065) (not e!4521737))))

(declare-fun s!10235 () List!73016)

(declare-fun ++!17539 (List!73016 List!73016) List!73016)

(assert (=> b!7600066 (= res!3043065 (= (++!17539 (_1!37795 lt!2654191) (_2!37795 lt!2654191)) s!10235))))

(declare-fun pickWitness!398 (Int) tuple2!68984)

(assert (=> b!7600066 (= lt!2654191 (pickWitness!398 lambda!467523))))

(declare-fun b!7600067 () Bool)

(declare-fun tp_is_empty!50621 () Bool)

(assert (=> b!7600067 (= e!4521736 tp_is_empty!50621)))

(declare-fun b!7600061 () Bool)

(declare-fun tp!2215528 () Bool)

(declare-fun tp!2215523 () Bool)

(assert (=> b!7600061 (= e!4521736 (and tp!2215528 tp!2215523))))

(declare-fun res!3043068 () Bool)

(assert (=> start!732856 (=> (not res!3043068) (not e!4521734))))

(assert (=> start!732856 (= res!3043068 (validRegex!10561 r1!3349))))

(assert (=> start!732856 e!4521734))

(assert (=> start!732856 e!4521736))

(assert (=> start!732856 e!4521733))

(declare-fun e!4521735 () Bool)

(assert (=> start!732856 e!4521735))

(declare-fun b!7600068 () Bool)

(declare-fun tp!2215527 () Bool)

(assert (=> b!7600068 (= e!4521735 (and tp_is_empty!50621 tp!2215527))))

(declare-fun b!7600069 () Bool)

(declare-fun tp!2215529 () Bool)

(declare-fun tp!2215520 () Bool)

(assert (=> b!7600069 (= e!4521733 (and tp!2215529 tp!2215520))))

(declare-fun b!7600070 () Bool)

(declare-fun tp!2215525 () Bool)

(declare-fun tp!2215521 () Bool)

(assert (=> b!7600070 (= e!4521733 (and tp!2215525 tp!2215521))))

(declare-fun b!7600071 () Bool)

(assert (=> b!7600071 (= e!4521733 tp_is_empty!50621)))

(assert (= (and start!732856 res!3043068) b!7600060))

(assert (= (and b!7600060 res!3043067) b!7600065))

(assert (= (and b!7600065 res!3043066) b!7600066))

(assert (= (and b!7600066 res!3043065) b!7600059))

(get-info :version)

(assert (= (and start!732856 ((_ is ElementMatch!20133) r1!3349)) b!7600067))

(assert (= (and start!732856 ((_ is Concat!28978) r1!3349)) b!7600061))

(assert (= (and start!732856 ((_ is Star!20133) r1!3349)) b!7600062))

(assert (= (and start!732856 ((_ is Union!20133) r1!3349)) b!7600063))

(assert (= (and start!732856 ((_ is ElementMatch!20133) r2!3249)) b!7600071))

(assert (= (and start!732856 ((_ is Concat!28978) r2!3249)) b!7600070))

(assert (= (and start!732856 ((_ is Star!20133) r2!3249)) b!7600064))

(assert (= (and start!732856 ((_ is Union!20133) r2!3249)) b!7600069))

(assert (= (and start!732856 ((_ is Cons!72892) s!10235)) b!7600068))

(declare-fun m!8144824 () Bool)

(assert (=> b!7600059 m!8144824))

(declare-fun m!8144826 () Bool)

(assert (=> b!7600059 m!8144826))

(declare-fun m!8144828 () Bool)

(assert (=> b!7600059 m!8144828))

(declare-fun m!8144830 () Bool)

(assert (=> b!7600059 m!8144830))

(declare-fun m!8144832 () Bool)

(assert (=> b!7600059 m!8144832))

(declare-fun m!8144834 () Bool)

(assert (=> b!7600059 m!8144834))

(declare-fun m!8144836 () Bool)

(assert (=> start!732856 m!8144836))

(declare-fun m!8144838 () Bool)

(assert (=> b!7600066 m!8144838))

(declare-fun m!8144840 () Bool)

(assert (=> b!7600066 m!8144840))

(declare-fun m!8144842 () Bool)

(assert (=> b!7600060 m!8144842))

(declare-fun m!8144844 () Bool)

(assert (=> b!7600065 m!8144844))

(check-sat (not b!7600063) (not b!7600062) (not b!7600060) (not b!7600059) (not b!7600064) (not b!7600065) (not start!732856) tp_is_empty!50621 (not b!7600061) (not b!7600066) (not b!7600069) (not b!7600070) (not b!7600068))
(check-sat)
