; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736064 () Bool)

(assert start!736064)

(declare-fun b!7654021 () Bool)

(assert (=> b!7654021 true))

(assert (=> b!7654021 true))

(declare-fun b!7654019 () Bool)

(declare-fun res!3064493 () Bool)

(declare-fun e!4548239 () Bool)

(assert (=> b!7654019 (=> (not res!3064493) (not e!4548239))))

(declare-datatypes ((C!41292 0))(
  ( (C!41293 (val!31086 Int)) )
))
(declare-datatypes ((List!73334 0))(
  ( (Nil!73210) (Cons!73210 (h!79658 C!41292) (t!388069 List!73334)) )
))
(declare-fun s!9605 () List!73334)

(declare-fun isEmpty!41839 (List!73334) Bool)

(assert (=> b!7654019 (= res!3064493 (not (isEmpty!41839 s!9605)))))

(declare-fun b!7654020 () Bool)

(declare-fun res!3064494 () Bool)

(assert (=> b!7654020 (=> (not res!3064494) (not e!4548239))))

(declare-datatypes ((Regex!20483 0))(
  ( (ElementMatch!20483 (c!1409806 C!41292)) (Concat!29328 (regOne!41478 Regex!20483) (regTwo!41478 Regex!20483)) (EmptyExpr!20483) (Star!20483 (reg!20812 Regex!20483)) (EmptyLang!20483) (Union!20483 (regOne!41479 Regex!20483) (regTwo!41479 Regex!20483)) )
))
(declare-fun r!14126 () Regex!20483)

(get-info :version)

(assert (=> b!7654020 (= res!3064494 (and (not ((_ is EmptyExpr!20483) r!14126)) (not ((_ is EmptyLang!20483) r!14126)) (not ((_ is ElementMatch!20483) r!14126)) (not ((_ is Union!20483) r!14126)) ((_ is Star!20483) r!14126)))))

(declare-fun e!4548241 () Bool)

(assert (=> b!7654021 (= e!4548239 (not e!4548241))))

(declare-fun res!3064495 () Bool)

(assert (=> b!7654021 (=> res!3064495 e!4548241)))

(declare-fun lt!2661541 () Bool)

(assert (=> b!7654021 (= res!3064495 (not lt!2661541))))

(declare-fun lambda!469807 () Int)

(declare-fun Exists!4608 (Int) Bool)

(assert (=> b!7654021 (= lt!2661541 (Exists!4608 lambda!469807))))

(declare-datatypes ((tuple2!69428 0))(
  ( (tuple2!69429 (_1!38017 List!73334) (_2!38017 List!73334)) )
))
(declare-datatypes ((Option!17508 0))(
  ( (None!17507) (Some!17507 (v!54642 tuple2!69428)) )
))
(declare-fun lt!2661540 () Option!17508)

(declare-fun isDefined!14124 (Option!17508) Bool)

(assert (=> b!7654021 (= lt!2661541 (isDefined!14124 lt!2661540))))

(declare-fun findConcatSeparation!3538 (Regex!20483 Regex!20483 List!73334 List!73334 List!73334) Option!17508)

(assert (=> b!7654021 (= lt!2661540 (findConcatSeparation!3538 (reg!20812 r!14126) r!14126 Nil!73210 s!9605 s!9605))))

(declare-datatypes ((Unit!167978 0))(
  ( (Unit!167979) )
))
(declare-fun lt!2661542 () Unit!167978)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3296 (Regex!20483 Regex!20483 List!73334) Unit!167978)

(assert (=> b!7654021 (= lt!2661542 (lemmaFindConcatSeparationEquivalentToExists!3296 (reg!20812 r!14126) r!14126 s!9605))))

(declare-fun b!7654022 () Bool)

(declare-fun e!4548238 () Bool)

(declare-fun tp!2235648 () Bool)

(assert (=> b!7654022 (= e!4548238 tp!2235648)))

(declare-fun b!7654023 () Bool)

(declare-fun tp!2235646 () Bool)

(declare-fun tp!2235649 () Bool)

(assert (=> b!7654023 (= e!4548238 (and tp!2235646 tp!2235649))))

(declare-fun b!7654024 () Bool)

(declare-fun tp_is_empty!51321 () Bool)

(assert (=> b!7654024 (= e!4548238 tp_is_empty!51321)))

(declare-fun b!7654025 () Bool)

(declare-fun e!4548240 () Bool)

(declare-fun tp!2235644 () Bool)

(assert (=> b!7654025 (= e!4548240 (and tp_is_empty!51321 tp!2235644))))

(declare-fun b!7654026 () Bool)

(declare-fun validRegex!10901 (Regex!20483) Bool)

(assert (=> b!7654026 (= e!4548241 (validRegex!10901 r!14126))))

(declare-fun lt!2661544 () tuple2!69428)

(declare-fun matchR!9979 (Regex!20483 List!73334) Bool)

(declare-fun matchRSpec!4584 (Regex!20483 List!73334) Bool)

(assert (=> b!7654026 (= (matchR!9979 (reg!20812 r!14126) (_1!38017 lt!2661544)) (matchRSpec!4584 (reg!20812 r!14126) (_1!38017 lt!2661544)))))

(declare-fun lt!2661543 () Unit!167978)

(declare-fun mainMatchTheorem!4562 (Regex!20483 List!73334) Unit!167978)

(assert (=> b!7654026 (= lt!2661543 (mainMatchTheorem!4562 (reg!20812 r!14126) (_1!38017 lt!2661544)))))

(declare-fun get!25936 (Option!17508) tuple2!69428)

(assert (=> b!7654026 (= lt!2661544 (get!25936 lt!2661540))))

(declare-fun res!3064496 () Bool)

(assert (=> start!736064 (=> (not res!3064496) (not e!4548239))))

(assert (=> start!736064 (= res!3064496 (validRegex!10901 r!14126))))

(assert (=> start!736064 e!4548239))

(assert (=> start!736064 e!4548238))

(assert (=> start!736064 e!4548240))

(declare-fun b!7654027 () Bool)

(declare-fun tp!2235647 () Bool)

(declare-fun tp!2235645 () Bool)

(assert (=> b!7654027 (= e!4548238 (and tp!2235647 tp!2235645))))

(assert (= (and start!736064 res!3064496) b!7654020))

(assert (= (and b!7654020 res!3064494) b!7654019))

(assert (= (and b!7654019 res!3064493) b!7654021))

(assert (= (and b!7654021 (not res!3064495)) b!7654026))

(assert (= (and start!736064 ((_ is ElementMatch!20483) r!14126)) b!7654024))

(assert (= (and start!736064 ((_ is Concat!29328) r!14126)) b!7654023))

(assert (= (and start!736064 ((_ is Star!20483) r!14126)) b!7654022))

(assert (= (and start!736064 ((_ is Union!20483) r!14126)) b!7654027))

(assert (= (and start!736064 ((_ is Cons!73210) s!9605)) b!7654025))

(declare-fun m!8167634 () Bool)

(assert (=> b!7654019 m!8167634))

(declare-fun m!8167636 () Bool)

(assert (=> b!7654021 m!8167636))

(declare-fun m!8167638 () Bool)

(assert (=> b!7654021 m!8167638))

(declare-fun m!8167640 () Bool)

(assert (=> b!7654021 m!8167640))

(declare-fun m!8167642 () Bool)

(assert (=> b!7654021 m!8167642))

(declare-fun m!8167644 () Bool)

(assert (=> b!7654026 m!8167644))

(declare-fun m!8167646 () Bool)

(assert (=> b!7654026 m!8167646))

(declare-fun m!8167648 () Bool)

(assert (=> b!7654026 m!8167648))

(declare-fun m!8167650 () Bool)

(assert (=> b!7654026 m!8167650))

(declare-fun m!8167652 () Bool)

(assert (=> b!7654026 m!8167652))

(assert (=> start!736064 m!8167646))

(check-sat (not b!7654027) (not b!7654019) (not b!7654025) tp_is_empty!51321 (not b!7654021) (not start!736064) (not b!7654026) (not b!7654022) (not b!7654023))
(check-sat)
