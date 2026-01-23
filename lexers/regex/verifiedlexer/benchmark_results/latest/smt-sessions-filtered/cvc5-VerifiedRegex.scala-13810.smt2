; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735198 () Bool)

(assert start!735198)

(declare-fun b!7635994 () Bool)

(assert (=> b!7635994 true))

(assert (=> b!7635994 true))

(declare-fun b!7635986 () Bool)

(declare-datatypes ((Unit!167804 0))(
  ( (Unit!167805) )
))
(declare-fun e!4539307 () Unit!167804)

(declare-fun Unit!167806 () Unit!167804)

(assert (=> b!7635986 (= e!4539307 Unit!167806)))

(declare-fun res!3058371 () Bool)

(declare-fun e!4539302 () Bool)

(assert (=> start!735198 (=> (not res!3058371) (not e!4539302))))

(declare-datatypes ((C!41154 0))(
  ( (C!41155 (val!31017 Int)) )
))
(declare-datatypes ((Regex!20414 0))(
  ( (ElementMatch!20414 (c!1406592 C!41154)) (Concat!29259 (regOne!41340 Regex!20414) (regTwo!41340 Regex!20414)) (EmptyExpr!20414) (Star!20414 (reg!20743 Regex!20414)) (EmptyLang!20414) (Union!20414 (regOne!41341 Regex!20414) (regTwo!41341 Regex!20414)) )
))
(declare-fun r!14126 () Regex!20414)

(declare-fun validRegex!10832 (Regex!20414) Bool)

(assert (=> start!735198 (= res!3058371 (validRegex!10832 r!14126))))

(assert (=> start!735198 e!4539302))

(declare-fun e!4539303 () Bool)

(assert (=> start!735198 e!4539303))

(declare-fun e!4539305 () Bool)

(assert (=> start!735198 e!4539305))

(declare-fun b!7635987 () Bool)

(declare-fun Unit!167807 () Unit!167804)

(assert (=> b!7635987 (= e!4539307 Unit!167807)))

(declare-fun lt!2659763 () Unit!167804)

(declare-datatypes ((List!73265 0))(
  ( (Nil!73141) (Cons!73141 (h!79589 C!41154) (t!388000 List!73265)) )
))
(declare-fun s!9605 () List!73265)

(declare-datatypes ((tuple2!69386 0))(
  ( (tuple2!69387 (_1!37996 List!73265) (_2!37996 List!73265)) )
))
(declare-fun lt!2659766 () tuple2!69386)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!171 (Regex!20414 Regex!20414 List!73265 List!73265 List!73265) Unit!167804)

(assert (=> b!7635987 (= lt!2659763 (lemmaFindSeparationIsDefinedThenConcatMatches!171 (reg!20743 r!14126) r!14126 (_1!37996 lt!2659766) (_2!37996 lt!2659766) s!9605))))

(declare-fun lt!2659772 () List!73265)

(declare-fun ++!17694 (List!73265 List!73265) List!73265)

(assert (=> b!7635987 (= lt!2659772 (++!17694 (_1!37996 lt!2659766) (_2!37996 lt!2659766)))))

(declare-fun matchR!9917 (Regex!20414 List!73265) Bool)

(assert (=> b!7635987 (matchR!9917 (Concat!29259 (reg!20743 r!14126) r!14126) lt!2659772)))

(declare-fun lt!2659770 () Unit!167804)

(declare-fun lemmaStarApp!201 (Regex!20414 List!73265 List!73265) Unit!167804)

(assert (=> b!7635987 (= lt!2659770 (lemmaStarApp!201 (reg!20743 r!14126) (_1!37996 lt!2659766) (_2!37996 lt!2659766)))))

(declare-fun res!3058372 () Bool)

(assert (=> b!7635987 (= res!3058372 (matchR!9917 r!14126 lt!2659772))))

(declare-fun e!4539304 () Bool)

(assert (=> b!7635987 (=> (not res!3058372) (not e!4539304))))

(assert (=> b!7635987 e!4539304))

(declare-fun b!7635988 () Bool)

(declare-fun res!3058370 () Bool)

(assert (=> b!7635988 (=> (not res!3058370) (not e!4539302))))

(assert (=> b!7635988 (= res!3058370 (and (not (is-EmptyExpr!20414 r!14126)) (not (is-EmptyLang!20414 r!14126)) (not (is-ElementMatch!20414 r!14126)) (not (is-Union!20414 r!14126)) (is-Star!20414 r!14126)))))

(declare-fun b!7635989 () Bool)

(assert (=> b!7635989 (= e!4539304 false)))

(declare-fun b!7635990 () Bool)

(declare-fun tp!2229167 () Bool)

(assert (=> b!7635990 (= e!4539303 tp!2229167)))

(declare-fun b!7635991 () Bool)

(declare-fun e!4539306 () Bool)

(declare-fun lambda!469380 () Int)

(declare-fun Exists!4568 (Int) Bool)

(assert (=> b!7635991 (= e!4539306 (Exists!4568 lambda!469380))))

(declare-fun lt!2659764 () Unit!167804)

(assert (=> b!7635991 (= lt!2659764 e!4539307)))

(declare-fun c!1406591 () Bool)

(assert (=> b!7635991 (= c!1406591 (not (matchR!9917 r!14126 s!9605)))))

(declare-fun matchRSpec!4553 (Regex!20414 List!73265) Bool)

(assert (=> b!7635991 (= (matchR!9917 r!14126 (_2!37996 lt!2659766)) (matchRSpec!4553 r!14126 (_2!37996 lt!2659766)))))

(declare-fun lt!2659768 () Unit!167804)

(declare-fun mainMatchTheorem!4539 (Regex!20414 List!73265) Unit!167804)

(assert (=> b!7635991 (= lt!2659768 (mainMatchTheorem!4539 r!14126 (_2!37996 lt!2659766)))))

(assert (=> b!7635991 (= (matchR!9917 (reg!20743 r!14126) (_1!37996 lt!2659766)) (matchRSpec!4553 (reg!20743 r!14126) (_1!37996 lt!2659766)))))

(declare-fun lt!2659769 () Unit!167804)

(assert (=> b!7635991 (= lt!2659769 (mainMatchTheorem!4539 (reg!20743 r!14126) (_1!37996 lt!2659766)))))

(declare-datatypes ((Option!17487 0))(
  ( (None!17486) (Some!17486 (v!54621 tuple2!69386)) )
))
(declare-fun lt!2659765 () Option!17487)

(declare-fun get!25886 (Option!17487) tuple2!69386)

(assert (=> b!7635991 (= lt!2659766 (get!25886 lt!2659765))))

(declare-fun b!7635992 () Bool)

(declare-fun tp_is_empty!51183 () Bool)

(declare-fun tp!2229168 () Bool)

(assert (=> b!7635992 (= e!4539305 (and tp_is_empty!51183 tp!2229168))))

(declare-fun b!7635993 () Bool)

(declare-fun tp!2229171 () Bool)

(declare-fun tp!2229169 () Bool)

(assert (=> b!7635993 (= e!4539303 (and tp!2229171 tp!2229169))))

(assert (=> b!7635994 (= e!4539302 (not e!4539306))))

(declare-fun res!3058369 () Bool)

(assert (=> b!7635994 (=> res!3058369 e!4539306)))

(declare-fun lt!2659767 () Bool)

(assert (=> b!7635994 (= res!3058369 (not lt!2659767))))

(assert (=> b!7635994 (= lt!2659767 (Exists!4568 lambda!469380))))

(declare-fun isDefined!14103 (Option!17487) Bool)

(assert (=> b!7635994 (= lt!2659767 (isDefined!14103 lt!2659765))))

(declare-fun findConcatSeparation!3517 (Regex!20414 Regex!20414 List!73265 List!73265 List!73265) Option!17487)

(assert (=> b!7635994 (= lt!2659765 (findConcatSeparation!3517 (reg!20743 r!14126) r!14126 Nil!73141 s!9605 s!9605))))

(declare-fun lt!2659771 () Unit!167804)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3275 (Regex!20414 Regex!20414 List!73265) Unit!167804)

(assert (=> b!7635994 (= lt!2659771 (lemmaFindConcatSeparationEquivalentToExists!3275 (reg!20743 r!14126) r!14126 s!9605))))

(declare-fun b!7635995 () Bool)

(declare-fun tp!2229170 () Bool)

(declare-fun tp!2229166 () Bool)

(assert (=> b!7635995 (= e!4539303 (and tp!2229170 tp!2229166))))

(declare-fun b!7635996 () Bool)

(assert (=> b!7635996 (= e!4539303 tp_is_empty!51183)))

(declare-fun b!7635997 () Bool)

(declare-fun res!3058373 () Bool)

(assert (=> b!7635997 (=> (not res!3058373) (not e!4539302))))

(declare-fun isEmpty!41770 (List!73265) Bool)

(assert (=> b!7635997 (= res!3058373 (not (isEmpty!41770 s!9605)))))

(assert (= (and start!735198 res!3058371) b!7635988))

(assert (= (and b!7635988 res!3058370) b!7635997))

(assert (= (and b!7635997 res!3058373) b!7635994))

(assert (= (and b!7635994 (not res!3058369)) b!7635991))

(assert (= (and b!7635991 c!1406591) b!7635987))

(assert (= (and b!7635991 (not c!1406591)) b!7635986))

(assert (= (and b!7635987 res!3058372) b!7635989))

(assert (= (and start!735198 (is-ElementMatch!20414 r!14126)) b!7635996))

(assert (= (and start!735198 (is-Concat!29259 r!14126)) b!7635995))

(assert (= (and start!735198 (is-Star!20414 r!14126)) b!7635990))

(assert (= (and start!735198 (is-Union!20414 r!14126)) b!7635993))

(assert (= (and start!735198 (is-Cons!73141 s!9605)) b!7635992))

(declare-fun m!8160610 () Bool)

(assert (=> b!7635994 m!8160610))

(declare-fun m!8160612 () Bool)

(assert (=> b!7635994 m!8160612))

(declare-fun m!8160614 () Bool)

(assert (=> b!7635994 m!8160614))

(declare-fun m!8160616 () Bool)

(assert (=> b!7635994 m!8160616))

(declare-fun m!8160618 () Bool)

(assert (=> b!7635997 m!8160618))

(declare-fun m!8160620 () Bool)

(assert (=> b!7635991 m!8160620))

(assert (=> b!7635991 m!8160610))

(declare-fun m!8160622 () Bool)

(assert (=> b!7635991 m!8160622))

(declare-fun m!8160624 () Bool)

(assert (=> b!7635991 m!8160624))

(declare-fun m!8160626 () Bool)

(assert (=> b!7635991 m!8160626))

(declare-fun m!8160628 () Bool)

(assert (=> b!7635991 m!8160628))

(declare-fun m!8160630 () Bool)

(assert (=> b!7635991 m!8160630))

(declare-fun m!8160632 () Bool)

(assert (=> b!7635991 m!8160632))

(declare-fun m!8160634 () Bool)

(assert (=> b!7635991 m!8160634))

(declare-fun m!8160636 () Bool)

(assert (=> start!735198 m!8160636))

(declare-fun m!8160638 () Bool)

(assert (=> b!7635987 m!8160638))

(declare-fun m!8160640 () Bool)

(assert (=> b!7635987 m!8160640))

(declare-fun m!8160642 () Bool)

(assert (=> b!7635987 m!8160642))

(declare-fun m!8160644 () Bool)

(assert (=> b!7635987 m!8160644))

(declare-fun m!8160646 () Bool)

(assert (=> b!7635987 m!8160646))

(push 1)

(assert (not b!7635992))

(assert tp_is_empty!51183)

(assert (not b!7635994))

(assert (not b!7635991))

(assert (not b!7635995))

(assert (not b!7635993))

(assert (not b!7635987))

(assert (not b!7635990))

(assert (not start!735198))

(assert (not b!7635997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

