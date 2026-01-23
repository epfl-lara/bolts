; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736272 () Bool)

(assert start!736272)

(declare-fun b!7667789 () Bool)

(assert (=> b!7667789 true))

(assert (=> b!7667789 true))

(declare-fun b!7667780 () Bool)

(declare-fun res!3066905 () Bool)

(declare-fun e!4554129 () Bool)

(assert (=> b!7667780 (=> res!3066905 e!4554129)))

(declare-datatypes ((C!41312 0))(
  ( (C!41313 (val!31096 Int)) )
))
(declare-datatypes ((Regex!20493 0))(
  ( (ElementMatch!20493 (c!1412194 C!41312)) (Concat!29338 (regOne!41498 Regex!20493) (regTwo!41498 Regex!20493)) (EmptyExpr!20493) (Star!20493 (reg!20822 Regex!20493)) (EmptyLang!20493) (Union!20493 (regOne!41499 Regex!20493) (regTwo!41499 Regex!20493)) )
))
(declare-fun r!14126 () Regex!20493)

(declare-fun validRegex!10911 (Regex!20493) Bool)

(assert (=> b!7667780 (= res!3066905 (not (validRegex!10911 r!14126)))))

(declare-fun b!7667781 () Bool)

(declare-fun e!4554127 () Bool)

(declare-fun tp!2243813 () Bool)

(declare-fun tp!2243811 () Bool)

(assert (=> b!7667781 (= e!4554127 (and tp!2243813 tp!2243811))))

(declare-fun b!7667782 () Bool)

(declare-fun tp!2243808 () Bool)

(declare-fun tp!2243809 () Bool)

(assert (=> b!7667782 (= e!4554127 (and tp!2243808 tp!2243809))))

(declare-fun b!7667783 () Bool)

(declare-datatypes ((List!73344 0))(
  ( (Nil!73220) (Cons!73220 (h!79668 C!41312) (t!388079 List!73344)) )
))
(declare-datatypes ((tuple2!69448 0))(
  ( (tuple2!69449 (_1!38027 List!73344) (_2!38027 List!73344)) )
))
(declare-fun lt!2662263 () tuple2!69448)

(assert (=> b!7667783 (= e!4554129 (= lt!2662263 (tuple2!69449 (_1!38027 lt!2662263) (_2!38027 lt!2662263))))))

(declare-fun b!7667784 () Bool)

(declare-fun res!3066912 () Bool)

(assert (=> b!7667784 (=> res!3066912 e!4554129)))

(assert (=> b!7667784 (= res!3066912 (not (validRegex!10911 (reg!20822 r!14126))))))

(declare-fun b!7667785 () Bool)

(declare-fun e!4554125 () Bool)

(declare-fun tp_is_empty!51341 () Bool)

(declare-fun tp!2243812 () Bool)

(assert (=> b!7667785 (= e!4554125 (and tp_is_empty!51341 tp!2243812))))

(declare-fun b!7667786 () Bool)

(declare-fun e!4554126 () Bool)

(assert (=> b!7667786 (= e!4554126 e!4554129)))

(declare-fun res!3066907 () Bool)

(assert (=> b!7667786 (=> res!3066907 e!4554129)))

(declare-fun s!9605 () List!73344)

(declare-fun matchR!9989 (Regex!20493 List!73344) Bool)

(assert (=> b!7667786 (= res!3066907 (matchR!9989 r!14126 s!9605))))

(declare-fun matchRSpec!4594 (Regex!20493 List!73344) Bool)

(assert (=> b!7667786 (= (matchR!9989 r!14126 (_2!38027 lt!2662263)) (matchRSpec!4594 r!14126 (_2!38027 lt!2662263)))))

(declare-datatypes ((Unit!167998 0))(
  ( (Unit!167999) )
))
(declare-fun lt!2662261 () Unit!167998)

(declare-fun mainMatchTheorem!4572 (Regex!20493 List!73344) Unit!167998)

(assert (=> b!7667786 (= lt!2662261 (mainMatchTheorem!4572 r!14126 (_2!38027 lt!2662263)))))

(assert (=> b!7667786 (= (matchR!9989 (reg!20822 r!14126) (_1!38027 lt!2662263)) (matchRSpec!4594 (reg!20822 r!14126) (_1!38027 lt!2662263)))))

(declare-fun lt!2662265 () Unit!167998)

(assert (=> b!7667786 (= lt!2662265 (mainMatchTheorem!4572 (reg!20822 r!14126) (_1!38027 lt!2662263)))))

(declare-datatypes ((Option!17518 0))(
  ( (None!17517) (Some!17517 (v!54652 tuple2!69448)) )
))
(declare-fun lt!2662264 () Option!17518)

(declare-fun get!25951 (Option!17518) tuple2!69448)

(assert (=> b!7667786 (= lt!2662263 (get!25951 lt!2662264))))

(declare-fun b!7667787 () Bool)

(declare-fun res!3066906 () Bool)

(declare-fun e!4554128 () Bool)

(assert (=> b!7667787 (=> (not res!3066906) (not e!4554128))))

(get-info :version)

(assert (=> b!7667787 (= res!3066906 (and (not ((_ is EmptyExpr!20493) r!14126)) (not ((_ is EmptyLang!20493) r!14126)) (not ((_ is ElementMatch!20493) r!14126)) (not ((_ is Union!20493) r!14126)) ((_ is Star!20493) r!14126)))))

(declare-fun b!7667779 () Bool)

(declare-fun tp!2243810 () Bool)

(assert (=> b!7667779 (= e!4554127 tp!2243810)))

(declare-fun res!3066911 () Bool)

(assert (=> start!736272 (=> (not res!3066911) (not e!4554128))))

(assert (=> start!736272 (= res!3066911 (validRegex!10911 r!14126))))

(assert (=> start!736272 e!4554128))

(assert (=> start!736272 e!4554127))

(assert (=> start!736272 e!4554125))

(declare-fun b!7667788 () Bool)

(assert (=> b!7667788 (= e!4554127 tp_is_empty!51341)))

(assert (=> b!7667789 (= e!4554128 (not e!4554126))))

(declare-fun res!3066909 () Bool)

(assert (=> b!7667789 (=> res!3066909 e!4554126)))

(declare-fun lt!2662262 () Bool)

(assert (=> b!7667789 (= res!3066909 (not lt!2662262))))

(declare-fun lambda!469961 () Int)

(declare-fun Exists!4618 (Int) Bool)

(assert (=> b!7667789 (= lt!2662262 (Exists!4618 lambda!469961))))

(declare-fun isDefined!14134 (Option!17518) Bool)

(assert (=> b!7667789 (= lt!2662262 (isDefined!14134 lt!2662264))))

(declare-fun findConcatSeparation!3548 (Regex!20493 Regex!20493 List!73344 List!73344 List!73344) Option!17518)

(assert (=> b!7667789 (= lt!2662264 (findConcatSeparation!3548 (reg!20822 r!14126) r!14126 Nil!73220 s!9605 s!9605))))

(declare-fun lt!2662266 () Unit!167998)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3306 (Regex!20493 Regex!20493 List!73344) Unit!167998)

(assert (=> b!7667789 (= lt!2662266 (lemmaFindConcatSeparationEquivalentToExists!3306 (reg!20822 r!14126) r!14126 s!9605))))

(declare-fun b!7667790 () Bool)

(declare-fun res!3066908 () Bool)

(assert (=> b!7667790 (=> (not res!3066908) (not e!4554128))))

(declare-fun isEmpty!41854 (List!73344) Bool)

(assert (=> b!7667790 (= res!3066908 (not (isEmpty!41854 s!9605)))))

(declare-fun b!7667791 () Bool)

(declare-fun res!3066910 () Bool)

(assert (=> b!7667791 (=> res!3066910 e!4554129)))

(declare-fun ++!17715 (List!73344 List!73344) List!73344)

(assert (=> b!7667791 (= res!3066910 (not (= s!9605 (++!17715 (_1!38027 lt!2662263) (_2!38027 lt!2662263)))))))

(assert (= (and start!736272 res!3066911) b!7667787))

(assert (= (and b!7667787 res!3066906) b!7667790))

(assert (= (and b!7667790 res!3066908) b!7667789))

(assert (= (and b!7667789 (not res!3066909)) b!7667786))

(assert (= (and b!7667786 (not res!3066907)) b!7667784))

(assert (= (and b!7667784 (not res!3066912)) b!7667780))

(assert (= (and b!7667780 (not res!3066905)) b!7667791))

(assert (= (and b!7667791 (not res!3066910)) b!7667783))

(assert (= (and start!736272 ((_ is ElementMatch!20493) r!14126)) b!7667788))

(assert (= (and start!736272 ((_ is Concat!29338) r!14126)) b!7667781))

(assert (= (and start!736272 ((_ is Star!20493) r!14126)) b!7667779))

(assert (= (and start!736272 ((_ is Union!20493) r!14126)) b!7667782))

(assert (= (and start!736272 ((_ is Cons!73220) s!9605)) b!7667785))

(declare-fun m!8172958 () Bool)

(assert (=> b!7667790 m!8172958))

(declare-fun m!8172960 () Bool)

(assert (=> b!7667789 m!8172960))

(declare-fun m!8172962 () Bool)

(assert (=> b!7667789 m!8172962))

(declare-fun m!8172964 () Bool)

(assert (=> b!7667789 m!8172964))

(declare-fun m!8172966 () Bool)

(assert (=> b!7667789 m!8172966))

(declare-fun m!8172968 () Bool)

(assert (=> start!736272 m!8172968))

(declare-fun m!8172970 () Bool)

(assert (=> b!7667784 m!8172970))

(declare-fun m!8172972 () Bool)

(assert (=> b!7667791 m!8172972))

(declare-fun m!8172974 () Bool)

(assert (=> b!7667786 m!8172974))

(declare-fun m!8172976 () Bool)

(assert (=> b!7667786 m!8172976))

(declare-fun m!8172978 () Bool)

(assert (=> b!7667786 m!8172978))

(declare-fun m!8172980 () Bool)

(assert (=> b!7667786 m!8172980))

(declare-fun m!8172982 () Bool)

(assert (=> b!7667786 m!8172982))

(declare-fun m!8172984 () Bool)

(assert (=> b!7667786 m!8172984))

(declare-fun m!8172986 () Bool)

(assert (=> b!7667786 m!8172986))

(declare-fun m!8172988 () Bool)

(assert (=> b!7667786 m!8172988))

(assert (=> b!7667780 m!8172968))

(check-sat tp_is_empty!51341 (not b!7667780) (not b!7667782) (not b!7667785) (not b!7667779) (not b!7667789) (not b!7667786) (not b!7667781) (not start!736272) (not b!7667791) (not b!7667784) (not b!7667790))
(check-sat)
