; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734770 () Bool)

(assert start!734770)

(declare-fun b!7630325 () Bool)

(assert (=> b!7630325 true))

(assert (=> b!7630325 true))

(declare-fun bs!1944017 () Bool)

(declare-fun b!7630326 () Bool)

(assert (= bs!1944017 (and b!7630326 b!7630325)))

(declare-fun lambda!469059 () Int)

(declare-fun lambda!469058 () Int)

(assert (=> bs!1944017 (not (= lambda!469059 lambda!469058))))

(assert (=> b!7630326 true))

(assert (=> b!7630326 true))

(declare-fun b!7630320 () Bool)

(declare-fun e!4536384 () Bool)

(declare-fun tp!2227631 () Bool)

(declare-fun tp!2227629 () Bool)

(assert (=> b!7630320 (= e!4536384 (and tp!2227631 tp!2227629))))

(declare-fun b!7630321 () Bool)

(declare-fun tp!2227630 () Bool)

(declare-fun tp!2227627 () Bool)

(assert (=> b!7630321 (= e!4536384 (and tp!2227630 tp!2227627))))

(declare-fun res!3055709 () Bool)

(declare-fun e!4536383 () Bool)

(assert (=> start!734770 (=> (not res!3055709) (not e!4536383))))

(declare-datatypes ((C!41078 0))(
  ( (C!41079 (val!30979 Int)) )
))
(declare-datatypes ((Regex!20376 0))(
  ( (ElementMatch!20376 (c!1405809 C!41078)) (Concat!29221 (regOne!41264 Regex!20376) (regTwo!41264 Regex!20376)) (EmptyExpr!20376) (Star!20376 (reg!20705 Regex!20376)) (EmptyLang!20376) (Union!20376 (regOne!41265 Regex!20376) (regTwo!41265 Regex!20376)) )
))
(declare-fun r!14126 () Regex!20376)

(declare-fun validRegex!10794 (Regex!20376) Bool)

(assert (=> start!734770 (= res!3055709 (validRegex!10794 r!14126))))

(assert (=> start!734770 e!4536383))

(assert (=> start!734770 e!4536384))

(declare-fun e!4536380 () Bool)

(assert (=> start!734770 e!4536380))

(declare-fun b!7630322 () Bool)

(declare-fun tp_is_empty!51107 () Bool)

(declare-fun tp!2227628 () Bool)

(assert (=> b!7630322 (= e!4536380 (and tp_is_empty!51107 tp!2227628))))

(declare-fun b!7630323 () Bool)

(declare-fun res!3055712 () Bool)

(assert (=> b!7630323 (=> (not res!3055712) (not e!4536383))))

(assert (=> b!7630323 (= res!3055712 (and (not (is-EmptyExpr!20376 r!14126)) (not (is-EmptyLang!20376 r!14126)) (not (is-ElementMatch!20376 r!14126)) (not (is-Union!20376 r!14126)) (not (is-Star!20376 r!14126))))))

(declare-fun b!7630324 () Bool)

(assert (=> b!7630324 (= e!4536384 tp_is_empty!51107)))

(declare-fun e!4536382 () Bool)

(assert (=> b!7630325 (= e!4536383 (not e!4536382))))

(declare-fun res!3055710 () Bool)

(assert (=> b!7630325 (=> res!3055710 e!4536382)))

(declare-datatypes ((List!73227 0))(
  ( (Nil!73103) (Cons!73103 (h!79551 C!41078) (t!387962 List!73227)) )
))
(declare-fun s!9605 () List!73227)

(declare-fun matchR!9879 (Regex!20376 List!73227) Bool)

(assert (=> b!7630325 (= res!3055710 (not (matchR!9879 r!14126 s!9605)))))

(declare-fun lt!2658671 () Bool)

(declare-fun Exists!4530 (Int) Bool)

(assert (=> b!7630325 (= lt!2658671 (Exists!4530 lambda!469058))))

(declare-datatypes ((tuple2!69310 0))(
  ( (tuple2!69311 (_1!37958 List!73227) (_2!37958 List!73227)) )
))
(declare-datatypes ((Option!17449 0))(
  ( (None!17448) (Some!17448 (v!54583 tuple2!69310)) )
))
(declare-fun isDefined!14065 (Option!17449) Bool)

(declare-fun findConcatSeparation!3479 (Regex!20376 Regex!20376 List!73227 List!73227 List!73227) Option!17449)

(assert (=> b!7630325 (= lt!2658671 (isDefined!14065 (findConcatSeparation!3479 (regOne!41264 r!14126) (regTwo!41264 r!14126) Nil!73103 s!9605 s!9605)))))

(declare-datatypes ((Unit!167680 0))(
  ( (Unit!167681) )
))
(declare-fun lt!2658666 () Unit!167680)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3237 (Regex!20376 Regex!20376 List!73227) Unit!167680)

(assert (=> b!7630325 (= lt!2658666 (lemmaFindConcatSeparationEquivalentToExists!3237 (regOne!41264 r!14126) (regTwo!41264 r!14126) s!9605))))

(declare-fun e!4536381 () Bool)

(assert (=> b!7630326 (= e!4536381 true)))

(declare-fun lt!2658665 () Unit!167680)

(declare-fun lt!2658670 () tuple2!69310)

(declare-fun ExistsThe!51 (tuple2!69310 Int) Unit!167680)

(assert (=> b!7630326 (= lt!2658665 (ExistsThe!51 lt!2658670 lambda!469059))))

(declare-fun matchRSpec!4539 (Regex!20376 List!73227) Bool)

(assert (=> b!7630326 (= (matchR!9879 (regTwo!41264 r!14126) (_2!37958 lt!2658670)) (matchRSpec!4539 (regTwo!41264 r!14126) (_2!37958 lt!2658670)))))

(declare-fun lt!2658668 () Unit!167680)

(declare-fun mainMatchTheorem!4529 (Regex!20376 List!73227) Unit!167680)

(assert (=> b!7630326 (= lt!2658668 (mainMatchTheorem!4529 (regTwo!41264 r!14126) (_2!37958 lt!2658670)))))

(assert (=> b!7630326 (= (matchR!9879 (regOne!41264 r!14126) (_1!37958 lt!2658670)) (matchRSpec!4539 (regOne!41264 r!14126) (_1!37958 lt!2658670)))))

(declare-fun lt!2658667 () Unit!167680)

(assert (=> b!7630326 (= lt!2658667 (mainMatchTheorem!4529 (regOne!41264 r!14126) (_1!37958 lt!2658670)))))

(declare-fun pickWitness!471 (Int) tuple2!69310)

(assert (=> b!7630326 (= lt!2658670 (pickWitness!471 lambda!469058))))

(declare-fun b!7630327 () Bool)

(assert (=> b!7630327 (= e!4536382 e!4536381)))

(declare-fun res!3055711 () Bool)

(assert (=> b!7630327 (=> res!3055711 e!4536381)))

(assert (=> b!7630327 (= res!3055711 (not (Exists!4530 lambda!469058)))))

(assert (=> b!7630327 lt!2658671))

(declare-fun lt!2658669 () Unit!167680)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!283 (Regex!20376 Regex!20376 List!73227) Unit!167680)

(assert (=> b!7630327 (= lt!2658669 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!283 (regOne!41264 r!14126) (regTwo!41264 r!14126) s!9605))))

(declare-fun b!7630328 () Bool)

(declare-fun tp!2227626 () Bool)

(assert (=> b!7630328 (= e!4536384 tp!2227626)))

(assert (= (and start!734770 res!3055709) b!7630323))

(assert (= (and b!7630323 res!3055712) b!7630325))

(assert (= (and b!7630325 (not res!3055710)) b!7630327))

(assert (= (and b!7630327 (not res!3055711)) b!7630326))

(assert (= (and start!734770 (is-ElementMatch!20376 r!14126)) b!7630324))

(assert (= (and start!734770 (is-Concat!29221 r!14126)) b!7630321))

(assert (= (and start!734770 (is-Star!20376 r!14126)) b!7630328))

(assert (= (and start!734770 (is-Union!20376 r!14126)) b!7630320))

(assert (= (and start!734770 (is-Cons!73103 s!9605)) b!7630322))

(declare-fun m!8157686 () Bool)

(assert (=> start!734770 m!8157686))

(declare-fun m!8157688 () Bool)

(assert (=> b!7630325 m!8157688))

(declare-fun m!8157690 () Bool)

(assert (=> b!7630325 m!8157690))

(assert (=> b!7630325 m!8157688))

(declare-fun m!8157692 () Bool)

(assert (=> b!7630325 m!8157692))

(declare-fun m!8157694 () Bool)

(assert (=> b!7630325 m!8157694))

(declare-fun m!8157696 () Bool)

(assert (=> b!7630325 m!8157696))

(declare-fun m!8157698 () Bool)

(assert (=> b!7630326 m!8157698))

(declare-fun m!8157700 () Bool)

(assert (=> b!7630326 m!8157700))

(declare-fun m!8157702 () Bool)

(assert (=> b!7630326 m!8157702))

(declare-fun m!8157704 () Bool)

(assert (=> b!7630326 m!8157704))

(declare-fun m!8157706 () Bool)

(assert (=> b!7630326 m!8157706))

(declare-fun m!8157708 () Bool)

(assert (=> b!7630326 m!8157708))

(declare-fun m!8157710 () Bool)

(assert (=> b!7630326 m!8157710))

(declare-fun m!8157712 () Bool)

(assert (=> b!7630326 m!8157712))

(assert (=> b!7630327 m!8157694))

(declare-fun m!8157714 () Bool)

(assert (=> b!7630327 m!8157714))

(push 1)

(assert (not b!7630325))

(assert (not b!7630328))

(assert (not b!7630327))

(assert (not b!7630320))

(assert (not b!7630321))

(assert (not b!7630326))

(assert (not b!7630322))

(assert tp_is_empty!51107)

(assert (not start!734770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

