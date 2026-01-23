; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738064 () Bool)

(assert start!738064)

(declare-fun b!7732689 () Bool)

(assert (=> b!7732689 true))

(assert (=> b!7732689 true))

(declare-fun b!7732686 () Bool)

(declare-fun e!4585599 () Bool)

(declare-datatypes ((C!41468 0))(
  ( (C!41469 (val!31174 Int)) )
))
(declare-datatypes ((List!73418 0))(
  ( (Nil!73294) (Cons!73294 (h!79742 C!41468) (t!388153 List!73418)) )
))
(declare-datatypes ((tuple2!69596 0))(
  ( (tuple2!69597 (_1!38101 List!73418) (_2!38101 List!73418)) )
))
(declare-fun lt!2667320 () tuple2!69596)

(assert (=> b!7732686 (= e!4585599 (= lt!2667320 (tuple2!69597 (_1!38101 lt!2667320) (_2!38101 lt!2667320))))))

(declare-fun b!7732687 () Bool)

(declare-fun e!4585598 () Bool)

(declare-fun tp_is_empty!51497 () Bool)

(assert (=> b!7732687 (= e!4585598 tp_is_empty!51497)))

(declare-fun b!7732688 () Bool)

(declare-fun tp!2269028 () Bool)

(declare-fun tp!2269026 () Bool)

(assert (=> b!7732688 (= e!4585598 (and tp!2269028 tp!2269026))))

(declare-fun e!4585597 () Bool)

(declare-fun e!4585596 () Bool)

(assert (=> b!7732689 (= e!4585597 (not e!4585596))))

(declare-fun res!3084315 () Bool)

(assert (=> b!7732689 (=> res!3084315 e!4585596)))

(declare-datatypes ((Regex!20571 0))(
  ( (ElementMatch!20571 (c!1425682 C!41468)) (Concat!29416 (regOne!41654 Regex!20571) (regTwo!41654 Regex!20571)) (EmptyExpr!20571) (Star!20571 (reg!20900 Regex!20571)) (EmptyLang!20571) (Union!20571 (regOne!41655 Regex!20571) (regTwo!41655 Regex!20571)) )
))
(declare-fun r!14126 () Regex!20571)

(declare-fun s!9605 () List!73418)

(declare-fun matchR!10063 (Regex!20571 List!73418) Bool)

(assert (=> b!7732689 (= res!3084315 (matchR!10063 r!14126 s!9605))))

(declare-fun lt!2667318 () Bool)

(declare-fun lambda!471337 () Int)

(declare-fun Exists!4692 (Int) Bool)

(assert (=> b!7732689 (= lt!2667318 (Exists!4692 lambda!471337))))

(declare-datatypes ((Option!17592 0))(
  ( (None!17591) (Some!17591 (v!54726 tuple2!69596)) )
))
(declare-fun lt!2667319 () Option!17592)

(declare-fun isDefined!14208 (Option!17592) Bool)

(assert (=> b!7732689 (= lt!2667318 (isDefined!14208 lt!2667319))))

(declare-fun findConcatSeparation!3622 (Regex!20571 Regex!20571 List!73418 List!73418 List!73418) Option!17592)

(assert (=> b!7732689 (= lt!2667319 (findConcatSeparation!3622 (regOne!41654 r!14126) (regTwo!41654 r!14126) Nil!73294 s!9605 s!9605))))

(declare-datatypes ((Unit!168214 0))(
  ( (Unit!168215) )
))
(declare-fun lt!2667317 () Unit!168214)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3380 (Regex!20571 Regex!20571 List!73418) Unit!168214)

(assert (=> b!7732689 (= lt!2667317 (lemmaFindConcatSeparationEquivalentToExists!3380 (regOne!41654 r!14126) (regTwo!41654 r!14126) s!9605))))

(declare-fun b!7732690 () Bool)

(declare-fun tp!2269027 () Bool)

(assert (=> b!7732690 (= e!4585598 tp!2269027)))

(declare-fun b!7732691 () Bool)

(declare-fun tp!2269025 () Bool)

(declare-fun tp!2269029 () Bool)

(assert (=> b!7732691 (= e!4585598 (and tp!2269025 tp!2269029))))

(declare-fun res!3084314 () Bool)

(assert (=> start!738064 (=> (not res!3084314) (not e!4585597))))

(declare-fun validRegex!10989 (Regex!20571) Bool)

(assert (=> start!738064 (= res!3084314 (validRegex!10989 r!14126))))

(assert (=> start!738064 e!4585597))

(assert (=> start!738064 e!4585598))

(declare-fun e!4585595 () Bool)

(assert (=> start!738064 e!4585595))

(declare-fun b!7732692 () Bool)

(assert (=> b!7732692 (= e!4585596 e!4585599)))

(declare-fun res!3084313 () Bool)

(assert (=> b!7732692 (=> res!3084313 e!4585599)))

(assert (=> b!7732692 (= res!3084313 (not (validRegex!10989 (regOne!41654 r!14126))))))

(declare-fun get!26047 (Option!17592) tuple2!69596)

(assert (=> b!7732692 (= lt!2667320 (get!26047 lt!2667319))))

(declare-fun b!7732693 () Bool)

(declare-fun res!3084312 () Bool)

(assert (=> b!7732693 (=> res!3084312 e!4585596)))

(assert (=> b!7732693 (= res!3084312 (not lt!2667318))))

(declare-fun b!7732694 () Bool)

(declare-fun res!3084310 () Bool)

(assert (=> b!7732694 (=> (not res!3084310) (not e!4585597))))

(get-info :version)

(assert (=> b!7732694 (= res!3084310 (and (not ((_ is EmptyExpr!20571) r!14126)) (not ((_ is EmptyLang!20571) r!14126)) (not ((_ is ElementMatch!20571) r!14126)) (not ((_ is Union!20571) r!14126)) (not ((_ is Star!20571) r!14126))))))

(declare-fun b!7732695 () Bool)

(declare-fun res!3084316 () Bool)

(assert (=> b!7732695 (=> res!3084316 e!4585599)))

(assert (=> b!7732695 (= res!3084316 (not (validRegex!10989 (regTwo!41654 r!14126))))))

(declare-fun b!7732696 () Bool)

(declare-fun res!3084311 () Bool)

(assert (=> b!7732696 (=> res!3084311 e!4585599)))

(declare-fun ++!17770 (List!73418 List!73418) List!73418)

(assert (=> b!7732696 (= res!3084311 (not (= s!9605 (++!17770 (_1!38101 lt!2667320) (_2!38101 lt!2667320)))))))

(declare-fun b!7732697 () Bool)

(declare-fun tp!2269024 () Bool)

(assert (=> b!7732697 (= e!4585595 (and tp_is_empty!51497 tp!2269024))))

(assert (= (and start!738064 res!3084314) b!7732694))

(assert (= (and b!7732694 res!3084310) b!7732689))

(assert (= (and b!7732689 (not res!3084315)) b!7732693))

(assert (= (and b!7732693 (not res!3084312)) b!7732692))

(assert (= (and b!7732692 (not res!3084313)) b!7732695))

(assert (= (and b!7732695 (not res!3084316)) b!7732696))

(assert (= (and b!7732696 (not res!3084311)) b!7732686))

(assert (= (and start!738064 ((_ is ElementMatch!20571) r!14126)) b!7732687))

(assert (= (and start!738064 ((_ is Concat!29416) r!14126)) b!7732691))

(assert (= (and start!738064 ((_ is Star!20571) r!14126)) b!7732690))

(assert (= (and start!738064 ((_ is Union!20571) r!14126)) b!7732688))

(assert (= (and start!738064 ((_ is Cons!73294) s!9605)) b!7732697))

(declare-fun m!8206322 () Bool)

(assert (=> b!7732692 m!8206322))

(declare-fun m!8206324 () Bool)

(assert (=> b!7732692 m!8206324))

(declare-fun m!8206326 () Bool)

(assert (=> b!7732695 m!8206326))

(declare-fun m!8206328 () Bool)

(assert (=> b!7732689 m!8206328))

(declare-fun m!8206330 () Bool)

(assert (=> b!7732689 m!8206330))

(declare-fun m!8206332 () Bool)

(assert (=> b!7732689 m!8206332))

(declare-fun m!8206334 () Bool)

(assert (=> b!7732689 m!8206334))

(declare-fun m!8206336 () Bool)

(assert (=> b!7732689 m!8206336))

(declare-fun m!8206338 () Bool)

(assert (=> b!7732696 m!8206338))

(declare-fun m!8206340 () Bool)

(assert (=> start!738064 m!8206340))

(check-sat (not b!7732690) (not b!7732696) (not b!7732697) tp_is_empty!51497 (not b!7732689) (not b!7732692) (not b!7732695) (not b!7732691) (not start!738064) (not b!7732688))
(check-sat)
