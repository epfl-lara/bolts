; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735128 () Bool)

(assert start!735128)

(declare-fun b!7635010 () Bool)

(assert (=> b!7635010 true))

(assert (=> b!7635010 true))

(declare-fun bs!1944172 () Bool)

(declare-fun b!7635011 () Bool)

(assert (= bs!1944172 (and b!7635011 b!7635010)))

(declare-fun lambda!469301 () Int)

(declare-fun lambda!469300 () Int)

(assert (=> bs!1944172 (not (= lambda!469301 lambda!469300))))

(assert (=> b!7635011 true))

(assert (=> b!7635011 true))

(declare-fun b!7635005 () Bool)

(declare-fun e!4538815 () Bool)

(declare-fun tp_is_empty!51165 () Bool)

(declare-fun tp!2228928 () Bool)

(assert (=> b!7635005 (= e!4538815 (and tp_is_empty!51165 tp!2228928))))

(declare-fun b!7635006 () Bool)

(declare-datatypes ((Unit!167772 0))(
  ( (Unit!167773) )
))
(declare-fun e!4538818 () Unit!167772)

(declare-fun Unit!167774 () Unit!167772)

(assert (=> b!7635006 (= e!4538818 Unit!167774)))

(declare-fun b!7635007 () Bool)

(declare-fun e!4538814 () Bool)

(declare-fun tp!2228932 () Bool)

(assert (=> b!7635007 (= e!4538814 tp!2228932)))

(declare-fun res!3057880 () Bool)

(declare-fun e!4538816 () Bool)

(assert (=> start!735128 (=> (not res!3057880) (not e!4538816))))

(declare-datatypes ((C!41136 0))(
  ( (C!41137 (val!31008 Int)) )
))
(declare-datatypes ((Regex!20405 0))(
  ( (ElementMatch!20405 (c!1406458 C!41136)) (Concat!29250 (regOne!41322 Regex!20405) (regTwo!41322 Regex!20405)) (EmptyExpr!20405) (Star!20405 (reg!20734 Regex!20405)) (EmptyLang!20405) (Union!20405 (regOne!41323 Regex!20405) (regTwo!41323 Regex!20405)) )
))
(declare-fun r!14126 () Regex!20405)

(declare-fun validRegex!10823 (Regex!20405) Bool)

(assert (=> start!735128 (= res!3057880 (validRegex!10823 r!14126))))

(assert (=> start!735128 e!4538816))

(assert (=> start!735128 e!4538814))

(assert (=> start!735128 e!4538815))

(declare-fun b!7635008 () Bool)

(declare-fun tp!2228930 () Bool)

(declare-fun tp!2228933 () Bool)

(assert (=> b!7635008 (= e!4538814 (and tp!2228930 tp!2228933))))

(declare-fun b!7635009 () Bool)

(declare-fun Unit!167775 () Unit!167772)

(assert (=> b!7635009 (= e!4538818 Unit!167775)))

(declare-datatypes ((List!73256 0))(
  ( (Nil!73132) (Cons!73132 (h!79580 C!41136) (t!387991 List!73256)) )
))
(declare-datatypes ((tuple2!69368 0))(
  ( (tuple2!69369 (_1!37987 List!73256) (_2!37987 List!73256)) )
))
(declare-fun lt!2659461 () tuple2!69368)

(declare-datatypes ((Option!17478 0))(
  ( (None!17477) (Some!17477 (v!54612 tuple2!69368)) )
))
(declare-fun lt!2659467 () Option!17478)

(declare-fun get!25872 (Option!17478) tuple2!69368)

(assert (=> b!7635009 (= lt!2659461 (get!25872 lt!2659467))))

(declare-fun s!9605 () List!73256)

(declare-fun lt!2659468 () Unit!167772)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!162 (Regex!20405 Regex!20405 List!73256 List!73256 List!73256) Unit!167772)

(assert (=> b!7635009 (= lt!2659468 (lemmaFindSeparationIsDefinedThenConcatMatches!162 (regOne!41322 r!14126) (regTwo!41322 r!14126) (_1!37987 lt!2659461) (_2!37987 lt!2659461) s!9605))))

(declare-fun res!3057883 () Bool)

(declare-fun matchR!9908 (Regex!20405 List!73256) Bool)

(declare-fun ++!17685 (List!73256 List!73256) List!73256)

(assert (=> b!7635009 (= res!3057883 (matchR!9908 r!14126 (++!17685 (_1!37987 lt!2659461) (_2!37987 lt!2659461))))))

(declare-fun e!4538813 () Bool)

(assert (=> b!7635009 (=> (not res!3057883) (not e!4538813))))

(assert (=> b!7635009 e!4538813))

(declare-fun e!4538817 () Bool)

(assert (=> b!7635010 (= e!4538816 (not e!4538817))))

(declare-fun res!3057879 () Bool)

(assert (=> b!7635010 (=> res!3057879 e!4538817)))

(assert (=> b!7635010 (= res!3057879 (matchR!9908 r!14126 s!9605))))

(declare-fun lt!2659463 () Bool)

(declare-fun Exists!4559 (Int) Bool)

(assert (=> b!7635010 (= lt!2659463 (Exists!4559 lambda!469300))))

(declare-fun isDefined!14094 (Option!17478) Bool)

(assert (=> b!7635010 (= lt!2659463 (isDefined!14094 lt!2659467))))

(declare-fun findConcatSeparation!3508 (Regex!20405 Regex!20405 List!73256 List!73256 List!73256) Option!17478)

(assert (=> b!7635010 (= lt!2659467 (findConcatSeparation!3508 (regOne!41322 r!14126) (regTwo!41322 r!14126) Nil!73132 s!9605 s!9605))))

(declare-fun lt!2659466 () Unit!167772)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3266 (Regex!20405 Regex!20405 List!73256) Unit!167772)

(assert (=> b!7635010 (= lt!2659466 (lemmaFindConcatSeparationEquivalentToExists!3266 (regOne!41322 r!14126) (regTwo!41322 r!14126) s!9605))))

(declare-fun res!3057884 () Bool)

(declare-fun e!4538819 () Bool)

(assert (=> b!7635011 (=> res!3057884 e!4538819)))

(assert (=> b!7635011 (= res!3057884 (not (Exists!4559 lambda!469301)))))

(declare-fun b!7635012 () Bool)

(assert (=> b!7635012 (= e!4538813 false)))

(declare-fun b!7635013 () Bool)

(declare-fun tp!2228931 () Bool)

(declare-fun tp!2228929 () Bool)

(assert (=> b!7635013 (= e!4538814 (and tp!2228931 tp!2228929))))

(declare-fun b!7635014 () Bool)

(assert (=> b!7635014 (= e!4538814 tp_is_empty!51165)))

(declare-fun b!7635015 () Bool)

(assert (=> b!7635015 (= e!4538819 true)))

(declare-fun lt!2659462 () tuple2!69368)

(declare-fun matchRSpec!4546 (Regex!20405 List!73256) Bool)

(assert (=> b!7635015 (= (matchR!9908 (regOne!41322 r!14126) (_1!37987 lt!2659462)) (matchRSpec!4546 (regOne!41322 r!14126) (_1!37987 lt!2659462)))))

(declare-fun lt!2659464 () Unit!167772)

(declare-fun mainMatchTheorem!4532 (Regex!20405 List!73256) Unit!167772)

(assert (=> b!7635015 (= lt!2659464 (mainMatchTheorem!4532 (regOne!41322 r!14126) (_1!37987 lt!2659462)))))

(declare-fun pickWitness!476 (Int) tuple2!69368)

(assert (=> b!7635015 (= lt!2659462 (pickWitness!476 lambda!469301))))

(declare-fun b!7635016 () Bool)

(assert (=> b!7635016 (= e!4538817 e!4538819)))

(declare-fun res!3057882 () Bool)

(assert (=> b!7635016 (=> res!3057882 e!4538819)))

(assert (=> b!7635016 (= res!3057882 (Exists!4559 lambda!469300))))

(declare-fun lt!2659465 () Unit!167772)

(assert (=> b!7635016 (= lt!2659465 e!4538818)))

(declare-fun c!1406457 () Bool)

(assert (=> b!7635016 (= c!1406457 lt!2659463)))

(declare-fun b!7635017 () Bool)

(declare-fun res!3057881 () Bool)

(assert (=> b!7635017 (=> (not res!3057881) (not e!4538816))))

(get-info :version)

(assert (=> b!7635017 (= res!3057881 (and (not ((_ is EmptyExpr!20405) r!14126)) (not ((_ is EmptyLang!20405) r!14126)) (not ((_ is ElementMatch!20405) r!14126)) (not ((_ is Union!20405) r!14126)) (not ((_ is Star!20405) r!14126))))))

(assert (= (and start!735128 res!3057880) b!7635017))

(assert (= (and b!7635017 res!3057881) b!7635010))

(assert (= (and b!7635010 (not res!3057879)) b!7635016))

(assert (= (and b!7635016 c!1406457) b!7635009))

(assert (= (and b!7635016 (not c!1406457)) b!7635006))

(assert (= (and b!7635009 res!3057883) b!7635012))

(assert (= (and b!7635016 (not res!3057882)) b!7635011))

(assert (= (and b!7635011 (not res!3057884)) b!7635015))

(assert (= (and start!735128 ((_ is ElementMatch!20405) r!14126)) b!7635014))

(assert (= (and start!735128 ((_ is Concat!29250) r!14126)) b!7635008))

(assert (= (and start!735128 ((_ is Star!20405) r!14126)) b!7635007))

(assert (= (and start!735128 ((_ is Union!20405) r!14126)) b!7635013))

(assert (= (and start!735128 ((_ is Cons!73132) s!9605)) b!7635005))

(declare-fun m!8160028 () Bool)

(assert (=> b!7635016 m!8160028))

(declare-fun m!8160030 () Bool)

(assert (=> b!7635010 m!8160030))

(declare-fun m!8160032 () Bool)

(assert (=> b!7635010 m!8160032))

(declare-fun m!8160034 () Bool)

(assert (=> b!7635010 m!8160034))

(assert (=> b!7635010 m!8160028))

(declare-fun m!8160036 () Bool)

(assert (=> b!7635010 m!8160036))

(declare-fun m!8160038 () Bool)

(assert (=> b!7635011 m!8160038))

(declare-fun m!8160040 () Bool)

(assert (=> start!735128 m!8160040))

(declare-fun m!8160042 () Bool)

(assert (=> b!7635015 m!8160042))

(declare-fun m!8160044 () Bool)

(assert (=> b!7635015 m!8160044))

(declare-fun m!8160046 () Bool)

(assert (=> b!7635015 m!8160046))

(declare-fun m!8160048 () Bool)

(assert (=> b!7635015 m!8160048))

(declare-fun m!8160050 () Bool)

(assert (=> b!7635009 m!8160050))

(declare-fun m!8160052 () Bool)

(assert (=> b!7635009 m!8160052))

(declare-fun m!8160054 () Bool)

(assert (=> b!7635009 m!8160054))

(assert (=> b!7635009 m!8160054))

(declare-fun m!8160056 () Bool)

(assert (=> b!7635009 m!8160056))

(check-sat (not b!7635007) (not b!7635015) (not b!7635009) (not b!7635005) (not b!7635013) (not b!7635008) (not start!735128) (not b!7635011) (not b!7635016) tp_is_empty!51165 (not b!7635010))
(check-sat)
