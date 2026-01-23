; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739340 () Bool)

(assert start!739340)

(declare-fun b!7759807 () Bool)

(assert (=> b!7759807 true))

(assert (=> b!7759807 true))

(assert (=> b!7759807 true))

(declare-fun b!7759806 () Bool)

(declare-fun e!4599069 () Bool)

(declare-fun tp!2278470 () Bool)

(declare-fun tp!2278467 () Bool)

(assert (=> b!7759806 (= e!4599069 (and tp!2278470 tp!2278467))))

(declare-fun res!3093574 () Bool)

(declare-fun e!4599073 () Bool)

(assert (=> b!7759807 (=> (not res!3093574) (not e!4599073))))

(declare-fun lambda!471989 () Int)

(declare-fun Exists!4729 (Int) Bool)

(assert (=> b!7759807 (= res!3093574 (Exists!4729 lambda!471989))))

(declare-fun b!7759808 () Bool)

(declare-fun res!3093572 () Bool)

(declare-fun e!4599070 () Bool)

(assert (=> b!7759808 (=> (not res!3093572) (not e!4599070))))

(declare-datatypes ((C!41692 0))(
  ( (C!41693 (val!31286 Int)) )
))
(declare-datatypes ((Regex!20683 0))(
  ( (ElementMatch!20683 (c!1430672 C!41692)) (Concat!29528 (regOne!41878 Regex!20683) (regTwo!41878 Regex!20683)) (EmptyExpr!20683) (Star!20683 (reg!21012 Regex!20683)) (EmptyLang!20683) (Union!20683 (regOne!41879 Regex!20683) (regTwo!41879 Regex!20683)) )
))
(declare-fun r2!3230 () Regex!20683)

(declare-fun validRegex!11099 (Regex!20683) Bool)

(assert (=> b!7759808 (= res!3093572 (validRegex!11099 r2!3230))))

(declare-fun b!7759809 () Bool)

(declare-fun e!4599071 () Bool)

(declare-fun tp!2278471 () Bool)

(assert (=> b!7759809 (= e!4599071 tp!2278471)))

(declare-fun res!3093576 () Bool)

(assert (=> start!739340 (=> (not res!3093576) (not e!4599070))))

(declare-fun r1!3330 () Regex!20683)

(assert (=> start!739340 (= res!3093576 (validRegex!11099 r1!3330))))

(assert (=> start!739340 e!4599070))

(assert (=> start!739340 e!4599069))

(assert (=> start!739340 e!4599071))

(declare-fun e!4599072 () Bool)

(assert (=> start!739340 e!4599072))

(declare-fun b!7759810 () Bool)

(declare-fun tp_is_empty!51721 () Bool)

(declare-fun tp!2278473 () Bool)

(assert (=> b!7759810 (= e!4599072 (and tp_is_empty!51721 tp!2278473))))

(declare-fun b!7759811 () Bool)

(declare-fun res!3093575 () Bool)

(assert (=> b!7759811 (=> (not res!3093575) (not e!4599073))))

(declare-datatypes ((List!73526 0))(
  ( (Nil!73402) (Cons!73402 (h!79850 C!41692) (t!388261 List!73526)) )
))
(declare-datatypes ((tuple2!69752 0))(
  ( (tuple2!69753 (_1!38179 List!73526) (_2!38179 List!73526)) )
))
(declare-datatypes ((Option!17670 0))(
  ( (None!17669) (Some!17669 (v!54804 tuple2!69752)) )
))
(declare-fun lt!2670214 () Option!17670)

(declare-fun isEmpty!42066 (Option!17670) Bool)

(assert (=> b!7759811 (= res!3093575 (isEmpty!42066 lt!2670214))))

(declare-fun b!7759812 () Bool)

(assert (=> b!7759812 (= e!4599069 tp_is_empty!51721)))

(declare-fun b!7759813 () Bool)

(declare-fun tp!2278468 () Bool)

(declare-fun tp!2278465 () Bool)

(assert (=> b!7759813 (= e!4599069 (and tp!2278468 tp!2278465))))

(declare-fun b!7759814 () Bool)

(declare-fun tp!2278469 () Bool)

(declare-fun tp!2278463 () Bool)

(assert (=> b!7759814 (= e!4599071 (and tp!2278469 tp!2278463))))

(declare-fun b!7759815 () Bool)

(declare-fun tp!2278472 () Bool)

(assert (=> b!7759815 (= e!4599069 tp!2278472)))

(declare-fun b!7759816 () Bool)

(declare-fun tp!2278464 () Bool)

(declare-fun tp!2278466 () Bool)

(assert (=> b!7759816 (= e!4599071 (and tp!2278464 tp!2278466))))

(declare-fun b!7759817 () Bool)

(assert (=> b!7759817 (= e!4599071 tp_is_empty!51721)))

(declare-fun b!7759818 () Bool)

(assert (=> b!7759818 (= e!4599073 false)))

(declare-fun lt!2670213 () List!73526)

(declare-fun lt!2670212 () tuple2!69752)

(declare-fun ++!17858 (List!73526 List!73526) List!73526)

(assert (=> b!7759818 (= lt!2670213 (++!17858 (_1!38179 lt!2670212) (_2!38179 lt!2670212)))))

(declare-fun pickWitness!556 (Int) tuple2!69752)

(assert (=> b!7759818 (= lt!2670212 (pickWitness!556 lambda!471989))))

(declare-fun b!7759819 () Bool)

(assert (=> b!7759819 (= e!4599070 e!4599073)))

(declare-fun res!3093573 () Bool)

(assert (=> b!7759819 (=> (not res!3093573) (not e!4599073))))

(declare-fun isDefined!14282 (Option!17670) Bool)

(assert (=> b!7759819 (= res!3093573 (not (isDefined!14282 lt!2670214)))))

(declare-fun s!10216 () List!73526)

(declare-fun findConcatSeparation!3700 (Regex!20683 Regex!20683 List!73526 List!73526 List!73526) Option!17670)

(assert (=> b!7759819 (= lt!2670214 (findConcatSeparation!3700 r1!3330 r2!3230 Nil!73402 s!10216 s!10216))))

(assert (= (and start!739340 res!3093576) b!7759808))

(assert (= (and b!7759808 res!3093572) b!7759819))

(assert (= (and b!7759819 res!3093573) b!7759811))

(assert (= (and b!7759811 res!3093575) b!7759807))

(assert (= (and b!7759807 res!3093574) b!7759818))

(get-info :version)

(assert (= (and start!739340 ((_ is ElementMatch!20683) r1!3330)) b!7759812))

(assert (= (and start!739340 ((_ is Concat!29528) r1!3330)) b!7759813))

(assert (= (and start!739340 ((_ is Star!20683) r1!3330)) b!7759815))

(assert (= (and start!739340 ((_ is Union!20683) r1!3330)) b!7759806))

(assert (= (and start!739340 ((_ is ElementMatch!20683) r2!3230)) b!7759817))

(assert (= (and start!739340 ((_ is Concat!29528) r2!3230)) b!7759816))

(assert (= (and start!739340 ((_ is Star!20683) r2!3230)) b!7759809))

(assert (= (and start!739340 ((_ is Union!20683) r2!3230)) b!7759814))

(assert (= (and start!739340 ((_ is Cons!73402) s!10216)) b!7759810))

(declare-fun m!8220290 () Bool)

(assert (=> b!7759818 m!8220290))

(declare-fun m!8220292 () Bool)

(assert (=> b!7759818 m!8220292))

(declare-fun m!8220294 () Bool)

(assert (=> b!7759811 m!8220294))

(declare-fun m!8220296 () Bool)

(assert (=> b!7759819 m!8220296))

(declare-fun m!8220298 () Bool)

(assert (=> b!7759819 m!8220298))

(declare-fun m!8220300 () Bool)

(assert (=> b!7759807 m!8220300))

(declare-fun m!8220302 () Bool)

(assert (=> b!7759808 m!8220302))

(declare-fun m!8220304 () Bool)

(assert (=> start!739340 m!8220304))

(check-sat (not b!7759807) tp_is_empty!51721 (not b!7759818) (not b!7759819) (not start!739340) (not b!7759811) (not b!7759813) (not b!7759809) (not b!7759808) (not b!7759810) (not b!7759815) (not b!7759814) (not b!7759806) (not b!7759816))
(check-sat)
