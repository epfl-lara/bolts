; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733832 () Bool)

(assert start!733832)

(declare-fun b!7617737 () Bool)

(assert (=> b!7617737 true))

(assert (=> b!7617737 true))

(declare-fun b!7617736 () Bool)

(declare-fun e!4529919 () Bool)

(declare-fun tp_is_empty!50933 () Bool)

(assert (=> b!7617736 (= e!4529919 tp_is_empty!50933)))

(declare-fun e!4529918 () Bool)

(declare-fun e!4529915 () Bool)

(assert (=> b!7617737 (= e!4529918 (not e!4529915))))

(declare-fun res!3049612 () Bool)

(assert (=> b!7617737 (=> res!3049612 e!4529915)))

(declare-fun lt!2655793 () Bool)

(assert (=> b!7617737 (= res!3049612 (not lt!2655793))))

(declare-fun lambda!468223 () Int)

(declare-fun Exists!4445 (Int) Bool)

(assert (=> b!7617737 (= lt!2655793 (Exists!4445 lambda!468223))))

(declare-datatypes ((C!40904 0))(
  ( (C!40905 (val!30892 Int)) )
))
(declare-datatypes ((List!73142 0))(
  ( (Nil!73018) (Cons!73018 (h!79466 C!40904) (t!387877 List!73142)) )
))
(declare-datatypes ((tuple2!69140 0))(
  ( (tuple2!69141 (_1!37873 List!73142) (_2!37873 List!73142)) )
))
(declare-datatypes ((Option!17364 0))(
  ( (None!17363) (Some!17363 (v!54498 tuple2!69140)) )
))
(declare-fun lt!2655796 () Option!17364)

(declare-fun isDefined!13980 (Option!17364) Bool)

(assert (=> b!7617737 (= lt!2655793 (isDefined!13980 lt!2655796))))

(declare-datatypes ((Regex!20289 0))(
  ( (ElementMatch!20289 (c!1404056 C!40904)) (Concat!29134 (regOne!41090 Regex!20289) (regTwo!41090 Regex!20289)) (EmptyExpr!20289) (Star!20289 (reg!20618 Regex!20289)) (EmptyLang!20289) (Union!20289 (regOne!41091 Regex!20289) (regTwo!41091 Regex!20289)) )
))
(declare-fun r!14126 () Regex!20289)

(declare-fun s!9605 () List!73142)

(declare-fun findConcatSeparation!3394 (Regex!20289 Regex!20289 List!73142 List!73142 List!73142) Option!17364)

(assert (=> b!7617737 (= lt!2655796 (findConcatSeparation!3394 (reg!20618 r!14126) r!14126 Nil!73018 s!9605 s!9605))))

(declare-datatypes ((Unit!167410 0))(
  ( (Unit!167411) )
))
(declare-fun lt!2655792 () Unit!167410)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3152 (Regex!20289 Regex!20289 List!73142) Unit!167410)

(assert (=> b!7617737 (= lt!2655792 (lemmaFindConcatSeparationEquivalentToExists!3152 (reg!20618 r!14126) r!14126 s!9605))))

(declare-fun b!7617738 () Bool)

(declare-fun e!4529917 () Bool)

(declare-fun tp!2224450 () Bool)

(assert (=> b!7617738 (= e!4529917 (and tp_is_empty!50933 tp!2224450))))

(declare-fun b!7617739 () Bool)

(declare-fun tp!2224454 () Bool)

(declare-fun tp!2224453 () Bool)

(assert (=> b!7617739 (= e!4529919 (and tp!2224454 tp!2224453))))

(declare-fun b!7617740 () Bool)

(declare-fun tp!2224452 () Bool)

(declare-fun tp!2224455 () Bool)

(assert (=> b!7617740 (= e!4529919 (and tp!2224452 tp!2224455))))

(declare-fun b!7617741 () Bool)

(declare-fun e!4529916 () Bool)

(assert (=> b!7617741 (= e!4529916 true)))

(declare-fun lt!2655791 () tuple2!69140)

(declare-fun matchR!9796 (Regex!20289 List!73142) Bool)

(declare-fun ++!17599 (List!73142 List!73142) List!73142)

(assert (=> b!7617741 (matchR!9796 (Concat!29134 (reg!20618 r!14126) r!14126) (++!17599 (_1!37873 lt!2655791) (_2!37873 lt!2655791)))))

(declare-fun lt!2655795 () Unit!167410)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!116 (Regex!20289 Regex!20289 List!73142 List!73142 List!73142) Unit!167410)

(assert (=> b!7617741 (= lt!2655795 (lemmaFindSeparationIsDefinedThenConcatMatches!116 (reg!20618 r!14126) r!14126 (_1!37873 lt!2655791) (_2!37873 lt!2655791) s!9605))))

(declare-fun b!7617742 () Bool)

(declare-fun res!3049611 () Bool)

(assert (=> b!7617742 (=> (not res!3049611) (not e!4529918))))

(get-info :version)

(assert (=> b!7617742 (= res!3049611 (and (not ((_ is EmptyExpr!20289) r!14126)) (not ((_ is EmptyLang!20289) r!14126)) (not ((_ is ElementMatch!20289) r!14126)) (not ((_ is Union!20289) r!14126)) ((_ is Star!20289) r!14126)))))

(declare-fun b!7617744 () Bool)

(declare-fun tp!2224451 () Bool)

(assert (=> b!7617744 (= e!4529919 tp!2224451)))

(declare-fun b!7617745 () Bool)

(declare-fun res!3049610 () Bool)

(assert (=> b!7617745 (=> (not res!3049610) (not e!4529918))))

(declare-fun isEmpty!41631 (List!73142) Bool)

(assert (=> b!7617745 (= res!3049610 (not (isEmpty!41631 s!9605)))))

(declare-fun b!7617743 () Bool)

(assert (=> b!7617743 (= e!4529915 e!4529916)))

(declare-fun res!3049613 () Bool)

(assert (=> b!7617743 (=> res!3049613 e!4529916)))

(assert (=> b!7617743 (= res!3049613 (matchR!9796 r!14126 s!9605))))

(declare-fun matchRSpec!4488 (Regex!20289 List!73142) Bool)

(assert (=> b!7617743 (= (matchR!9796 r!14126 (_2!37873 lt!2655791)) (matchRSpec!4488 r!14126 (_2!37873 lt!2655791)))))

(declare-fun lt!2655790 () Unit!167410)

(declare-fun mainMatchTheorem!4482 (Regex!20289 List!73142) Unit!167410)

(assert (=> b!7617743 (= lt!2655790 (mainMatchTheorem!4482 r!14126 (_2!37873 lt!2655791)))))

(assert (=> b!7617743 (= (matchR!9796 (reg!20618 r!14126) (_1!37873 lt!2655791)) (matchRSpec!4488 (reg!20618 r!14126) (_1!37873 lt!2655791)))))

(declare-fun lt!2655794 () Unit!167410)

(assert (=> b!7617743 (= lt!2655794 (mainMatchTheorem!4482 (reg!20618 r!14126) (_1!37873 lt!2655791)))))

(declare-fun get!25745 (Option!17364) tuple2!69140)

(assert (=> b!7617743 (= lt!2655791 (get!25745 lt!2655796))))

(declare-fun res!3049614 () Bool)

(assert (=> start!733832 (=> (not res!3049614) (not e!4529918))))

(declare-fun validRegex!10709 (Regex!20289) Bool)

(assert (=> start!733832 (= res!3049614 (validRegex!10709 r!14126))))

(assert (=> start!733832 e!4529918))

(assert (=> start!733832 e!4529919))

(assert (=> start!733832 e!4529917))

(assert (= (and start!733832 res!3049614) b!7617742))

(assert (= (and b!7617742 res!3049611) b!7617745))

(assert (= (and b!7617745 res!3049610) b!7617737))

(assert (= (and b!7617737 (not res!3049612)) b!7617743))

(assert (= (and b!7617743 (not res!3049613)) b!7617741))

(assert (= (and start!733832 ((_ is ElementMatch!20289) r!14126)) b!7617736))

(assert (= (and start!733832 ((_ is Concat!29134) r!14126)) b!7617739))

(assert (= (and start!733832 ((_ is Star!20289) r!14126)) b!7617744))

(assert (= (and start!733832 ((_ is Union!20289) r!14126)) b!7617740))

(assert (= (and start!733832 ((_ is Cons!73018) s!9605)) b!7617738))

(declare-fun m!8150596 () Bool)

(assert (=> b!7617741 m!8150596))

(assert (=> b!7617741 m!8150596))

(declare-fun m!8150598 () Bool)

(assert (=> b!7617741 m!8150598))

(declare-fun m!8150600 () Bool)

(assert (=> b!7617741 m!8150600))

(declare-fun m!8150602 () Bool)

(assert (=> b!7617737 m!8150602))

(declare-fun m!8150604 () Bool)

(assert (=> b!7617737 m!8150604))

(declare-fun m!8150606 () Bool)

(assert (=> b!7617737 m!8150606))

(declare-fun m!8150608 () Bool)

(assert (=> b!7617737 m!8150608))

(declare-fun m!8150610 () Bool)

(assert (=> b!7617743 m!8150610))

(declare-fun m!8150612 () Bool)

(assert (=> b!7617743 m!8150612))

(declare-fun m!8150614 () Bool)

(assert (=> b!7617743 m!8150614))

(declare-fun m!8150616 () Bool)

(assert (=> b!7617743 m!8150616))

(declare-fun m!8150618 () Bool)

(assert (=> b!7617743 m!8150618))

(declare-fun m!8150620 () Bool)

(assert (=> b!7617743 m!8150620))

(declare-fun m!8150622 () Bool)

(assert (=> b!7617743 m!8150622))

(declare-fun m!8150624 () Bool)

(assert (=> b!7617743 m!8150624))

(declare-fun m!8150626 () Bool)

(assert (=> b!7617745 m!8150626))

(declare-fun m!8150628 () Bool)

(assert (=> start!733832 m!8150628))

(check-sat (not b!7617741) (not b!7617737) (not b!7617739) (not b!7617743) (not b!7617745) (not b!7617744) (not b!7617740) (not b!7617738) (not start!733832) tp_is_empty!50933)
(check-sat)
