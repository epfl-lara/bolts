; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733712 () Bool)

(assert start!733712)

(declare-fun b!7616207 () Bool)

(assert (=> b!7616207 true))

(assert (=> b!7616207 true))

(declare-fun b!7616205 () Bool)

(declare-fun e!4529207 () Bool)

(declare-fun tp_is_empty!50889 () Bool)

(declare-fun tp!2223905 () Bool)

(assert (=> b!7616205 (= e!4529207 (and tp_is_empty!50889 tp!2223905))))

(declare-fun b!7616206 () Bool)

(declare-fun e!4529204 () Bool)

(declare-fun tp!2223906 () Bool)

(declare-fun tp!2223903 () Bool)

(assert (=> b!7616206 (= e!4529204 (and tp!2223906 tp!2223903))))

(declare-fun e!4529206 () Bool)

(declare-fun e!4529205 () Bool)

(assert (=> b!7616207 (= e!4529206 (not e!4529205))))

(declare-fun res!3048910 () Bool)

(assert (=> b!7616207 (=> res!3048910 e!4529205)))

(declare-datatypes ((C!40860 0))(
  ( (C!40861 (val!30870 Int)) )
))
(declare-datatypes ((Regex!20267 0))(
  ( (ElementMatch!20267 (c!1403898 C!40860)) (Concat!29112 (regOne!41046 Regex!20267) (regTwo!41046 Regex!20267)) (EmptyExpr!20267) (Star!20267 (reg!20596 Regex!20267)) (EmptyLang!20267) (Union!20267 (regOne!41047 Regex!20267) (regTwo!41047 Regex!20267)) )
))
(declare-fun r!14126 () Regex!20267)

(declare-fun validRegex!10687 (Regex!20267) Bool)

(assert (=> b!7616207 (= res!3048910 (not (validRegex!10687 (reg!20596 r!14126))))))

(declare-datatypes ((List!73120 0))(
  ( (Nil!72996) (Cons!72996 (h!79444 C!40860) (t!387855 List!73120)) )
))
(declare-fun s!9605 () List!73120)

(declare-fun lambda!468129 () Int)

(declare-datatypes ((tuple2!69096 0))(
  ( (tuple2!69097 (_1!37851 List!73120) (_2!37851 List!73120)) )
))
(declare-datatypes ((Option!17342 0))(
  ( (None!17341) (Some!17341 (v!54476 tuple2!69096)) )
))
(declare-fun isDefined!13958 (Option!17342) Bool)

(declare-fun findConcatSeparation!3372 (Regex!20267 Regex!20267 List!73120 List!73120 List!73120) Option!17342)

(declare-fun Exists!4423 (Int) Bool)

(assert (=> b!7616207 (= (isDefined!13958 (findConcatSeparation!3372 (reg!20596 r!14126) r!14126 Nil!72996 s!9605 s!9605)) (Exists!4423 lambda!468129))))

(declare-datatypes ((Unit!167366 0))(
  ( (Unit!167367) )
))
(declare-fun lt!2655380 () Unit!167366)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3130 (Regex!20267 Regex!20267 List!73120) Unit!167366)

(assert (=> b!7616207 (= lt!2655380 (lemmaFindConcatSeparationEquivalentToExists!3130 (reg!20596 r!14126) r!14126 s!9605))))

(declare-fun b!7616208 () Bool)

(declare-fun res!3048909 () Bool)

(assert (=> b!7616208 (=> (not res!3048909) (not e!4529206))))

(get-info :version)

(assert (=> b!7616208 (= res!3048909 (and (not ((_ is EmptyExpr!20267) r!14126)) (not ((_ is EmptyLang!20267) r!14126)) (not ((_ is ElementMatch!20267) r!14126)) (not ((_ is Union!20267) r!14126)) ((_ is Star!20267) r!14126)))))

(declare-fun b!7616209 () Bool)

(assert (=> b!7616209 (= e!4529204 tp_is_empty!50889)))

(declare-fun b!7616210 () Bool)

(assert (=> b!7616210 (= e!4529205 (validRegex!10687 r!14126))))

(declare-fun b!7616211 () Bool)

(declare-fun tp!2223902 () Bool)

(assert (=> b!7616211 (= e!4529204 tp!2223902)))

(declare-fun b!7616212 () Bool)

(declare-fun tp!2223907 () Bool)

(declare-fun tp!2223904 () Bool)

(assert (=> b!7616212 (= e!4529204 (and tp!2223907 tp!2223904))))

(declare-fun b!7616213 () Bool)

(declare-fun res!3048912 () Bool)

(assert (=> b!7616213 (=> (not res!3048912) (not e!4529206))))

(declare-fun isEmpty!41605 (List!73120) Bool)

(assert (=> b!7616213 (= res!3048912 (not (isEmpty!41605 s!9605)))))

(declare-fun res!3048911 () Bool)

(assert (=> start!733712 (=> (not res!3048911) (not e!4529206))))

(assert (=> start!733712 (= res!3048911 (validRegex!10687 r!14126))))

(assert (=> start!733712 e!4529206))

(assert (=> start!733712 e!4529204))

(assert (=> start!733712 e!4529207))

(assert (= (and start!733712 res!3048911) b!7616208))

(assert (= (and b!7616208 res!3048909) b!7616213))

(assert (= (and b!7616213 res!3048912) b!7616207))

(assert (= (and b!7616207 (not res!3048910)) b!7616210))

(assert (= (and start!733712 ((_ is ElementMatch!20267) r!14126)) b!7616209))

(assert (= (and start!733712 ((_ is Concat!29112) r!14126)) b!7616212))

(assert (= (and start!733712 ((_ is Star!20267) r!14126)) b!7616211))

(assert (= (and start!733712 ((_ is Union!20267) r!14126)) b!7616206))

(assert (= (and start!733712 ((_ is Cons!72996) s!9605)) b!7616205))

(declare-fun m!8149708 () Bool)

(assert (=> b!7616207 m!8149708))

(declare-fun m!8149710 () Bool)

(assert (=> b!7616207 m!8149710))

(declare-fun m!8149712 () Bool)

(assert (=> b!7616207 m!8149712))

(declare-fun m!8149714 () Bool)

(assert (=> b!7616207 m!8149714))

(assert (=> b!7616207 m!8149710))

(declare-fun m!8149716 () Bool)

(assert (=> b!7616207 m!8149716))

(declare-fun m!8149718 () Bool)

(assert (=> b!7616210 m!8149718))

(declare-fun m!8149720 () Bool)

(assert (=> b!7616213 m!8149720))

(assert (=> start!733712 m!8149718))

(check-sat (not b!7616211) (not b!7616207) (not b!7616213) (not b!7616212) (not b!7616206) tp_is_empty!50889 (not start!733712) (not b!7616205) (not b!7616210))
(check-sat)
