; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734180 () Bool)

(assert start!734180)

(declare-fun b!7622595 () Bool)

(assert (=> b!7622595 true))

(assert (=> b!7622595 true))

(declare-fun b!7622585 () Bool)

(declare-fun e!4532439 () Bool)

(declare-fun tp!2225484 () Bool)

(assert (=> b!7622585 (= e!4532439 tp!2225484)))

(declare-fun b!7622587 () Bool)

(declare-fun res!3052012 () Bool)

(declare-fun e!4532438 () Bool)

(assert (=> b!7622587 (=> res!3052012 e!4532438)))

(declare-datatypes ((C!40964 0))(
  ( (C!40965 (val!30922 Int)) )
))
(declare-datatypes ((Regex!20319 0))(
  ( (ElementMatch!20319 (c!1404794 C!40964)) (Concat!29164 (regOne!41150 Regex!20319) (regTwo!41150 Regex!20319)) (EmptyExpr!20319) (Star!20319 (reg!20648 Regex!20319)) (EmptyLang!20319) (Union!20319 (regOne!41151 Regex!20319) (regTwo!41151 Regex!20319)) )
))
(declare-fun r!14126 () Regex!20319)

(declare-datatypes ((List!73172 0))(
  ( (Nil!73048) (Cons!73048 (h!79496 C!40964) (t!387907 List!73172)) )
))
(declare-fun s!9605 () List!73172)

(declare-fun matchR!9826 (Regex!20319 List!73172) Bool)

(assert (=> b!7622587 (= res!3052012 (not (matchR!9826 r!14126 s!9605)))))

(declare-fun b!7622588 () Bool)

(declare-fun res!3052015 () Bool)

(declare-fun e!4532437 () Bool)

(assert (=> b!7622588 (=> (not res!3052015) (not e!4532437))))

(get-info :version)

(assert (=> b!7622588 (= res!3052015 (and (not ((_ is EmptyExpr!20319) r!14126)) (not ((_ is EmptyLang!20319) r!14126)) (not ((_ is ElementMatch!20319) r!14126)) (not ((_ is Union!20319) r!14126)) ((_ is Star!20319) r!14126)))))

(declare-fun b!7622589 () Bool)

(declare-fun tp!2225485 () Bool)

(declare-fun tp!2225482 () Bool)

(assert (=> b!7622589 (= e!4532439 (and tp!2225485 tp!2225482))))

(declare-fun b!7622590 () Bool)

(declare-fun res!3052011 () Bool)

(assert (=> b!7622590 (=> (not res!3052011) (not e!4532437))))

(declare-fun isEmpty!41670 (List!73172) Bool)

(assert (=> b!7622590 (= res!3052011 (not (isEmpty!41670 s!9605)))))

(declare-fun b!7622591 () Bool)

(declare-fun e!4532436 () Bool)

(declare-fun tp_is_empty!50993 () Bool)

(declare-fun tp!2225486 () Bool)

(assert (=> b!7622591 (= e!4532436 (and tp_is_empty!50993 tp!2225486))))

(declare-fun b!7622592 () Bool)

(assert (=> b!7622592 (= e!4532438 true)))

(declare-fun lt!2657194 () Bool)

(assert (=> b!7622592 (= lt!2657194 (matchR!9826 r!14126 s!9605))))

(declare-fun b!7622593 () Bool)

(assert (=> b!7622593 (= e!4532439 tp_is_empty!50993)))

(declare-fun b!7622586 () Bool)

(declare-fun tp!2225487 () Bool)

(declare-fun tp!2225483 () Bool)

(assert (=> b!7622586 (= e!4532439 (and tp!2225487 tp!2225483))))

(declare-fun res!3052016 () Bool)

(assert (=> start!734180 (=> (not res!3052016) (not e!4532437))))

(declare-fun validRegex!10739 (Regex!20319) Bool)

(assert (=> start!734180 (= res!3052016 (validRegex!10739 r!14126))))

(assert (=> start!734180 e!4532437))

(assert (=> start!734180 e!4532439))

(assert (=> start!734180 e!4532436))

(declare-fun b!7622594 () Bool)

(declare-fun res!3052014 () Bool)

(assert (=> b!7622594 (=> res!3052014 e!4532438)))

(assert (=> b!7622594 (= res!3052014 (not (validRegex!10739 r!14126)))))

(assert (=> b!7622595 (= e!4532437 (not e!4532438))))

(declare-fun res!3052013 () Bool)

(assert (=> b!7622595 (=> res!3052013 e!4532438)))

(declare-fun lt!2657192 () Bool)

(assert (=> b!7622595 (= res!3052013 lt!2657192)))

(declare-fun lambda!468545 () Int)

(declare-fun Exists!4475 (Int) Bool)

(assert (=> b!7622595 (= lt!2657192 (Exists!4475 lambda!468545))))

(declare-datatypes ((tuple2!69200 0))(
  ( (tuple2!69201 (_1!37903 List!73172) (_2!37903 List!73172)) )
))
(declare-datatypes ((Option!17394 0))(
  ( (None!17393) (Some!17393 (v!54528 tuple2!69200)) )
))
(declare-fun isDefined!14010 (Option!17394) Bool)

(declare-fun findConcatSeparation!3424 (Regex!20319 Regex!20319 List!73172 List!73172 List!73172) Option!17394)

(assert (=> b!7622595 (= lt!2657192 (isDefined!14010 (findConcatSeparation!3424 (reg!20648 r!14126) r!14126 Nil!73048 s!9605 s!9605)))))

(declare-datatypes ((Unit!167522 0))(
  ( (Unit!167523) )
))
(declare-fun lt!2657193 () Unit!167522)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3182 (Regex!20319 Regex!20319 List!73172) Unit!167522)

(assert (=> b!7622595 (= lt!2657193 (lemmaFindConcatSeparationEquivalentToExists!3182 (reg!20648 r!14126) r!14126 s!9605))))

(assert (= (and start!734180 res!3052016) b!7622588))

(assert (= (and b!7622588 res!3052015) b!7622590))

(assert (= (and b!7622590 res!3052011) b!7622595))

(assert (= (and b!7622595 (not res!3052013)) b!7622587))

(assert (= (and b!7622587 (not res!3052012)) b!7622594))

(assert (= (and b!7622594 (not res!3052014)) b!7622592))

(assert (= (and start!734180 ((_ is ElementMatch!20319) r!14126)) b!7622593))

(assert (= (and start!734180 ((_ is Concat!29164) r!14126)) b!7622589))

(assert (= (and start!734180 ((_ is Star!20319) r!14126)) b!7622585))

(assert (= (and start!734180 ((_ is Union!20319) r!14126)) b!7622586))

(assert (= (and start!734180 ((_ is Cons!73048) s!9605)) b!7622591))

(declare-fun m!8153856 () Bool)

(assert (=> b!7622594 m!8153856))

(assert (=> start!734180 m!8153856))

(declare-fun m!8153858 () Bool)

(assert (=> b!7622595 m!8153858))

(declare-fun m!8153860 () Bool)

(assert (=> b!7622595 m!8153860))

(assert (=> b!7622595 m!8153860))

(declare-fun m!8153862 () Bool)

(assert (=> b!7622595 m!8153862))

(declare-fun m!8153864 () Bool)

(assert (=> b!7622595 m!8153864))

(declare-fun m!8153866 () Bool)

(assert (=> b!7622590 m!8153866))

(declare-fun m!8153868 () Bool)

(assert (=> b!7622592 m!8153868))

(assert (=> b!7622587 m!8153868))

(check-sat (not b!7622589) (not b!7622595) tp_is_empty!50993 (not b!7622587) (not start!734180) (not b!7622585) (not b!7622591) (not b!7622586) (not b!7622592) (not b!7622590) (not b!7622594))
(check-sat)
